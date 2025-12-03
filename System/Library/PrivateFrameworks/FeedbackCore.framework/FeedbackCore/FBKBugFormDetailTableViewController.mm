@interface FBKBugFormDetailTableViewController
- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (FBKBugFormEditorDelegate)delegate;
- (id)getPathToScrollTo;
- (id)keyCommands;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)beginSearch;
- (void)commitSelection;
- (void)dealloc;
- (void)didGetClientSideResolvedNotification:(id)notification;
- (void)recordCheckboxAnswers;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)selectNext;
- (void)selectPrevious;
- (void)setQuestion:(id)question;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCheckboxDelegateIfNeeded;
- (void)updateChoices;
- (void)updateSearchBar;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation FBKBugFormDetailTableViewController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = FBKBugFormDetailTableViewController;
  [(FBKBugFormDetailTableViewController *)&v13 viewDidLoad];
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:44.0];

  v4 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView2 setSectionHeaderHeight:v4];

  tableView3 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView3 setEstimatedRowHeight:44.0];

  tableView4 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView4 setRowHeight:v4];

  tableView5 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView5 setEstimatedSectionFooterHeight:0.0];

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  tableView6 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView6 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v11 = FBKIsSolariumEnabled();
  tableView7 = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView7 _setHeaderAndFooterViewsFloat:v11];

  [(FBKBugFormDetailTableViewController *)self updateSearchBar];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"FBKClientSideResolvedChoicesDidChange" object:0];

  v4.receiver = self;
  v4.super_class = FBKBugFormDetailTableViewController;
  [(FBKBugFormDetailTableViewController *)&v4 dealloc];
}

- (void)setQuestion:(id)question
{
  questionCopy = question;
  objc_storeStrong(&self->_question, question);
  choiceSetResolver = [questionCopy choiceSetResolver];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = defaultCenter;
  if (choiceSetResolver)
  {
    [defaultCenter addObserver:self selector:sel_didGetClientSideResolvedNotification_ name:@"FBKClientSideResolvedChoicesDidChange" object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:@"FBKClientSideResolvedChoicesDidChange" object:0];
  }

  [(FBKBugFormDetailTableViewController *)self updateChoices];
}

- (void)updateChoices
{
  question = [(FBKBugFormDetailTableViewController *)self question];
  visibleChoices = [question visibleChoices];
  [(FBKBugFormDetailTableViewController *)self setVisibleChoices:visibleChoices];

  visibleChoices2 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  [(FBKBugFormDetailTableViewController *)self setSearchResultChoices:visibleChoices2];

  [(FBKBugFormDetailTableViewController *)self updateSearchBar];
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateSearchBar
{
  v22 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Choice"];
  [v22 frame];
  v4 = v3;
  visibleChoices = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  v6 = [visibleChoices count];

  question = [(FBKBugFormDetailTableViewController *)self question];
  if ([question answerType] != 2)
  {
    goto LABEL_6;
  }

  v8 = v4 * v6;
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView frame];
  if (v8 <= v10)
  {

LABEL_6:
    goto LABEL_7;
  }

  searchController = self->_searchController;

  if (!searchController)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    v13 = self->_searchController;
    self->_searchController = v12;

    searchController = [(FBKBugFormDetailTableViewController *)self searchController];
    [searchController setSearchResultsUpdater:self];

    v15 = self->_searchController;
    navigationItem = [(FBKBugFormDetailTableViewController *)self navigationItem];
    [navigationItem setSearchController:v15];

    searchController2 = [(FBKBugFormDetailTableViewController *)self searchController];
    [searchController2 setDelegate:self];

    searchController3 = [(FBKBugFormDetailTableViewController *)self searchController];
    [searchController3 setObscuresBackgroundDuringPresentation:0];

    searchController4 = [(FBKBugFormDetailTableViewController *)self searchController];
    searchBar = [searchController4 searchBar];
    [searchBar setDelegate:self];

    searchController5 = [(FBKBugFormDetailTableViewController *)self searchController];
    [searchController5 setHidesNavigationBarDuringPresentation:0];

    [(FBKBugFormDetailTableViewController *)self setDefinesPresentationContext:1];
  }

LABEL_7:
}

