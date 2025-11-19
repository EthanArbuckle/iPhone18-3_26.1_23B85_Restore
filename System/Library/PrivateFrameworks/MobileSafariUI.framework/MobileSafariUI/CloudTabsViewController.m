@interface CloudTabsViewController
- (CloudTabsViewController)initWithDeviceProvider:(id)a3 primaryDeviceUUID:(id)a4 profileIdentifier:(id)a5;
- (LinkPreviewProvider)linkPreviewProvider;
- (TabGroupProvider)tabGroupProvider;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_deviceForIndexPath:(id)a3;
- (id)_filteredTabsInSection:(int64_t)a3;
- (id)_tabForIndexPath:(id)a3;
- (id)_urlForRowAtIndexPath:(id)a3;
- (id)previewTableViewController:(id)a3 menuForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_delayReloadTimerFired;
- (void)_deleteRowAtIndexPath:(id)a3;
- (void)_loadDevices;
- (void)_reloadDevicesAndTable;
- (void)_updateContentUnavailableConfiguration;
- (void)cloudTabDeviceProvider:(id)a3 didUpdateCloudTabsInProfileWithIdentifier:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CloudTabsViewController

- (CloudTabsViewController)initWithDeviceProvider:(id)a3 primaryDeviceUUID:(id)a4 profileIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = CloudTabsViewController;
  v12 = [(CloudTabsViewController *)&v22 init];
  if (v12)
  {
    v13 = startPageTitleForCollectionType(@"CloudTabsCollection");
    [(CloudTabsViewController *)v12 setTitle:v13];

    v14 = objc_alloc(MEMORY[0x277D751E0]);
    v15 = _WBSLocalizedString();
    v16 = [v14 initWithTitle:v15 style:2 target:v12 action:sel_dismiss];
    v17 = [(CloudTabsViewController *)v12 navigationItem];
    [v17 setRightBarButtonItem:v16];

    [v9 addCloudTabsObserver:v12];
    objc_storeStrong(&v12->_deviceProvider, a3);
    objc_storeStrong(&v12->_primaryDeviceUUID, a4);
    v18 = [v11 copy];
    profileIdentifier = v12->_profileIdentifier;
    v12->_profileIdentifier = v18;

    v12->_onlyShowsPrimaryDevice = v10 != 0;
    [(CloudTabsViewController *)v12 _loadDevices];
    v20 = v12;
  }

  return v12;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CloudTabsViewController;
  [(CloudTabsViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(CloudTabsViewController *)self setView:v4];

  v5 = [(CloudTabsViewController *)self view];
  [v5 setAutoresizingMask:18];

  v6 = [[PreviewTableViewController alloc] initWithStyle:2];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v6;

  [(PreviewTableViewController *)self->_tableViewController setPreviewDelegate:self];
  v8 = [(CloudTabsViewController *)self linkPreviewProvider];
  [(PreviewTableViewController *)self->_tableViewController setLinkPreviewProvider:v8];

  v9 = [(PreviewTableViewController *)self->_tableViewController tableView];
  tableView = self->_tableView;
  self->_tableView = v9;

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"CloudTabsTable"];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDragDelegate:self];
  +[PageTitleAndAddressTableViewCell defaultHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:?];
  [(UITableView *)self->_tableView setKeyboardDismissMode:1];
  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
  [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
  [(UITableView *)self->_tableView setSectionFooterHeight:0.0];
  [(CloudTabsViewController *)self addChildViewController:self->_tableViewController];
  v11 = [(CloudTabsViewController *)self view];
  [v11 addSubview:self->_tableView];

  v12 = self->_tableViewController;

  [(PreviewTableViewController *)v12 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CloudTabsViewController;
  [(CloudTabsViewController *)&v13 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  primaryDeviceUUID = self->_primaryDeviceUUID;
  v6 = self->_searchController;
  if (primaryDeviceUUID)
  {
    [(UISearchController *)v6 setScopeBarActivation:3];
  }

  else
  {
    v7 = [(UISearchController *)v6 searchBar];
    [v7 setShowsScopeBar:0];
  }

  [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:primaryDeviceUUID != 0];
  v8 = _WBSLocalizedString();
  v9 = [(UISearchController *)self->_searchController searchBar];
  [v9 setPlaceholder:v8];

  v10 = [(CloudTabsViewController *)self navigationItem];
  [v10 setHidesSearchBarWhenScrolling:0];

  v11 = self->_searchController;
  v12 = [(CloudTabsViewController *)self navigationItem];
  [v12 setSearchController:v11];

  [(CloudTabsViewController *)self _reloadDevicesAndTable];
}

- (void)_updateContentUnavailableConfiguration
{
  if ([(CloudTabsViewController *)self numberOfSectionsInTableView:self->_tableView]< 1)
  {
LABEL_5:
    if ([(NSArray *)self->_devices count]&& [(NSString *)self->_userTypedFilter length])
    {
      v4 = [MEMORY[0x277D75390] searchConfiguration];
      v5 = [(UISearchController *)self->_searchController _contentUnavailableConfigurationState];
      v6 = [v4 updatedConfigurationForState:v5];

      if (self->_onlyShowsPrimaryDevice)
      {
        v7 = _WBSLocalizedString();
        v8 = [v6 buttonProperties];
        v9 = [v8 configuration];
        [v9 setTitle:v7];

        objc_initWeak(&location, self);
        v10 = MEMORY[0x277D750C8];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __65__CloudTabsViewController__updateContentUnavailableConfiguration__block_invoke;
        v17[3] = &unk_2781D5B80;
        objc_copyWeak(&v18, &location);
        v11 = [v10 actionWithHandler:v17];
        v12 = [v6 buttonProperties];
        [v12 setPrimaryAction:v11];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      [(CloudTabsViewController *)self _setContentUnavailableConfiguration:v6];
    }

    else
    {
      v16 = [MEMORY[0x277D75390] emptyExtraProminentConfiguration];
      v13 = [MEMORY[0x277D755B8] systemImageNamed:@"icloud"];
      [v16 setImage:v13];

      v14 = _WBSLocalizedString();
      [v16 setText:v14];

      [(WBSCloudTabDeviceProvider *)self->_deviceProvider cloudTabsAreEnabled];
      v15 = _WBSLocalizedString();
      [v16 setSecondaryText:v15];

      [(CloudTabsViewController *)self _setContentUnavailableConfiguration:v16];
    }
  }

  else
  {
    v3 = 0;
    while (![(CloudTabsViewController *)self tableView:self->_tableView numberOfRowsInSection:v3])
    {
      if (++v3 >= [(CloudTabsViewController *)self numberOfSectionsInTableView:self->_tableView])
      {
        goto LABEL_5;
      }
    }

    [(CloudTabsViewController *)self _setContentUnavailableConfiguration:0];
  }
}

void __65__CloudTabsViewController__updateContentUnavailableConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[134] searchBar];
    [v2 setSelectedScopeButtonIndex:1];

    [v3 updateSearchResultsForSearchController:v3[134]];
    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CloudTabsViewController;
  [(CloudTabsViewController *)&v4 viewWillAppear:a3];
  [(CloudTabsViewController *)self _updateContentUnavailableConfiguration];
  if (!self->_onlyShowsPrimaryDevice)
  {
    [(UIViewController *)self safari_restoreTableViewScrollPosition];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CloudTabsViewController;
  [(CloudTabsViewController *)&v4 viewWillDisappear:a3];
  if (!self->_onlyShowsPrimaryDevice)
  {
    [(UIViewController *)self safari_saveTableViewScrollPosition];
  }
}

- (void)_loadDevices
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = [(WBSCloudTabDeviceProvider *)self->_deviceProvider syncedRemoteCloudTabDevicesForProfileWithIdentifier:self->_profileIdentifier];
  devices = self->_devices;
  self->_devices = v3;

  v5 = startPageTitleForCollectionType(@"CloudTabsCollection");
  if (self->_onlyShowsPrimaryDevice)
  {
    v6 = self->_devices;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__CloudTabsViewController__loadDevices__block_invoke;
    v19[3] = &unk_2781D9380;
    v19[4] = self;
    v7 = [(NSArray *)v6 safari_firstObjectPassingTest:v19];
    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = _WBSLocalizedString();
      v10 = [v7 name];
      v11 = [v8 stringWithFormat:v9, v10];
      [(CloudTabsViewController *)self setTitle:v11];

      v21[0] = v7;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v13 = self->_devices;
      self->_devices = v12;

      v14 = [v7 name];
      v20[0] = v14;
      v15 = _WBSLocalizedString();
      v20[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v17 = [(UISearchController *)self->_searchController searchBar];
      [v17 setScopeButtonTitles:v16];
    }

    else
    {
      v18 = self->_devices;
      self->_devices = MEMORY[0x277CBEBF8];

      [(CloudTabsViewController *)self setTitle:v5];
    }
  }

  else
  {
    [(CloudTabsViewController *)self setTitle:v5];
  }
}

uint64_t __39__CloudTabsViewController__loadDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 1008)];

  return v4;
}

