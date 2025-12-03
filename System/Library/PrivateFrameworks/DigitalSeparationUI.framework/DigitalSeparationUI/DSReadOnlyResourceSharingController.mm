@interface DSReadOnlyResourceSharingController
- (BOOL)shouldShow;
- (DSNavigationDelegate)delegate;
- (DSReadOnlyResourceSharingController)init;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_pushDetailPaneForSharingPeople:(id)people;
- (void)_pushDetailPaneForSharingTypes:(id)types;
- (void)_reviewAllSharing;
- (void)_updateButton;
- (void)filterContentForSearchText:(id)text category:(int64_t)category;
- (void)learnMorePressedForSharingType:(id)type;
- (void)reloadTableViewData;
- (void)reviewReadOnlySharingCompleted;
- (void)reviewSelectedSharing;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
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
  delegate = [(DSReadOnlyResourceSharingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    fetchedSharingPermissions = [delegate fetchedSharingPermissions];
    [(DSReadOnlyResourceSharingController *)self setPermissions:fetchedSharingPermissions];

    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    allReadOnlySharingTypes = [permissions allReadOnlySharingTypes];
    if ([allReadOnlySharingTypes count])
    {
      v7 = 1;
    }

    else
    {
      permissions2 = [(DSReadOnlyResourceSharingController *)self permissions];
      allReadOnlySharingPeople = [permissions2 allReadOnlySharingPeople];
      v7 = [allReadOnlySharingPeople count] != 0;
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
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setScopeButtonTitles:v5];

  v8 = DSUILocStringForKey(@"SEARCH_SHARING_TYPE_PLACEHOLDER");
  searchController2 = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController2 searchBar];
  [searchBar2 setPlaceholder:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reviewAllSharing
{
  scope = [(DSReadOnlyResourceSharingController *)self scope];
  permissions = [(DSReadOnlyResourceSharingController *)self permissions];
  v6 = permissions;
  if (scope == 1)
  {
    allReadOnlySharingTypes = [permissions allReadOnlySharingTypes];
    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingTypes:allReadOnlySharingTypes];
  }

  else
  {
    allReadOnlySharingTypes = [permissions allReadOnlySharingPeople];
    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingPeople:allReadOnlySharingTypes];
  }
}

- (void)_pushDetailPaneForSharingTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy count])
  {
    v4 = [DSReadOnlyResourceSharingDetailController initWithSharingTypes:typesCopy startingViewController:self delegate:self];
    navigationController = [(DSReadOnlyResourceSharingController *)self navigationController];
    [navigationController pushViewController:v4 animated:1];
  }
}

- (void)_pushDetailPaneForSharingPeople:(id)people
{
  peopleCopy = people;
  if ([peopleCopy count])
  {
    v4 = [DSReadOnlyResourceSharingDetailController initWithSharingPeople:peopleCopy startingViewController:self delegate:self];
    navigationController = [(DSReadOnlyResourceSharingController *)self navigationController];
    [navigationController pushViewController:v4 animated:1];
  }
}

