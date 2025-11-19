@interface DSReadOnlyResourceSharingController
- (BOOL)shouldShow;
- (DSNavigationDelegate)delegate;
- (DSReadOnlyResourceSharingController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_pushDetailPaneForSharingPeople:(id)a3;
- (void)_pushDetailPaneForSharingTypes:(id)a3;
- (void)_reviewAllSharing;
- (void)_updateButton;
- (void)filterContentForSearchText:(id)a3 category:(int64_t)a4;
- (void)learnMorePressedForSharingType:(id)a3;
- (void)reloadTableViewData;
- (void)reviewReadOnlySharingCompleted;
- (void)reviewSelectedSharing;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation DSReadOnlyResourceSharingController

- (DSReadOnlyResourceSharingController)init
{
  v3 = DSUILocStringForKey(@"READ_ONLY_SHARING_TITLE");
  v4 = [DSUIUtilities valueForUnfinalizedString:v3];
  v5 = DSUILocStringForKey(@"READ_ONLY_SHARING_BY_PEOPLE_DETAIL");
  v6 = [DSUIUtilities valueForUnfinalizedString:v5];
  v18.receiver = self;
  v18.super_class = DSReadOnlyResourceSharingController;
  v7 = [(DSTableWelcomeController *)&v18 initWithTitle:v4 detailText:v6 icon:0 adoptTableViewScrollView:1 shouldShowSearchBar:1];

  if (v7)
  {
    v8 = DSUILocStringForKey(@"SKIP");
    v9 = [DSUIUtilities setUpBoldButtonForController:v7 title:v8 target:v7 selector:sel_reviewReadOnlySharingCompleted];
    [(DSTableWelcomeController *)v7 setBoldButton:v9];

    v10 = DSUILocStringForKey(@"READ_ONLY_SHARING_REVIEW_ALL");
    v11 = [DSUIUtilities valueForUnfinalizedString:v10];
    v12 = [DSUIUtilities setUpLinkButtonForController:v7 title:v11 target:v7 selector:sel__reviewAllSharing];
    [(DSTableWelcomeController *)v7 setLinkButton:v12];

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedPeople = v7->_selectedPeople;
    v7->_selectedPeople = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedTypes = v7->_selectedTypes;
    v7->_selectedTypes = v15;
  }

  return v7;
}

- (BOOL)shouldShow
{
  v3 = [(DSReadOnlyResourceSharingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 fetchedSharingPermissions];
    [(DSReadOnlyResourceSharingController *)self setPermissions:v4];

    v5 = [(DSReadOnlyResourceSharingController *)self permissions];
    v6 = [v5 allReadOnlySharingTypes];
    if ([v6 count])
    {
      v7 = 1;
    }

    else
    {
      v8 = [(DSReadOnlyResourceSharingController *)self permissions];
      v9 = [v8 allReadOnlySharingPeople];
      v7 = [v9 count] != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewDidLoad
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = DSReadOnlyResourceSharingController;
  [(DSTableWelcomeController *)&v12 viewDidLoad];
  v3 = DSUILocStringForKey(@"BY_PERSON");
  v13[0] = v3;
  v4 = DSUILocStringForKey(@"BY_TYPE");
  v13[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  [v7 setScopeButtonTitles:v5];

  v8 = DSUILocStringForKey(@"SEARCH_SHARING_TYPE_PLACEHOLDER");
  v9 = [(DSTableWelcomeController *)self searchController];
  v10 = [v9 searchBar];
  [v10 setPlaceholder:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reviewAllSharing
{
  v3 = [(DSReadOnlyResourceSharingController *)self scope];
  v4 = [(DSReadOnlyResourceSharingController *)self permissions];
  v6 = v4;
  if (v3 == 1)
  {
    v5 = [v4 allReadOnlySharingTypes];
    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingTypes:v5];
  }

  else
  {
    v5 = [v4 allReadOnlySharingPeople];
    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingPeople:v5];
  }
}

- (void)_pushDetailPaneForSharingTypes:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [DSReadOnlyResourceSharingDetailController initWithSharingTypes:v6 startingViewController:self delegate:self];
    v5 = [(DSReadOnlyResourceSharingController *)self navigationController];
    [v5 pushViewController:v4 animated:1];
  }
}

- (void)_pushDetailPaneForSharingPeople:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [DSReadOnlyResourceSharingDetailController initWithSharingPeople:v6 startingViewController:self delegate:self];
    v5 = [(DSReadOnlyResourceSharingController *)self navigationController];
    [v5 pushViewController:v4 animated:1];
  }
}