- (void)updateCheckboxDelegateIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  question = [(FBKBugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if (answerType == 4)
  {
    checkboxAnswersAtStart = [(FBKBugFormDetailTableViewController *)self checkboxAnswersAtStart];
    v6 = MEMORY[0x1E695DFD8];
    answer = [(FBKBugFormDetailTableViewController *)self answer];
    values = [answer values];
    v9 = [v6 setWithArray:values];
    v10 = [checkboxAnswersAtStart isEqualToSet:v9];

    if ((v10 & 1) == 0)
    {
      v11 = +[FBKLog appHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        question2 = [(FBKBugFormDetailTableViewController *)self question];
        role = [question2 role];
        v17 = 138543362;
        v18 = role;
        _os_log_impl(&dword_1E54BE000, v11, OS_LOG_TYPE_INFO, "Checkbox answers changed for question [%{public}@]", &v17, 0xCu);
      }

      delegate = [(FBKBugFormDetailTableViewController *)self delegate];
      question3 = [(FBKBugFormDetailTableViewController *)self question];
      [delegate answerDidChangeForQuestion:question3];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)recordCheckboxAnswers
{
  question = [(FBKBugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if (answerType == 4)
  {
    v5 = MEMORY[0x1E695DFD8];
    answer = [(FBKBugFormDetailTableViewController *)self answer];
    values = [answer values];
    v7 = [v5 setWithArray:values];
    [(FBKBugFormDetailTableViewController *)self setCheckboxAnswersAtStart:v7];
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  v8 = [tableView dequeueReusableCellWithIdentifier:@"FBKDetailTableViewHeaderCell"];

  if (FBKIsSolariumEnabled())
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView = [v8 contentView];
    [contentView setBackgroundColor:clearColor];

    v11 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:0];
    [v8 addInteraction:v11];
  }

  contentView2 = [v8 contentView];
  backgroundColor = [contentView2 backgroundColor];
  [v8 setBackgroundColor:backgroundColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel = [v8 textLabel];
  [textLabel setTextColor:labelColor];

  v16 = [(FBKBugFormDetailTableViewController *)self tableView:viewCopy titleForHeaderInSection:section];

  textLabel2 = [v8 textLabel];
  [textLabel2 setText:v16];

  question = [(FBKBugFormDetailTableViewController *)self question];
  answerType = [question answerType];
  if (answerType == 4)
  {
    textLabel2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [textLabel2 localizedStringForKey:@"CHECKBOX_FOOTER_TITLE" value:&stru_1F5F14EC0 table:0];
  }

  else
  {
    v20 = 0;
  }

  detailTextLabel = [v8 detailTextLabel];
  [detailTextLabel setText:v20];

  if (answerType == 4)
  {
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBKBugFormDetailTableViewController *)self searchController:view];
  isActive = [v5 isActive];

  if (isActive)
  {
    searchResultChoices = [(FBKBugFormDetailTableViewController *)self searchResultChoices];
    if (searchResultChoices)
    {
      searchResultChoices2 = [(FBKBugFormDetailTableViewController *)self searchResultChoices];
      v9 = [searchResultChoices2 count];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    searchResultChoices = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v9 = [searchResultChoices count];
  }

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(FBKBugFormDetailTableViewController *)self question:view];
  text = [v4 text];

  return text;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Choice" forIndexPath:pathCopy];
  if (!v7)
  {
    v7 = [[FBKChoiceCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  }

  searchController = [(FBKBugFormDetailTableViewController *)self searchController];
  if ([searchController isActive])
  {
    [(FBKBugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBKBugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  [(FBKChoiceCell *)v7 updateWithChoice:v10];
  question = [(FBKBugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if ((answerType - 2) < 2)
  {
    answer = [(FBKBugFormDetailTableViewController *)self answer];
    value = [answer value];
    [(FBKChoiceCell *)v7 evaluateSelectionWithValue:value];
LABEL_13:

    goto LABEL_14;
  }

  if (answerType == 4)
  {
    answer = [(FBKBugFormDetailTableViewController *)self answer];
    value = [answer values];
    [(FBKChoiceCell *)v7 evaluateSelectionWithValues:value];
    goto LABEL_13;
  }

  if (answerType != 11)
  {
    goto LABEL_15;
  }

  answer = +[FBKLog appHandle];
  if (os_log_type_enabled(answer, OS_LOG_TYPE_ERROR))
  {
    [FBKBugFormDetailTableViewController tableView:answer cellForRowAtIndexPath:?];
  }

LABEL_14:

LABEL_15:

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title CONTAINS[cd] %@", v6];
    visibleChoices = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v9 = [visibleChoices filteredArrayUsingPredicate:v7];
    v10 = [v9 mutableCopy];
    searchResultChoices = self->_searchResultChoices;
    self->_searchResultChoices = v10;
  }

  else
  {
    visibleChoices2 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v6 = self->_searchResultChoices;
    self->_searchResultChoices = visibleChoices2;
  }

  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  [tableView reloadData];
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(FBKBugFormDetailTableViewController *)self tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (BOOL)searchBar:(id)bar shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  barCopy = bar;
  v8 = [text isEqualToString:@"\t"];
  if (v8)
  {
    [barCopy endEditing:1];
    [(FBKBugFormDetailTableViewController *)self becomeFirstResponder];
    [(FBKBugFormDetailTableViewController *)self selectNext];
  }

  return v8 ^ 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  searchController = [(FBKBugFormDetailTableViewController *)self searchController];
  if ([searchController isActive])
  {
    [(FBKBugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBKBugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  question = [(FBKBugFormDetailTableViewController *)self question];
  answerType = [question answerType];

  if ((answerType - 2) < 2)
  {
    visibleCells = [viewCopy visibleCells];
    [visibleCells enumerateObjectsUsingBlock:&__block_literal_global];

    answer = [(FBKBugFormDetailTableViewController *)self answer];
    value = [v10 value];
    [answer setValue:value];

    visibleCells2 = [viewCopy cellForRowAtIndexPath:pathCopy];
    answer2 = [(FBKBugFormDetailTableViewController *)self answer];
    value2 = [answer2 value];
    [visibleCells2 evaluateSelectionWithValue:value2];

    delegate = [(FBKBugFormDetailTableViewController *)self delegate];
    question2 = [(FBKBugFormDetailTableViewController *)self question];
    [delegate answerDidChangeForQuestion:question2];

    searchController2 = [(FBKBugFormDetailTableViewController *)self searchController];
    LODWORD(question2) = [searchController2 isActive];

    if (question2)
    {
      [(FBKBugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(FBKBugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_13;
  }

  if (answerType == 4)
  {
    values = [(FBKAnswer *)self->_answer values];
    value3 = [v10 value];
    v24 = [values containsObject:value3];

    values2 = [(FBKAnswer *)self->_answer values];
    if (v24)
    {
      v26 = MEMORY[0x1E696AE18];
      value4 = [v10 value];
      v28 = [v26 predicateWithFormat:@"SELF != %@", value4];
      v29 = [values2 filteredArrayUsingPredicate:v28];
      [(FBKAnswer *)self->_answer setValues:v29];
    }

    else
    {
      value4 = [v10 value];
      v28 = [values2 arrayByAddingObject:value4];
      [(FBKAnswer *)self->_answer setValues:v28];
    }

    visibleCells2 = [viewCopy visibleCells];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__FBKBugFormDetailTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v30[3] = &unk_1E8771BD0;
    v30[4] = self;
    [visibleCells2 enumerateObjectsUsingBlock:v30];
LABEL_13:
  }
}

void __73__FBKBugFormDetailTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 answer];
  v4 = [v5 values];
  [v3 evaluateSelectionWithValues:v4];
}

- (void)didGetClientSideResolvedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  object = [notification object];
  question = [(FBKBugFormDetailTableViewController *)self question];
  choiceSetResolver = [question choiceSetResolver];
  v7 = [object isEqual:choiceSetResolver];

  if (v7)
  {
    v8 = +[FBKLog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      question2 = [(FBKBugFormDetailTableViewController *)self question];
      allChoices = [question2 allChoices];
      v12[0] = 67109120;
      v12[1] = [allChoices count];
      _os_log_impl(&dword_1E54BE000, v8, OS_LOG_TYPE_INFO, "updating choice set with [%i] choices", v12, 8u);
    }

    [(FBKBugFormDetailTableViewController *)self updateChoices];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getPathToScrollTo
{
  visibleChoices = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  v4 = MEMORY[0x1E696AE18];
  value = [(FBKAnswer *)self->_answer value];
  v6 = [v4 predicateWithFormat:@"value ==[c] %@", value];
  v7 = [visibleChoices filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    visibleChoices2 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    firstObject = [v7 firstObject];
    v10 = [visibleChoices2 indexOfObject:firstObject];

    v11 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)beginSearch
{
  searchController = [(FBKBugFormDetailTableViewController *)self searchController];

  if (searchController)
  {
    searchController2 = [(FBKBugFormDetailTableViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    [searchBar becomeFirstResponder];
  }
}

- (void)selectNext
{
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableView2 = [(FBKBugFormDetailTableViewController *)self tableView];
  v5 = [tableView2 numberOfRowsInSection:0];

  v6 = [indexPathForSelectedRow row];
  if (!indexPathForSelectedRow && (v7 = 0, v5 > 0) || (v7 = v6 + 1, v6 + 1 < v5))
  {
    tableView3 = [(FBKBugFormDetailTableViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
    [tableView3 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
  }
}

- (void)selectPrevious
{
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableView2 = [(FBKBugFormDetailTableViewController *)self tableView];
  v5 = [tableView2 numberOfRowsInSection:0];

  v6 = [indexPathForSelectedRow row];
  if (!indexPathForSelectedRow && (v7 = v5 < 1, v8 = v5 - 1, !v7) || (v8 = v6 - 1, v6 >= 1))
  {
    tableView3 = [(FBKBugFormDetailTableViewController *)self tableView];
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];
    [tableView3 selectRowAtIndexPath:v10 animated:1 scrollPosition:2];
  }
}

- (void)commitSelection
{
  tableView = [(FBKBugFormDetailTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(FBKBugFormDetailTableViewController *)self tableView];
    [(FBKBugFormDetailTableViewController *)self tableView:tableView2 didSelectRowAtIndexPath:indexPathForSelectedRow];
  }
}

- (id)keyCommands
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"f" modifierFlags:0x100000 action:sel_beginSearch];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SEARCH" value:&stru_1F5F14EC0 table:@"CommonStrings"];
  [v2 setDiscoverabilityTitle:v4];

  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0 action:sel_selectPrevious];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0 action:sel_selectNext];
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_commitSelection];
  v11[0] = v2;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (FBKBugFormEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end