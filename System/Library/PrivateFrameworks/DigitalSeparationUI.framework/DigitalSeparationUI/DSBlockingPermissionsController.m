@interface DSBlockingPermissionsController
- (BOOL)isFindMyASource;
- (DSBlockingPermissionsController)initWithPeople:(id)a3 permissions:(id)a4;
- (DSNavigationDelegate)delegate;
- (id)blockedPersonForIndex:(int64_t)a3;
- (id)tableIconForPerson:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_selectAll;
- (void)_sharingStoppedForPerson:(id)a3 sourceNames:(id)a4;
- (void)_sortSharingPeople;
- (void)_updateButton;
- (void)next;
- (void)presentFetchErrorMessage:(id)a3;
- (void)reloadTableViewData;
- (void)reviewSelectedSharing;
- (void)reviewSelectedSharingFlowCompleted;
- (void)selectAndStopAllSharing;
- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4;
@end

@implementation DSBlockingPermissionsController

- (DSBlockingPermissionsController)initWithPeople:(id)a3 permissions:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v12 = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [v11 configurationWithHierarchicalColor:v12];

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

    [(DSBlockingPermissionsController *)v10 setPermissions:v7];
    v17 = [MEMORY[0x277CBEB40] orderedSetWithArray:v6];
    [(DSBlockingPermissionsController *)v10 setBlockedPeople:v17];

    v18 = [MEMORY[0x277CBEB38] dictionary];
    personIconCache = v10->_personIconCache;
    v10->_personIconCache = v18;

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
  v3 = [(DSBlockingPermissionsController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
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

- (void)presentFetchErrorMessage:(id)a3
{
  v4 = a3;
  v5 = DSLog_14;
  if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_ERROR))
  {
    [(DSSharingPermissionsController *)v4 presentFetchErrorMessage:v5];
  }

  v6 = [(DSBlockingPermissionsController *)self navigationController];
  v7 = [v6 visibleViewController];

  if (v7 == self)
  {
    v9 = [MEMORY[0x277D75110] ds_alertControllerWithFetchSharingError:v4];
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

    [(DSBlockingPermissionsController *)self setPermissionsFetchError:v4];
  }
}

- (BOOL)isFindMyASource
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(DSBlockingPermissionsController *)self blockedPeople];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) sourceNames];
        v9 = [v8 containsObject:v6];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(DSTableWelcomeController *)self boldButton];
  [v3 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(OBTableWelcomeController *)self tableView];
  v5 = [v4 indexPathsForSelectedRows];
  v6 = [v5 count];

  v7 = [(DSTableWelcomeController *)self boldButton];
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
  [v7 setTitle:v10 forState:0];

  v11 = [(DSTableWelcomeController *)self boldButton];
  [v11 addTarget:self action:*v9 forControlEvents:64];
}

- (void)_selectAll
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(OBTableWelcomeController *)self tableView];
        [v10 selectRowAtIndexPath:v9 animated:0 scrollPosition:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sharingStoppedForPerson:(id)a3 sourceNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DSBlockingPermissionsController *)self blockedPeople];
  v9 = [v8 indexOfObject:v6];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_ERROR))
    {
      [DSBlockingPermissionsController _sharingStoppedForPerson:v6 sourceNames:v10];
    }
  }

  else
  {
    v11 = [(DSBlockingPermissionsController *)self blockedPeople];
    v12 = [v11 objectAtIndexedSubscript:v9];

    [v12 removeSources:v7];
    v13 = [v12 sourceNames];
    v14 = [v13 count];

    v15 = [(DSBlockingPermissionsController *)self blockedPeople];
    v16 = v15;
    if (v14)
    {
      [v15 setObject:v12 atIndex:v9];

      [(DSBlockingPermissionsController *)self _sortSharingPeople];
    }

    else
    {
      [v15 removeObjectAtIndex:v9];
    }
  }
}

- (void)_sortSharingPeople
{
  v3 = MEMORY[0x277D054F0];
  v4 = [(DSBlockingPermissionsController *)self blockedPeople];
  v5 = [v4 array];
  v7 = [v3 sortedXPCArray:v5];

  v6 = [MEMORY[0x277CBEB40] orderedSetWithArray:v7];
  [(DSBlockingPermissionsController *)self setBlockedPeople:v6];
}

- (void)sharingStoppedForPerson:(id)a3 sourceNames:(id)a4
{
  [(DSBlockingPermissionsController *)self _sharingStoppedForPerson:a3 sourceNames:a4];

  [(DSBlockingPermissionsController *)self reloadTableViewData];
}

- (void)reviewSelectedSharingFlowCompleted
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(OBTableWelcomeController *)self tableView];
        [v10 deselectRowAtIndexPath:v9 animated:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = [(DSBlockingPermissionsController *)self navigationController];
  v12 = [v11 popToViewController:self animated:1];

  v13 = [(DSBlockingPermissionsController *)self blockedPeople];
  v14 = [v13 count];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = -[DSBlockingPermissionsController blockedPersonForIndex:](self, "blockedPersonForIndex:", [a4 row]);
  if (v5)
  {
    v6 = [(OBTableWelcomeController *)self tableView];
    v7 = [v5 displayName];
    v8 = [v5 localizedDetail];
    v9 = [(DSBlockingPermissionsController *)self tableIconForPerson:v5];
    v10 = [DSIconTableViewCell iconTableViewCellFromTableView:v6 withText:v7 detail:v8 icon:v9];

    [v10 setAccessoryType:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(DSBlockingPermissionsController *)self blockedPeople:a3];
  v5 = [v4 count];

  return v5;
}

- (void)reloadTableViewData
{
  v3 = [(OBTableWelcomeController *)self tableView];
  v4 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v3 reloadSections:v4 withRowAnimation:100];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 layoutIfNeeded];

  [(DSBlockingPermissionsController *)self _updateButton];
}

- (id)blockedPersonForIndex:(int64_t)a3
{
  if (a3 < 0 || (-[DSBlockingPermissionsController blockedPeople](self, "blockedPeople"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v9 = DSLog_14;
    if (os_log_type_enabled(DSLog_14, OS_LOG_TYPE_FAULT))
    {
      [(DSBlockingPermissionsController *)a3 blockedPersonForIndex:v9];
    }

    v8 = 0;
  }

  else
  {
    v7 = [(DSBlockingPermissionsController *)self blockedPeople];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)tableIconForPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v5 identifier];

  if (v6)
  {
    v7 = [(DSBlockingPermissionsController *)self personIconCache];
    v8 = [v7 objectForKeyedSubscript:v6];

    if (!v8)
    {
      v8 = [v4 iconForTable];
      v9 = [(DSBlockingPermissionsController *)self personIconCache];
      [v9 setObject:v8 forKeyedSubscript:v6];
    }

    v10 = v8;
  }

  else
  {
    v10 = [v4 iconForTable];
  }

  return v10;
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