@interface HUMobileTimerObjectTableViewController
- (BOOL)_activateAccessoryForMobileTimerCreation;
- (BOOL)_isSiriEndpointActive;
- (BOOL)_shouldAllowCellSelection;
- (CGSize)_calculatePreferredContentSize;
- (HUMobileTimerObjectTableViewController)initWithMediaProfileContainer:(id)a3;
- (HUPresentationDelegate)presentationDelegate;
- (HUQuickControlContentHelper)quickControlContentHelper;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_checkAndFetchTimerObjects;
- (id)_findTimerObjectForID:(id)a3;
- (id)_newCellForHeaderTitle:(id)a3;
- (id)_newCellForMTTimerObjectUUID:(id)a3;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (unint64_t)numberOfMobileTimerObjects;
- (void)_accessoryActivationTimerFinished:(id)a3;
- (void)_checkAccessFetchDataAndReloadTable;
- (void)_checkAndAddTimerObject;
- (void)_configureNoItemsViewAnimated:(BOOL)a3;
- (void)_quickDeleteMobileTimerObjectFromTable:(id)a3;
- (void)_reloadTableViewWithExistingData;
- (void)_removeTimerObjectAtIndexPath:(id)a3;
- (void)_showSpinner:(BOOL)a3;
- (void)dealloc;
- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HUMobileTimerObjectTableViewController

- (HUMobileTimerObjectTableViewController)initWithMediaProfileContainer:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = HUMobileTimerObjectTableViewController;
  v6 = [(HUMobileTimerObjectTableViewController *)&v17 initWithStyle:2];
  if (v6)
  {
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = [v7 accessorySettingsDataSource];
    [v8 addObserver:v6];

    objc_storeStrong(&v6->_mediaProfileContainer, a3);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mobileTimerObjects = v6->_mobileTimerObjects;
    v6->_mobileTimerObjects = v9;

    v11 = [v5 accessories];
    v12 = [v11 na_firstObjectPassingTest:&__block_literal_global_123];
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
  v2 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v3 = [v2 count];

  return v3;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v32 viewDidLoad];
  v3 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v4 _setSectionContentInsetFollowsLayoutMargins:0];

  v5 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v5 setAllowsSelectionDuringEditing:1];

  v6 = [(HUMobileTimerObjectTableViewController *)self _shouldAllowCellSelection];
  v7 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v7 setAllowsSelection:v6];

  v8 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v8 _setMarginWidth:1.0];

  v9 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v9 setLayoutMarginsFollowReadableWidth:1];

  v10 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v10 setEstimatedRowHeight:88.0];

  v11 = *MEMORY[0x277D76F30];
  v12 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v12 setRowHeight:v11];

  v13 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v13 setSectionHeaderHeight:0.0];

  v14 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v14 setSectionFooterHeight:10.0];

  v15 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v15 setSeparatorStyle:0];

  v16 = [MEMORY[0x277D75348] clearColor];
  v17 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v17 setBackgroundColor:v16];

  v18 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v18 _setTopPadding:0.0];

  v19 = [(HUMobileTimerObjectTableViewController *)self tableView];
  [v19 _setBottomPadding:0.0];

  v20 = [(HUMobileTimerObjectTableViewController *)self view];
  [v20 setClipsToBounds:1];

  v21 = [(HUMobileTimerObjectTableViewController *)self tableView];
  v22 = [v21 layer];
  [v22 setCornerRadius:8.0];

  objc_initWeak(&location, self);
  v23 = objc_alloc(MEMORY[0x277D75B60]);
  v24 = [(HUMobileTimerObjectTableViewController *)self tableView];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __53__HUMobileTimerObjectTableViewController_viewDidLoad__block_invoke;
  v29 = &unk_277DBD920;
  objc_copyWeak(&v30, &location);
  v25 = [v23 initWithTableView:v24 cellProvider:&v26];
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

- (void)viewWillAppear:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v6 viewWillAppear:a3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2080;
    v10 = "[HUMobileTimerObjectTableViewController viewWillAppear:]";
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: Starting initial load of table view with no MTObjects", buf, 0x16u);
  }

  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = self;
    v9 = 2080;
    v10 = "[HUMobileTimerObjectTableViewController viewWillAppear:]";
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: beginning full check, fetch & reload sequence", buf, 0x16u);
  }

  [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
}

- (void)dealloc
{
  v3 = [(HUMobileTimerObjectTableViewController *)self accessoryActivationTimer];
  [v3 invalidate];

  [(HUMobileTimerObjectTableViewController *)self setAccessoryActivationTimer:0];
  v4.receiver = self;
  v4.super_class = HUMobileTimerObjectTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v4 dealloc];
}

