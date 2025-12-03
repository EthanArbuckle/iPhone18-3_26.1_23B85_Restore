@interface HUMobileTimerObjectTableViewController
- (BOOL)_activateAccessoryForMobileTimerCreation;
- (BOOL)_isSiriEndpointActive;
- (BOOL)_shouldAllowCellSelection;
- (CGSize)_calculatePreferredContentSize;
- (HUMobileTimerObjectTableViewController)initWithMediaProfileContainer:(id)container;
- (HUPresentationDelegate)presentationDelegate;
- (HUQuickControlContentHelper)quickControlContentHelper;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_checkAndFetchTimerObjects;
- (id)_findTimerObjectForID:(id)d;
- (id)_newCellForHeaderTitle:(id)title;
- (id)_newCellForMTTimerObjectUUID:(id)d;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (unint64_t)numberOfMobileTimerObjects;
- (void)_accessoryActivationTimerFinished:(id)finished;
- (void)_checkAccessFetchDataAndReloadTable;
- (void)_checkAndAddTimerObject;
- (void)_configureNoItemsViewAnimated:(BOOL)animated;
- (void)_quickDeleteMobileTimerObjectFromTable:(id)table;
- (void)_reloadTableViewWithExistingData;
- (void)_removeTimerObjectAtIndexPath:(id)path;
- (void)_showSpinner:(BOOL)spinner;
- (void)dealloc;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUMobileTimerObjectTableViewController

- (HUMobileTimerObjectTableViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v17.receiver = self;
  v17.super_class = HUMobileTimerObjectTableViewController;
  v6 = [(HUMobileTimerObjectTableViewController *)&v17 initWithStyle:2];
  if (v6)
  {
    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    accessorySettingsDataSource = [mEMORY[0x277D146E8] accessorySettingsDataSource];
    [accessorySettingsDataSource addObserver:v6];

    objc_storeStrong(&v6->_mediaProfileContainer, container);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mobileTimerObjects = v6->_mobileTimerObjects;
    v6->_mobileTimerObjects = v9;

    accessories = [containerCopy accessories];
    v12 = [accessories na_firstObjectPassingTest:&__block_literal_global_123];
    accessory = v6->_accessory;
    v6->_accessory = v12;

    v6->_accessoryAccessState = 0;
    v14 = objc_alloc_init(MEMORY[0x277CCAD78]);
    headerUUID = v6->_headerUUID;
    v6->_headerUUID = v14;
  }

  return v6;
}

uint64_t __72__HUMobileTimerObjectTableViewController_initWithMediaProfileContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isHomePod])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hf_isSiriEndpoint];
  }

  return v3;
}

- (unint64_t)numberOfMobileTimerObjects
{
  mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v3 = [mobileTimerObjects count];

  return v3;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v32 viewDidLoad];
  tableView = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView2 _setSectionContentInsetFollowsLayoutMargins:0];

  tableView3 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView3 setAllowsSelectionDuringEditing:1];

  _shouldAllowCellSelection = [(HUMobileTimerObjectTableViewController *)self _shouldAllowCellSelection];
  tableView4 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView4 setAllowsSelection:_shouldAllowCellSelection];

  tableView5 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView5 _setMarginWidth:1.0];

  tableView6 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView6 setLayoutMarginsFollowReadableWidth:1];

  tableView7 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView7 setEstimatedRowHeight:88.0];

  v11 = *MEMORY[0x277D76F30];
  tableView8 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView8 setRowHeight:v11];

  tableView9 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView9 setSectionHeaderHeight:0.0];

  tableView10 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView10 setSectionFooterHeight:10.0];

  tableView11 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView11 setSeparatorStyle:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView12 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView12 setBackgroundColor:clearColor];

  tableView13 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView13 _setTopPadding:0.0];

  tableView14 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [tableView14 _setBottomPadding:0.0];

  view = [(HUMobileTimerObjectTableViewController *)self view];
  [view setClipsToBounds:1];

  tableView15 = [(HUMobileTimerObjectTableViewController *)self tableView];
  layer = [tableView15 layer];
  [layer setCornerRadius:8.0];

  objc_initWeak(&location, self);
  v23 = objc_alloc(MEMORY[0x277D75B60]);
  tableView16 = [(HUMobileTimerObjectTableViewController *)self tableView];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __53__HUMobileTimerObjectTableViewController_viewDidLoad__block_invoke;
  v29 = &unk_277DBD920;
  objc_copyWeak(&v30, &location);
  v25 = [v23 initWithTableView:tableView16 cellProvider:&v26];
  [(HUMobileTimerObjectTableViewController *)self setTableViewDataSource:v25, v26, v27, v28, v29];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

