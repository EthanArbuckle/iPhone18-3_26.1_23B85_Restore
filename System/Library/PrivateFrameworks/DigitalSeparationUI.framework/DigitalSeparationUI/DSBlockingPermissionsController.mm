@interface DSBlockingPermissionsController
- (BOOL)isFindMyASource;
- (DSBlockingPermissionsController)initWithPeople:(id)people permissions:(id)permissions;
- (DSNavigationDelegate)delegate;
- (id)blockedPersonForIndex:(int64_t)index;
- (id)tableIconForPerson:(id)person;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_selectAll;
- (void)_sharingStoppedForPerson:(id)person sourceNames:(id)names;
- (void)_sortSharingPeople;
- (void)_updateButton;
- (void)next;
- (void)presentFetchErrorMessage:(id)message;
- (void)reloadTableViewData;
- (void)reviewSelectedSharing;
- (void)reviewSelectedSharingFlowCompleted;
- (void)selectAndStopAllSharing;
- (void)sharingStoppedForPerson:(id)person sourceNames:(id)names;
@end

@implementation DSBlockingPermissionsController

- (DSBlockingPermissionsController)initWithPeople:(id)people permissions:(id)permissions
{
  peopleCopy = people;
  permissionsCopy = permissions;
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v8 = DSUILocStringForKey(@"SHARING_PERMISSIONS_PEOPLE");
    v9 = DSUILocStringForKey(@"SHARING_PERMISSIONS_BY_PEOPLE_DETAIL");
    v26.receiver = self;
    v26.super_class = DSBlockingPermissionsController;
    v10 = [(DSTableWelcomeController *)&v26 initWithTitle:v8 detailText:v9 symbolName:@"person.badge.shield.checkmark.fill" adoptTableViewScrollView:1 shouldShowSearchBar:0];
  }

  else
  {
    v11 = MEMORY[0x277D755D0];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [v11 configurationWithHierarchicalColor:systemBlueColor];

    v9 = DSUILocStringForKey(@"SHARING_PERMISSIONS_PEOPLE");
    v13 = DSUILocStringForKey(@"SHARING_PERMISSIONS_BY_PEOPLE_DETAIL");
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"person.badge.shield.checkmark.fill" withConfiguration:v8];
    v25.receiver = self;
    v25.super_class = DSBlockingPermissionsController;
    v10 = [(DSTableWelcomeController *)&v25 initWithTitle:v9 detailText:v13 icon:v14 adoptTableViewScrollView:1 shouldShowSearchBar:0];
  }

  if (v10)
  {
    v15 = os_log_create("com.apple.DigitalSeparation", "DSBlockingPermissionsController");
    v16 = DSLog_14;
    DSLog_14 = v15;

    [(DSBlockingPermissionsController *)v10 setPermissions:permissionsCopy];
    v17 = [MEMORY[0x277CBEB40] orderedSetWithArray:peopleCopy];
    [(DSBlockingPermissionsController *)v10 setBlockedPeople:v17];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    personIconCache = v10->_personIconCache;
    v10->_personIconCache = dictionary;

    v20 = DSUILocStringForKey(@"REVIEW_SHARING");
    v21 = [DSUIUtilities setUpBoldButtonForController:v10 title:v20 target:v10 selector:sel_reviewSelectedSharing];
    [(DSTableWelcomeController *)v10 setBoldButton:v21];

    v22 = DSUILocStringForKey(@"STOP_ALL_SHARING");
    v23 = [DSUIUtilities setUpLinkButtonForController:v10 title:v22 target:v10 selector:sel_selectAndStopAllSharing];
    [(DSTableWelcomeController *)v10 setLinkButton:v23];
  }

  return v10;
}

- (void)selectAndStopAllSharing
{
  v3 = MEMORY[0x277D75110];
  v4 = DSUILocStringForKey(@"STOP_ALL_SHARING_CONFIRMATION");
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = MEMORY[0x277D750F8];
  v7 = DSUILocStringForKey(@"CANCEL");
  v8 = [v6 actionWithTitle:v7 style:1 handler:&__block_literal_global_17];

  v9 = MEMORY[0x277D750F8];
  v10 = DSUILocStringForKey(@"STOP_ALL_SHARING_BY_TYPE_ALERT_LABEL");
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_2;
  v12[3] = &unk_278F750A0;
  v12[4] = self;
  v11 = [v9 actionWithTitle:v10 style:2 handler:v12];

  [v5 addAction:v11];
  [v5 addAction:v8];
  [(DSBlockingPermissionsController *)self _selectAll];
  [(DSBlockingPermissionsController *)self _updateButton];
  [(DSBlockingPermissionsController *)self presentViewController:v5 animated:1 completion:0];
}

