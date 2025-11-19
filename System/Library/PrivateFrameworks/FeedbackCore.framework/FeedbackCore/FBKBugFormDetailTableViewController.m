@interface FBKBugFormDetailTableViewController
- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (FBKBugFormEditorDelegate)delegate;
- (id)getPathToScrollTo;
- (id)keyCommands;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)beginSearch;
- (void)commitSelection;
- (void)dealloc;
- (void)didGetClientSideResolvedNotification:(id)a3;
- (void)recordCheckboxAnswers;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)selectNext;
- (void)selectPrevious;
- (void)setQuestion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCheckboxDelegateIfNeeded;
- (void)updateChoices;
- (void)updateSearchBar;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBKBugFormDetailTableViewController

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = FBKBugFormDetailTableViewController;
  [(FBKBugFormDetailTableViewController *)&v13 viewDidLoad];
  v3 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v3 setEstimatedSectionHeaderHeight:44.0];

  v4 = *MEMORY[0x1E69DE3D0];
  v5 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v5 setSectionHeaderHeight:v4];

  v6 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v6 setEstimatedRowHeight:44.0];

  v7 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v7 setRowHeight:v4];

  v8 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v8 setEstimatedSectionFooterHeight:0.0];

  v9 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  v10 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v10 setBackgroundColor:v9];

  v11 = FBKIsSolariumEnabled();
  v12 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v12 _setHeaderAndFooterViewsFloat:v11];

  [(FBKBugFormDetailTableViewController *)self updateSearchBar];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"FBKClientSideResolvedChoicesDidChange" object:0];

  v4.receiver = self;
  v4.super_class = FBKBugFormDetailTableViewController;
  [(FBKBugFormDetailTableViewController *)&v4 dealloc];
}

- (void)setQuestion:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_question, a3);
  v5 = [v8 choiceSetResolver];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = v6;
  if (v5)
  {
    [v6 addObserver:self selector:sel_didGetClientSideResolvedNotification_ name:@"FBKClientSideResolvedChoicesDidChange" object:0];
  }

  else
  {
    [v6 removeObserver:self name:@"FBKClientSideResolvedChoicesDidChange" object:0];
  }

  [(FBKBugFormDetailTableViewController *)self updateChoices];
}

- (void)updateChoices
{
  v3 = [(FBKBugFormDetailTableViewController *)self question];
  v4 = [v3 visibleChoices];
  [(FBKBugFormDetailTableViewController *)self setVisibleChoices:v4];

  v5 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  [(FBKBugFormDetailTableViewController *)self setSearchResultChoices:v5];

  [(FBKBugFormDetailTableViewController *)self updateSearchBar];
  v6 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v6 reloadData];
}

- (void)updateSearchBar
{
  v22 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"Choice"];
  [v22 frame];
  v4 = v3;
  v5 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  v6 = [v5 count];

  v7 = [(FBKBugFormDetailTableViewController *)self question];
  if ([v7 answerType] != 2)
  {
    goto LABEL_6;
  }

  v8 = v4 * v6;
  v9 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v9 frame];
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

    v14 = [(FBKBugFormDetailTableViewController *)self searchController];
    [v14 setSearchResultsUpdater:self];

    v15 = self->_searchController;
    v16 = [(FBKBugFormDetailTableViewController *)self navigationItem];
    [v16 setSearchController:v15];

    v17 = [(FBKBugFormDetailTableViewController *)self searchController];
    [v17 setDelegate:self];

    v18 = [(FBKBugFormDetailTableViewController *)self searchController];
    [v18 setObscuresBackgroundDuringPresentation:0];

    v19 = [(FBKBugFormDetailTableViewController *)self searchController];
    v20 = [v19 searchBar];
    [v20 setDelegate:self];

    v21 = [(FBKBugFormDetailTableViewController *)self searchController];
    [v21 setHidesNavigationBarDuringPresentation:0];

    [(FBKBugFormDetailTableViewController *)self setDefinesPresentationContext:1];
  }

LABEL_7:
}