id __53__HUMobileTimerObjectTableViewController_viewDidLoad__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained headerUUID];
  v8 = [v5 hmf_isEqualToUUID:v7];

  if (v8)
  {
    v9 = [WeakRetained headerCellTitle];
    v10 = [WeakRetained _newCellForHeaderTitle:v9];
  }

  else
  {
    v10 = [WeakRetained _newCellForMTTimerObjectUUID:v5];
  }

  return v10;
}

- (void)viewWillAppear:(BOOL)appear
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v6 viewWillAppear:appear];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v9 = 2080;
    v10 = "[HUMobileTimerObjectTableViewController viewWillAppear:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: Starting initial load of table view with no MTObjects", buf, 0x16u);
  }

  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v9 = 2080;
    v10 = "[HUMobileTimerObjectTableViewController viewWillAppear:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: beginning full check, fetch & reload sequence", buf, 0x16u);
  }

  [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
}

- (void)dealloc
{
  accessoryActivationTimer = [(HUMobileTimerObjectTableViewController *)self accessoryActivationTimer];
  [accessoryActivationTimer invalidate];

  [(HUMobileTimerObjectTableViewController *)self setAccessoryActivationTimer:0];
  v4.receiver = self;
  v4.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v4 dealloc];
}

- (void)_checkAccessFetchDataAndReloadTable
{
  v17 = *MEMORY[0x277D85DE8];
  checkAccessAndFetchDataFuture = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
  if (checkAccessAndFetchDataFuture)
  {
    checkAccessAndFetchDataFuture2 = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
    isFinished = [checkAccessAndFetchDataFuture2 isFinished];

    if ((isFinished & 1) == 0)
    {
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v15 = 2080;
        v16 = "[HUMobileTimerObjectTableViewController _checkAccessFetchDataAndReloadTable]";
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Called with existing check+fetch future - cancelling existing future", buf, 0x16u);
      }

      checkAccessAndFetchDataFuture3 = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
      [checkAccessAndFetchDataFuture3 cancel];
    }
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v15 = 2080;
    v16 = "[HUMobileTimerObjectTableViewController _checkAccessFetchDataAndReloadTable]";
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: Kicking off check+fetch future - will reload if successful", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  _checkAndFetchTimerObjects = [(HUMobileTimerObjectTableViewController *)self _checkAndFetchTimerObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HUMobileTimerObjectTableViewController__checkAccessFetchDataAndReloadTable__block_invoke;
  v11[3] = &unk_277DBD948;
  objc_copyWeak(&v12, buf);
  v10 = [_checkAndFetchTimerObjects flatMap:v11];
  [(HUMobileTimerObjectTableViewController *)self setCheckAccessAndFetchDataFuture:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

id __77__HUMobileTimerObjectTableViewController__checkAccessFetchDataAndReloadTable__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = WeakRetained;
    v7 = 2080;
    v8 = "[HUMobileTimerObjectTableViewController _checkAccessFetchDataAndReloadTable]_block_invoke";
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%@)%s: Check+fetch future succeeded, reloading table view...", &v5, 0x16u);
  }

  [WeakRetained _reloadTableViewWithExistingData];
  v3 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v3;
}

