@interface HUTimerTableViewController
- (HUTimerTableViewController)initWithMediaProfileContainer:(id)container;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_findTimerObjectForID:(id)d;
- (id)_newCellForMTTimerObjectUUID:(id)d;
- (id)presentationDelegate;
- (void)_extractUpdatedTimerObjectsFromNotification:(id)notification;
- (void)_removeTimerObjectAtIndexPath:(id)path;
- (void)animationTimerTick:(id)tick;
- (void)dealloc;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timerCreationViewController:(id)controller didCreateTimer:(id)timer;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUTimerTableViewController

- (HUTimerTableViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v23.receiver = self;
  v23.super_class = HUTimerTableViewController;
  v5 = [(HUMobileTimerObjectTableViewController *)&v23 initWithMediaProfileContainer:containerCopy];
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
    hf_categoryLowercaseLocalizedDescription = [containerCopy hf_categoryLowercaseLocalizedDescription];
    v17 = HULocalizedStringWithFormat(@"HUHomePodTimersUnavailableExplanation", @"%@", v11, v12, v13, v14, v15, v16, hf_categoryLowercaseLocalizedDescription);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableText:v17];

    v18 = MEMORY[0x277CFD0F0];
    accessory = [(HUMobileTimerObjectTableViewController *)v5 accessory];
    v20 = [v18 hf_TimerManagerForAccessory:accessory];
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
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v6 = [v4 addObserverForName:*MEMORY[0x277CFD028] queue:mainQueue usingBlock:v3];
  [(HUTimerTableViewController *)self setAddNotificationObserver:v6];

  timerManager = [(HUTimerTableViewController *)self timerManager];
  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  v9 = [timerManager addObserverForName:*MEMORY[0x277CFD050] queue:mainQueue2 usingBlock:v3];
  [(HUTimerTableViewController *)self setUpdateNotificationObserver:v9];

  timerManager2 = [(HUTimerTableViewController *)self timerManager];
  mainQueue3 = [MEMORY[0x277CCABD8] mainQueue];
  v12 = [timerManager2 addObserverForName:*MEMORY[0x277CFD048] queue:mainQueue3 usingBlock:v3];
  [(HUTimerTableViewController *)self setRemoveNotificationObserver:v12];

  timerManager3 = [(HUTimerTableViewController *)self timerManager];
  mainQueue4 = [MEMORY[0x277CCABD8] mainQueue];
  v15 = [timerManager3 addObserverForName:*MEMORY[0x277CFCFE8] queue:mainQueue4 usingBlock:v3];
  [(HUTimerTableViewController *)self setCanDispatchNotificationObserver:v15];

  timerManager4 = [(HUTimerTableViewController *)self timerManager];
  mainQueue5 = [MEMORY[0x277CCABD8] mainQueue];
  v18 = [timerManager4 addObserverForName:*MEMORY[0x277CFD010] queue:mainQueue5 usingBlock:v3];
  [(HUTimerTableViewController *)self setResetNotificationObserver:v18];

  timerManager5 = [(HUTimerTableViewController *)self timerManager];
  mainQueue6 = [MEMORY[0x277CCABD8] mainQueue];
  v21 = [timerManager5 addObserverForName:*MEMORY[0x277CFCFF8] queue:mainQueue6 usingBlock:v3];
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

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = HUTimerTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v10 viewWillAppear:appear];
  animationTimer = [(HUTimerTableViewController *)self animationTimer];

  if (!animationTimer)
  {
    v5 = objc_alloc(MEMORY[0x277CBEBB8]);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 initWithFireDate:date interval:self target:sel_animationTimerTick_ selector:0 userInfo:1 repeats:0.25];
    [(HUTimerTableViewController *)self setAnimationTimer:v7];

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    animationTimer2 = [(HUTimerTableViewController *)self animationTimer];
    [currentRunLoop addTimer:animationTimer2 forMode:*MEMORY[0x277CBE640]];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HUTimerTableViewController;
  [(HUTimerTableViewController *)&v5 viewWillDisappear:disappear];
  animationTimer = [(HUTimerTableViewController *)self animationTimer];
  [animationTimer invalidate];

  [(HUTimerTableViewController *)self setAnimationTimer:0];
}

