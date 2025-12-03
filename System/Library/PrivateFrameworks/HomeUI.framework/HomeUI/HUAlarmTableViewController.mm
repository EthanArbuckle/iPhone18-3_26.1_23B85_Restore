@interface HUAlarmTableViewController
- (HUAlarmTableViewController)initWithMediaProfileContainer:(id)container;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_findTimerObjectForID:(id)d;
- (id)_newCellForMTTimerObjectUUID:(id)d;
- (id)editViewControllerForAlarm:(id)alarm;
- (id)presentationDelegate;
- (void)_extractUpdatedTimerObjectsFromNotification:(id)notification;
- (void)_removeTimerObjectAtIndexPath:(id)path;
- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm;
- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm;
- (void)alarmEditControllerGettingDismissed:(id)dismissed;
- (void)dealloc;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUAlarmTableViewController

- (HUAlarmTableViewController)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v23.receiver = self;
  v23.super_class = HUAlarmTableViewController;
  v5 = [(HUMobileTimerObjectTableViewController *)&v23 initWithMediaProfileContainer:containerCopy];
  if (v5)
  {
    v6 = _HULocalizedStringWithDefaultValue(@"HUQuickControlAlarmsDetailsButtonTitle", @"HUQuickControlAlarmsDetailsButtonTitle", 1);
    [(HUAlarmTableViewController *)v5 setTitle:v6];

    v7 = _HULocalizedStringWithDefaultValue(@"HULoadingAlarms", @"HULoadingAlarms", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setLoadingItemsTitle:v7];

    v8 = _HULocalizedStringWithDefaultValue(@"HUHomePodAlarmsUnavailableTitle", @"HUHomePodAlarmsUnavailableTitle", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableTitle:v8];

    v9 = _HULocalizedStringWithDefaultValue(@"HUHomePodAlarmsNewAlarm", @"HUHomePodAlarmsNewAlarm", 1);
    [(HUMobileTimerObjectTableViewController *)v5 setHeaderCellTitle:v9];

    [(HUMobileTimerObjectTableViewController *)v5 setIdentifier:*MEMORY[0x277D13950]];
    hf_categoryLowercaseLocalizedDescription = [containerCopy hf_categoryLowercaseLocalizedDescription];
    v17 = HULocalizedStringWithFormat(@"HUHomePodAlarmsUnavailableExplanation", @"%@", v11, v12, v13, v14, v15, v16, hf_categoryLowercaseLocalizedDescription);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableText:v17];

    v18 = MEMORY[0x277CFD070];
    accessory = [(HUMobileTimerObjectTableViewController *)v5 accessory];
    v20 = [v18 hf_AlarmManagerForAccessory:accessory];
    alarmManager = v5->_alarmManager;
    v5->_alarmManager = v20;

    if (!v5->_alarmManager)
    {
      NSLog(&cfstr_AlarmmanagerIs.isa);
    }
  }

  return v5;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = HUAlarmTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v25 viewDidLoad];
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __41__HUAlarmTableViewController_viewDidLoad__block_invoke;
  v22 = &unk_277DBA5A0;
  objc_copyWeak(&v23, &location);
  v3 = _Block_copy(&v19);
  v4 = [(HUAlarmTableViewController *)self alarmManager:v19];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v6 = [v4 addObserverForName:*MEMORY[0x277CFCE58] queue:mainQueue usingBlock:v3];
  [(HUAlarmTableViewController *)self setAddNotificationObserver:v6];

  alarmManager = [(HUAlarmTableViewController *)self alarmManager];
  mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
  v9 = [alarmManager addObserverForName:*MEMORY[0x277CFCE78] queue:mainQueue2 usingBlock:v3];
  [(HUAlarmTableViewController *)self setUpdateNotificationObserver:v9];

  alarmManager2 = [(HUAlarmTableViewController *)self alarmManager];
  mainQueue3 = [MEMORY[0x277CCABD8] mainQueue];
  v12 = [alarmManager2 addObserverForName:*MEMORY[0x277CFCE68] queue:mainQueue3 usingBlock:v3];
  [(HUAlarmTableViewController *)self setRemoveNotificationObserver:v12];

  alarmManager3 = [(HUAlarmTableViewController *)self alarmManager];
  mainQueue4 = [MEMORY[0x277CCABD8] mainQueue];
  v15 = [alarmManager3 addObserverForName:*MEMORY[0x277CFCE90] queue:mainQueue4 usingBlock:v3];
  [(HUAlarmTableViewController *)self setCanDispatchNotificationObserver:v15];

  alarmManager4 = [(HUAlarmTableViewController *)self alarmManager];
  mainQueue5 = [MEMORY[0x277CCABD8] mainQueue];
  v18 = [alarmManager4 addObserverForName:*MEMORY[0x277CFCEC0] queue:mainQueue5 usingBlock:v3];
  [(HUAlarmTableViewController *)self setResetNotificationObserver:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __41__HUAlarmTableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v7 = WeakRetained;
    v8 = 2080;
    v9 = "[HUAlarmTableViewController viewDidLoad]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "(%@)%s: received NSNotification = %@", buf, 0x20u);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    NSLog(&cfstr_SShouldOnlyBeC.isa, WeakRetained, "[HUAlarmTableViewController viewDidLoad]_block_invoke");
  }

  [WeakRetained _extractUpdatedTimerObjectsFromNotification:v3];
  [WeakRetained _checkAccessFetchDataAndReloadTable];
}