- (void)updateCheckboxDelegateIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(FBKBugFormDetailTableViewController *)self question];
  v4 = [v3 answerType];

  if (v4 == 4)
  {
    v5 = [(FBKBugFormDetailTableViewController *)self checkboxAnswersAtStart];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [(FBKBugFormDetailTableViewController *)self answer];
    v8 = [v7 values];
    v9 = [v6 setWithArray:v8];
    v10 = [v5 isEqualToSet:v9];

    if ((v10 & 1) == 0)
    {
      v11 = +[FBKLog appHandle];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(FBKBugFormDetailTableViewController *)self question];
        v13 = [v12 role];
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_1E54BE000, v11, OS_LOG_TYPE_INFO, "Checkbox answers changed for question [%{public}@]", &v17, 0xCu);
      }

      v14 = [(FBKBugFormDetailTableViewController *)self delegate];
      v15 = [(FBKBugFormDetailTableViewController *)self question];
      [v14 answerDidChangeForQuestion:v15];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)recordCheckboxAnswers
{
  v3 = [(FBKBugFormDetailTableViewController *)self question];
  v4 = [v3 answerType];

  if (v4 == 4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v8 = [(FBKBugFormDetailTableViewController *)self answer];
    v6 = [v8 values];
    v7 = [v5 setWithArray:v6];
    [(FBKBugFormDetailTableViewController *)self setCheckboxAnswersAtStart:v7];
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(FBKBugFormDetailTableViewController *)self tableView];
  v8 = [v7 dequeueReusableCellWithIdentifier:@"FBKDetailTableViewHeaderCell"];

  if (FBKIsSolariumEnabled())
  {
    v9 = [MEMORY[0x1E69DC888] clearColor];
    v10 = [v8 contentView];
    [v10 setBackgroundColor:v9];

    v11 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:0];
    [v8 addInteraction:v11];
  }

  v12 = [v8 contentView];
  v13 = [v12 backgroundColor];
  [v8 setBackgroundColor:v13];

  v14 = [MEMORY[0x1E69DC888] labelColor];
  v15 = [v8 textLabel];
  [v15 setTextColor:v14];

  v16 = [(FBKBugFormDetailTableViewController *)self tableView:v6 titleForHeaderInSection:a4];

  v17 = [v8 textLabel];
  [v17 setText:v16];

  v18 = [(FBKBugFormDetailTableViewController *)self question];
  v19 = [v18 answerType];
  if (v19 == 4)
  {
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v17 localizedStringForKey:@"CHECKBOX_FOOTER_TITLE" value:&stru_1F5F14EC0 table:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 detailTextLabel];
  [v21 setText:v20];

  if (v19 == 4)
  {
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBKBugFormDetailTableViewController *)self searchController:a3];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(FBKBugFormDetailTableViewController *)self searchResultChoices];
    if (v7)
    {
      v8 = [(FBKBugFormDetailTableViewController *)self searchResultChoices];
      v9 = [v8 count];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v9 = [v7 count];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(FBKBugFormDetailTableViewController *)self question:a3];
  v5 = [v4 text];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Choice" forIndexPath:v6];
  if (!v7)
  {
    v7 = [[FBKChoiceCell alloc] initWithStyle:0 reuseIdentifier:@"Choice"];
  }

  v8 = [(FBKBugFormDetailTableViewController *)self searchController];
  if ([v8 isActive])
  {
    [(FBKBugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBKBugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

  [(FBKChoiceCell *)v7 updateWithChoice:v10];
  v11 = [(FBKBugFormDetailTableViewController *)self question];
  v12 = [v11 answerType];

  if ((v12 - 2) < 2)
  {
    v13 = [(FBKBugFormDetailTableViewController *)self answer];
    v14 = [v13 value];
    [(FBKChoiceCell *)v7 evaluateSelectionWithValue:v14];
LABEL_13:

    goto LABEL_14;
  }

  if (v12 == 4)
  {
    v13 = [(FBKBugFormDetailTableViewController *)self answer];
    v14 = [v13 values];
    [(FBKChoiceCell *)v7 evaluateSelectionWithValues:v14];
    goto LABEL_13;
  }

  if (v12 != 11)
  {
    goto LABEL_15;
  }

  v13 = +[FBKLog appHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FBKBugFormDetailTableViewController tableView:v13 cellForRowAtIndexPath:?];
  }

LABEL_14:

LABEL_15:

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v14 = [v4 text];

  if ([v14 length])
  {
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v14 stringByTrimmingCharactersInSet:v5];

    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title CONTAINS[cd] %@", v6];
    v8 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v9 = [v8 filteredArrayUsingPredicate:v7];
    v10 = [v9 mutableCopy];
    searchResultChoices = self->_searchResultChoices;
    self->_searchResultChoices = v10;
  }

  else
  {
    v12 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v6 = self->_searchResultChoices;
    self->_searchResultChoices = v12;
  }

  v13 = [(FBKBugFormDetailTableViewController *)self tableView];
  [v13 reloadData];
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = [(FBKBugFormDetailTableViewController *)self tableView];
  v6 = [v4 indexPathForSelectedRow];

  if (v6)
  {
    v5 = [(FBKBugFormDetailTableViewController *)self tableView];
    [v5 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (BOOL)searchBar:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = a3;
  v8 = [a5 isEqualToString:@"\t"];
  if (v8)
  {
    [v7 endEditing:1];
    [(FBKBugFormDetailTableViewController *)self becomeFirstResponder];
    [(FBKBugFormDetailTableViewController *)self selectNext];
  }

  return v8 ^ 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(FBKBugFormDetailTableViewController *)self searchController];
  if ([v8 isActive])
  {
    [(FBKBugFormDetailTableViewController *)self searchResultChoices];
  }

  else
  {
    [(FBKBugFormDetailTableViewController *)self visibleChoices];
  }
  v9 = ;
  v10 = [v9 objectAtIndex:{objc_msgSend(v7, "row")}];

  v11 = [(FBKBugFormDetailTableViewController *)self question];
  v12 = [v11 answerType];

  if ((v12 - 2) < 2)
  {
    v13 = [v6 visibleCells];
    [v13 enumerateObjectsUsingBlock:&__block_literal_global];

    v14 = [(FBKBugFormDetailTableViewController *)self answer];
    v15 = [v10 value];
    [v14 setValue:v15];

    v16 = [v6 cellForRowAtIndexPath:v7];
    v17 = [(FBKBugFormDetailTableViewController *)self answer];
    v18 = [v17 value];
    [v16 evaluateSelectionWithValue:v18];

    v19 = [(FBKBugFormDetailTableViewController *)self delegate];
    v20 = [(FBKBugFormDetailTableViewController *)self question];
    [v19 answerDidChangeForQuestion:v20];

    v21 = [(FBKBugFormDetailTableViewController *)self searchController];
    LODWORD(v20) = [v21 isActive];

    if (v20)
    {
      [(FBKBugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    [(FBKBugFormDetailTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    goto LABEL_13;
  }

  if (v12 == 4)
  {
    v22 = [(FBKAnswer *)self->_answer values];
    v23 = [v10 value];
    v24 = [v22 containsObject:v23];

    v25 = [(FBKAnswer *)self->_answer values];
    if (v24)
    {
      v26 = MEMORY[0x1E696AE18];
      v27 = [v10 value];
      v28 = [v26 predicateWithFormat:@"SELF != %@", v27];
      v29 = [v25 filteredArrayUsingPredicate:v28];
      [(FBKAnswer *)self->_answer setValues:v29];
    }

    else
    {
      v27 = [v10 value];
      v28 = [v25 arrayByAddingObject:v27];
      [(FBKAnswer *)self->_answer setValues:v28];
    }

    v16 = [v6 visibleCells];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __73__FBKBugFormDetailTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
    v30[3] = &unk_1E8771BD0;
    v30[4] = self;
    [v16 enumerateObjectsUsingBlock:v30];
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

- (void)didGetClientSideResolvedNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 object];
  v5 = [(FBKBugFormDetailTableViewController *)self question];
  v6 = [v5 choiceSetResolver];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = +[FBKLog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(FBKBugFormDetailTableViewController *)self question];
      v10 = [v9 allChoices];
      v12[0] = 67109120;
      v12[1] = [v10 count];
      _os_log_impl(&dword_1E54BE000, v8, OS_LOG_TYPE_INFO, "updating choice set with [%i] choices", v12, 8u);
    }

    [(FBKBugFormDetailTableViewController *)self updateChoices];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getPathToScrollTo
{
  v3 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
  v4 = MEMORY[0x1E696AE18];
  v5 = [(FBKAnswer *)self->_answer value];
  v6 = [v4 predicateWithFormat:@"value ==[c] %@", v5];
  v7 = [v3 filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    v8 = [(FBKBugFormDetailTableViewController *)self visibleChoices];
    v9 = [v7 firstObject];
    v10 = [v8 indexOfObject:v9];

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
  v3 = [(FBKBugFormDetailTableViewController *)self searchController];

  if (v3)
  {
    v5 = [(FBKBugFormDetailTableViewController *)self searchController];
    v4 = [v5 searchBar];
    [v4 becomeFirstResponder];
  }
}

- (void)selectNext
{
  v3 = [(FBKBugFormDetailTableViewController *)self tableView];
  v10 = [v3 indexPathForSelectedRow];

  v4 = [(FBKBugFormDetailTableViewController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];

  v6 = [v10 row];
  if (!v10 && (v7 = 0, v5 > 0) || (v7 = v6 + 1, v6 + 1 < v5))
  {
    v8 = [(FBKBugFormDetailTableViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
    [v8 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
  }
}

- (void)selectPrevious
{
  v3 = [(FBKBugFormDetailTableViewController *)self tableView];
  v11 = [v3 indexPathForSelectedRow];

  v4 = [(FBKBugFormDetailTableViewController *)self tableView];
  v5 = [v4 numberOfRowsInSection:0];

  v6 = [v11 row];
  if (!v11 && (v7 = v5 < 1, v8 = v5 - 1, !v7) || (v8 = v6 - 1, v6 >= 1))
  {
    v9 = [(FBKBugFormDetailTableViewController *)self tableView];
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];
    [v9 selectRowAtIndexPath:v10 animated:1 scrollPosition:2];
  }
}

- (void)commitSelection
{
  v3 = [(FBKBugFormDetailTableViewController *)self tableView];
  v5 = [v3 indexPathForSelectedRow];

  if (v5)
  {
    v4 = [(FBKBugFormDetailTableViewController *)self tableView];
    [(FBKBugFormDetailTableViewController *)self tableView:v4 didSelectRowAtIndexPath:v5];
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