- (id)_checkAndFetchTimerObjects
{
  objc_initWeak(&location, self);
  _canManagerControlAccessory = [(HUMobileTimerObjectTableViewController *)self _canManagerControlAccessory];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke;
  v8[3] = &unk_277DB9238;
  objc_copyWeak(&v9, &location);
  v4 = [_canManagerControlAccessory flatMap:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke_2_33;
  v7[3] = &unk_277DB9858;
  v7[4] = self;
  v5 = [v4 recover:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

id __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke(uint64_t a1, void *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained wasControllableAtLastCheck];
  if (v5 != [v3 BOOLValue])
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v34[0] = *MEMORY[0x277D13820];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
    v35[0] = v7;
    v34[1] = *MEMORY[0x277D13828];
    v8 = [WeakRetained identifier];
    v35[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v6 postNotificationName:*MEMORY[0x277D13830] object:WeakRetained userInfo:v9];
  }

  [WeakRetained setWasControllableAtLastCheck:{objc_msgSend(v3, "BOOLValue")}];
  if ([WeakRetained wasControllableAtLastCheck])
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [WeakRetained setAccessoryAccessState:v10];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = WeakRetained;
    v26 = 2080;
    v27 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke";
    v28 = 1024;
    v29 = [WeakRetained wasControllableAtLastCheck];
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: (_canManagerControlAccessory future has returned) accessory is controllable = %{BOOL}d", buf, 0x1Cu);
  }

  if ([WeakRetained wasControllableAtLastCheck])
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained accessoryAccessState] != 2;
      v14 = [WeakRetained numberOfMobileTimerObjects];
      v15 = [WeakRetained mobileTimerObjects];
      *buf = 138413314;
      v25 = WeakRetained;
      v26 = 2080;
      v27 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke";
      v28 = 1024;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%@)%s: Requesting mobile timer objects from Coordination framework. Controllable: %{BOOL}d BEFORE REQUEST: %lu MT Objects = %@", buf, 0x30u);
    }

    v16 = [WeakRetained _baseMobileTimerObjectsFuture];
    v17 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v18 = [v16 reschedule:v17];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke_18;
    v22[3] = &unk_277DBD288;
    objc_copyWeak(&v23, (a1 + 32));
    v19 = [v18 addCompletionBlock:v22];
    v20 = [v19 flatMap:&__block_literal_global_31];

    objc_destroyWeak(&v23);
  }

  else
  {
    v20 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v20;
}

void __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a3)
  {
    [WeakRetained setWasControllableAtLastCheck:0];
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 2080;
      v21 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke";
      v22 = 1024;
      v23 = [v7 accessoryAccessState] != 2;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "(%@)%s: MOBILE TIMER FUTURE FAILED. Controllable: %{BOOL}d", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v19 = v7;
      v20 = 2080;
      v21 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke";
      v22 = 1024;
      v23 = [v7 accessoryAccessState] != 2;
      v24 = 2048;
      v25 = [v5 count];
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(%@)%s: Received mobile timer objects from Coordination framework. Controllable: %{BOOL}d AFTER REQUEST: %lu MT Objects = %@", buf, 0x30u);
    }

    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, v7, "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke");
    }

    v10 = MEMORY[0x277CBEB18];
    v11 = [v5 na_filter:&__block_literal_global_23_2];
    v12 = [v10 arrayWithArray:v11];
    [v7 setMobileTimerObjects:v12];

    v13 = [v7 mobileTimerObjects];
    [v13 sortUsingComparator:&__block_literal_global_26_0];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 accessoryAccessState] != 2;
      v15 = [v7 mobileTimerObjects];
      v16 = [v15 count];
      v17 = [v7 mobileTimerObjects];
      *buf = 138413314;
      v19 = v7;
      v20 = 2080;
      v21 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke";
      v22 = 1024;
      v23 = v14;
      v24 = 2048;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: Stripped unusable objects. Controllable: %{BOOL}d PRE RELOAD: %lu MTObjects = %@", buf, 0x30u);
    }
  }
}

id __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke_2_33(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setWasControllableAtLastCheck:0];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2080;
    v11 = "[HUMobileTimerObjectTableViewController _checkAndFetchTimerObjects]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "(%@)%s: MANAGER ACCESS FUTURE FAILED. Err=%@", &v8, 0x20u);
  }

  v5 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v5;
}

