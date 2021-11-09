call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
call plug#end()

let g:gruvbox_termcolors=256
let g:rainbow_active = 0   "0 if you want to enable it later via :RainbowToggle"
set background=dark        "背景颜色"
colorscheme gruvbox

if has("cscope")
set csprg=/usr/bin/cscope " 指定用来执行cscope的命令
set csto=0 " 设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
set cst " 同时搜索cscope数据库和标签文件
"set cscopequickfix=s-,g-,c-,t-,e-,f-,i-,d- "使用QuickFix窗口来显示cscope查找结果
set nocsverb
if filereadable("cscope.out") " 若当前目录下存在cscope数据库，添加该数据库到vim
cs add cscope.out
elseif $CSCOPE_DB != "" " 否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
cs add $CSCOPE_DB
endif
set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-m> :RainbowToggle<CR>

set nu             "开启行号"
set hlsearch       "开启高亮"
set cursorline     "高亮显示当前行"
set tabstop=4      "按下 Tab 键时，Vim 显示的空格数"
set shiftwidth=4   "在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。"
set expandtab      "将 Tab 转为空格"
set autoindent     "按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致"

"*********状态行***************"
set laststatus=2   "状态行始终可见,显示文件名"
set statusline=%1*\%<%.50F\                 "显示文件名和文件路径 (%<应该可以去掉)
set statusline+=%=%2*\%y%m%r%h%w\ %*        "显示文件类型及文件状态
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*   "显示文件编码类型
set statusline+=%4*\ 行:%l/%L,列:%c\ %*     "显示光标所在行和列
set statusline+=%5*\%3p%%\%*                "显示光标前文本所占总文本的比例
hi User1 cterm=none ctermfg=250 ctermbg=0
hi User2 cterm=none ctermfg=208 ctermbg=0
hi User3 cterm=none ctermfg=80  ctermbg=0
hi User4 cterm=none ctermfg=500 ctermbg=0
hi User5 cterm=none ctermfg=300 ctermbg=0
