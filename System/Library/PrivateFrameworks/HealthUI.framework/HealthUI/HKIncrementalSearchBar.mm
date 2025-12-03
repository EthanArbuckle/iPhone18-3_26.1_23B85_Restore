@interface HKIncrementalSearchBar
+ (BOOL)_hasUppercaseCharacters:(id)characters;
+ (id)_patternFromSearchString:(id)string quoteForJavascript:(BOOL)javascript;
+ (id)regularExpressionFromString:(id)string quoteForJavascript:(BOOL)javascript caseless:(BOOL *)caseless;
- (BOOL)keyboardIsUp;
- (BOOL)searchIsActive;
- (CGSize)intrinsicContentSize;
- (HKIncrementalSearchBar)init;
- (NSString)searchText;
- (void)_lowerKeyboard;
- (void)activateSearch:(BOOL)search;
- (void)dealloc;
- (void)doneAction:(id)action;
- (void)searchKeyboardDidHide:(id)hide;
- (void)setDownEnabled:(BOOL)enabled;
- (void)setMatchDisplayText:(id)text;
- (void)setMatchDisplayVisible:(BOOL)visible;
- (void)setSearchText:(id)text;
- (void)setUpEnabled:(BOOL)enabled;
@end

@implementation HKIncrementalSearchBar

- (HKIncrementalSearchBar)init
{
  v8.receiver = self;
  v8.super_class = HKIncrementalSearchBar;
  v2 = [(HKIncrementalSearchBar *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [[_SearchBarContent alloc] initWithSearchBar:v2];
    searchBarContent = v2->_searchBarContent;
    v2->_searchBarContent = v3;

    [(HKIncrementalSearchBar *)v2 setUpEnabled:0];
    [(HKIncrementalSearchBar *)v2 setDownEnabled:0];
    [(HKIncrementalSearchBar *)v2 activateSearch:0];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(HKIncrementalSearchBar *)v2 setBackgroundColor:systemBackgroundColor];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_searchKeyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];

  v4.receiver = self;
  v4.super_class = HKIncrementalSearchBar;
  [(HKIncrementalSearchBar *)&v4 dealloc];
}

- (BOOL)keyboardIsUp
{
  searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  isFirstResponder = [searchEntry isFirstResponder];

  return isFirstResponder;
}

- (BOOL)searchIsActive
{
  if ([(HKIncrementalSearchBar *)self keyboardIsUp])
  {
    return 1;
  }

  return [(HKIncrementalSearchBar *)self keyboardIsDown];
}

