@interface HUTimerTableViewController
- (HUTimerTableViewController)initWithMediaProfileContainer:(id)a3;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_findTimerObjectForID:(id)a3;
- (id)_newCellForMTTimerObjectUUID:(id)a3;
- (id)presentationDelegate;
- (void)_extractUpdatedTimerObjectsFromNotification:(id)a3;
- (void)_removeTimerObjectAtIndexPath:(id)a3;
- (void)animationTimerTick:(id)a3;
- (void)dealloc;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timerCreationViewController:(id)a3 didCreateTimer:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUTimerTableViewController

- (HUTimerTableViewController)initWithMediaProfileContainer:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HUTimerTableViewController;
  v5 = [(HUMobileTimerObjectTableViewController *)&v23 initWithMediaProfileContainer:v4];
  if (v5)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUQuickControlTimersDetailsButtonTitle", @"HUQuickControlTimersDetailsButtonTitle", 1);
    [(HUTimerTableViewController *)v5 setTitle:v6];

    v7 = _HULocalizedStringWithDefaultValue(@"HULoadingTimers", @"HULoadingTimers", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setLoadingItemsTitle:v7];

    v8 = _HULocalizedStringWithDefaultValue(@"HUHomePodTimersUnavailableTitle", @"HUHomePodTimersUnavailableTitle", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableTitle:v8];

    v9 = _HULocalizedStringWithDefaultValue(@"HUNewTimer", @"HUNewTimer", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setHeaderCellTitle:v9];

    [(HUMobileTimerObjectTableViewController *)v5 setIdentifier:*MEMORY[0x277D139F0]];
    v10 = [v4 hf_categoryLowercaseLocalizedDescription];
    v17 = HULocalizedStringWithFormat(@"HUHomePodTimersUnavailableExplanation", @"%@", v11, v12, v13, v14, v15, v16, v10);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableText:v17];

    v18 = MEMORY[0x277CFD0F0];
    v19 = [(HUMobileTimerObjectTableViewController *)v5 accessory];
    v20 = [v18 hf_TimerManagerForAccessory:v19];
    timerManager = v5->_timerManager;
    v5->_timerManager = v20;

    if (!v5->_timerManager)
    {
      NSLog(&cfstr_TimermanagerIs.isa);
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = HUTimerTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v28 viewDidLoad];
  objc_initWeak(&location, self);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __41__HUTimerTableViewController_viewDidLoad__block_invoke;
  v25 = &unk_277DBA5A0;
  objc_copyWeak(&v26, &location);
  v3 = _Block_copy(&v22);
  v4 = [(HUTimerTableViewController *)self timerManager:v22];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v6 = [v4 addObserverForName:*MEMORY[0x277CFD028] queue:v5 usingBlock:v3];
  [(HUTimerTableViewController *)self setAddNotificationObserver:v6];

  v7 = [(HUTimerTableViewController *)self timerManager];
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v9 = [v7 addObserverForName:*MEMORY[0x277CFD050] queue:v8 usingBlock:v3];
  [(HUTimerTableViewController *)self setUpdateNotificationObserver:v9];

  v10 = [(HUTimerTableViewController *)self timerManager];
  v11 = [MEMORY[0x277CCABD8] mainQueue];
  v12 = [v10 addObserverForName:*MEMORY[0x277CFD048] queue:v11 usingBlock:v3];
  [(HUTimerTableViewController *)self setRemoveNotificationObserver:v12];

  v13 = [(HUTimerTableViewController *)self timerManager];
  v14 = [MEMORY[0x277CCABD8] mainQueue];
  v15 = [v13 addObserverForName:*MEMORY[0x277CFCFE8] queue:v14 usingBlock:v3];
  [(HUTimerTableViewController *)self setCanDispatchNotificationObserver:v15];

  v16 = [(HUTimerTableViewController *)self timerManager];
  v17 = [MEMORY[0x277CCABD8] mainQueue];
  v18 = [v16 addObserverForName:*MEMORY[0x277CFD010] queue:v17 usingBlock:v3];
  [(HUTimerTableViewController *)self setResetNotificationObserver:v18];

  v19 = [(HUTimerTableViewController *)self timerManager];
  v20 = [MEMORY[0x277CCABD8] mainQueue];
  v21 = [v19 addObserverForName:*MEMORY[0x277CFCFF8] queue:v20 usingBlock:v3];
  [(HUTimerTableViewController *)self setFiringNotificationObserver:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __41__HUTimerTableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v9 = WeakRetained;
    v10 = 2080;
    v11 = "[HUTimerTableViewController viewDidLoad]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: received NSNotification = %@", buf, 0x20u);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    NSLog(&cfstr_SShouldOnlyBeC.isa, WeakRetained, "[HUTimerTableViewController viewDidLoad]_block_invoke");
  }

  v6 = [v3 name];
  v7 = [v6 isEqualToString:*MEMORY[0x277CFD050]];

  if (v7)
  {
    [WeakRetained _extractUpdatedTimerObjectsFromNotification:v3];
  }

  [WeakRetained _checkAccessFetchDataAndReloadTable];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HUTimerTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v10 viewWillAppear:a3];
  v4 = [(HUTimerTableViewController *)self animationTimer];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 initWithFireDate:v6 interval:self target:sel_animationTimerTick_ selector:0 userInfo:1 repeats:0.25];
    [(HUTimerTableViewController *)self setAnimationTimer:v7];

    v8 = [MEMORY[0x277CBEB88] currentRunLoop];
    v9 = [(HUTimerTableViewController *)self animationTimer];
    [v8 addTimer:v9 forMode:*MEMORY[0x277CBE640]];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUTimerTableViewController;
  [(HUTimerTableViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HUTimerTableViewController *)self animationTimer];
  [v4 invalidate];

  [(HUTimerTableViewController *)self setAnimationTimer:0];
}

