@interface DSPublicResourceSharingController
+ (void)initialize;
- (BOOL)shouldShow;
- (DSNavigationDelegate)delegate;
- (DSPublicResourceSharingController)init;
- (id)publicSharingTypeForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_pushNextPane;
- (void)_updateButton;
- (void)_updateTitle;
- (void)reloadTableViewData;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingFailedWithError:(id)a3;
- (void)stopSharingTypes:(id)a3 alertLabel:(id)a4 alertDetail:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation DSPublicResourceSharingController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogPublicResourceSharingController = os_log_create("com.apple.DigitalSeparation", "DSPublicResourceSharingController");

    MEMORY[0x2821F96F8]();
  }
}

- (DSPublicResourceSharingController)init
{
  v3 = +[DSFeatureFlags isNaturalUIEnabled];
  v4 = DSUILocStringForKey(@"PUBLIC_SHARING_TITLE");
  v5 = DSUILocStringForKey(@"PUBLIC_SHARING_DETAIL");
  if (v3)
  {
    v17.receiver = self;
    v17.super_class = DSPublicResourceSharingController;
    v6 = [(DSTableWelcomeController *)&v17 initWithTitle:v4 detailText:v5 symbolName:@"person.3.fill" adoptTableViewScrollView:0 shouldShowSearchBar:0];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] imageNamed:@"person.3.fill"];
    v16.receiver = self;
    v16.super_class = DSPublicResourceSharingController;
    v6 = [(DSTableWelcomeController *)&v16 initWithTitle:v4 detailText:v5 icon:v7 adoptTableViewScrollView:0 shouldShowSearchBar:0];
  }

  if (v6)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    selectedTypes = v6->_selectedTypes;
    v6->_selectedTypes = v8;

    v10 = dispatch_queue_create("PublicSharingPermissionsControllerWork", 0);
    [(DSPublicResourceSharingController *)v6 setWorkQueue:v10];

    v11 = DSUILocStringForKey(@"SKIP");
    v12 = [DSUIUtilities setUpBoldButtonForController:v6 title:v11 target:v6 selector:sel__pushNextPane];
    [(DSTableWelcomeController *)v6 setBoldButton:v12];

    v13 = DSUILocStringForKey(@"STOP_ALL_SHARING");
    v14 = [DSUIUtilities setUpLinkButtonForController:v6 title:v13 target:v6 selector:sel_stopAllSharing];
    [(DSTableWelcomeController *)v6 setLinkButton:v14];
  }

  return v6;
}

- (BOOL)shouldShow
{
  v3 = [(DSPublicResourceSharingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 fetchedSharingPermissions];
    [(DSPublicResourceSharingController *)self setPermissions:v4];

    v5 = [(DSPublicResourceSharingController *)self permissions];
    v6 = [v5 publicSharingTypesCount] > 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_pushNextPane
{
  v2 = [(DSPublicResourceSharingController *)self delegate];
  [v2 pushNextPane];
}

- (void)stopSharingTypes:(id)a3 alertLabel:(id)a4 alertDetail:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x277D75110];
  v10 = a4;
  v11 = [v9 alertControllerWithTitle:0 message:a5 preferredStyle:0];
  v12 = MEMORY[0x277D750F8];
  v13 = DSUILocStringForKey(@"CANCEL");
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_6];

  v15 = MEMORY[0x277D750F8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_2;
  v21 = &unk_278F75678;
  v22 = self;
  v23 = v8;
  v16 = v8;
  v17 = [v15 actionWithTitle:v10 style:2 handler:&v18];

  [v11 addAction:{v17, v18, v19, v20, v21, v22}];
  [v11 addAction:v14];
  [(DSPublicResourceSharingController *)self presentViewController:v11 animated:1 completion:0];
}