- (void)searchKeyboardDidHide:(id)hide
{
  if (![(HKIncrementalSearchBar *)self searchIsActive])
  {
    searchBarDelegate = [(_SearchBarContent *)self->_searchBarContent searchBarDelegate];

    if (searchBarDelegate)
    {
      searchBarDelegate2 = [(_SearchBarContent *)self->_searchBarContent searchBarDelegate];
      [searchBarDelegate2 searchBarDoneAction:self];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setUpEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  upBarButton = [(_SearchBarContent *)self->_searchBarContent upBarButton];
  [upBarButton setEnabled:enabledCopy];
}

- (void)setDownEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  downBarButton = [(_SearchBarContent *)self->_searchBarContent downBarButton];
  [downBarButton setEnabled:enabledCopy];
}

- (NSString)searchText
{
  searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  text = [searchEntry text];

  return text;
}

- (void)setSearchText:(id)text
{
  searchBarContent = self->_searchBarContent;
  textCopy = text;
  searchEntry = [(_SearchBarContent *)searchBarContent searchEntry];
  [searchEntry setText:textCopy];
}

- (void)setMatchDisplayText:(id)text
{
  objc_storeStrong(&self->_matchDisplayText, text);
  textCopy = text;
  searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [searchEntry setMatchDisplayString:textCopy];
}

- (void)setMatchDisplayVisible:(BOOL)visible
{
  visibleCopy = visible;
  searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [searchEntry matchDisplayVisible:visibleCopy];
}

- (void)activateSearch:(BOOL)search
{
  if (search)
  {
    if (![(HKIncrementalSearchBar *)self searchIsActive])
    {
      [(HKIncrementalSearchBar *)self becomeFirstResponder];
      searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
      [searchEntry becomeFirstResponder];
    }
  }

  else
  {
    searchEntry2 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
    [searchEntry2 resignFirstResponder];

    [(HKIncrementalSearchBar *)self resignFirstResponder];
    [(HKIncrementalSearchBar *)self setUpEnabled:0];
    [(HKIncrementalSearchBar *)self setDownEnabled:0];
    [(HKIncrementalSearchBar *)self setSearchText:&stru_1F42FFBE0];
    [(HKIncrementalSearchBar *)self setMatchDisplayText:&stru_1F42FFBE0];

    [(HKIncrementalSearchBar *)self setMatchDisplayVisible:0];
  }
}

- (void)_lowerKeyboard
{
  if ([(HKIncrementalSearchBar *)self keyboardIsUp])
  {

    [(HKIncrementalSearchBar *)self becomeFirstResponder];
  }
}

- (void)doneAction:(id)action
{
  searchEntry = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [searchEntry resignFirstResponder];

  [(HKIncrementalSearchBar *)self resignFirstResponder];
}

+ (BOOL)_hasUppercaseCharacters:(id)characters
{
  v3 = MEMORY[0x1E696AB08];
  charactersCopy = characters;
  uppercaseLetterCharacterSet = [v3 uppercaseLetterCharacterSet];
  v6 = [charactersCopy rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)_patternFromSearchString:(id)string quoteForJavascript:(BOOL)javascript
{
  javascriptCopy = javascript;
  stringCopy = string;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\\'"];
  v8 = [MEMORY[0x1E696AE70] escapedPatternForString:stringCopy];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = [v8 length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__HKIncrementalSearchBar__patternFromSearchString_quoteForJavascript___block_invoke;
  v17[3] = &unk_1E81BB5C8;
  v21 = &v23;
  v11 = whitespaceCharacterSet;
  v18 = v11;
  v22 = javascriptCopy;
  v12 = v9;
  v19 = v12;
  v13 = v7;
  v20 = v13;
  [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v17}];
  if (*(v24 + 24) == 1)
  {
    if (javascriptCopy)
    {
      [v12 appendString:@"\\""];
    }

    [v12 appendString:@"\\s+"];
  }

  v14 = v20;
  v15 = v12;

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __70__HKIncrementalSearchBar__patternFromSearchString_quoteForJavascript___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 24);
  v9 = v3;
  v5 = [v3 stringByTrimmingCharactersInSet:*(a1 + 32)];
  v6 = [v5 length];

  if (v4 == 1)
  {
    if (v6)
    {
      if (*(a1 + 64) == 1)
      {
        [*(a1 + 40) appendString:@"\\""];
      }

      [*(a1 + 40) appendString:@"\\s+"];
      [*(a1 + 40) appendString:v9];
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else if (v6)
  {
    if (*(a1 + 64) == 1)
    {
      v7 = [v9 stringByTrimmingCharactersInSet:*(a1 + 48)];
      v8 = [v7 length];

      if (!v8)
      {
        [*(a1 + 40) appendString:@"\\""];
      }
    }

    [*(a1 + 40) appendString:v9];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

+ (id)regularExpressionFromString:(id)string quoteForJavascript:(BOOL)javascript caseless:(BOOL *)caseless
{
  javascriptCopy = javascript;
  stringCopy = string;
  if (caseless)
  {
    *caseless = ![HKIncrementalSearchBar _hasUppercaseCharacters:stringCopy];
  }

  v8 = [HKIncrementalSearchBar _patternFromSearchString:stringCopy quoteForJavascript:javascriptCopy];

  return v8;
}

@end