- (void)animationTimerTick:(id)a3
{
  v4 = [(HUTimerTableViewController *)self tableView];
  v5 = [v4 numberOfSections];

  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      objc_opt_class();
      v7 = [(HUTimerTableViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v6];
      v9 = [v7 cellForRowAtIndexPath:v8];
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      [v11 updateTimerInfo];
      ++v6;
      v12 = [(HUTimerTableViewController *)self tableView];
      v13 = [v12 numberOfSections];
    }

    while (v6 < v13);
  }
}

- (void)presentAddMobileTimerObjectViewControllerOnMainThread
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[HUTimerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
    v17 = 2112;
    v18 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new timer", buf, 0x16u);
  }

  v4 = [(HUTimerTableViewController *)self parentViewController];
  if (!v4 || (-[HUTimerTableViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, v4, v7))
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(HUTimerTableViewController *)self parentViewController];
      v11 = [(HUTimerTableViewController *)self view];
      v12 = [v11 window];
      *buf = 136315906;
      v16 = "[HUTimerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
      v17 = 2112;
      v18 = self;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "%s(%@) view hierarchy problem: parentViewController %@ / window %@", buf, 0x2Au);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__HUTimerTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke;
    v13[3] = &unk_277DB8770;
    objc_copyWeak(&v14, buf);
    [v8 performBlock:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __83__HUTimerTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [HUTimerCreationViewController alloc];
  v3 = [WeakRetained mediaProfileContainer];
  v4 = [(HUTimerCreationViewController *)v2 initWithMediaProfileContainer:v3];

  [(HUTimerCreationViewController *)v4 setDelegate:WeakRetained];
  if (!v4)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[HUTimerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]_block_invoke";
      v12 = 2112;
      v13 = WeakRetained;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "%s(%@) No tableviewController!", &v10, 0x16u);
    }
  }

  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  [v6 setModalPresentationStyle:2];
  if (!v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[HUTimerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]_block_invoke";
      v12 = 2112;
      v13 = WeakRetained;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "%s(%@) No navController!", &v10, 0x16u);
    }
  }

  [WeakRetained presentViewController:v6 animated:1 completion:0];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [v6 setOverrideUserInterfaceStyle:2];
  }

  v8 = [MEMORY[0x277D75348] hu_alarmsBackgroundColor];
  v9 = [v6 view];
  [v9 setBackgroundColor:v8];
}