- (void)_reloadTableViewWithExistingData
{
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke;
  v3[3] = &unk_277DB8770;
  objc_copyWeak(&v4, &location);
  [mainThreadScheduler performBlock:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained mobileTimerObjects];
  if ([v2 count])
  {
    v3 = [WeakRetained accessoryAccessState] != 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [WeakRetained quickControlContentHelper];
  v5 = [WeakRetained identifier];
  [v4 shouldHideQuickControlHeaderButton:v3 forSectionIdentifier:v5];

  v6 = [WeakRetained accessoryAccessState];
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138413058;
    v44 = WeakRetained;
    v45 = 2080;
    v46 = "[HUMobileTimerObjectTableViewController _reloadTableViewWithExistingData]_block_invoke";
    v47 = 2112;
    v48 = v9;
    v49 = 1024;
    v50 = v6 != 1;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%@)%s: Hiding the header for %@?: %{BOOL}d", buf, 0x26u);
  }

  v10 = [WeakRetained quickControlContentHelper];
  v11 = [WeakRetained identifier];
  [v10 shouldHideQuickControlHeaderText:v6 != 1 forSectionIdentifier:v11];

  [WeakRetained _configureNoItemsViewAnimated:1];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WeakRetained accessoryAccessState];
    *buf = 138412802;
    v44 = WeakRetained;
    v45 = 2080;
    v46 = "[HUMobileTimerObjectTableViewController _reloadTableViewWithExistingData]_block_invoke";
    v47 = 1024;
    LODWORD(v48) = v13 != 2;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "(%@)%s: Reload called & accessory available is %{BOOL}d", buf, 0x1Cu);
  }

  v14 = objc_opt_new();
  if ([WeakRetained accessoryAccessState] == 1)
  {
    v15 = [WeakRetained mobileTimerObjects];
    v16 = [v15 count];

    if (!v16)
    {
      v17 = [WeakRetained headerUUID];
      v42 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
      [v14 appendSectionsWithIdentifiers:v18];

      v19 = [WeakRetained headerUUID];
      v41 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v21 = [WeakRetained headerUUID];
      [v14 appendItemsWithIdentifiers:v20 intoSectionWithIdentifier:v21];
    }

    v22 = [WeakRetained mobileTimerObjects];
    v23 = [v22 na_map:&__block_literal_global_40_0];
    [v14 appendSectionsWithIdentifiers:v23];

    v24 = [WeakRetained mobileTimerObjects];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke_2;
    v38[3] = &unk_277DBD9D0;
    v25 = v14;
    v39 = v25;
    [v24 na_each:v38];

    v26 = [WeakRetained updatedMobileTimerObjects];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke_3;
    v37[3] = &unk_277DBA650;
    v37[4] = WeakRetained;
    v27 = [v26 na_filter:v37];

    v28 = HFLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v44 = "[HUMobileTimerObjectTableViewController _reloadTableViewWithExistingData]_block_invoke_4";
      v45 = 2112;
      v46 = WeakRetained;
      v47 = 2112;
      v48 = v27;
      _os_log_debug_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEBUG, "%s(%@) setting snapshot to reload updatedMobileTimerObjects: %@", buf, 0x20u);
    }

    v29 = [v27 na_map:&__block_literal_global_45_1];
    [v25 reloadItemsWithIdentifiers:v29];

    if ([WeakRetained redrawSpinnerCell])
    {
      v30 = [WeakRetained mobileTimerObjects];
      v31 = [v30 count];

      if (!v31)
      {
        v32 = [WeakRetained headerUUID];
        v40 = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        [v25 reloadItemsWithIdentifiers:v33];
      }
    }

    [WeakRetained setUpdatedMobileTimerObjects:0];
    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v44 = WeakRetained;
      v45 = 2080;
      v46 = "[HUMobileTimerObjectTableViewController _reloadTableViewWithExistingData]_block_invoke_2";
      v47 = 2112;
      v48 = v25;
      _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "(%@)%s: applying snapshot: %@", buf, 0x20u);
    }
  }

  v35 = [WeakRetained tableViewDataSource];
  [v35 applySnapshot:v14 animatingDifferences:1 completion:0];

  [WeakRetained _calculatePreferredContentSize];
  [WeakRetained setPreferredContentSize:?];
  [WeakRetained _configureNoItemsViewAnimated:1];
  v36 = [WeakRetained quickControlContentHelper];
  [v36 invalidateContentViewLayout];
}

void __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [v3 uniqueIdentifier];

  [v2 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:v6];
}

