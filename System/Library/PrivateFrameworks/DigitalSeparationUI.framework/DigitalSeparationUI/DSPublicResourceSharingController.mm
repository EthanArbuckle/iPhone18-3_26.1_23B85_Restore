@interface DSPublicResourceSharingController
+ (void)initialize;
- (BOOL)shouldShow;
- (DSNavigationDelegate)delegate;
- (DSPublicResourceSharingController)init;
- (id)publicSharingTypeForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_pushNextPane;
- (void)_updateButton;
- (void)_updateTitle;
- (void)reloadTableViewData;
- (void)stopAllSharing;
- (void)stopSelectedSharing;
- (void)stopSharingFailedWithError:(id)error;
- (void)stopSharingTypes:(id)types alertLabel:(id)label alertDetail:(id)detail;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation DSPublicResourceSharingController

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  delegate = [(DSPublicResourceSharingController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    fetchedSharingPermissions = [delegate fetchedSharingPermissions];
    [(DSPublicResourceSharingController *)self setPermissions:fetchedSharingPermissions];

    permissions = [(DSPublicResourceSharingController *)self permissions];
    v6 = [permissions publicSharingTypesCount] > 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_pushNextPane
{
  delegate = [(DSPublicResourceSharingController *)self delegate];
  [delegate pushNextPane];
}

- (void)stopSharingTypes:(id)types alertLabel:(id)label alertDetail:(id)detail
{
  typesCopy = types;
  v9 = MEMORY[0x277D75110];
  labelCopy = label;
  v11 = [v9 alertControllerWithTitle:0 message:detail preferredStyle:0];
  v12 = MEMORY[0x277D750F8];
  v13 = DSUILocStringForKey(@"CANCEL");
  v14 = [v12 actionWithTitle:v13 style:1 handler:&__block_literal_global_6];

  v15 = MEMORY[0x277D750F8];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__DSPublicResourceSharingController_stopSharingTypes_alertLabel_alertDetail___block_invoke_2;
  v21 = &unk_278F75678;
  selfCopy = self;
  v23 = typesCopy;
  v16 = typesCopy;
  v17 = [v15 actionWithTitle:labelCopy style:2 handler:&v18];

  [v11 addAction:{v17, v18, v19, v20, v21, selfCopy}];
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
  permissions = [(DSPublicResourceSharingController *)self permissions];
  allPublicSharingTypes = [permissions allPublicSharingTypes];
  v4 = [allPublicSharingTypes copy];
  v5 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_LABEL");
  v6 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_DETAIL");
  [(DSPublicResourceSharingController *)self stopSharingTypes:v4 alertLabel:v5 alertDetail:v6];
}

- (void)stopSelectedSharing
{
  selectedTypes = [(DSPublicResourceSharingController *)self selectedTypes];
  allObjects = [selectedTypes allObjects];
  v4 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_LABEL");
  v5 = DSUILocStringForKey(@"STOP_ALL_PUBLIC_SHARING_ALERT_DETAIL");
  [(DSPublicResourceSharingController *)self stopSharingTypes:allObjects alertLabel:v4 alertDetail:v5];
}

- (void)stopSharingFailedWithError:(id)error
{
  v4 = [MEMORY[0x277D75110] ds_alertControllerWithStopSharingError:error];
  [(DSTableWelcomeController *)self presentErrorAlertController:v4];
}

- (void)_updateButton
{
  selectedTypes = [(DSPublicResourceSharingController *)self selectedTypes];
  v4 = [selectedTypes count];

  boldButton = [(DSTableWelcomeController *)self boldButton];
  [boldButton removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];

  if (v4)
  {
    boldButton2 = [(DSTableWelcomeController *)self boldButton];
    v7 = DSUILocStringForKey(@"STOP_SHARING");
    [boldButton2 setTitle:v7 forState:0];

    boldButton3 = [(DSTableWelcomeController *)self boldButton];
    [boldButton3 addTarget:self action:sel_stopSelectedSharing forControlEvents:64];
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

    boldButton3 = DSUILocStringForKey(v9);
    boldButton4 = [(DSTableWelcomeController *)self boldButton];
    [boldButton4 setTitle:boldButton3 forState:0];

    boldButton5 = [(DSTableWelcomeController *)self boldButton];
    [boldButton5 addTarget:self action:sel__pushNextPane forControlEvents:64];
  }

  [(DSTableWelcomeController *)self hideButtonsIfSearching];
}

- (id)publicSharingTypeForIndexPath:(id)path
{
  pathCopy = path;
  permissions = [(DSPublicResourceSharingController *)self permissions];
  v6 = [pathCopy row];

  v7 = [permissions publicSharingType:v6];

  return v7;
}

- (void)reloadTableViewData
{
  permissions = [(DSPublicResourceSharingController *)self permissions];
  [permissions sort];

  permissions2 = [(DSPublicResourceSharingController *)self permissions];
  -[DSTableWelcomeController setIsModelEmpty:](self, "setIsModelEmpty:", [permissions2 publicSharingTypesCount] == 0);

  tableView = [(OBTableWelcomeController *)self tableView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [tableView reloadSections:v6 withRowAnimation:100];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 layoutIfNeeded];

  [(DSPublicResourceSharingController *)self _updateButton];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:pathCopy];
  displayName = [v6 displayName];
  localizedDetailText = [v6 localizedDetailText];
  iconForTable = [v6 iconForTable];
  selectedTypes = [(DSPublicResourceSharingController *)self selectedTypes];
  v11 = [selectedTypes containsObject:v6];

  if (v11)
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];
  }

  tableView2 = [(OBTableWelcomeController *)self tableView];
  v14 = [DSIconTableViewCell iconTableViewCellFromTableView:tableView2 withText:displayName detail:localizedDetailText icon:iconForTable];

  [v14 setAccessoryType:0];

  return v14;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [(DSPublicResourceSharingController *)self permissions:view];
  publicSharingTypesCount = [v5 publicSharingTypesCount];

  if (publicSharingTypesCount)
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
    sources = [v24 sources];
    v9 = [sources countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(sources);
          }

          v13 = MEMORY[0x277D054C0];
          name = [*(*(&v25 + 1) + 8 * i) name];
          v15 = [v13 sourceDescriptorForSource:name];
          localizedAppName = [v15 localizedAppName];

          [v7 addObject:localizedAppName];
        }

        v10 = [sources countByEnumeratingWithState:&v25 objects:v29 count:16];
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

    publicSharingTypesCount = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return publicSharingTypesCount;
}

- (void)_updateTitle
{
  headerView = [(DSPublicResourceSharingController *)self headerView];
  v4 = DSUILocStringForKey(@"PUBLIC_SHARING_TITLE");
  [headerView setTitle:v4];

  headerView2 = [(DSPublicResourceSharingController *)self headerView];
  v5 = DSUILocStringForKey(@"PUBLIC_SHARING_DETAIL");
  [headerView2 setDetailText:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedTypes = [(DSPublicResourceSharingController *)self selectedTypes];
  v7 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:pathCopy];

  [selectedTypes addObject:v7];

  [(DSPublicResourceSharingController *)self _updateButton];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedTypes = [(DSPublicResourceSharingController *)self selectedTypes];
  v7 = [(DSPublicResourceSharingController *)self publicSharingTypeForIndexPath:pathCopy];

  [selectedTypes removeObject:v7];

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