void __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v20 = a1;
  v3 = *(a1 + 32);
  a1 += 32;
  v4 = [v3 buttonTray];
  [v4 showButtonsBusy];

  v5 = [*a1 blockedPeople];
  v6 = [v5 array];

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = dispatch_group_create();
  objc_initWeak(&location, *a1);
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        dispatch_group_enter(v8);
        v13 = [v12 sourceNames];
        v14 = [*(v20 + 32) permissions];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_3;
        v23[3] = &unk_278F75D30;
        objc_copyWeak(&v27, &location);
        v23[4] = v12;
        v24 = v7;
        v15 = v13;
        v25 = v15;
        v26 = v8;
        [v14 stopAllSharingWithPerson:v12 completion:v23];

        objc_destroyWeak(&v27);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_348;
  block[3] = &unk_278F75650;
  block[4] = *(v20 + 32);
  v22 = v7;
  v16 = v7;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    v5 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_ERROR))
    {
      __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_3_cold_1(a1, v3, v5);
    }

    [*(a1 + 40) addObject:v3];
  }

  [WeakRetained _sharingStoppedForPerson:*(a1 + 32) sourceNames:*(a1 + 48)];
  dispatch_group_leave(*(a1 + 56));
}

void __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_348(uint64_t a1)
{
  [*(a1 + 32) reloadTableViewData];
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  if ([*(a1 + 40) count])
  {
    v5 = [MEMORY[0x277D05498] errorWithCode:2 underlyingErrors:*(a1 + 40)];
    v3 = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:v5];
    [*(a1 + 32) presentErrorAlertController:v3];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 next];
  }
}

- (void)reviewSelectedSharing
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_248C7E000, log, OS_LOG_TYPE_ERROR, "review: no match for %@", buf, 0xCu);
}

- (void)next
{
  [(DSBlockingPermissionsController *)self postAnalytics];
  presentingViewController = [(DSBlockingPermissionsController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

id __48__DSBlockingPermissionsController_postAnalytics__block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"entrypoint";
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];
  v14[0] = v3;
  v14[1] = MEMORY[0x277CBEC38];
  v13[1] = @"presentedViewController";
  v13[2] = @"numSourcesStoppedSharing";
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 32) unsharedSources];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v14[2] = v6;
  v13[3] = @"fetchErrorCode";
  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 32) permissionsFetchError];
  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "code")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)presentFetchErrorMessage:(id)message
{
  messageCopy = message;
  v5 = DSLog_14;
  if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_ERROR))
  {
    [(DSSharingPermissionsController *)messageCopy presentFetchErrorMessage:v5];
  }

  navigationController = [(DSBlockingPermissionsController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];

  if (visibleViewController == self)
  {
    v9 = [MEMORY[0x277D75110] ds_alertControllerWithFetchSharingError:messageCopy];
    [(DSTableWelcomeController *)self presentErrorAlertController:v9];
  }

  else
  {
    v8 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_248C7E000, v8, OS_LOG_TYPE_INFO, "Caching fetch error until we are the visible view controller", v10, 2u);
    }

    [(DSBlockingPermissionsController *)self setPermissionsFetchError:messageCopy];
  }
}

- (BOOL)isFindMyASource
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  blockedPeople = [(DSBlockingPermissionsController *)self blockedPeople];
  v3 = [blockedPeople countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *MEMORY[0x277D05450];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(blockedPeople);
        }

        sourceNames = [*(*(&v13 + 1) + 8 * i) sourceNames];
        v9 = [sourceNames containsObject:v6];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v4 = [blockedPeople countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_updateButton
{
  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  v6 = [indexPathsForSelectedRows count];

  boldButton2 = [(DSTableWelcomeController *)self boldButton];
  if (v6)
  {
    v8 = @"REVIEW_SHARING";
  }

  else
  {
    v8 = @"SKIP";
  }

  if (v6)
  {
    v9 = &selRef_reviewSelectedSharing;
  }

  else
  {
    v9 = &selRef_next;
  }

  v10 = DSUILocStringForKey(v8);
  [boldButton2 setTitle:v10 forState:0];

  boldButton3 = [(DSTableWelcomeController *)self boldButton];
  [boldButton3 addTarget:self action:*v9 forControlEvents:64];
}

- (void)_selectAll
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        tableView2 = [(OBTableWelcomeController *)self tableView];
        [tableView2 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleRows countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sharingStoppedForPerson:(id)person sourceNames:(id)names
{
  personCopy = person;
  namesCopy = names;
  blockedPeople = [(DSBlockingPermissionsController *)self blockedPeople];
  v9 = [blockedPeople indexOfObject:personCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_ERROR))
    {
      [DSBlockingPermissionsController _sharingStoppedForPerson:personCopy sourceNames:v10];
    }
  }

  else
  {
    blockedPeople2 = [(DSBlockingPermissionsController *)self blockedPeople];
    v12 = [blockedPeople2 objectAtIndexedSubscript:v9];

    [v12 removeSources:namesCopy];
    sourceNames = [v12 sourceNames];
    v14 = [sourceNames count];

    blockedPeople3 = [(DSBlockingPermissionsController *)self blockedPeople];
    v16 = blockedPeople3;
    if (v14)
    {
      [blockedPeople3 setObject:v12 atIndex:v9];

      [(DSBlockingPermissionsController *)self _sortSharingPeople];
    }

    else
    {
      [blockedPeople3 removeObjectAtIndex:v9];
    }
  }
}