- (void)timerCreationViewController:(id)a3 didCreateTimer:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v10 = v5;
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUTimerTableViewController timerCreationViewController:didCreateTimer:]");
    }

    v6 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v7 = [[HUMobileTimerObject alloc] initWithTimer:v10];
    [v6 addObject:v7];

    v8 = [(HUTimerTableViewController *)self timerManager];
    v9 = [v8 addTimer:v10];

    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
    v5 = v10;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(HUMobileTimerObjectTableViewController *)self headerUUID];
    v14 = 136316162;
    v15 = "[HUTimerTableViewController tableView:didSelectRowAtIndexPath:]";
    v16 = 2112;
    v17 = self;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s(%@) tapping indexPath = %@/objectID = %@ (FYI header ID: %@)", &v14, 0x34u);
  }

  v12 = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v13 = [v9 hmf_isEqualToUUID:v12];

  if (v13)
  {
    [(HUMobileTimerObjectTableViewController *)self _checkAndAddTimerObject];
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (void)_extractUpdatedTimerObjectsFromNotification:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HUTimerTableViewController.m" lineNumber:199 description:@"This shouldn't happen"];
  }

  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D296B0]];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v25 = self;
    v26 = 2080;
    v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: NSNotification %@ contained updated timers: %@", buf, 0x2Au);
  }

  v9 = [v5 name];
  v10 = [v9 isEqualToString:*MEMORY[0x277CFD050]];

  if (v10)
  {
    v11 = [v7 na_map:&__block_literal_global_56];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:v11];

    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]");
    }

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      v25 = self;
      v26 = 2080;
      v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = v21;
      _os_log_debug_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEBUG, "(%@)%s:BEFORE replace %@", buf, 0x20u);
    }

    v13 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v14 = [(HUMobileTimerObjectTableViewController *)self updatedMobileTimerObjects];
    [v13 removeObjectsInArray:v14];

    v15 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v16 = [(HUMobileTimerObjectTableViewController *)self updatedMobileTimerObjects];
    [v15 addObjectsFromArray:v16];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      v25 = self;
      v26 = 2080;
      v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = v22;
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "(%@)%s:AFTER replace %@", buf, 0x20u);
    }
  }

  v18 = [v5 name];
  v19 = [v18 isEqualToString:*MEMORY[0x277CFD010]];

  if (v19)
  {
    v20 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:v20];
  }
}

HUMobileTimerObject *__74__HUTimerTableViewController__extractUpdatedTimerObjectsFromNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [[HUMobileTimerObject alloc] initWithTimer:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(HUTimerTableViewController *)self timerManager];
  v4 = [(HUTimerTableViewController *)self addNotificationObserver];
  [v3 removeObserver:v4];

  [(HUTimerTableViewController *)self setAddNotificationObserver:0];
  v5 = [(HUTimerTableViewController *)self timerManager];
  v6 = [(HUTimerTableViewController *)self updateNotificationObserver];
  [v5 removeObserver:v6];

  [(HUTimerTableViewController *)self setUpdateNotificationObserver:0];
  v7 = [(HUTimerTableViewController *)self timerManager];
  v8 = [(HUTimerTableViewController *)self removeNotificationObserver];
  [v7 removeObserver:v8];

  [(HUTimerTableViewController *)self setRemoveNotificationObserver:0];
  v9 = [(HUTimerTableViewController *)self timerManager];
  v10 = [(HUTimerTableViewController *)self canDispatchNotificationObserver];
  [v9 removeObserver:v10];

  [(HUTimerTableViewController *)self setCanDispatchNotificationObserver:0];
  v11 = [(HUTimerTableViewController *)self timerManager];
  v12 = [(HUTimerTableViewController *)self resetNotificationObserver];
  [v11 removeObserver:v12];

  [(HUTimerTableViewController *)self setResetNotificationObserver:0];
  v13 = [(HUTimerTableViewController *)self timerManager];
  v14 = [(HUTimerTableViewController *)self firingNotificationObserver];
  [v13 removeObserver:v14];

  [(HUTimerTableViewController *)self setFiringNotificationObserver:0];
  v15.receiver = self;
  v15.super_class = HUTimerTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v15 dealloc];
}