void __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsBusy];

  v3 = dispatch_group_create();
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [*(v1 + 32) permissions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(v1 + 40);
  v23 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v23)
  {
    v7 = *v31;
    *&v6 = 138543362;
    v21 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        v10 = DSLogPublicResourceSharingController;
        if (os_log_type_enabled(DSLogPublicResourceSharingController, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [v9 source];
          [v12 name];
          v13 = v7;
          v14 = v4;
          v15 = v5;
          v17 = v16 = v1;
          *buf = v21;
          v35 = v17;
          _os_log_impl(&dword_248C7E000, v11, OS_LOG_TYPE_INFO, "Stopping all public sharing for type %{public}@", buf, 0xCu);

          v1 = v16;
          v5 = v15;
          v4 = v14;
          v7 = v13;
        }

        v18 = [*(v1 + 32) workQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_340;
        v26[3] = &unk_278F75628;
        v26[4] = v9;
        v27 = v4;
        v28 = v5;
        v29 = v3;
        [v9 stopAllSharingOnQueue:v18 completion:v26];

        ++v8;
      }

      while (v23 != v8);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v23);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_342;
  block[3] = &unk_278F75650;
  block[4] = *(v1 + 32);
  v25 = v4;
  v19 = v4;
  dispatch_group_notify(v3, MEMORY[0x277D85CD0], block);

  v20 = *MEMORY[0x277D85DE8];
}

void __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_340(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DSLogPublicResourceSharingController;
  if (os_log_type_enabled(DSLogPublicResourceSharingController, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 source];
    v8 = [v7 name];
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_248C7E000, v6, OS_LOG_TYPE_INFO, "Finished stop all public sharing for type %{public}@", &v11, 0xCu);
  }

  if (v3)
  {
    v9 = DSLogPublicResourceSharingController;
    if (os_log_type_enabled(DSLogPublicResourceSharingController, OS_LOG_TYPE_ERROR))
    {
      __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_340_cold_1(a1, v9, v3);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    [*(a1 + 48) removePublicSharingType:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 56));

  v10 = *MEMORY[0x277D85DE8];
}

void __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_342(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  if ([*(a1 + 40) count])
  {
    v4 = [MEMORY[0x277D05498] errorWithCode:2 underlyingErrors:*(a1 + 40)];
    [*(a1 + 32) stopSharingFailedWithError:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _pushNextPane];
  }
}

- (void)stopAllSharing
{
  v7 = [(DSPublicResourceSharingController *)self permissions];
  v3 = [v7 allPublicSharingTypes];
  v4 = [v3 copy];
  v5 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_LABEL");
  v6 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_DETAIL");
  [(DSPublicResourceSharingController *)self stopSharingTypes:v4 alertLabel:v5 alertDetail:v6];
}

- (void)stopSelectedSharing
{
  v6 = [(DSPublicResourceSharingController *)self selectedTypes];
  v3 = [v6 allObjects];
  v4 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_LABEL");
  v5 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_DETAIL");
  [(DSPublicResourceSharingController *)self stopSharingTypes:v3 alertLabel:v4 alertDetail:v5];
}

- (void)stopSharingFailedWithError:(id)a3
{
  v4 = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:a3];
  [(DSTableWelcomeController *)self presentErrorAlertController:v4];
}