- (void)presentAddMobileTimerObjectViewControllerOnMainThread
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[HUAlarmTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new alarm", buf, 0x16u);
  }

  parentViewController = [(HUAlarmTableViewController *)self parentViewController];
  if (!parentViewController || (-[HUAlarmTableViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, parentViewController, v7))
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      parentViewController2 = [(HUAlarmTableViewController *)self parentViewController];
      view = [(HUAlarmTableViewController *)self view];
      window = [view window];
      *buf = 136315906;
      v16 = "[HUAlarmTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
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
    v13[2] = __83__HUAlarmTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke;
    v13[3] = &unk_277DB8770;
    objc_copyWeak(&v14, buf);
    [mainThreadScheduler performBlock:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __83__HUAlarmTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained editViewControllerForAlarm:0];
  [WeakRetained presentViewController:v1 animated:1 completion:0];
}

- (id)editViewControllerForAlarm:(id)alarm
{
  v20 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = [HUAlarmEditViewController alloc];
  mediaProfileContainer = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  v7 = [(HUAlarmEditViewController *)v5 initWithMediaProfileContainer:mediaProfileContainer alarm:alarmCopy];

  mediaProfileContainer2 = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  hf_appleMusicCurrentLoggedInAccountDSID = [mediaProfileContainer2 hf_appleMusicCurrentLoggedInAccountDSID];
  [(HUAlarmEditViewController *)v7 setLoggedInAppleMusicAccountDSID:hf_appleMusicCurrentLoggedInAccountDSID];

  [(HUAlarmEditViewController *)v7 setDelegate:self];
  if (!v7)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[HUAlarmTableViewController editViewControllerForAlarm:]";
      v18 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%s(%@) No editAlarmViewController!", &v16, 0x16u);
    }
  }

  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [v11 setOverrideUserInterfaceStyle:2];
  }

  hu_alarmsBackgroundColor = [MEMORY[0x277D75348] hu_alarmsBackgroundColor];
  view = [v11 view];
  [view setBackgroundColor:hu_alarmsBackgroundColor];

  if (!v11)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[HUAlarmTableViewController editViewControllerForAlarm:]";
      v18 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "%s(%@) No navigationController!", &v16, 0x16u);
    }
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  viewCopy = view;
  tableViewDataSource = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v10 = [tableViewDataSource itemIdentifierForIndexPath:pathCopy];

  headerUUID = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v12 = [v10 hmf_isEqualToUUID:headerUUID];

  if (v12)
  {
    [(HUMobileTimerObjectTableViewController *)self _checkAndAddTimerObject];
  }

  else
  {
    v13 = [(HUAlarmTableViewController *)self _findTimerObjectForID:v10];
    v14 = v13;
    if (v13)
    {
      alarm = [v13 alarm];
      if (!alarm)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewController.m" lineNumber:152 description:@"HUMobileTimerObject must wrap an alarm"];
      }

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = alarm;
        _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Editing alarm: %@", &v19, 0xCu);
      }

      v17 = [(HUAlarmTableViewController *)self editViewControllerForAlarm:alarm];
      [(HUAlarmTableViewController *)self presentViewController:v17 animated:1 completion:0];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)setAlarmEnabled:(BOOL)enabled forCell:(id)cell
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  objc_opt_class();
  v7 = cellCopy;
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
    alarm = [v9 alarm];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      selfCopy = self;
      v17 = 2080;
      v18 = "[HUAlarmTableViewController setAlarmEnabled:forCell:]";
      v19 = 2112;
      v20 = alarm;
      v21 = 1024;
      v22 = enabledCopy;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: setting alarm %@ enabled to %{BOOL}d", &v15, 0x26u);
    }

    v12 = [alarm mutableCopy];
    [v12 setEnabled:enabledCopy];
    alarmManager = [(HUAlarmTableViewController *)self alarmManager];
    v14 = [alarmManager updateAlarm:v12];
  }
}

