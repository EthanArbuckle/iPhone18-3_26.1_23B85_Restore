@interface HKLargePlainTextViewController
- (BOOL)_updateMatchDisplayString:(unint64_t)a3 numMatches:(unint64_t)a4;
- (HKLargePlainTextViewController)initWithData:(id)a3;
- (id)_selectionAttributes:(BOOL)a3;
- (id)searchBodyWithAttributes;
- (void)_updateCurrentSearchItem:(unint64_t)a3 hitsChanged:(BOOL)a4 resetSearch:(BOOL)a5;
- (void)addSearchResults:(IncrementalSearchResultsDefn *)a3;
- (void)cancelCurrentSearch;
- (void)endSearchResults;
- (void)finishSearchResults;
- (void)incrementalSearchOperation:(id)a3;
- (void)loadView;
- (void)resetSearchResults;
- (void)searchBarDoneAction:(id)a3;
- (void)searchBarUpAction:(id)a3;
- (void)startIncrementalSearch;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HKLargePlainTextViewController

- (HKLargePlainTextViewController)initWithData:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = HKLargePlainTextViewController;
  v6 = [(HKLargePlainTextViewController *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    dataAsString = v7->_dataAsString;
    v7->_dataAsString = v8;

    textView = v7->_textView;
    v7->_textView = 0;

    incrementalSearchBar = v7->_incrementalSearchBar;
    v7->_incrementalSearchBar = 0;

    v12 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    searchQueue = v7->_searchQueue;
    v7->_searchQueue = v12;

    currentSearch = v7->_currentSearch;
    v7->_currentSearch = 0;

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentRanges = v7->_currentRanges;
    v7->_currentRanges = v15;

    v7->_currentSearchItem = 0;
    v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    normalTextViewBackground = v7->_normalTextViewBackground;
    v7->_normalTextViewBackground = v17;

    v19 = [MEMORY[0x1E69DC888] systemGray3Color];
    selectedTextViewBackground = v7->_selectedTextViewBackground;
    v7->_selectedTextViewBackground = v19;

    v21 = [MEMORY[0x1E69DC888] systemBlackColor];
    currentSelectionForeground = v7->_currentSelectionForeground;
    v7->_currentSelectionForeground = v21;

    v23 = [MEMORY[0x1E69DC888] systemYellowColor];
    currentSelectionBackground = v7->_currentSelectionBackground;
    v7->_currentSelectionBackground = v23;

    v25 = [MEMORY[0x1E69DC888] labelColor];
    otherSelectionForeground = v7->_otherSelectionForeground;
    v7->_otherSelectionForeground = v25;

    v27 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    otherSelectionBackground = v7->_otherSelectionBackground;
    v7->_otherSelectionBackground = v27;

    v7->_currentKeyboardHeight = 0.0;
  }

  return v7;
}

- (void)startIncrementalSearch
{
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar activateSearch:1];
  v3 = [(HKLargePlainTextViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v11 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [v11 setAxis:1];
  v4 = objc_alloc(MEMORY[0x1E69DD168]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  textView = self->_textView;
  self->_textView = v5;

  [(UITextView *)self->_textView setEditable:0];
  v7 = [(HKLargePlainTextViewController *)self searchBodyWithAttributes];
  [(UITextView *)self->_textView setAttributedText:v7];
  [v11 addArrangedSubview:self->_textView];
  v8 = objc_alloc_init(HKIncrementalSearchBar);
  incrementalSearchBar = self->_incrementalSearchBar;
  self->_incrementalSearchBar = v8;

  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setSearchBarDelegate:self];
  LODWORD(v10) = 1148846080;
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setContentHuggingPriority:1 forAxis:v10];
  [v11 addArrangedSubview:self->_incrementalSearchBar];
  [(HKLargePlainTextViewController *)self setView:v11];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKLargePlainTextViewController;
  [(HKLargePlainTextViewController *)&v4 viewWillDisappear:a3];
  [(HKLargePlainTextViewController *)self searchBarDoneAction:self];
}

- (id)_selectionAttributes:(BOOL)a3
{
  v3 = a3;
  v18[3] = *MEMORY[0x1E69E9840];
  v5 = [(HKLargePlainTextViewController *)self _standardPlainTextFont];
  v6 = v5;
  v7 = &OBJC_IVAR___HKLargePlainTextViewController__otherSelectionForeground;
  if (v3)
  {
    v7 = &OBJC_IVAR___HKLargePlainTextViewController__currentSelectionForeground;
  }

  v8 = *(&self->super.super.super.super.isa + *v7);
  v9 = &OBJC_IVAR___HKLargePlainTextViewController__otherSelectionBackground;
  if (v3)
  {
    v9 = &OBJC_IVAR___HKLargePlainTextViewController__currentSelectionBackground;
  }

  v10 = *(&self->super.super.super.super.isa + *v9);
  v11 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v11;
  v18[0] = v5;
  v18[1] = v8;
  v17[2] = *MEMORY[0x1E69DB600];
  v18[2] = v10;
  v12 = MEMORY[0x1E695DF20];
  v13 = v10;
  v14 = v8;
  v15 = [v12 dictionaryWithObjects:v18 forKeys:v17 count:3];

  return v15;
}

