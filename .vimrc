"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.dein')
  call dein#begin('$HOME/.dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neocomplcache')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('thinca/vim-quickrun')
  call dein#add('thinca/vim-ref')
  call dein#add('vim-scripts/taglist.vim')
  call dein#add('w0rp/ale')
  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " add plugins
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('benjie/neomake-local-eslint.vim')
  call dein#add('simeji/winresizer')
  call dein#add('thinca/vim-quickrun')
  call dein#add('jceb/vim-hier')
  call dein#add('dannyob/quickfixstatus')
  call dein#add('osyo-manga/shabadou.vim')
  call dein#add('osyo-manga/vim-watchdogs')
  call dein#add('vim-airline/vim-airline')
"  call dein#add('vim-syntastic/syntastic')
  

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
"syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
"" スワップファイルを作らない
set noswapfile
"set buftype=nofile
" 編集中のファイルが変更されたら自動で読み直す
"set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" plugins settings

" NERDTree 
"autocmd VimEnter * execute ':NERDTree'
noremap <silent><C-b> :NERDTreeToggle<CR>

" sica fonts settings
set guifont=Cica:h16
set printfont=Cica:h12
set ambiwidth=single

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:WebDevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


let g:NERDTreeDirArrows = 1
let NERDTreeWinSize=22


"syntac check
"let g:syntastic_enable_signs=1 
"l"et g:syntastic_auto_loc_list=2 
"let g:syntastic_mode_map = {'mode': 'passive'}
"augroup AutoSyntastic 
"  autocmd! 
"  autocmd InsertLeave,TextChanged * call s:syntastic() 
"augroup END 
"function! s:syntastic() 
"  w 
"  SyntasticCheck 
"endfunction

" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"snipet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"set snippet file dir
let g:neosnippet#snippets_directory='~/dotfiles/snippets .cache/neosnippet'

" nerdtree
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd VimEnter * execute ':NERDTree'
noremap <silent><C-b> :NERDTreeToggle<CR>


"vim-ref
inoremap <silent><C-k> <C-o>:call<Space>ref#K('normal')<CR><ESC>
nmap <silent>K <Plug>(ref-keyword)
let g:ref_no_default_key_mappings = 1
let g:ref_cache_dir               = $HOME . '/.dein/repos/github.com/thinca/vim-ref/cache'
let g:ref_detect_filetype         = {
\    'php': 'phpmanual'
\}
let g:ref_phpmanual_path = $HOME . '/.dein/repos/github.com/thinca/vim-ref/php-chunked-xhtml'
let g:ref_use_cache      = 1
let g:ref_use_vimproc    = 1

" taglist.vim {{{
"MEMO:$ ctags --list-maps : ctags supported filetype.
"MEMO:$ ctags --list-kinds: ctags tlist setting.
nnoremap <silent> <Leader>t :Tlist<CR>
nnoremap <silent> <C-f> :TlistOpen<CR>
set tags = tags
let g:tlist_php_settings        = 'php;n:namespace;c:class;i:interface;t:trait;f:function;d:constant;v:variable'
let g:Tlist_Exit_OnlyWindow     = 1
let g:Tlist_Show_One_File       = 1
let g:Tlist_Use_Right_Window    = 1
let g:Tlist_WinWidth            = 25
"}}}