- (void)_delayReloadTimerFired
{
  [(NSTimer *)self->_delayReloadTimer invalidate];
  delayReloadTimer = self->_delayReloadTimer;
  self->_delayReloadTimer = 0;

  [(CloudTabsViewController *)self _reloadDevicesAndTable];
}

- (void)cloudTabDeviceProvider:(id)a3 didUpdateCloudTabsInProfileWithIdentifier:(id)a4
{
  if (WBSIsEqual())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__CloudTabsViewController_cloudTabDeviceProvider_didUpdateCloudTabsInProfileWithIdentifier___block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_reloadDevicesAndTable
{
  if (![(NSTimer *)self->_delayReloadTimer isValid])
  {
    [(CloudTabsViewController *)self _loadDevices];
    [(UITableView *)self->_tableView reloadData];

    [(CloudTabsViewController *)self _updateContentUnavailableConfiguration];
  }
}

- (id)_deviceForIndexPath:(id)a3
{
  devices = self->_devices;
  v4 = [a3 section];

  return [(NSArray *)devices objectAtIndexedSubscript:v4];
}

- (id)_filteredTabsInSection:(int64_t)a3
{
  v4 = [(NSArray *)self->_devices objectAtIndexedSubscript:a3];
  v5 = [v4 tabs];

  if ([(NSString *)self->_userTypedFilter length])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__CloudTabsViewController__filteredTabsInSection___block_invoke;
    v9[3] = &unk_2781D93A8;
    v9[4] = self;
    v6 = [v5 safari_filterObjectsUsingBlock:v9];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (id)_tabForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[CloudTabsViewController _filteredTabsInSection:](self, "_filteredTabsInSection:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v8 = [a3 searchBar];
  v4 = [v8 text];
  if (self->_primaryDeviceUUID)
  {
    v5 = [v8 selectedScopeButtonIndex] == 0;
  }

  else
  {
    v5 = 0;
  }

  if (self->_onlyShowsPrimaryDevice != v5 || (WBSIsEqual() & 1) == 0)
  {
    self->_onlyShowsPrimaryDevice = v5;
    v6 = [v4 copy];
    userTypedFilter = self->_userTypedFilter;
    self->_userTypedFilter = v6;

    [(CloudTabsViewController *)self _reloadDevicesAndTable];
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = 10.0;
  if (!self->_onlyShowsPrimaryDevice)
  {
    v5 = [(CloudTabsViewController *)self _filteredTabsInSection:a4];
    if ([v5 count])
    {
      v4 = *MEMORY[0x277D76F30];
    }

    else
    {
      v4 = 2.22507386e-308;
    }
  }

  return v4;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v4 = [(CloudTabsViewController *)self _filteredTabsInSection:a4];
  if ([v4 count])
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 2.22507386e-308;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_onlyShowsPrimaryDevice || (-[CloudTabsViewController _filteredTabsInSection:](self, "_filteredTabsInSection:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_devices objectAtIndexedSubscript:a4];
    v10 = [v9 name];
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)self->_devices count];
  if (result)
  {
    v7 = [(CloudTabsViewController *)self _filteredTabsInSection:a4];
    v8 = [v7 count];

    return v8;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(CloudTabsViewController *)self _tabForIndexPath:a4];
  v8 = [v6 dequeueReusableCellWithIdentifier:@"CloudTabReuseIdentifier"];

  if (!v8)
  {
    v8 = [[PageTitleAndAddressTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"CloudTabReuseIdentifier"];
  }

  v9 = [v7 title];
  [(UITableViewCell *)v8 safari_setLinkedPageTitle:v9 description:0];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = [(CloudTabsViewController *)self _tabForIndexPath:a4];
  v5 = [MEMORY[0x277D28F40] builder];
  v6 = [v5 navigationIntentWithCloudTab:v8];

  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);
  [WeakRetained handleNavigationIntent:v6 completion:0];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(CloudTabsViewController *)self _deviceForIndexPath:a4];
  v5 = [v4 isCloseRequestSupported];

  return v5;
}

- (void)_deleteRowAtIndexPath:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CloudTabsViewController *)self _deviceForIndexPath:v4];
  v6 = [(CloudTabsViewController *)self _tabForIndexPath:v4];
  [(NSTimer *)self->_delayReloadTimer invalidate];
  v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__delayReloadTimerFired selector:0 userInfo:0 repeats:0.35];
  delayReloadTimer = self->_delayReloadTimer;
  self->_delayReloadTimer = v7;

  if ([(WBSCloudTabDeviceProvider *)self->_deviceProvider closeTab:v6 onDevice:v5])
  {
    v9 = [v5 tabs];
    v10 = [v9 count];

    [(CloudTabsViewController *)self _loadDevices];
    tableView = self->_tableView;
    if (v10 == 1)
    {
      v12 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(v4, "section")}];
      [(UITableView *)tableView deleteSections:v12 withRowAnimation:100];
    }

    else
    {
      v13[0] = v4;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      [(UITableView *)tableView deleteRowsAtIndexPaths:v12 withRowAnimation:100];
    }
  }

  else
  {
    [(UITableView *)self->_tableView setEditing:0 animated:1];
  }
}