- (id)searchBodyWithAttributes
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKLargePlainTextViewController *)self _standardPlainTextFont];
  v4 = *MEMORY[0x1E69DB650];
  v22[0] = *MEMORY[0x1E69DB648];
  v22[1] = v4;
  v23[0] = v3;
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v23[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_dataAsString attributes:v6];
  v8 = [(HKLargePlainTextViewController *)self _selectionAttributes:0];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_currentRanges;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) rangeValue];
        [v7 addAttributes:v8 range:{v14, v15}];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v7;
}

- (void)resetSearchResults
{
  [(NSMutableArray *)self->_currentRanges removeAllObjects];
  v3 = [(HKLargePlainTextViewController *)self searchBodyWithAttributes];
  [(UITextView *)self->_textView setAttributedText:v3];
}

- (void)endSearchResults
{
  if ([(NSMutableArray *)self->_currentRanges count])
  {
    [(UITextView *)self->_textView setBackgroundColor:self->_normalTextViewBackground];
  }

  [(HKLargePlainTextViewController *)self cancelCurrentSearch];

  [(HKLargePlainTextViewController *)self resetCurrentSearchItem];
}

- (void)finishSearchResults
{
  if (![(NSMutableArray *)self->_currentRanges count])
  {
    [(UITextView *)self->_textView setBackgroundColor:self->_normalTextViewBackground];

    [(HKLargePlainTextViewController *)self resetCurrentSearchItem];
  }
}

- (void)cancelCurrentSearch
{
  currentSearch = self->_currentSearch;
  if (currentSearch)
  {
    [(_IncrementalSearchOperation *)currentSearch cancel];
    [(HKLargePlainTextViewController *)self resetSearchResults];
    v4 = self->_currentSearch;
    self->_currentSearch = 0;
  }
}

- (void)addSearchResults:(IncrementalSearchResultsDefn *)a3
{
  v5 = [(NSMutableArray *)self->_currentRanges count];
  v6 = [(NSMutableArray *)self->_currentRanges count];
  v7 = [(UITextView *)self->_textView textStorage];
  v12 = v5;
  v13 = v7;
  if (v6 > 0x3FF)
  {
    v8 = 0;
  }

  else
  {
    [v7 beginEditing];
    v8 = [(HKLargePlainTextViewController *)self _selectionAttributes:0];
  }

  if (a3->var0)
  {
    v9 = 0;
    p_length = &a3->var1[0].length;
    do
    {
      v11 = [MEMORY[0x1E696B098] valueWithRange:{*(p_length - 1), *p_length, v12}];
      [(NSMutableArray *)self->_currentRanges addObject:v11];
      if (v6 <= 0x3FF)
      {
        [v13 addAttributes:v8 range:{*(p_length - 1), *p_length}];
      }

      ++v9;
      p_length += 2;
    }

    while (a3->var0 > v9);
  }

  if (v6 < 0x400)
  {
    [v13 endEditing];
  }

  if (v12)
  {
    [(HKLargePlainTextViewController *)self _updateCurrentSearchItem:self->_currentSearchItem hitsChanged:1 resetSearch:0];
  }

  else
  {
    [(UITextView *)self->_textView setBackgroundColor:self->_selectedTextViewBackground];
    [(HKLargePlainTextViewController *)self resetCurrentSearchItem];
  }
}

- (void)incrementalSearchOperation:(id)a3
{
  v4 = a3;
  [(HKLargePlainTextViewController *)self cancelCurrentSearch];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke;
  aBlock[3] = &unk_1E81BAD40;
  aBlock[4] = self;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_3;
  v9[3] = &unk_1E81BAD68;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  v6 = _Block_copy(v9);
  if (v4 && [v4 length])
  {
    v7 = [[_IncrementalSearchOperation alloc] initWithSearchString:v4 searchBody:self->_dataAsString resultsBlock:v5 finishedBlock:v6];
    currentSearch = self->_currentSearch;
    self->_currentSearch = v7;

    [(NSOperationQueue *)self->_searchQueue addOperation:self->_currentSearch];
  }

  else
  {
    [(HKLargePlainTextViewController *)self finishSearchResults];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(*(a1 + 32) + 1032) == a2)
  {
    v9 = v3;
    v10 = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_2;
    v6[3] = &unk_1E81BAD18;
    objc_copyWeak(&v7, (a1 + 40));
    memcpy(v8, a3, sizeof(v8));
    dispatch_async(MEMORY[0x1E69E96A0], v6);
    objc_destroyWeak(&v7);
  }
}