uint64_t __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mobileTimerObjects];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (CGSize)_calculatePreferredContentSize
{
  numberOfMobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self numberOfMobileTimerObjects];
  tableView = [(HUMobileTimerObjectTableViewController *)self tableView];
  v5 = tableView;
  if (numberOfMobileTimerObjects)
  {
    [tableView contentSize];
    v7 = v6;
    v9 = v8;
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);

    tableView2 = [(HUMobileTimerObjectTableViewController *)self tableView];
    v5 = tableView2;
    if (v7 == v10 && v9 == v11)
    {
      [tableView2 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
    }

    else
    {
      [tableView2 contentSize];
    }

    v17 = v14;
    v18 = v15;
  }

  else
  {
    [tableView bounds];
    v17 = v16;
    *&v18 = 140.0;
  }

  v19 = v17;
  v20 = *&v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_quickDeleteMobileTimerObjectFromTable:(id)table
{
  tableCopy = table;
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HUMobileTimerObjectTableViewController__quickDeleteMobileTimerObjectFromTable___block_invoke;
  v7[3] = &unk_277DBA860;
  objc_copyWeak(&v9, &location);
  v6 = tableCopy;
  v8 = v6;
  [mainThreadScheduler performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __81__HUMobileTimerObjectTableViewController__quickDeleteMobileTimerObjectFromTable___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained tableViewDataSource];
  v4 = [v3 snapshot];

  v7[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v4 deleteSectionsWithIdentifiers:v5];

  v6 = [WeakRetained tableViewDataSource];
  [v6 applySnapshot:v4 animatingDifferences:1];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  tableViewDataSource = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v9 = [tableViewDataSource itemIdentifierForIndexPath:pathCopy];

  headerUUID = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v11 = [v9 hmf_isEqualToUUID:headerUUID];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x277D753C0];
    v14 = _HULocalizedStringWithDefaultValue(@"HUDeleteTitle", @"HUDeleteTitle", 1);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __103__HUMobileTimerObjectTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v24 = &unk_277DBD9F8;
    objc_copyWeak(&v26, &location);
    v15 = pathCopy;
    v25 = v15;
    v16 = [v13 contextualActionWithStyle:1 title:v14 handler:&v21];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "%@: User swiped for trailing actions on indexPath: %@", buf, 0x16u);
    }

    v18 = MEMORY[0x277D75AD8];
    v28 = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:{1, v21, v22, v23, v24}];
    v12 = [v18 configurationWithActions:v19];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __103__HUMobileTimerObjectTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeTimerObjectAtIndexPath:*(a1 + 32)];
  v5[2](v5, 1);
}

- (void)_configureNoItemsViewAnimated:(BOOL)animated
{
  accessoryAccessState = [(HUMobileTimerObjectTableViewController *)self accessoryAccessState];
  noItemsView = [(HUMobileTimerObjectTableViewController *)self noItemsView];

  if (noItemsView)
  {
    noItemsView2 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [noItemsView2 removeFromSuperview];

    [(HUMobileTimerObjectTableViewController *)self setNoItemsView:0];
  }

  if (accessoryAccessState != 1 && [(HUMobileTimerObjectTableViewController *)self isViewLoaded])
  {
    v8 = objc_alloc_init(HUMobileTimerContentUnavailableView);
    [(HUMobileTimerObjectTableViewController *)self setNoItemsView:v8];

    if ([(HUMobileTimerObjectTableViewController *)self accessoryAccessState]== 2)
    {
      unavailableTitle = [(HUMobileTimerObjectTableViewController *)self unavailableTitle];
      noItemsView3 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [noItemsView3 setTitle:unavailableTitle];

      unavailableText = [(HUMobileTimerObjectTableViewController *)self unavailableText];
      noItemsView4 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [noItemsView4 setMessage:unavailableText];
    }

    else
    {
      unavailableText = [(HUMobileTimerObjectTableViewController *)self loadingItemsTitle];
      noItemsView4 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [noItemsView4 setTitle:unavailableText];
    }

    noItemsView5 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [noItemsView5 setVibrantOptions:0];

    noItemsView6 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [noItemsView6 setUserInteractionEnabled:0];

    tableView = [(HUMobileTimerObjectTableViewController *)self tableView];
    [tableView bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    noItemsView7 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [noItemsView7 setFrame:{v17, v19, v21, v23}];

    tableView2 = [(HUMobileTimerObjectTableViewController *)self tableView];
    noItemsView8 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [tableView2 addSubview:noItemsView8];
  }

  v27 = 0.2;
  v28[1] = 3221225472;
  v28[0] = MEMORY[0x277D85DD0];
  v28[2] = __72__HUMobileTimerObjectTableViewController__configureNoItemsViewAnimated___block_invoke;
  v28[3] = &unk_277DB7EE0;
  if (accessoryAccessState == 1 || !animated)
  {
    v27 = 0.0;
  }

  v28[4] = self;
  v29 = accessoryAccessState == 1;
  [MEMORY[0x277D75D18] animateWithDuration:v28 animations:v27];
}

void __72__HUMobileTimerObjectTableViewController__configureNoItemsViewAnimated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) noItemsView];
  [v2 setAlpha:v1];
}

