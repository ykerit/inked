local lush = require('lush')
local hsl = lush.hsl

local fg_light = "#f0f0ff"
local fg_lighter = "#f5f5f5"

local white = "#C7C7C7"
local whiteb = "#FFFEFE"

local black = "#000000"

local bg_dark = "#0b0b0f"
local bg_light = "#21212c"
local bg2 = "#252531"
local bg3 = "#53536e"
local bg4 = "#44445a"

local bg = "#000000"
local fg = "#C7C7C7"


local black = "#000000"
local blackb = "#676767"

local red = "#C91B00"
local redb = "#FF6D67"

local green = "#00C200"
local greenb = "#5FF967"

local yellow = "#C7C400"
local yellowb = "#FEFB67"

local quartz = "#94a89e"

local niagara = "#94a4c7"
local niagaran = "#303540"
local niagarab = "#565e71"

local wisteria = "#9e95c6"

local cyan = "#5FFdFF"
local cyanb = "#00C5C7"

local magenta = "#C930C7"
local magentab = "#FF76FF"

local blue = "#0225C7"
local blueb = "#6871ff"


-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn  { fg = niagarab, gui = "italic" }, -- Columns set with 'colorcolumn'
    Conceal      { fg = niagarab }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { fg = yellowb }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = bg_light }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = niagara }, -- Directory names (and other special names in listings)
    DiffAdd      { fg = green }, -- Diff mode: Added line |diff.txt|
    DiffChange   { fg = wisteria }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { fg = red }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { bg = red }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { fg = red }, -- Error messages on the command line
    -- VertSplit    { }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   {  }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = yellowb }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = bg4 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg = bg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = white, bg = black }, -- Normal text
    NormalFloat  { Normal, bg = bg_light }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = fg, bg = bg_light }, -- Popup menu: Normal item.
    PmenuSel     { fg = fg, bg = bg_dark }, -- Popup menu: Selected item.
    PmenuSbar    { bg = bg2 }, -- Popup menu: Scrollbar.
    PmenuThumb   { bg = bg_dark }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { fg = fg_light, bg = bg3 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { fg = niagarab }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { fg = red }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { SpellBad }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { }, -- Status line of current window
    StatusLineNC { bg = bg_light, fg = quartz }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { Pmenu }, -- Tab pages line, not active tab page label
    TabLineFill  { }, -- Tab pages line, where there are no labels
    TabLineSel   { PmenuSel }, -- Tab pages line, active tab page label
    Title        { fg = wisteria }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = bg2 }, -- Visual mode selection
    -- VisualNOS    {  }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = redb }, -- Warning messages
    Whitespace   { fg = bg4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = cyan }, -- Any comment

    Constant       { fg = quartz }, -- (*) Any constant
    String         { fg = magentab }, --   A string constant: "this is a string"
    Character      { fg = wisteria }, --   A character constant: 'c', '\n'
    Number         { Constant }, --   A number constant: 234, 0xff
    Boolean        { Constant }, --   A boolean constant: TRUE, false
    Float          { Number }, --   A floating point constant: 2.3e10

    Identifier     { fg = cyan }, -- (*) Any variable name
    Function       { fg = cyan }, --   Function name (also: methods for classes)

    Statement      { fg = yellowb }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = greenb }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    Macro          { fg = cyan }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = greenb }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    Structure      { fg = cyan }, --   struct, union, enum, etc.
    Typedef        { fg = cyan }, --   A typedef

    Special        { fg = blueb }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo

    sym"@comment"           { fg = cyan }, -- Comment
    sym"@punctuation"       { fg = white }, -- Delimiter

    sym"@constant"          { fg = quartz }, -- Constant
    sym"@constant.builtin"  { fg = magenta }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    sym"@macro"             { fg = cyan }, -- Macro

    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar

    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float

    sym"@function"          { fg = cyan }, -- Function
    sym"@function.builtin"  { fg = magentab }, -- Special
    sym"@function.macro"    { fg = cyan }, -- Macro
    sym"@parameter"         { }, -- Identifier
    sym"@method"            { fg = cyan }, -- Function
    sym"@field"             { fg = white }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    sym"@constructor"       { fg = cyan }, -- Special

    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    sym"@operator"          { fg = greenb }, -- Operator
    sym"@keyword"           { fg = yellowb }, -- Keyword
    -- sym"@exception"         { }, -- Exception

    sym"@variable"          { fg = white }, -- Identifier

    sym"@type"              { fg = greenb }, -- Type
    sym"@type.definition"   { fg = cyan }, -- Typedef
    sym"@storageclass"      { fg = yellowb }, -- StorageClass
    sym"@structure"         { fg = cyan }, -- Structure

    sym"@namespace"         { fg = cyan }, -- Identifier
    sym"@include"           { fg = magentab }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