- (void)alarmEditControllerGettingDismissed:(id)dismissed
{
  tableView = [(HUAlarmTableViewController *)self tableView];
  [tableView setUserInteractionEnabled:1];
}

- (void)alarmEditController:(id)controller didAddAlarm:(id)alarm
{
  v17 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v13 = 2080;
    v14 = "[HUAlarmTableViewController alarmEditController:didAddAlarm:]";
    v15 = 2112;
    v16 = alarmCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Adding alarm %@", buf, 0x20u);
  }

  if (alarmCopy)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUAlarmTableViewController alarmEditController:didAddAlarm:]");
    }

    mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v8 = [[HUMobileTimerObject alloc] initWithAlarm:alarmCopy];
    [mobileTimerObjects addObject:v8];

    alarmManager = [(HUAlarmTableViewController *)self alarmManager];
    v10 = [alarmManager addAlarm:alarmCopy];

    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
  }

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)controller didEditAlarm:(id)alarm
{
  v25 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    selfCopy = self;
    v21 = 2080;
    v22 = "[HUAlarmTableViewController alarmEditController:didEditAlarm:]";
    v23 = 2112;
    v24 = alarmCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Editing alarm %@", &v19, 0x20u);
  }

  alarmManager = [(HUAlarmTableViewController *)self alarmManager];
  v8 = [alarmManager updateAlarm:alarmCopy];

  v9 = [[HUMobileTimerObject alloc] initWithAlarm:alarmCopy];
  tableViewDataSource = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  uniqueIdentifier = [(HUMobileTimerObject *)v9 uniqueIdentifier];
  v12 = [tableViewDataSource indexPathForItemIdentifier:uniqueIdentifier];

  tableView = [(HUAlarmTableViewController *)self tableView];
  v14 = [tableView cellForRowAtIndexPath:v12];

  alarm = [v14 alarm];
  alarmID = [alarm alarmID];
  alarmID2 = [alarmCopy alarmID];
  v18 = [alarmID isEqual:alarmID2];

  if (v18)
  {
    [v14 refreshUI:alarmCopy roomName:0 animated:1];
    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
  }

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)controller didDeleteAlarm:(id)alarm
{
  v16 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    selfCopy = self;
    v12 = 2080;
    v13 = "[HUAlarmTableViewController alarmEditController:didDeleteAlarm:]";
    v14 = 2112;
    v15 = alarmCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Deleting alarm %@", &v10, 0x20u);
  }

  if ((HFPreferencesBoolForKey() & 1) == 0)
  {
    alarmManager = [(HUAlarmTableViewController *)self alarmManager];
    v8 = [alarmManager removeAlarm:alarmCopy];
  }

  alarmID = [alarmCopy alarmID];
  [(HUMobileTimerObjectTableViewController *)self _quickDeleteMobileTimerObjectFromTable:alarmID];

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_extractUpdatedTimerObjectsFromNotification:(id)notification
{
  v32 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (!notificationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewController.m" lineNumber:251 description:@"This shouldn't happen"];
  }

  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D295A0]];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    v26 = 2080;
    v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
    v28 = 2112;
    v29 = notificationCopy;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: NSNotification %@ contained updated alarms: %@", buf, 0x2Au);
  }

  name = [notificationCopy name];
  v10 = [name isEqualToString:*MEMORY[0x277CFCE78]];

  if (v10)
  {
    v11 = [v7 na_map:&__block_literal_global_156];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:v11];

    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]");
    }

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      selfCopy3 = self;
      v26 = 2080;
      v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
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
      v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = mobileTimerObjects4;
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "(%@)%s:AFTER replace %@", buf, 0x20u);
    }
  }

  name2 = [notificationCopy name];
  v19 = [name2 isEqualToString:*MEMORY[0x277CFCEC0]];

  if (v19)
  {
    mobileTimerObjects5 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:mobileTimerObjects5];
  }
}