- (id)_newCellForHeaderTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(MEMORY[0x277D75B48]);
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  if (![(HUMobileTimerObjectTableViewController *)self itemShouldDisplaySpinner])
  {
    [cellConfiguration setText:titleCopy];
  }

  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    [v5 tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }
  v7 = ;
  textProperties = [cellConfiguration textProperties];
  [textProperties setColor:v7];

  [v5 setContentConfiguration:cellConfiguration];
  if ([(HUMobileTimerObjectTableViewController *)self itemShouldDisplaySpinner])
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v5 contentView];
    [contentView addSubview:v9];

    centerXAnchor = [v9 centerXAnchor];
    contentView2 = [v5 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v14 setActive:1];

    centerYAnchor = [v9 centerYAnchor];
    contentView3 = [v5 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v18 setActive:1];

    [v9 startAnimating];
  }

  listGroupedCellConfiguration = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
  [listGroupedCellConfiguration setBackgroundColorTransformer:&__block_literal_global_63];
  [listGroupedCellConfiguration setCornerRadius:8.0];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    controlCenterTertiaryMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    [listGroupedCellConfiguration setCustomView:controlCenterTertiaryMaterial];
  }

  [v5 setBackgroundConfiguration:listGroupedCellConfiguration];

  return v5;
}

- (BOOL)_shouldAllowCellSelection
{
  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if ([mEMORY[0x277D14670] hostProcess] == 100)
  {
  }

  else
  {
    mEMORY[0x277D14670]2 = [MEMORY[0x277D14670] sharedInstance];
    hostProcess = [mEMORY[0x277D14670]2 hostProcess];

    if (hostProcess != 3)
    {
      return 1;
    }
  }

  v5 = MEMORY[0x277D14CE8];

  return [v5 isDeviceUnlocked];
}

- (void)_showSpinner:(BOOL)spinner
{
  [(HUMobileTimerObjectTableViewController *)self setItemShouldDisplaySpinner:spinner];

  [(HUMobileTimerObjectTableViewController *)self setRedrawSpinnerCell:1];
}

- (BOOL)_activateAccessoryForMobileTimerCreation
{
  v23 = *MEMORY[0x277D85DE8];
  accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
  hf_siriEndpointProfile = [accessory hf_siriEndpointProfile];

  if (hf_siriEndpointProfile)
  {
    accessory2 = [(HUMobileTimerObjectTableViewController *)self accessory];
    hf_needsOnboarding = [accessory2 hf_needsOnboarding];

    if (hf_needsOnboarding)
    {
      [(HUMobileTimerObjectTableViewController *)self _showSpinner:1];
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        accessory3 = [(HUMobileTimerObjectTableViewController *)self accessory];
        *buf = 138412802;
        selfCopy2 = self;
        v17 = 2080;
        v18 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]";
        v19 = 2112;
        v20 = accessory3;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ needs onboarding: kicking off Implicit Onboarding", buf, 0x20u);
      }

      v9 = objc_alloc_init(MEMORY[0x277CD1E20]);
      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __82__HUMobileTimerObjectTableViewController__activateAccessoryForMobileTimerCreation__block_invoke;
      v13[3] = &unk_277DBDA40;
      objc_copyWeak(&v14, buf);
      [hf_siriEndpointProfile applyOnboardingSelections:v9 completionHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
      LOBYTE(_isSiriEndpointActive) = 0;
    }

    else
    {
      _isSiriEndpointActive = [(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive];
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        accessory4 = [(HUMobileTimerObjectTableViewController *)self accessory];
        *buf = 138413058;
        selfCopy2 = self;
        v17 = 2080;
        v18 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]";
        v19 = 2112;
        v20 = accessory4;
        v21 = 1024;
        v22 = _isSiriEndpointActive;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ is onboarded & active = %{BOOL}d", buf, 0x26u);
      }
    }
  }

  else
  {
    LOBYTE(_isSiriEndpointActive) = 1;
  }

  return _isSiriEndpointActive;
}