- (id)_urlForRowAtIndexPath:(id)a3
{
  v3 = [(CloudTabsViewController *)self _tabForIndexPath:a3];
  v4 = [v3 url];

  return v4;
}

- (id)previewTableViewController:(id)a3 menuForRowAtIndexPath:(id)a4
{
  v48[3] = *MEMORY[0x277D85DE8];
  v34 = a3;
  v6 = a4;
  v35 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(CloudTabsViewController *)self _urlForRowAtIndexPath:v6];
  if (v9)
  {
    v10 = MEMORY[0x277D750C8];
    v11 = _WBSLocalizedString();
    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"doc.on.doc"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke;
    v46[3] = &unk_2781D93D0;
    v13 = v9;
    v47 = v13;
    v14 = [v10 actionWithTitle:v11 image:v12 identifier:0 handler:v46];
    [v35 addObject:v14];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_2;
    aBlock[3] = &unk_2781D93F8;
    objc_copyWeak(&v44, &location);
    v15 = v13;
    v43 = v15;
    v16 = _Block_copy(aBlock);
    v17 = MEMORY[0x277D750C8];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_3;
    v40[3] = &unk_2781D4D90;
    v18 = v16;
    v41 = v18;
    v19 = [v17 _sf_openInNewTabActionWithHandler:v40];
    [v7 addObject:v19];

    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_4;
    v38[3] = &unk_2781D87B0;
    v21 = v18;
    v39 = v21;
    v22 = [WeakRetained openInTabGroupMenuWithNewTabGroupName:0 URL:v15 descendantCount:0 handler:v38];
    [v7 addObject:v22];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  if ([(CloudTabsViewController *)self tableView:self->_tableView editingStyleForRowAtIndexPath:v6]== 1)
  {
    v23 = MEMORY[0x277D750C8];
    v24 = _WBSLocalizedString();
    v25 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_5;
    v36[3] = &unk_2781D9420;
    v36[4] = self;
    v37 = v6;
    v26 = [v23 actionWithTitle:v24 image:v25 identifier:0 handler:v36];

    [v26 setAttributes:2];
    [v8 addObject:v26];
  }

  v27 = MEMORY[0x277D75710];
  v28 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v35];
  v48[0] = v28;
  v29 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v7];
  v48[1] = v29;
  v30 = [MEMORY[0x277D75710] menuWithTitle:&stru_2827BF158 image:0 identifier:0 options:1 children:v8];
  v48[2] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  v32 = [v27 menuWithTitle:&stru_2827BF158 children:v31];

  return v32;
}

void __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75810] generalPasteboard];
  [v2 setURL:v1];
}

void __76__CloudTabsViewController_previewTableViewController_menuForRowAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v5 = [MEMORY[0x277D28F40] builder];
    [v5 setPreferredTabOrder:a2];
    [v5 setPrefersOpenInNewTab:1];
    v6 = [v5 navigationIntentWithHistoryURL:*(a1 + 32)];
    v7 = objc_loadWeakRetained(v9 + 138);
    [v7 dispatchNavigationIntent:v6];

    if ([v6 shouldOrderToForeground])
    {
      v8 = objc_loadWeakRetained(v9 + 139);
      [v8 removeSingleBlankTabFromActiveTabGroup];
    }

    WeakRetained = v9;
  }
}

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAA88];
  v7 = a5;
  v8 = [v6 alloc];
  v9 = [(CloudTabsViewController *)self _urlForRowAtIndexPath:v7];

  v10 = [v8 initWithContentsOfURL:v9];
  v11 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v10];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  return v12;
}

- (LinkPreviewProvider)linkPreviewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_linkPreviewProvider);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

- (TabGroupProvider)tabGroupProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);

  return WeakRetained;
}

@end