void __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  [WeakRetained addSearchResults:__dst];
}

void __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 32) + 1032) == a2)
  {
    v5[3] = v2;
    v5[4] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_4;
    block[3] = &unk_1E81B5738;
    objc_copyWeak(v5, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v5);
  }
}

void __61__HKLargePlainTextViewController_incrementalSearchOperation___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishSearchResults];
}

- (BOOL)_updateMatchDisplayString:(unint64_t)a3 numMatches:(unint64_t)a4
{
  if (a4)
  {
    if (a4 == 1)
    {
      v6 = HKLocalizedStringForNumberWithTemplate(&unk_1F43845D0, 0);
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = [v8 localizedStringForKey:@"INCREMENTAL_SEARCH_ONE_MATCH %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v10 = [v7 stringWithFormat:v9, v6];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + 1];
      v6 = HKLocalizedStringForNumberWithTemplate(v13, 1);

      if (a4 > 0x3FF)
      {
        v8 = HKLocalizedStringForNumberWithTemplate(&unk_1F43845E8, 1);
        v15 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v16;
        v17 = @"INCREMENTAL_SEARCH_MAX_ITEM %@ %@";
      }

      else
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        v8 = HKLocalizedStringForNumberWithTemplate(v14, 1);

        v15 = MEMORY[0x1E696AEC0];
        v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v16;
        v17 = @"INCREMENTAL_SEARCH_MATCH_ITEM %@ %@";
      }

      v18 = [v16 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v10 = [v15 stringWithFormat:v18, v6, v8];
    }

    goto LABEL_11;
  }

  v11 = [(HKIncrementalSearchBar *)self->_incrementalSearchBar searchText];
  v12 = [v11 length];

  if (v12)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v10 = [v6 localizedStringForKey:@"INCREMENTAL_SEARCH_NO_MATCHES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_11:

    [(HKIncrementalSearchBar *)self->_incrementalSearchBar setMatchDisplayText:v10];
    return 1;
  }

  return 0;
}

- (void)_updateCurrentSearchItem:(unint64_t)a3 hitsChanged:(BOOL)a4 resetSearch:(BOOL)a5
{
  v5 = a5;
  v8 = [(NSMutableArray *)self->_currentRanges count:a3];
  if (self->_currentSearchItem != a3 || v5)
  {
    v10 = [(UITextView *)self->_textView textStorage];
    if (self->_currentSearchItem >= v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = [(NSMutableArray *)self->_currentRanges objectAtIndexedSubscript:?];
    }

    v26 = v11;
    v12 = [v11 rangeValue];
    v22 = v13;
    v24 = v12;
    if (v8 <= a3)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(NSMutableArray *)self->_currentRanges objectAtIndexedSubscript:a3];
    }

    v15 = [v14 rangeValue];
    v17 = v16;
    v18 = [(HKLargePlainTextViewController *)self _selectionAttributes:0];
    v19 = [(HKLargePlainTextViewController *)self _selectionAttributes:1];
    [v10 beginEditing];
    if (self->_currentSearchItem < v8)
    {
      [v10 setAttributes:v18 range:{v25, v23}];
    }

    if (v8 <= a3)
    {
      [v10 endEditing];
    }

    else
    {
      [v10 setAttributes:v19 range:{v15, v17}];
      [v10 endEditing];
      [(UITextView *)self->_textView scrollRangeToVisible:v15, v17];
    }
  }

  if (v8)
  {
    v20 = a3 != 0;
  }

  else
  {
    v20 = 0;
  }

  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setUpEnabled:v20];
  v21 = v8 - 1 > a3 && v8 != 0;
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setDownEnabled:v21];
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar setMatchDisplayVisible:[(HKLargePlainTextViewController *)self _updateMatchDisplayString:a3 numMatches:v8]];
  if (v8 > a3)
  {
    self->_currentSearchItem = a3;
  }
}

- (void)searchBarUpAction:(id)a3
{
  currentSearchItem = self->_currentSearchItem;
  if (currentSearchItem >= 1)
  {
    [(HKLargePlainTextViewController *)self _updateCurrentSearchItem:currentSearchItem - 1 hitsChanged:0 resetSearch:0];
  }
}

- (void)searchBarDoneAction:(id)a3
{
  [(HKIncrementalSearchBar *)self->_incrementalSearchBar activateSearch:0];

  [(HKLargePlainTextViewController *)self endSearchResults];
}

@end