- (void)_sortSharingPeople
{
  v3 = MEMORY[0x277D054F0];
  blockedPeople = [(DSBlockingPermissionsController *)self blockedPeople];
  array = [blockedPeople array];
  v7 = [v3 sortedXPCArray:array];

  v6 = [MEMORY[0x277CBEB40] orderedSetWithArray:v7];
  [(DSBlockingPermissionsController *)self setBlockedPeople:v6];
}

- (void)sharingStoppedForPerson:(id)person sourceNames:(id)names
{
  [(DSBlockingPermissionsController *)self _sharingStoppedForPerson:person sourceNames:names];

  [(DSBlockingPermissionsController *)self reloadTableViewData];
}

- (void)reviewSelectedSharingFlowCompleted
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  tableView = [(OBTableWelcomeController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v5 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        tableView2 = [(OBTableWelcomeController *)self tableView];
        [tableView2 deselectRowAtIndexPath:v9 animated:0];
      }

      v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  navigationController = [(DSBlockingPermissionsController *)self navigationController];
  v12 = [navigationController popToViewController:self animated:1];

  blockedPeople = [(DSBlockingPermissionsController *)self blockedPeople];
  v14 = [blockedPeople count];

  if (v14)
  {
    [(DSBlockingPermissionsController *)self _sortSharingPeople];
  }

  else
  {
    [(DSBlockingPermissionsController *)self next];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = -[DSBlockingPermissionsController blockedPersonForIndex:](self, "blockedPersonForIndex:", [path row]);
  if (v5)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    displayName = [v5 displayName];
    localizedDetail = [v5 localizedDetail];
    v9 = [(DSBlockingPermissionsController *)self tableIconForPerson:v5];
    v10 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView withText:displayName detail:localizedDetail icon:v9];

    [v10 setAccessoryType:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(DSBlockingPermissionsController *)self blockedPeople:view];
  v5 = [v4 count];

  return v5;
}

- (void)reloadTableViewData
{
  tableView = [(OBTableWelcomeController *)self tableView];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [tableView reloadSections:v4 withRowAnimation:100];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 layoutIfNeeded];

  [(DSBlockingPermissionsController *)self _updateButton];
}

- (id)blockedPersonForIndex:(int64_t)index
{
  if (index < 0 || (-[DSBlockingPermissionsController blockedPeople](self, "blockedPeople"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    v9 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_FAULT))
    {
      [(DSBlockingPermissionsController *)index blockedPersonForIndex:v9];
    }

    v8 = 0;
  }

  else
  {
    blockedPeople = [(DSBlockingPermissionsController *)self blockedPeople];
    v8 = [blockedPeople objectAtIndexedSubscript:index];
  }

  return v8;
}

- (id)tableIconForPerson:(id)person
{
  personCopy = person;
  contact = [personCopy contact];
  identifier = [contact identifier];

  if (identifier)
  {
    personIconCache = [(DSBlockingPermissionsController *)self personIconCache];
    iconForTable = [personIconCache objectForKeyedSubscript:identifier];

    if (!iconForTable)
    {
      iconForTable = [personCopy iconForTable];
      personIconCache2 = [(DSBlockingPermissionsController *)self personIconCache];
      [personIconCache2 setObject:iconForTable forKeyedSubscript:identifier];
    }

    iconForTable2 = iconForTable;
  }

  else
  {
    iconForTable2 = [personCopy iconForTable];
  }

  return iconForTable2;
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__DSBlockingPermissionsController_selectAndStopAllSharing__block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_248C7E000, log, OS_LOG_TYPE_ERROR, "Failed to stop all sharing with %@ because %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_sharingStoppedForPerson:(uint64_t)a1 sourceNames:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248C7E000, a2, OS_LOG_TYPE_ERROR, "_sharing: no match for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)blockedPersonForIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134349056;
  v4 = a1;
  _os_log_fault_impl(&dword_248C7E000, a2, OS_LOG_TYPE_FAULT, "Failed to find a person for index path %{public}ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end