- (id)_baseMobileTimerObjectsFuture
{
  v3 = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  v4 = [v3 accessories];
  v5 = [v4 allObjects];

  if (![v5 count])
  {
    v6 = MEMORY[0x277CBEA60];
    v7 = [(HUMobileTimerObjectTableViewController *)self accessory];
    v8 = [v6 arrayWithObject:v7];

    v5 = v8;
  }

  v9 = [(HUTimerTableViewController *)self timerManager];
  v10 = [v9 timersForAccessories:v5];
  v11 = [v10 flatMap:&__block_literal_global_59_0];

  return v11;
}

id __59__HUTimerTableViewController__baseMobileTimerObjectsFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 objectEnumerator];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUTimerTableViewController__baseMobileTimerObjectsFuture__block_invoke_2;
  v10[3] = &unk_277DBA608;
  v11 = v3;
  v5 = v3;
  [v4 na_each:v10];

  v6 = [v5 na_map:&__block_literal_global_64_0];
  v7 = [v6 allObjects];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

HUMobileTimerObject *__59__HUTimerTableViewController__baseMobileTimerObjectsFuture__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUMobileTimerObject alloc] initWithTimer:v2];

  return v3;
}

- (id)_newCellForMTTimerObjectUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUTimerTableViewController *)self _findTimerObjectForID:v4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "[HUTimerTableViewController _newCellForMTTimerObjectUUID:]";
    v13 = 2112;
    v14 = self;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "%s(%@) new MT Cell for %@", &v11, 0x20u);
  }

  if (v5)
  {
    v7 = [HUTimerTableViewCell alloc];
    v8 = [(HUTimerTableViewController *)self timerManager];
    v9 = [(HUTimerTableViewCell *)v7 initWithMobileTimerObject:v5 manager:v8 roomName:0];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412802;
      v12 = self;
      v13 = 2080;
      v14 = "[HUTimerTableViewController _newCellForMTTimerObjectUUID:]";
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "(%@)%s: could not find mobileTimerObject for ID: %@", &v11, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_canManagerControlAccessory
{
  v3 = [(HUMobileTimerObjectTableViewController *)self accessory];
  v4 = [(HUTimerTableViewController *)self timerManager];
  v5 = [HUAlarmsAndTimersAccessUtility canAccess:v3 for:1 withManager:v4];
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:v6];

  return v7;
}

- (id)_findTimerObjectForID:(id)a3
{
  v4 = a3;
  v5 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUTimerTableViewController__findTimerObjectForID___block_invoke;
  v9[3] = &unk_277DBA650;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__HUTimerTableViewController__findTimerObjectForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timer];
  v4 = [v3 timerID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)_removeTimerObjectAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUTimerTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 timer];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = self;
      v17 = 2080;
      v18 = "[HUTimerTableViewController _removeTimerObjectAtIndexPath:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Removing timer %@ at %@", &v15, 0x2Au);
    }

    if (v10)
    {
      v12 = [(HUTimerTableViewController *)self timerManager];
      v13 = [v12 removeTimer:v10];

      v14 = [v10 timerID];
      [(HUMobileTimerObjectTableViewController *)self _quickDeleteMobileTimerObjectFromTable:v14];
    }
  }
}

- (id)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end