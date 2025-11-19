@interface HKIncrementalSearchBar
+ (BOOL)_hasUppercaseCharacters:(id)a3;
+ (id)_patternFromSearchString:(id)a3 quoteForJavascript:(BOOL)a4;
+ (id)regularExpressionFromString:(id)a3 quoteForJavascript:(BOOL)a4 caseless:(BOOL *)a5;
- (BOOL)keyboardIsUp;
- (BOOL)searchIsActive;
- (CGSize)intrinsicContentSize;
- (HKIncrementalSearchBar)init;
- (NSString)searchText;
- (void)_lowerKeyboard;
- (void)activateSearch:(BOOL)a3;
- (void)dealloc;
- (void)doneAction:(id)a3;
- (void)searchKeyboardDidHide:(id)a3;
- (void)setDownEnabled:(BOOL)a3;
- (void)setMatchDisplayText:(id)a3;
- (void)setMatchDisplayVisible:(BOOL)a3;
- (void)setSearchText:(id)a3;
- (void)setUpEnabled:(BOOL)a3;
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
    v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(HKIncrementalSearchBar *)v2 setBackgroundColor:v5];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel_searchKeyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];

  v4.receiver = self;
  v4.super_class = HKIncrementalSearchBar;
  [(HKIncrementalSearchBar *)&v4 dealloc];
}

- (BOOL)keyboardIsUp
{
  v2 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (BOOL)searchIsActive
{
  if ([(HKIncrementalSearchBar *)self keyboardIsUp])
  {
    return 1;
  }

  return [(HKIncrementalSearchBar *)self keyboardIsDown];
}

- (void)searchKeyboardDidHide:(id)a3
{
  if (![(HKIncrementalSearchBar *)self searchIsActive])
  {
    v4 = [(_SearchBarContent *)self->_searchBarContent searchBarDelegate];

    if (v4)
    {
      v5 = [(_SearchBarContent *)self->_searchBarContent searchBarDelegate];
      [v5 searchBarDoneAction:self];
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

- (void)setUpEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_SearchBarContent *)self->_searchBarContent upBarButton];
  [v4 setEnabled:v3];
}

- (void)setDownEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(_SearchBarContent *)self->_searchBarContent downBarButton];
  [v4 setEnabled:v3];
}

- (NSString)searchText
{
  v2 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  v3 = [v2 text];

  return v3;
}

- (void)setSearchText:(id)a3
{
  searchBarContent = self->_searchBarContent;
  v4 = a3;
  v5 = [(_SearchBarContent *)searchBarContent searchEntry];
  [v5 setText:v4];
}

- (void)setMatchDisplayText:(id)a3
{
  objc_storeStrong(&self->_matchDisplayText, a3);
  v5 = a3;
  v6 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [v6 setMatchDisplayString:v5];
}

- (void)setMatchDisplayVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [v4 matchDisplayVisible:v3];
}

- (void)activateSearch:(BOOL)a3
{
  if (a3)
  {
    if (![(HKIncrementalSearchBar *)self searchIsActive])
    {
      [(HKIncrementalSearchBar *)self becomeFirstResponder];
      v5 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
      [v5 becomeFirstResponder];
    }
  }

  else
  {
    v4 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
    [v4 resignFirstResponder];

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

- (void)doneAction:(id)a3
{
  v4 = [(_SearchBarContent *)self->_searchBarContent searchEntry];
  [v4 resignFirstResponder];

  [(HKIncrementalSearchBar *)self resignFirstResponder];
}

+ (BOOL)_hasUppercaseCharacters:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 uppercaseLetterCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (id)_patternFromSearchString:(id)a3 quoteForJavascript:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"\\'"];
  v8 = [MEMORY[0x1E696AE70] escapedPatternForString:v5];
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
  v11 = v6;
  v18 = v11;
  v22 = v4;
  v12 = v9;
  v19 = v12;
  v13 = v7;
  v20 = v13;
  [v8 enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v17}];
  if (*(v24 + 24) == 1)
  {
    if (v4)
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

+ (id)regularExpressionFromString:(id)a3 quoteForJavascript:(BOOL)a4 caseless:(BOOL *)a5
{
  v6 = a4;
  v7 = a3;
  if (a5)
  {
    *a5 = ![HKIncrementalSearchBar _hasUppercaseCharacters:v7];
  }

  v8 = [HKIncrementalSearchBar _patternFromSearchString:v7 quoteForJavascript:v6];

  return v8;
}

@end