- (void)_updateButton
{
  v3 = [(DSTableWelcomeController *)self searchController];
  v4 = [v3 searchBar];
  v5 = [v4 selectedScopeButtonIndex];

  if (v5)
  {
    [(DSReadOnlyResourceSharingController *)self selectedTypes];
  }

  else
  {
    [(DSReadOnlyResourceSharingController *)self selectedPeople];
  }
  v6 = ;
  v7 = [v6 count];

  v8 = [(DSTableWelcomeController *)self boldButton];
  [v8 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v7)
  {
    v9 = [(DSTableWelcomeController *)self boldButton];
    v10 = DSUILocStringForKey(@"REVIEW_SHARING");
    [v9 setTitle:v10 forState:0];

    v11 = [(DSTableWelcomeController *)self boldButton];
    [v11 addTarget:self action:sel_reviewSelectedSharing forControlEvents:64];
  }

  else
  {
    v12 = [(DSReadOnlyResourceSharingController *)self permissions];
    if ([v12 readOnlySharingPeopleCountWithFilter:0])
    {
      v13 = @"SKIP";
    }

    else
    {
      v13 = @"CONTINUE";
    }

    v11 = DSUILocStringForKey(v13);

    v14 = [(DSTableWelcomeController *)self boldButton];
    [v14 setTitle:v11 forState:0];

    v15 = [(DSTableWelcomeController *)self boldButton];
    [v15 addTarget:self action:sel_reviewReadOnlySharingCompleted forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (void)reviewSelectedSharing
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_15];

  v6 = [(DSReadOnlyResourceSharingController *)self scope];
  v7 = [MEMORY[0x277CBEB18] array];
  if (v6 == 1)
  {
    v33 = 0uLL;
    v34 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [(DSReadOnlyResourceSharingController *)self permissions];
          v15 = [v14 readOnlySharingType:objc_msgSend(v13 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

          if (v15)
          {
            [v7 addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingTypes:v7];
  }

  else
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = [(DSReadOnlyResourceSharingController *)self permissions];
          v23 = [v22 readOnlySharingPerson:objc_msgSend(v21 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

          if (v23)
          {
            [v7 addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingPeople:v7];
  }

  v24 = [(DSReadOnlyResourceSharingController *)self selectedTypes];
  [v24 removeAllObjects];

  v25 = [(DSReadOnlyResourceSharingController *)self selectedPeople];
  [v25 removeAllObjects];

  [(DSReadOnlyResourceSharingController *)self _updateButton];
  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __60__DSReadOnlyResourceSharingController_reviewSelectedSharing__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 row];
  if (v6 >= [v5 row])
  {
    v8 = [v4 row];
    v7 = v8 > [v5 row];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v7 = [a3 searchBar];
  v4 = [v7 text];
  v5 = [(DSTableWelcomeController *)self searchController];
  v6 = [v5 searchBar];
  -[DSReadOnlyResourceSharingController filterContentForSearchText:category:](self, "filterContentForSearchText:category:", v4, [v6 selectedScopeButtonIndex]);
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  [(DSReadOnlyResourceSharingController *)self setScope:a4];
  [(DSReadOnlyResourceSharingController *)self _updateButton];
  v8 = [(DSTableWelcomeController *)self searchController];
  v6 = [v8 searchBar];
  v7 = [v6 text];
  [(DSReadOnlyResourceSharingController *)self filterContentForSearchText:v7 category:a4];
}

- (void)filterContentForSearchText:(id)a3 category:(int64_t)a4
{
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"displayName contains[c] %@", a4, a3];
  scope = self->_scope;
  if (scope)
  {
    if (scope != 1)
    {
      goto LABEL_6;
    }

    v6 = [(DSReadOnlyResourceSharingController *)self permissions];
    [v6 filterReadOnlySharingTypesWithPredicate:v10];
  }

  else
  {
    v6 = [(DSReadOnlyResourceSharingController *)self permissions];
    [v6 filterReadOnlySharingPeopleWithPredicate:v10];
  }

LABEL_6:
  v7 = [(DSReadOnlyResourceSharingController *)self headerView];
  [v7 setTitle:&stru_285BA4988];

  v8 = [(DSReadOnlyResourceSharingController *)self headerView];
  [v8 setDetailText:&stru_285BA4988];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSReadOnlyResourceSharingController *)self scope];
  if (!v6)
  {
    v15 = [(DSReadOnlyResourceSharingController *)self permissions];
    v8 = [v15 readOnlySharingPerson:objc_msgSend(v5 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

    v16 = [(OBTableWelcomeController *)self tableView];
    v17 = [v8 displayName];
    v18 = [v8 iconForTable];
    v12 = [DSIconTableViewCell iconTableViewCellFromTableView:v16 withText:v17 detail:&stru_285BA4988 icon:v18];

    v19 = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    LODWORD(v17) = [v19 containsObject:v8];

    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v6 == 1)
  {
    v7 = [(DSReadOnlyResourceSharingController *)self permissions];
    v8 = [v7 readOnlySharingType:objc_msgSend(v5 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

    v9 = [(OBTableWelcomeController *)self tableView];
    v10 = [v8 displayName];
    v11 = [v8 iconForTable];
    v12 = [DSIconTableViewCell iconTableViewCellFromTableView:v9 withText:v10 detail:&stru_285BA4988 icon:v11];

    v13 = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    LOBYTE(v10) = [v13 containsObject:v8];

    if ((v10 & 1) == 0)
    {
LABEL_5:

      goto LABEL_9;
    }

LABEL_4:
    v14 = [(OBTableWelcomeController *)self tableView];
    [v14 selectRowAtIndexPath:v5 animated:1 scrollPosition:0];

    goto LABEL_5;
  }

  v12 = 0;
LABEL_9:
  [v12 setAccessoryType:0];

  return v12;
}

- (void)reloadTableViewData
{
  v3 = [(DSReadOnlyResourceSharingController *)self permissions];
  [v3 sort];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v4 reloadSections:v5 withRowAnimation:100];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 layoutIfNeeded];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(DSReadOnlyResourceSharingController *)self scope:a3];
  v6 = [(DSReadOnlyResourceSharingController *)self permissions];
  v7 = [(DSTableWelcomeController *)self isFiltering];
  if (v5 == 1)
  {
    v8 = [v6 readOnlySharingTypesCountWithFilter:v7];
  }

  else
  {
    v8 = [v6 readOnlySharingPeopleCountWithFilter:v7];
  }

  v9 = v8;

  if (![(DSTableWelcomeController *)self isFiltering])
  {
    if (v9)
    {
      [(DSTableWelcomeController *)self hideNoSharingView];
      v10 = [(DSReadOnlyResourceSharingController *)self headerView];
      v11 = DSUILocStringForKey(@"READ_ONLY_SHARING_TITLE");
      v12 = [DSUIUtilities valueForUnfinalizedString:v11];
      [v10 setTitle:v12];

      v13 = [(DSReadOnlyResourceSharingController *)self headerView];
      if ([(DSReadOnlyResourceSharingController *)self scope]== 1)
      {
        v14 = @"READ_ONLY_SHARING_BY_TYPE_DETAIL";
      }

      else
      {
        v14 = @"READ_ONLY_SHARING_BY_PEOPLE_DETAIL";
      }

      v15 = DSUILocStringForKey(v14);
      v16 = [DSUIUtilities valueForUnfinalizedString:v15];
      [v13 setDetailText:v16];

      goto LABEL_18;
    }

    if ([(DSReadOnlyResourceSharingController *)self scope]== 1)
    {
      v19 = @"READ_ONLY_NO_SHARING_TYPE";
    }

    else
    {
      v19 = @"READ_ONLY_NO_SHARING_PEOPLE";
    }

    v20 = DSUILocStringForKey(v19);
    v13 = [DSUIUtilities valueForUnfinalizedString:v20];

    v17 = [MEMORY[0x277D755B8] _systemImageNamed:@"app.3.stack.3d.fill"];
    [(DSTableWelcomeController *)self showNoSharingViewWithText:v13 image:v17];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if (!v9)
  {
    v13 = [(DSTableWelcomeController *)self searchController];
    v17 = [v13 searchBar];
    v18 = [v17 text];
    [(DSTableWelcomeController *)self showNoResultsViewWithSearchText:v18];

    goto LABEL_17;
  }

  [(DSTableWelcomeController *)self hideNoResultsView];
LABEL_19:
  [(DSReadOnlyResourceSharingController *)self _updateButton];
  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  v8 = [v7 selectedScopeButtonIndex];

  if (v8)
  {
    v9 = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    v10 = [(DSReadOnlyResourceSharingController *)self permissions];
    v11 = [v5 row];

    [v10 readOnlySharingType:v11 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }

  else
  {
    v9 = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    v10 = [(DSReadOnlyResourceSharingController *)self permissions];
    v12 = [v5 row];

    [v10 readOnlySharingPerson:v12 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }
  v13 = ;
  [v9 addObject:v13];

  [(DSReadOnlyResourceSharingController *)self _updateButton];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSTableWelcomeController *)self searchController];
  v7 = [v6 searchBar];
  v8 = [v7 selectedScopeButtonIndex];

  if (v8)
  {
    v9 = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    v10 = [(DSReadOnlyResourceSharingController *)self permissions];
    v11 = [v5 row];

    [v10 readOnlySharingType:v11 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }

  else
  {
    v9 = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    v10 = [(DSReadOnlyResourceSharingController *)self permissions];
    v12 = [v5 row];

    [v10 readOnlySharingPerson:v12 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }
  v13 = ;
  [v9 removeObject:v13];

  [(DSReadOnlyResourceSharingController *)self _updateButton];
}

- (void)reviewReadOnlySharingCompleted
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(DSReadOnlyResourceSharingController *)self selectedTypes];
  [v3 removeAllObjects];

  v4 = [(DSReadOnlyResourceSharingController *)self selectedPeople];
  [v4 removeAllObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [(OBTableWelcomeController *)self tableView];
        [v12 deselectRowAtIndexPath:v11 animated:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v13 = [(DSReadOnlyResourceSharingController *)self delegate];
  [v13 pushPaneAfterPaneType:objc_opt_class()];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(DSReadOnlyResourceSharingController *)self navigationController];
  v16 = [v15 viewControllers];

  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v14 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = [(DSReadOnlyResourceSharingController *)self navigationController];
  [v22 setViewControllers:v14];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)learnMorePressedForSharingType:(id)a3
{
  v5 = DSUILocStringForKey(@"NAVIGATION_LEARN_MORE_URL");
  v4 = [(DSReadOnlyResourceSharingController *)self delegate];
  [v4 learnMorePressedForController:self withURL:v5];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end