- (void)_checkAccessFetchDataAndReloadTable
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
  if (v3)
  {
    v4 = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
    v5 = [v4 isFinished];

    if ((v5 & 1) == 0)
    {
      v6 = HFLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = self;
        v15 = 2080;
        v16 = "[HUMobileTimerObjectTableViewController _checkAccessFetchDataAndReloadTable]";
        _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Called with existing check+fetch future - cancelling existing future", buf, 0x16u);
      }

      v7 = [(HUMobileTimerObjectTableViewController *)self checkAccessAndFetchDataFuture];
      [v7 cancel];
    }
  }

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = self;
    v15 = 2080;
    v16 = "[HUMobileTimerObjectTableViewController _checkAccessFetchDataAndReloadTable]";
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: Kicking off check+fetch future - will reload if successful", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [(HUMobileTimerObjectTableViewController *)self _checkAndFetchTimerObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HUMobileTimerObjectTableViewController__checkAccessFetchDataAndReloadTable__block_invoke;
  v11[3] = &unk_277DBD948;
  objc_copyWeak(&v12, buf);
  v10 = [v9 flatMap:v11];
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
  v3 = [(HUMobileTimerObjectTableViewController *)self _canManagerControlAccessory];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HUMobileTimerObjectTableViewController__checkAndFetchTimerObjects__block_invoke;
  v8[3] = &unk_277DB9238;
  objc_copyWeak(&v9, &location);
  v4 = [v3 flatMap:v8];
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
  v2 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__HUMobileTimerObjectTableViewController__reloadTableViewWithExistingData__block_invoke;
  v3[3] = &unk_277DB8770;
  objc_copyWeak(&v4, &location);
  [v2 performBlock:v3];

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
  v3 = [(HUMobileTimerObjectTableViewController *)self numberOfMobileTimerObjects];
  v4 = [(HUMobileTimerObjectTableViewController *)self tableView];
  v5 = v4;
  if (v3)
  {
    [v4 contentSize];
    v7 = v6;
    v9 = v8;
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);

    v12 = [(HUMobileTimerObjectTableViewController *)self tableView];
    v5 = v12;
    if (v7 == v10 && v9 == v11)
    {
      [v12 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C80], *(MEMORY[0x277D76C80] + 8)}];
    }

    else
    {
      [v12 contentSize];
    }

    v17 = v14;
    v18 = v15;
  }

  else
  {
    [v4 bounds];
    v17 = v16;
    *&v18 = 140.0;
  }

  v19 = v17;
  v20 = *&v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_quickDeleteMobileTimerObjectFromTable:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HUMobileTimerObjectTableViewController__quickDeleteMobileTimerObjectFromTable___block_invoke;
  v7[3] = &unk_277DBA860;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 performBlock:v7];

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

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  v10 = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v11 = [v9 hmf_isEqualToUUID:v10];

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
    v15 = v7;
    v25 = v15;
    v16 = [v13 contextualActionWithStyle:1 title:v14 handler:&v21];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = self;
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