HUMobileTimerObject *__74__HUAlarmTableViewController__extractUpdatedTimerObjectsFromNotification___block_invoke(uint64_t a1, void *a2)
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
    v6 = [[HUMobileTimerObject alloc] initWithAlarm:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  alarmManager = [(HUAlarmTableViewController *)self alarmManager];
  addNotificationObserver = [(HUAlarmTableViewController *)self addNotificationObserver];
  [alarmManager removeObserver:addNotificationObserver];

  [(HUAlarmTableViewController *)self setAddNotificationObserver:0];
  alarmManager2 = [(HUAlarmTableViewController *)self alarmManager];
  updateNotificationObserver = [(HUAlarmTableViewController *)self updateNotificationObserver];
  [alarmManager2 removeObserver:updateNotificationObserver];

  [(HUAlarmTableViewController *)self setUpdateNotificationObserver:0];
  alarmManager3 = [(HUAlarmTableViewController *)self alarmManager];
  removeNotificationObserver = [(HUAlarmTableViewController *)self removeNotificationObserver];
  [alarmManager3 removeObserver:removeNotificationObserver];

  [(HUAlarmTableViewController *)self setRemoveNotificationObserver:0];
  alarmManager4 = [(HUAlarmTableViewController *)self alarmManager];
  canDispatchNotificationObserver = [(HUAlarmTableViewController *)self canDispatchNotificationObserver];
  [alarmManager4 removeObserver:canDispatchNotificationObserver];

  [(HUAlarmTableViewController *)self setCanDispatchNotificationObserver:0];
  alarmManager5 = [(HUAlarmTableViewController *)self alarmManager];
  resetNotificationObserver = [(HUAlarmTableViewController *)self resetNotificationObserver];
  [alarmManager5 removeObserver:resetNotificationObserver];

  [(HUAlarmTableViewController *)self setResetNotificationObserver:0];
  v13.receiver = self;
  v13.super_class = HUAlarmTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v13 dealloc];
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

  alarmManager = [(HUAlarmTableViewController *)self alarmManager];
  v10 = [alarmManager alarmsForAccessories:allObjects];
  v11 = [v10 flatMap:&__block_literal_global_55_0];

  return v11;
}

id __59__HUAlarmTableViewController__baseMobileTimerObjectsFuture__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 objectEnumerator];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUAlarmTableViewController__baseMobileTimerObjectsFuture__block_invoke_2;
  v10[3] = &unk_277DBA608;
  v11 = v3;
  v5 = v3;
  [v4 na_each:v10];

  v6 = [v5 na_map:&__block_literal_global_60_1];
  v7 = [v6 allObjects];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