void __82__HUMobileTimerObjectTableViewController__activateAccessoryForMobileTimerCreation__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_error_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_ERROR, "[HMSiriEndpointProfile applyOnboardingSelections:completionHandler:] Implicit Onboarding failed with error: %@ - Add Timer/Alarm failed", &v17, 0xCu);
    }

    [WeakRetained _showSpinner:0];
    [WeakRetained _reloadTableViewWithExistingData];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMSiriEndpointOnboardingResultAsString();
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "[HMSiriEndpointProfile applyOnboardingSelections:completionHandler:] Implicit Onboarding succeeded with result: %@", &v17, 0xCu);
    }

    if ([WeakRetained _isSiriEndpointActive])
    {
      [WeakRetained _showSpinner:0];
      [WeakRetained _reloadTableViewWithExistingData];
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [WeakRetained accessory];
        v17 = 138412802;
        v18 = WeakRetained;
        v19 = 2080;
        v20 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]_block_invoke";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ is onboarded & active", &v17, 0x20u);
      }

      [WeakRetained presentAddMobileTimerObjectViewControllerOnMainThread];
    }

    else
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [WeakRetained accessory];
        v17 = 138412802;
        v18 = WeakRetained;
        v19 = 2080;
        v20 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]_block_invoke";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ is onboarded but NOT active, BEGINNING TO WAIT", &v17, 0x20u);
      }

      [WeakRetained setCreateNewMTObjectPendingSidekickActivation:1];
      v12 = objc_alloc(MEMORY[0x277CBEBB8]);
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = [v12 initWithFireDate:v13 interval:WeakRetained target:sel__accessoryActivationTimerFinished_ selector:0 userInfo:0 repeats:20.0];
      [WeakRetained setAccessoryActivationTimer:v14];

      v15 = [MEMORY[0x277CBEB88] currentRunLoop];
      v16 = [WeakRetained accessoryActivationTimer];
      [v15 addTimer:v16 forMode:*MEMORY[0x277CBE640]];
    }
  }
}

- (BOOL)_isSiriEndpointActive
{
  v19 = *MEMORY[0x277D85DE8];
  accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
  hf_siriEndpointProfile = [accessory hf_siriEndpointProfile];
  sessionState = [hf_siriEndpointProfile sessionState];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accessory2 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v9 = 138413314;
    selfCopy = self;
    v11 = 2080;
    v12 = "[HUMobileTimerObjectTableViewController _isSiriEndpointActive]";
    v13 = 2112;
    v14 = accessory2;
    v15 = 1024;
    v16 = sessionState == 1;
    v17 = 2048;
    v18 = sessionState;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ isActive = %{BOOL}d state: %ld", &v9, 0x30u);
  }

  return sessionState == 1;
}

- (void)_accessoryActivationTimerFinished:(id)finished
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HUMobileTimerObjectTableViewController *)self createNewMTObjectPendingSidekickActivation])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      selfCopy3 = self;
      v11 = 2080;
      v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%@)%s: We shouldn't get here", &v9, 0x16u);
    }

    goto LABEL_10;
  }

  [(HUMobileTimerObjectTableViewController *)self _showSpinner:0];
  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  _isSiriEndpointActive = [(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive];
  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!_isSiriEndpointActive)
  {
    if (v6)
    {
      accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
      v9 = 138412802;
      selfCopy3 = self;
      v11 = 2080;
      v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
      v13 = 2112;
      v14 = accessory;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ activation timer fired & is NOT activated - refreshing view to display unavailable text", &v9, 0x20u);
    }

LABEL_10:

    return;
  }

  if (v6)
  {
    accessory2 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v9 = 138412802;
    selfCopy3 = self;
    v11 = 2080;
    v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
    v13 = 2112;
    v14 = accessory2;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ activation timer fired & is activated - presenting add view controller...", &v9, 0x20u);
  }

  [(HUMobileTimerObjectTableViewController *)self presentAddMobileTimerObjectViewControllerOnMainThread];
}