- (void)_configureNoItemsViewAnimated:(BOOL)a3
{
  v5 = [(HUMobileTimerObjectTableViewController *)self accessoryAccessState];
  v6 = [(HUMobileTimerObjectTableViewController *)self noItemsView];

  if (v6)
  {
    v7 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [v7 removeFromSuperview];

    [(HUMobileTimerObjectTableViewController *)self setNoItemsView:0];
  }

  if (v5 != 1 && [(HUMobileTimerObjectTableViewController *)self isViewLoaded])
  {
    v8 = objc_alloc_init(HUMobileTimerContentUnavailableView);
    [(HUMobileTimerObjectTableViewController *)self setNoItemsView:v8];

    if ([(HUMobileTimerObjectTableViewController *)self accessoryAccessState]== 2)
    {
      v9 = [(HUMobileTimerObjectTableViewController *)self unavailableTitle];
      v10 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [v10 setTitle:v9];

      v11 = [(HUMobileTimerObjectTableViewController *)self unavailableText];
      v12 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [v12 setMessage:v11];
    }

    else
    {
      v11 = [(HUMobileTimerObjectTableViewController *)self loadingItemsTitle];
      v12 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
      [v12 setTitle:v11];
    }

    v13 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [v13 setVibrantOptions:0];

    v14 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [v14 setUserInteractionEnabled:0];

    v15 = [(HUMobileTimerObjectTableViewController *)self tableView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [v24 setFrame:{v17, v19, v21, v23}];

    v25 = [(HUMobileTimerObjectTableViewController *)self tableView];
    v26 = [(HUMobileTimerObjectTableViewController *)self noItemsView];
    [v25 addSubview:v26];
  }

  v27 = 0.2;
  v28[1] = 3221225472;
  v28[0] = MEMORY[0x277D85DD0];
  v28[2] = __72__HUMobileTimerObjectTableViewController__configureNoItemsViewAnimated___block_invoke;
  v28[3] = &unk_277DB7EE0;
  if (v5 == 1 || !a3)
  {
    v27 = 0.0;
  }

  v28[4] = self;
  v29 = v5 == 1;
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

- (id)_newCellForHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D75B48]);
  v6 = [MEMORY[0x277D756E0] cellConfiguration];
  if (![(HUMobileTimerObjectTableViewController *)self itemShouldDisplaySpinner])
  {
    [v6 setText:v4];
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
  v8 = [v6 textProperties];
  [v8 setColor:v7];

  [v5 setContentConfiguration:v6];
  if ([(HUMobileTimerObjectTableViewController *)self itemShouldDisplaySpinner])
  {
    v9 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v5 contentView];
    [v10 addSubview:v9];

    v11 = [v9 centerXAnchor];
    v12 = [v5 contentView];
    v13 = [v12 centerXAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [v9 centerYAnchor];
    v16 = [v5 contentView];
    v17 = [v16 centerYAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    [v9 startAnimating];
  }

  v19 = [MEMORY[0x277D751C0] listGroupedCellConfiguration];
  [v19 setBackgroundColorTransformer:&__block_literal_global_63];
  [v19 setCornerRadius:8.0];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v20 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    [v19 setCustomView:v20];
  }

  [v5 setBackgroundConfiguration:v19];

  return v5;
}

- (BOOL)_shouldAllowCellSelection
{
  v2 = [MEMORY[0x277D14670] sharedInstance];
  if ([v2 hostProcess] == 100)
  {
  }

  else
  {
    v3 = [MEMORY[0x277D14670] sharedInstance];
    v4 = [v3 hostProcess];

    if (v4 != 3)
    {
      return 1;
    }
  }

  v5 = MEMORY[0x277D14CE8];

  return [v5 isDeviceUnlocked];
}

- (void)_showSpinner:(BOOL)a3
{
  [(HUMobileTimerObjectTableViewController *)self setItemShouldDisplaySpinner:a3];

  [(HUMobileTimerObjectTableViewController *)self setRedrawSpinnerCell:1];
}

- (BOOL)_activateAccessoryForMobileTimerCreation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HUMobileTimerObjectTableViewController *)self accessory];
  v4 = [v3 hf_siriEndpointProfile];

  if (v4)
  {
    v5 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v6 = [v5 hf_needsOnboarding];

    if (v6)
    {
      [(HUMobileTimerObjectTableViewController *)self _showSpinner:1];
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(HUMobileTimerObjectTableViewController *)self accessory];
        *buf = 138412802;
        v16 = self;
        v17 = 2080;
        v18 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ needs onboarding: kicking off Implicit Onboarding", buf, 0x20u);
      }

      v9 = objc_alloc_init(MEMORY[0x277CD1E20]);
      objc_initWeak(buf, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __82__HUMobileTimerObjectTableViewController__activateAccessoryForMobileTimerCreation__block_invoke;
      v13[3] = &unk_277DBDA40;
      objc_copyWeak(&v14, buf);
      [v4 applyOnboardingSelections:v9 completionHandler:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = [(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive];
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(HUMobileTimerObjectTableViewController *)self accessory];
        *buf = 138413058;
        v16 = self;
        v17 = 2080;
        v18 = "[HUMobileTimerObjectTableViewController _activateAccessoryForMobileTimerCreation]";
        v19 = 2112;
        v20 = v11;
        v21 = 1024;
        v22 = v10;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ is onboarded & active = %{BOOL}d", buf, 0x26u);
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
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
  v3 = [(HUMobileTimerObjectTableViewController *)self accessory];
  v4 = [v3 hf_siriEndpointProfile];
  v5 = [v4 sessionState];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v9 = 138413314;
    v10 = self;
    v11 = 2080;
    v12 = "[HUMobileTimerObjectTableViewController _isSiriEndpointActive]";
    v13 = 2112;
    v14 = v7;
    v15 = 1024;
    v16 = v5 == 1;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ isActive = %{BOOL}d state: %ld", &v9, 0x30u);
  }

  return v5 == 1;
}

