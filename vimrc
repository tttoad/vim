filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage，Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'preservim/nerdtree'

Plugin 'zivyangll/git-blame.vim'

" buffer
Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'ryanoasis/vim-devicons'

Plugin 'mfussenegger/nvim-dap'
Plugin 'vim-airline/vim-airline'

Plugin 'liuchengxu/vim-which-key'

Plugin 'itchyny/lightline.vim'

" history
Plugin 'mbbill/undotree'

" rust
"Plugin 'rust-lang/rust.vim'

" Plugin 'majutsushi/tagbar'

Plugin 'liuchengxu/vista.vim'

" Plugin 'Valloric/YouCompleteMe'

Plugin 'Yggdroot/indentLine'

Plugin 'ianva/vim-youdao-translater'

Plugin 'fatih/vim-go'
" Plugin 'govim/govim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'marijnh/tern_for_vim'

Plugin 'neoclide/coc.nvim'

Plugin 'ctrlpvim/ctrlp.vim'

" Plugin 'kamykn/popup-menu.nvim'
" Plugin 'kamykn/spelunker.vim'

" git插件
Plugin 'tpope/vim-fugitive'
" git插件扩展
Plugin 'airblade/vim-gitgutter'

" test search
Plugin 'dyng/ctrlsf.vim'

" 没啥用好像...
Plugin 'ptzz/lf.vim'

" fzf
Plugin 'junegunn/fzf.vim'

" 终端插件
Plugin 'voldikss/vim-floaterm'

" 自动格式化
Plugin 'Chiel92/vim-autoformat'

" 可以在导航目录中看到 git 版本信息
Plugin 'Xuyuanp/nerdtree-git-plugin'

" markdown 插件
" Plugin 'iamcco/mathjax-support-for-mkdp'
" Plugin 'iamcco/markdown-preview.vim'
" 配色方案
" colorscheme neodark
Plugin 'KeitaNakamura/neodark.vim'
" colorscheme monokai
Plugin 'crusoexia/vim-monokai'
" colorscheme github
Plugin 'acarapetis/vim-colors-github'
" colorscheme one
Plugin 'rakr/vim-one'
"pink theme
Plugin 'nightsense/strawberry'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdcommenter'
"
" " 代码片段生成
" Plugin 'honza/vim-snippets'
" Plugin 'sirVer/ultisnips'
"
" dockerfile
Plugin 'ekalinin/dockerfile.vim'

" 翻译
Plugin 'soimort/translate-shell'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" 搜索大小写不敏感
set ignorecase

set encoding=UTF-8
set number
" 设置行会导致输入指令后乱码...
"set lines=60
"set columns=200
set mouse=a
syntax on
" 突出当前行
set cursorline
set laststatus=2
" 自动缩进
"set autoindent
set tabstop=4
set smarttab
set shiftwidth=4
set softtabstop=4
set backspace=eol,start,indent
" 自动补全
" set complete=.,w,b,u,t,i

set showcmd
set whichwrap+=<,>,h,l
" 光标到底部距离
set scrolloff=3
" 历史记录
set history=1000
" 禁止生成临时文件
set nobackup
" 去除vi相关一致性模式
set nocompatible
" 设置vim日志
" set verbose=13
" set verbosefile=./vim.log
set cmdheight=2
set completeopt-=preview

nnoremap m :+10<cr>
nnoremap , :-10<cr>
vnoremap m 10<cr>
vnoremap , 10-
imap <c-k> <up>
imap <c-h> <left>
imap <c-j> <down>
imap <c-l> <right>
imap <c-a> <esc>I
nmap <c-a> ^
vnoremap <c-a> ^
inoremap <c-e> <esc>A
nnoremap <c-e> $
vnoremap <c-e> $
imap <c-g> <esc>GG
imap <c-o> <esc>o
" nnoremap <c-o> o
imap <c-u> <esc>u
imap <c-d> <esc>ddi
nmap <c-k> <up>
nmap <c-h> <left>
nmap <c-j> <down>
nmap <c-l> <right>
inoremap <c-t> <esc>yyi
imap <c-p> <esc>pi
nnoremap <c-G> GG
imap <c-G> <esc>GG
imap <c-s> <esc>:w<cr>
nmap <c-s> :w<cr>
nmap <c-q> :FloatermKill!<cr> :wqa<cr>
imap <c-q> <esc>:FloatermKill!<cr> :wqa<cr>
nmap L $
nmap H ^
noremap <c-w> <c-w>w
" noremap <leader>s :split<cr>
vmap <leader>y "+y
vnoremap <c-d> "+d
nmap <leader>v "+p
noremap <c-x> <c-r>

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" NERDCommenterComment
map <leader>/ <plug>NERDCommenterComment
map <leader>. <plug>NERDCommenterUncomment

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'go': { 'left': '//','right': '' } }
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" floaterm
map <leader>n <esc>:FloatermNew lf<CR>
map <leader>ftr :FloatermNew --height=0.3 --wintype=split --position=right <CR>

let g:floaterm_keymap_kill ='<F8>'
let g:floaterm_keymap_new ='<leader>ft'
let g:floaterm_keymap_prev ='<F9>'
let g:floaterm_keymap_next ='<F10>'
let g:floaterm_keymap_toggle ='<F12>'