- (void)_checkAndAddTimerObject
{
  v10 = *MEMORY[0x277D85DE8];
  _activateAccessoryForMobileTimerCreation = [(HUMobileTimerObjectTableViewController *)self _activateAccessoryForMobileTimerCreation];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_activateAccessoryForMobileTimerCreation)
  {
    if (v5)
    {
      v6 = 138412546;
      selfCopy2 = self;
      v8 = 2080;
      v9 = "[HUMobileTimerObjectTableViewController _checkAndAddTimerObject]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: accessory active, kicking off New Mobile Timer object creation", &v6, 0x16u);
    }

    [(HUMobileTimerObjectTableViewController *)self presentAddMobileTimerObjectViewControllerOnMainThread];
  }

  else
  {
    if (v5)
    {
      v6 = 138412546;
      selfCopy2 = self;
      v8 = 2080;
      v9 = "[HUMobileTimerObjectTableViewController _checkAndAddTimerObject]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: accessory NOT active, kicking off reload", &v6, 0x16u);
    }

    [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  }
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  settingsCopy = settings;
  if (![(HUMobileTimerObjectTableViewController *)self createNewMTObjectPendingSidekickActivation])
  {
    uniqueIdentifier = HFLogForCategory();
    if (!os_log_type_enabled(uniqueIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
    v15 = 138413058;
    selfCopy3 = self;
    v17 = 2080;
    v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
    v19 = 2112;
    v20 = accessory;
    v21 = 2112;
    v22 = settingsCopy;
    _os_log_impl(&dword_20CEB6000, uniqueIdentifier, OS_LOG_TYPE_DEFAULT, "(%@)%s: ignoring for Accessory %@ because there are no pending attempts to create a MTObject (settings = %@)", &v15, 0x2Au);
LABEL_9:

    goto LABEL_10;
  }

  accessory2 = [(HUMobileTimerObjectTableViewController *)self accessory];
  uniqueIdentifier = [accessory2 uniqueIdentifier];

  if (![identifierCopy isEqual:uniqueIdentifier])
  {
    goto LABEL_10;
  }

  if (![(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive])
  {
    accessory = HFLogForCategory();
    if (os_log_type_enabled(accessory, OS_LOG_TYPE_DEFAULT))
    {
      accessory3 = [(HUMobileTimerObjectTableViewController *)self accessory];
      v15 = 138413058;
      selfCopy3 = self;
      v17 = 2080;
      v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
      v19 = 2112;
      v20 = accessory3;
      v21 = 2112;
      v22 = settingsCopy;
      _os_log_impl(&dword_20CEB6000, accessory, OS_LOG_TYPE_DEFAULT, "(%@)%s: Accessory %@ is still NOT activated (settings = %@)", &v15, 0x2Au);
    }

    goto LABEL_9;
  }

  accessoryActivationTimer = [(HUMobileTimerObjectTableViewController *)self accessoryActivationTimer];
  [accessoryActivationTimer invalidate];

  [(HUMobileTimerObjectTableViewController *)self setAccessoryActivationTimer:0];
  [(HUMobileTimerObjectTableViewController *)self setCreateNewMTObjectPendingSidekickActivation:0];
  [(HUMobileTimerObjectTableViewController *)self _showSpinner:0];
  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    accessory4 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v15 = 138413058;
    selfCopy3 = self;
    v17 = 2080;
    v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
    v19 = 2112;
    v20 = accessory4;
    v21 = 2112;
    v22 = settingsCopy;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Accessory %@ is now ACTIVATED (settings = %@)", &v15, 0x2Au);
  }

  [(HUMobileTimerObjectTableViewController *)self presentAddMobileTimerObjectViewControllerOnMainThread];
LABEL_10:
}

- (id)_baseMobileTimerObjectsFuture
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:759 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _baseMobileTimerObjectsFuture]", objc_opt_class()}];

  return 0;
}

- (id)_newCellForMTTimerObjectUUID:(id)d
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:765 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _newCellForMTTimerObjectUUID:]", objc_opt_class()}];

  return 0;
}

- (id)_canManagerControlAccessory
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:771 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _canManagerControlAccessory]", objc_opt_class()}];

  v5 = MEMORY[0x277D2C900];
  v6 = MEMORY[0x277CBEC28];

  return [v5 futureWithResult:v6];
}

- (id)_findTimerObjectForID:(id)d
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:777 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _findTimerObjectForID:]", objc_opt_class()}];

  return 0;
}

- (void)_removeTimerObjectAtIndexPath:(id)path
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:783 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _removeTimerObjectAtIndexPath:]", objc_opt_class()}];
}

- (void)presentAddMobileTimerObjectViewControllerOnMainThread
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:788 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]", objc_opt_class()}];
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

- (HUQuickControlContentHelper)quickControlContentHelper
{
  WeakRetained = objc_loadWeakRetained(&self->quickControlContentHelper);

  return WeakRetained;
}

@end