HUMobileTimerObject *__59__HUAlarmTableViewController__baseMobileTimerObjectsFuture__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUMobileTimerObject alloc] initWithAlarm:v2];

  return v3;
}

- (id)_newCellForMTTimerObjectUUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HUAlarmTableViewController *)self _findTimerObjectForID:dCopy];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    selfCopy2 = "[HUAlarmTableViewController _newCellForMTTimerObjectUUID:]";
    v12 = 2112;
    selfCopy = self;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "%s(%@) new MT Cell for %@", &v10, 0x20u);
  }

  if (v5)
  {
    v7 = [[HUAlarmTableViewCell alloc] initWithMobileTimerObject:v5 roomName:0];
    [(HUAlarmTableViewCell *)v7 setDelegate:self];
  }

  else
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      selfCopy2 = self;
      v12 = 2080;
      selfCopy = "[HUAlarmTableViewController _newCellForMTTimerObjectUUID:]";
      v14 = 2112;
      v15 = dCopy;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "(%@)%s: could not find mobileTimerObject for ID: %@", &v10, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_canManagerControlAccessory
{
  accessory = [(HUMobileTimerObjectTableViewController *)self accessory];
  alarmManager = [(HUAlarmTableViewController *)self alarmManager];
  v5 = [HUAlarmsAndTimersAccessUtility canAccess:accessory for:0 withManager:alarmManager];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:mainThreadScheduler];

  return v7;
}

void __59__HUAlarmTableViewController__fakeMobileAlarmObjectsFuture__block_invoke(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277D296F0]) initWithHour:18 minute:0];
  [v3 setTitle:@"6pmAlarm"];
  v4 = [objc_alloc(MEMORY[0x277D296F0]) initWithHour:19 minute:0];
  [v4 setTitle:@"7pmAlarm"];
  v5 = [objc_alloc(MEMORY[0x277D296F0]) initWithHour:20 minute:0];
  [v5 setTitle:@"8pmAlarm"];
  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  v7 = [v6 na_map:&__block_literal_global_77_1];
  v8 = dispatch_time(0, 5000000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__HUAlarmTableViewController__fakeMobileAlarmObjectsFuture__block_invoke_3;
  v11[3] = &unk_277DB7558;
  v12 = v2;
  v13 = v7;
  v9 = v7;
  v10 = v2;
  dispatch_after(v8, MEMORY[0x277D85CD0], v11);
}

HUMobileTimerObject *__59__HUAlarmTableViewController__fakeMobileAlarmObjectsFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUMobileTimerObject alloc] initWithAlarm:v2];

  return v3;
}

- (id)_findTimerObjectForID:(id)d
{
  dCopy = d;
  mobileTimerObjects = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUAlarmTableViewController__findTimerObjectForID___block_invoke;
  v9[3] = &unk_277DBA650;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [mobileTimerObjects na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__HUAlarmTableViewController__findTimerObjectForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarm];
  v4 = [v3 alarmID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)_removeTimerObjectAtIndexPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tableView = [(HUAlarmTableViewController *)self tableView];
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
    alarm = [v9 alarm];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      selfCopy = self;
      v17 = 2080;
      v18 = "[HUAlarmTableViewController _removeTimerObjectAtIndexPath:]";
      v19 = 2112;
      v20 = alarm;
      v21 = 2112;
      v22 = pathCopy;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Removing alarm %@ at %@", &v15, 0x2Au);
    }

    if (alarm)
    {
      if ((HFPreferencesBoolForKey() & 1) == 0)
      {
        alarmManager = [(HUAlarmTableViewController *)self alarmManager];
        v13 = [alarmManager removeAlarm:alarm];
      }

      alarmID = [alarm alarmID];
      [(HUMobileTimerObjectTableViewController *)self _quickDeleteMobileTimerObjectFromTable:alarmID];
    }
  }
}

- (id)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->presentationDelegate);

  return WeakRetained;
}

@end