" 光标回退
inoremap <c-t> <esc><c-o>
nnoremap <c-t> <c-o>
" set autowriteall
"自动重载
set autoread

"  光标变细
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
" 自动格式化
noremap <c-r> :Autoformat<CR>
inoremap <c-r> <esc>:Autoformat<CR>
" 主题配置
" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用
colorscheme  neodark  " 主题
" colorscheme   strawberry-light " 主题


" 设置vim-go
map <F5> :GoBuild<CR>
map <F1> :GoDocBrowser<CR>
noremap <silent> <space>i :GoImpl
noremap <silent> fill :GoFillStruct
" debug
nnoremap <leader>b :GoDebugBreakpoint<CR>
nnoremap <leader>c :GoDebugContinue<CR>
nnoremap <leader>db :GoDebugStart 
nnoremap <leader>dbc :GoDebugStart . --config=./config/config.yaml<CR>
nnoremap <leader>p :GoDebugPrint
nnoremap <leader>ds :GoDebugStop<CR>
nnoremap <leader>n :GoDebugNext<CR>
" quickfix
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

" 设置 vista
map <F3> :Vista!!<CR>
let g:lightline = {
			\ 'colorscheme': 'wombat',
			\ 'active': {
				\   'left': [ [ 'mode', 'paste' ],
				\             [ 'readonly', 'filename', 'modified', 'method' ] ]
				\ },
				\ 'component_function': {
					\   'method': 'NearestMethodOrFunction'
					\ },
					\ }

function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" NERDTree配置
" nmap <F2> <ESC>:NERDTreeToggle<CR>
" nnoremap <leader>ff :NERDTreeFind<CR>
" let NERDTreeHighlightCursorline = 1       " 高亮当前行
" let NERDTreeShowLineNumbers     = 1       " 显示行号
" let NERDTreeWinPos = "left"
" let NERDTreeMinimalUI = 1
" " 忽略列表中的文件
" let NERDTreeIgnore = [ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.egg$', '^\.git$', '^\.repo$', '^\.svn$', '^\.hg$','\.swp$','\.swn$' ]
" " 启动 vim 时打开 NERDTree
" " autocmd vimenter * NERDTree
" " 自动转到主窗口
" " autocmd VimEnter * wincmd p
" " 当打开 VIM，没有指定文件时和打开一个目录时，打开 NERDTree
" autocmd StdinReadPre * let s:std_in = 1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" " autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" " 关闭 NERDTree，当没有文件打开的时候
" "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa | endif
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"             \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif"
"
" let NERDTreeShowHidden=1
"

" coc-explore
nmap <F2> <Cmd>CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
"
" YCM配置
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649.
" set nobackup
" set nowritebackup
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <c-]> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <silent>rn <Plug>(coc-rename)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap for format selected region
vmap <c-1>  <Plug>(coc-format-selected)
nmap <c-1>  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" 注释
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" ctrlsf
let g:ctrlsf_backend = 'ag'
map <c-f> <esc>:CtrlSF
let g:ctrlsf_auto_focus = {
			\ "at" : "start",
			\ }
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_preview_position = 'inside'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_default_root = 'project+fw'

" snippets
" let g:UltiSnipsExpandTrigger="<tab>"

" let g:UltiSnipsEditSplit="vertical"

" 处理 YouCompleteMe的tab和Snippet冲突问题
" function! g:UltiSnips_Complete()
"     call UltiSnips#ExpandSnippet()
"     if g:ulti_expand_res == 0
"         if pumvisible()
"             return "\<C-n>"
"         else
"             call UltiSnips#JumpForwards()
"             if g:ulti_jump_forwards_res == 0
"                 return "\<TAB>"
"             endif
"         endif
"     endif
"     return ""
" endfunction
"
" au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" let g:UltiSnipsJumpForwardTrigger="<c-e>"
" let g:UltiSnipsListSnippets="<c-/>"
" let g:UltiSnipsJumpForwardTrigger="<cr>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips","mysnippets"]
" " this mapping Enter key to <C-y> to chose the current highlight item
" " and close the selection list, same as other IDEs.
" " CONFLICT with some plugins like tpope/Endwise
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"

" undoTree

noremap <leader>h :UndotreeToggle<cr>

autocmd VimEnter * call SetUndodir()

func SetUndodir()
	if has("persistent_undo")
		let target_path = expand('~/.undodir')

		" " create the directory and any parent directories
		" " if the location does not exist.
		if !isdirectory(target_path)
			call mkdir(target_path, "p", 0700)
		endif

		let &undodir=target_path
		set undofile
	endif
endfunc

" which-key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

" translate
vnoremap <silent> <leader>t :<C-u>Ydv<CR>
nnoremap <silent> <leader>t :<C-u>Ydc<CR>
" noremap <leader>t :<C-u>Yde<CR>
"
" rust ctags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/

" buffergator
let g:buffergator_viewport_split_policy="B"
let g:buffergator_suppress_keymaps=1
nnoremap <silent> <leader>w :BuffergatorToggle<CR>

" auto-pairs


"custom
noremap <leader>fa :call AddProtoInterface()<CR>

func AddProtoInterface()
	:%s/_\ cont/ctx\ cont/g
	:%s/xt,\ _\ \*p/xt,\ request\ \*p/g
	:%s/,\ _\ \*p/,\ response\ \*p/g
endfunc