- (void)_accessoryActivationTimerFinished:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(HUMobileTimerObjectTableViewController *)self createNewMTObjectPendingSidekickActivation])
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = self;
      v11 = 2080;
      v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "(%@)%s: We shouldn't get here", &v9, 0x16u);
    }

    goto LABEL_10;
  }

  [(HUMobileTimerObjectTableViewController *)self _showSpinner:0];
  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  v4 = [(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive];
  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      v8 = [(HUMobileTimerObjectTableViewController *)self accessory];
      v9 = 138412802;
      v10 = self;
      v11 = 2080;
      v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ activation timer fired & is NOT activated - refreshing view to display unavailable text", &v9, 0x20u);
    }

LABEL_10:

    return;
  }

  if (v6)
  {
    v7 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v9 = 138412802;
    v10 = self;
    v11 = 2080;
    v12 = "[HUMobileTimerObjectTableViewController _accessoryActivationTimerFinished:]";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: Siri endpoint accessory %@ activation timer fired & is activated - presenting add view controller...", &v9, 0x20u);
  }

  [(HUMobileTimerObjectTableViewController *)self presentAddMobileTimerObjectViewControllerOnMainThread];
}

- (void)_checkAndAddTimerObject
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(HUMobileTimerObjectTableViewController *)self _activateAccessoryForMobileTimerCreation];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412546;
      v7 = self;
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
      v7 = self;
      v8 = 2080;
      v9 = "[HUMobileTimerObjectTableViewController _checkAndAddTimerObject]";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@)%s: accessory NOT active, kicking off reload", &v6, 0x16u);
    }

    [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  }
}

- (void)didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)a3 settings:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(HUMobileTimerObjectTableViewController *)self createNewMTObjectPendingSidekickActivation])
  {
    v9 = HFLogForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v15 = 138413058;
    v16 = self;
    v17 = 2080;
    v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(%@)%s: ignoring for Accessory %@ because there are no pending attempts to create a MTObject (settings = %@)", &v15, 0x2Au);
LABEL_9:

    goto LABEL_10;
  }

  v8 = [(HUMobileTimerObjectTableViewController *)self accessory];
  v9 = [v8 uniqueIdentifier];

  if (![v6 isEqual:v9])
  {
    goto LABEL_10;
  }

  if (![(HUMobileTimerObjectTableViewController *)self _isSiriEndpointActive])
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HUMobileTimerObjectTableViewController *)self accessory];
      v15 = 138413058;
      v16 = self;
      v17 = 2080;
      v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "(%@)%s: Accessory %@ is still NOT activated (settings = %@)", &v15, 0x2Au);
    }

    goto LABEL_9;
  }

  v10 = [(HUMobileTimerObjectTableViewController *)self accessoryActivationTimer];
  [v10 invalidate];

  [(HUMobileTimerObjectTableViewController *)self setAccessoryActivationTimer:0];
  [(HUMobileTimerObjectTableViewController *)self setCreateNewMTObjectPendingSidekickActivation:0];
  [(HUMobileTimerObjectTableViewController *)self _showSpinner:0];
  [(HUMobileTimerObjectTableViewController *)self _reloadTableViewWithExistingData];
  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v15 = 138413058;
    v16 = self;
    v17 = 2080;
    v18 = "[HUMobileTimerObjectTableViewController didReceiveSettingsUpdatesForAccessoryWithIdentifier:settings:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Accessory %@ is now ACTIVATED (settings = %@)", &v15, 0x2Au);
  }

  [(HUMobileTimerObjectTableViewController *)self presentAddMobileTimerObjectViewControllerOnMainThread];
LABEL_10:
}

- (id)_baseMobileTimerObjectsFuture
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:759 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _baseMobileTimerObjectsFuture]", objc_opt_class()}];

  return 0;
}

- (id)_newCellForMTTimerObjectUUID:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:765 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _newCellForMTTimerObjectUUID:]", objc_opt_class()}];

  return 0;
}

- (id)_canManagerControlAccessory
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:771 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _canManagerControlAccessory]", objc_opt_class()}];

  v5 = MEMORY[0x277D2C900];
  v6 = MEMORY[0x277CBEC28];

  return [v5 futureWithResult:v6];
}

- (id)_findTimerObjectForID:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:777 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _findTimerObjectForID:]", objc_opt_class()}];

  return 0;
}

- (void)_removeTimerObjectAtIndexPath:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:783 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController _removeTimerObjectAtIndexPath:]", objc_opt_class()}];
}

- (void)presentAddMobileTimerObjectViewControllerOnMainThread
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUMobileTimerObjectTableViewController.m" lineNumber:788 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUMobileTimerObjectTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]", objc_opt_class()}];
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