- (void)animationTimerTick:(id)tick
{
  tableView = [(HUTimerTableViewController *)self tableView];
  numberOfSections = [tableView numberOfSections];

  if (numberOfSections >= 1)
  {
    v6 = 0;
    do
    {
      objc_opt_class();
      tableView2 = [(HUTimerTableViewController *)self tableView];
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:v6];
      v9 = [tableView2 cellForRowAtIndexPath:v8];
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
      tableView3 = [(HUTimerTableViewController *)self tableView];
      numberOfSections2 = [tableView3 numberOfSections];
    }

    while (v6 < numberOfSections2);
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
    selfCopy2 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new timer", buf, 0x16u);
  }

  parentViewController = [(HUTimerTableViewController *)self parentViewController];
  if (!parentViewController || (-[HUTimerTableViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, parentViewController, v7))
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      parentViewController2 = [(HUTimerTableViewController *)self parentViewController];
      view = [(HUTimerTableViewController *)self view];
      window = [view window];
      *buf = 136315906;
      v16 = "[HUTimerTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
      v17 = 2112;
      selfCopy2 = self;
      v19 = 2112;
      v20 = parentViewController2;
      v21 = 2112;
      v22 = window;
      _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "%s(%@) view hierarchy problem: parentViewController %@ / window %@", buf, 0x2Au);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__HUTimerTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke;
    v13[3] = &unk_277DB8770;
    objc_copyWeak(&v14, buf);
    [mainThreadScheduler performBlock:v13];

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

- (void)timerCreationViewController:(id)controller didCreateTimer:(id)timer
{
  timerCopy = timer;
  if (timerCopy)
  {
    v10 = timerCopy;
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUTimerTableViewController timerCreationViewController:didCreateTimer:]");
    }

    mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v7 = [[HUMobileTimerObject alloc] initWithTimer:v10];
    [mobileTimerObjects addObject:v7];

    timerManager = [(HUTimerTableViewController *)self timerManager];
    v9 = [timerManager addTimer:v10];

    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
    timerCopy = v10;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v24 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  tableViewDataSource = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v9 = [tableViewDataSource itemIdentifierForIndexPath:pathCopy];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    headerUUID = [(HUMobileTimerObjectTableViewController *)self headerUUID];
    v14 = 136316162;
    v15 = "[HUTimerTableViewController tableView:didSelectRowAtIndexPath:]";
    v16 = 2112;
    selfCopy = self;
    v18 = 2112;
    v19 = pathCopy;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = headerUUID;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "%s(%@) tapping indexPath = %@/objectID = %@ (FYI header ID: %@)", &v14, 0x34u);
  }

  headerUUID2 = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v13 = [v9 hmf_isEqualToUUID:headerUUID2];

  if (v13)
  {
    [(HUMobileTimerObjectTableViewController *)self _checkAndAddTimerObject];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_extractUpdatedTimerObjectsFromNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUTimerTableViewController.m" lineNumber:199 description:@"This shouldn't happen"];
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D296B0]];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    v26 = 2080;
    v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
    v28 = 2112;
    v29 = notificationCopy;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: NSNotification %@ contained updated timers: %@", buf, 0x2Au);
  }

  name = [notificationCopy name];
  v10 = [name isEqualToString:*MEMORY[0x277CFD050]];

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
      mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      selfCopy3 = self;
      v26 = 2080;
      v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = mobileTimerObjects;
      _os_log_debug_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEBUG, "(%@)%s:BEFORE replace %@", buf, 0x20u);
    }

    mobileTimerObjects2 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    updatedMobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self updatedMobileTimerObjects];
    [mobileTimerObjects2 removeObjectsInArray:updatedMobileTimerObjects];

    mobileTimerObjects3 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    updatedMobileTimerObjects2 = [(HUMobileTimerObjectTableViewController *)self updatedMobileTimerObjects];
    [mobileTimerObjects3 addObjectsFromArray:updatedMobileTimerObjects2];

    v17 = HFLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      mobileTimerObjects4 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      selfCopy3 = self;
      v26 = 2080;
      v27 = "[HUTimerTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = mobileTimerObjects4;
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "(%@)%s:AFTER replace %@", buf, 0x20u);
    }
  }

  name2 = [notificationCopy name];
  v19 = [name2 isEqualToString:*MEMORY[0x277CFD010]];

  if (v19)
  {
    mobileTimerObjects5 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:mobileTimerObjects5];
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
  timerManager = [(HUTimerTableViewController *)self timerManager];
  addNotificationObserver = [(HUTimerTableViewController *)self addNotificationObserver];
  [timerManager removeObserver:addNotificationObserver];

  [(HUTimerTableViewController *)self setAddNotificationObserver:0];
  timerManager2 = [(HUTimerTableViewController *)self timerManager];
  updateNotificationObserver = [(HUTimerTableViewController *)self updateNotificationObserver];
  [timerManager2 removeObserver:updateNotificationObserver];

  [(HUTimerTableViewController *)self setUpdateNotificationObserver:0];
  timerManager3 = [(HUTimerTableViewController *)self timerManager];
  removeNotificationObserver = [(HUTimerTableViewController *)self removeNotificationObserver];
  [timerManager3 removeObserver:removeNotificationObserver];

  [(HUTimerTableViewController *)self setRemoveNotificationObserver:0];
  timerManager4 = [(HUTimerTableViewController *)self timerManager];
  canDispatchNotificationObserver = [(HUTimerTableViewController *)self canDispatchNotificationObserver];
  [timerManager4 removeObserver:canDispatchNotificationObserver];

  [(HUTimerTableViewController *)self setCanDispatchNotificationObserver:0];
  timerManager5 = [(HUTimerTableViewController *)self timerManager];
  resetNotificationObserver = [(HUTimerTableViewController *)self resetNotificationObserver];
  [timerManager5 removeObserver:resetNotificationObserver];

  [(HUTimerTableViewController *)self setResetNotificationObserver:0];
  timerManager6 = [(HUTimerTableViewController *)self timerManager];
  firingNotificationObserver = [(HUTimerTableViewController *)self firingNotificationObserver];
  [timerManager6 removeObserver:firingNotificationObserver];

  [(HUTimerTableViewController *)self setFiringNotificationObserver:0];
  v15.receiver = self;
  v15.super_class = HUTimerTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v15 dealloc];
}