- (void)_updateButton
{
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  selectedScopeButtonIndex = [searchBar selectedScopeButtonIndex];

  if (selectedScopeButtonIndex)
  {
    [(DSReadOnlyResourceSharingController *)self selectedTypes];
  }

  else
  {
    [(DSReadOnlyResourceSharingController *)self selectedPeople];
  }
  v6 = ;
  v7 = [v6 count];

  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v7)
  {
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    v10 = DSUILocStringForKey(@"REVIEW_SHARING");
    [boldButton2 setTitle:v10 forState:0];

    boldButton3 = [(DSTableWelcomeController *)self boldButton];
    [boldButton3 addTarget:self action:sel_reviewSelectedSharing forControlEvents:64];
  }

  else
  {
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    if ([permissions readOnlySharingPeopleCountWithFilter:0])
    {
      v13 = @"SKIP";
    }

    else
    {
      v13 = @"CONTINUE";
    }

    boldButton3 = DSUILocStringForKey(v13);

    boldButton4 = [(DSTableWelcomeController *)self boldButton];
    [boldButton4 setTitle:boldButton3 forState:0];

    boldButton5 = [(DSTableWelcomeController *)self boldButton];
    [boldButton5 addTarget:self action:sel_reviewReadOnlySharingCompleted forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (void)reviewSelectedSharing
{
  v37 = *MEMORY[0x277D85DE8];
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v5 = [indexPathsForSelectedRows sortedArrayUsingComparator:&__block_literal_global_15];

  scope = [(DSReadOnlyResourceSharingController *)self scope];
  array = [MEMORY[0x277CBEB18] array];
  if (scope == 1)
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
          permissions = [(DSReadOnlyResourceSharingController *)self permissions];
          v15 = [permissions readOnlySharingType:objc_msgSend(v13 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

          if (v15)
          {
            [array addObject:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingTypes:array];
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
          permissions2 = [(DSReadOnlyResourceSharingController *)self permissions];
          v23 = [permissions2 readOnlySharingPerson:objc_msgSend(v21 withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

          if (v23)
          {
            [array addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    [(DSReadOnlyResourceSharingController *)self _pushDetailPaneForSharingPeople:array];
  }

  selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedTypes];
  [selectedTypes removeAllObjects];

  selectedPeople = [(DSReadOnlyResourceSharingController *)self selectedPeople];
  [selectedPeople removeAllObjects];

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

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar2 = [searchController searchBar];
  -[DSReadOnlyResourceSharingController filterContentForSearchText:category:](self, "filterContentForSearchText:category:", text, [searchBar2 selectedScopeButtonIndex]);
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  [(DSReadOnlyResourceSharingController *)self setScope:change];
  [(DSReadOnlyResourceSharingController *)self _updateButton];
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  text = [searchBar text];
  [(DSReadOnlyResourceSharingController *)self filterContentForSearchText:text category:change];
}

- (void)filterContentForSearchText:(id)text category:(int64_t)category
{
  text = [MEMORY[0x277CCAC30] predicateWithFormat:@"displayName contains[c] %@", category, text];
  scope = self->_scope;
  if (scope)
  {
    if (scope != 1)
    {
      goto LABEL_6;
    }

    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    [permissions filterReadOnlySharingTypesWithPredicate:text];
  }

  else
  {
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    [permissions filterReadOnlySharingPeopleWithPredicate:text];
  }

LABEL_6:
  headerView = [(DSReadOnlyResourceSharingController *)self headerView];
  [headerView setTitle:&stru_285BA4988];

  headerView2 = [(DSReadOnlyResourceSharingController *)self headerView];
  [headerView2 setDetailText:&stru_285BA4988];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  scope = [(DSReadOnlyResourceSharingController *)self scope];
  if (!scope)
  {
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    v8 = [permissions readOnlySharingPerson:objc_msgSend(pathCopy withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

    tableView = [(OBTableWelcomeController *)self tableView];
    displayName = [v8 displayName];
    iconForTable = [v8 iconForTable];
    v12 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:displayName detail:&stru_285BA4988 icon:iconForTable];

    selectedPeople = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    LODWORD(displayName) = [selectedPeople containsObject:v8];

    if (!displayName)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (scope == 1)
  {
    permissions2 = [(DSReadOnlyResourceSharingController *)self permissions];
    v8 = [permissions2 readOnlySharingType:objc_msgSend(pathCopy withFilter:{"row"), -[DSTableWelcomeController isFiltering](self, "isFiltering")}];

    tableView2 = [(OBTableWelcomeController *)self tableView];
    displayName2 = [v8 displayName];
    iconForTable2 = [v8 iconForTable];
    v12 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView2 withText:displayName2 detail:&stru_285BA4988 icon:iconForTable2];

    selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    LOBYTE(displayName2) = [selectedTypes containsObject:v8];

    if ((displayName2 & 1) == 0)
    {
LABEL_5:

      goto LABEL_9;
    }

LABEL_4:
    tableView3 = [(OBTableWelcomeController *)self tableView];
    [tableView3 selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];

    goto LABEL_5;
  }

  v12 = 0;
LABEL_9:
  [v12 setAccessoryType:0];

  return v12;
}

- (void)reloadTableViewData
{
  permissions = [(DSReadOnlyResourceSharingController *)self permissions];
  [permissions sort];

  tableView = [(OBTableWelcomeController *)self tableView];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [tableView reloadSections:v5 withRowAnimation:100];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 layoutIfNeeded];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(DSReadOnlyResourceSharingController *)self scope:view];
  permissions = [(DSReadOnlyResourceSharingController *)self permissions];
  isFiltering = [(DSTableWelcomeController *)self isFiltering];
  if (v5 == 1)
  {
    v8 = [permissions readOnlySharingTypesCountWithFilter:isFiltering];
  }

  else
  {
    v8 = [permissions readOnlySharingPeopleCountWithFilter:isFiltering];
  }

  v9 = v8;

  if (![(DSTableWelcomeController *)self isFiltering])
  {
    if (v9)
    {
      [(DSTableWelcomeController *)self hideNoSharingView];
      headerView = [(DSReadOnlyResourceSharingController *)self headerView];
      v11 = DSUILocStringForKey(@"READ_ONLY_SHARING_TITLE");
      v12 = [DSUIUtilities valueForUnfinalizedString:v11];
      [headerView setTitle:v12];

      headerView2 = [(DSReadOnlyResourceSharingController *)self headerView];
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
      [headerView2 setDetailText:v16];

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
    headerView2 = [DSUIUtilities valueForUnfinalizedString:v20];

    searchBar = [MEMORY[0x277D755B8] _systemImageNamed:@"app.3.stack.3d.fill"];
    [(DSTableWelcomeController *)self showNoSharingViewWithText:headerView2 image:searchBar];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if (!v9)
  {
    headerView2 = [(DSTableWelcomeController *)self searchController];
    searchBar = [headerView2 searchBar];
    text = [searchBar text];
    [(DSTableWelcomeController *)self showNoResultsViewWithSearchText:text];

    goto LABEL_17;
  }

  [(DSTableWelcomeController *)self hideNoResultsView];
LABEL_19:
  [(DSReadOnlyResourceSharingController *)self _updateButton];
  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  selectedScopeButtonIndex = [searchBar selectedScopeButtonIndex];

  if (selectedScopeButtonIndex)
  {
    selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    v11 = [pathCopy row];

    [permissions readOnlySharingType:v11 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }

  else
  {
    selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    v12 = [pathCopy row];

    [permissions readOnlySharingPerson:v12 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }
  v13 = ;
  [selectedTypes addObject:v13];

  [(DSReadOnlyResourceSharingController *)self _updateButton];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  searchController = [(DSTableWelcomeController *)self searchController];
  searchBar = [searchController searchBar];
  selectedScopeButtonIndex = [searchBar selectedScopeButtonIndex];

  if (selectedScopeButtonIndex)
  {
    selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedTypes];
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    v11 = [pathCopy row];

    [permissions readOnlySharingType:v11 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }

  else
  {
    selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedPeople];
    permissions = [(DSReadOnlyResourceSharingController *)self permissions];
    v12 = [pathCopy row];

    [permissions readOnlySharingPerson:v12 withFilter:{-[DSTableWelcomeController isFiltering](self, "isFiltering")}];
  }
  v13 = ;
  [selectedTypes removeObject:v13];

  [(DSReadOnlyResourceSharingController *)self _updateButton];
}

- (void)reviewReadOnlySharingCompleted
{
  v34 = *MEMORY[0x277D85DE8];
  selectedTypes = [(DSReadOnlyResourceSharingController *)self selectedTypes];
  [selectedTypes removeAllObjects];

  selectedPeople = [(DSReadOnlyResourceSharingController *)self selectedPeople];
  [selectedPeople removeAllObjects];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        tableView2 = [(OBTableWelcomeController *)self tableView];
        [tableView2 deselectRowAtIndexPath:v11 animated:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  delegate = [(DSReadOnlyResourceSharingController *)self delegate];
  [delegate pushPaneAfterPaneType:objc_opt_class()];

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  navigationController = [(DSReadOnlyResourceSharingController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v17 = [viewControllers countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(viewControllers);
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
      v18 = [viewControllers countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  navigationController2 = [(DSReadOnlyResourceSharingController *)self navigationController];
  [navigationController2 setViewControllers:v14];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)learnMorePressedForSharingType:(id)type
{
  v5 = DSUILocStringForKey(@"NAVIGATION_LEARN_MORE_URL");
  delegate = [(DSReadOnlyResourceSharingController *)self delegate];
  [delegate learnMorePressedForController:self withURL:v5];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end