- (void)_updateButton
{
  v3 = [(DSPublicResourceSharingController *)self selectedTypes];
  v4 = [v3 count];

  v5 = [(DSTableWelcomeController *)self boldButton];
  [v5 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v4)
  {
    v6 = [(DSTableWelcomeController *)self boldButton];
    v7 = DSUILocStringForKey(@"STOP_SHARING");
    [v6 setTitle:v7 forState:0];

    v8 = [(DSTableWelcomeController *)self boldButton];
    [v8 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
  }

  else
  {
    if ([(DSTableWelcomeController *)self isModelEmpty])
    {
      v9 = @"CONTINUE";
    }

    else
    {
      v9 = @"SKIP";
    }

    v8 = DSUILocStringForKey(v9);
    v10 = [(DSTableWelcomeController *)self boldButton];
    [v10 setTitle:v8 forState:0];

    v11 = [(DSTableWelcomeController *)self boldButton];
    [v11 addTarget:self action:sel__pushNextPane forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (id)publicSharingTypeForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DSPublicResourceSharingController *)self permissions];
  v6 = [v4 row];

  v7 = [v5 publicSharingType:v6];

  return v7;
}

- (void)reloadTableViewData
{
  v3 = [(DSPublicResourceSharingController *)self permissions];
  [v3 sort];

  v4 = [(DSPublicResourceSharingController *)self permissions];
  -[DSTableWelcomeController setIsModelEmpty:](self, "setIsModelEmpty:", [v4 publicSharingTypesCount] == 0);

  v5 = [(OBTableWelcomeController *)self tableView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v5 reloadSections:v6 withRowAnimation:100];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 layoutIfNeeded];

  [(DSPublicResourceSharingController *)self _updateButton];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:v5];
  v7 = [v6 displayName];
  v8 = [v6 localizedDetailText];
  v9 = [v6 iconForTable];
  v10 = [(DSPublicResourceSharingController *)self selectedTypes];
  v11 = [v10 containsObject:v6];

  if (v11)
  {
    v12 = [(OBTableWelcomeController *)self tableView];
    [v12 selectRowAtIndexPath:v5 animated:1 scrollPosition:0];
  }

  v13 = [(OBTableWelcomeController *)self tableView];
  v14 = [DSIconTableViewCell iconTableViewCellFromTableView:v13 withText:v7 detail:v8 icon:v9];

  [v14 setAccessoryType:0];

  return v14;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(DSPublicResourceSharingController *)self permissions:a3];
  v6 = [v5 publicSharingTypesCount];

  if (v6)
  {
    [(DSTableWelcomeController *)self hideNoSharingView];
    [(DSTableWelcomeController *)self setIsModelEmpty:0];
    [(DSPublicResourceSharingController *)self _updateTitle];
    [(DSPublicResourceSharingController *)self _updateButton];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = objc_alloc_init(MEMORY[0x277D054C8]);
    v8 = [v24 sources];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = MEMORY[0x277D054C0];
          v14 = [*(*(&v25 + 1) + 8 * i) name];
          v15 = [v13 sourceDescriptorForSource:v14];
          v16 = [v15 localizedAppName];

          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v17 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v7];
    v18 = MEMORY[0x277CCACA8];
    v19 = DSUILocStringForKey(@"NO_PUBLIC_SHARING_INFORMATION");
    v20 = [v18 localizedStringWithFormat:v19, v17];

    v21 = [MEMORY[0x277D755B8] systemImageNamed:@"person.3.fill"];
    [(DSTableWelcomeController *)self showNoSharingViewWithText:v20 image:v21];

    [(DSTableWelcomeController *)self setIsModelEmpty:1];
    [(DSPublicResourceSharingController *)self _updateButton];

    v6 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_updateTitle
{
  v3 = [(DSPublicResourceSharingController *)self headerView];
  v4 = DSUILocStringForKey(@"PUBLIC_SHARING_TITLE");
  [v3 setTitle:v4];

  v6 = [(DSPublicResourceSharingController *)self headerView];
  v5 = DSUILocStringForKey(@"PUBLIC_SHARING_DETAIL");
  [v6 setDetailText:v5];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPublicResourceSharingController *)self selectedTypes];
  v7 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:v5];

  [v6 addObject:v7];

  [(DSPublicResourceSharingController *)self _updateButton];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(DSPublicResourceSharingController *)self selectedTypes];
  v7 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:v5];

  [v6 removeObject:v7];

  [(DSPublicResourceSharingController *)self _updateButton];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_340_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 source];
  v7 = [v6 name];
  v9 = 138543618;
  v10 = v7;
  v11 = 2114;
  v12 = a3;
  _os_log_error_impl(&dword_248C7E000, v5, OS_LOG_TYPE_ERROR, "Failed to stop all public sharing for sharing type %{public}@ because %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end