- (id)_baseMobileTimerObjectsFuture
{
  mediaProfileContainer = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  accessories = [mediaProfileContainer accessories];
  allObjects = [accessories allObjects];

  if (![allObjects count])
  {
    v6 = MEMORY[0x277CBEA60];
    accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
    v8 = [v6 arrayWithObject:accessory];

    allObjects = v8;
  }

  timerManager = [(HUTimerTableViewController *)self timerManager];
  v10 = [timerManager timersForAccessories:allObjects];
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

- (id)_newCellForMTTimerObjectUUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HUTimerTableViewController *)self _findTimerObjectForID:dCopy];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    selfCopy2 = "[HUTimerTableViewController _newCellForMTTimerObjectUUID:]";
    v13 = 2112;
    selfCopy = self;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "%s(%@) new MT Cell for %@", &v11, 0x20u);
  }

  if (v5)
  {
    v7 = [HUTimerTableViewCell alloc];
    timerManager = [(HUTimerTableViewController *)self timerManager];
    v9 = [(HUTimerTableViewCell *)v7 initWithMobileTimerObject:v5 manager:timerManager roomName:0];
  }

  else
  {
    timerManager = HFLogForCategory();
    if (os_log_type_enabled(timerManager, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412802;
      selfCopy2 = self;
      v13 = 2080;
      selfCopy = "[HUTimerTableViewController _newCellForMTTimerObjectUUID:]";
      v15 = 2112;
      v16 = dCopy;
      _os_log_error_impl(&dword_20CEB6000, timerManager, OS_LOG_TYPE_ERROR, "(%@)%s: could not find mobileTimerObject for ID: %@", &v11, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)_canManagerControlAccessory
{
  accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
  timerManager = [(HUTimerTableViewController *)self timerManager];
  v5 = [HUAlarmsAndTimersAccessUtility canAccess:accessory for:1 withManager:timerManager];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:mainThreadScheduler];

  return v7;
}

- (id)_findTimerObjectForID:(id)d
{
  dCopy = d;
  mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUTimerTableViewController__findTimerObjectForID___block_invoke;
  v9[3] = &unk_277DBA650;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [mobileTimerObjects na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__HUTimerTableViewController__findTimerObjectForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timer];
  v4 = [v3 timerID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)_removeTimerObjectAtIndexPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tableView = [(HUTimerTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

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
    timer = [v9 timer];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      selfCopy = self;
      v17 = 2080;
      v18 = "[HUTimerTableViewController _removeTimerObjectAtIndexPath:]";
      v19 = 2112;
      v20 = timer;
      v21 = 2112;
      v22 = pathCopy;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Removing timer %@ at %@", &v15, 0x2Au);
    }

    if (timer)
    {
      timerManager = [(HUTimerTableViewController *)self timerManager];
      v13 = [timerManager removeTimer:timer];

      timerID = [timer timerID];
      [(HUMobileTimerObjectTableViewController *)self _quickDeleteMobileTimerObjectFromTable:timerID];
    }
  }
}

- (id)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end