@interface HUAlarmTableViewController
- (HUAlarmTableViewController)initWithMediaProfileContainer:(id)a3;
- (id)_baseMobileTimerObjectsFuture;
- (id)_canManagerControlAccessory;
- (id)_findTimerObjectForID:(id)a3;
- (id)_newCellForMTTimerObjectUUID:(id)a3;
- (id)editViewControllerForAlarm:(id)a3;
- (id)presentationDelegate;
- (void)_extractUpdatedTimerObjectsFromNotification:(id)a3;
- (void)_removeTimerObjectAtIndexPath:(id)a3;
- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4;
- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4;
- (void)alarmEditControllerGettingDismissed:(id)a3;
- (void)dealloc;
- (void)presentAddMobileTimerObjectViewControllerOnMainThread;
- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUAlarmTableViewController

- (HUAlarmTableViewController)initWithMediaProfileContainer:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HUAlarmTableViewController;
  v5 = [(HUMobileTimerObjectTableViewController *)&v23 initWithMediaProfileContainer:v4];
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
    v10 = [v4 hf_categoryLowercaseLocalizedDescription];
    v17 = HULocalizedStringWithFormat(@"HUHomePodAlarmsUnavailableExplanation", @"%@", v11, v12, v13, v14, v15, v16, v10);
    [(HUMobileTimerObjectTableViewController *)v5 setUnavailableText:v17];

    v18 = MEMORY[0x277CFD070];
    v19 = [(HUMobileTimerObjectTableViewController *)v5 accessory];
    v20 = [v18 hf_AlarmManagerForAccessory:v19];
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
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v6 = [v4 addObserverForName:*MEMORY[0x277CFCE58] queue:v5 usingBlock:v3];
  [(HUAlarmTableViewController *)self setAddNotificationObserver:v6];

  v7 = [(HUAlarmTableViewController *)self alarmManager];
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v9 = [v7 addObserverForName:*MEMORY[0x277CFCE78] queue:v8 usingBlock:v3];
  [(HUAlarmTableViewController *)self setUpdateNotificationObserver:v9];

  v10 = [(HUAlarmTableViewController *)self alarmManager];
  v11 = [MEMORY[0x277CCABD8] mainQueue];
  v12 = [v10 addObserverForName:*MEMORY[0x277CFCE68] queue:v11 usingBlock:v3];
  [(HUAlarmTableViewController *)self setRemoveNotificationObserver:v12];

  v13 = [(HUAlarmTableViewController *)self alarmManager];
  v14 = [MEMORY[0x277CCABD8] mainQueue];
  v15 = [v13 addObserverForName:*MEMORY[0x277CFCE90] queue:v14 usingBlock:v3];
  [(HUAlarmTableViewController *)self setCanDispatchNotificationObserver:v15];

  v16 = [(HUAlarmTableViewController *)self alarmManager];
  v17 = [MEMORY[0x277CCABD8] mainQueue];
  v18 = [v16 addObserverForName:*MEMORY[0x277CFCEC0] queue:v17 usingBlock:v3];
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
    v18 = self;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s(%@) adding new alarm", buf, 0x16u);
  }

  v4 = [(HUAlarmTableViewController *)self parentViewController];
  if (!v4 || (-[HUAlarmTableViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, v4, v7))
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(HUAlarmTableViewController *)self parentViewController];
      v11 = [(HUAlarmTableViewController *)self view];
      v12 = [v11 window];
      *buf = 136315906;
      v16 = "[HUAlarmTableViewController presentAddMobileTimerObjectViewControllerOnMainThread]";
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
    v13[2] = __83__HUAlarmTableViewController_presentAddMobileTimerObjectViewControllerOnMainThread__block_invoke;
    v13[3] = &unk_277DB8770;
    objc_copyWeak(&v14, buf);
    [v8 performBlock:v13];

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

- (id)editViewControllerForAlarm:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUAlarmEditViewController alloc];
  v6 = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  v7 = [(HUAlarmEditViewController *)v5 initWithMediaProfileContainer:v6 alarm:v4];

  v8 = [(HUMobileTimerObjectTableViewController *)self mediaProfileContainer];
  v9 = [v8 hf_appleMusicCurrentLoggedInAccountDSID];
  [(HUAlarmEditViewController *)v7 setLoggedInAppleMusicAccountDSID:v9];

  [(HUAlarmEditViewController *)v7 setDelegate:self];
  if (!v7)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[HUAlarmTableViewController editViewControllerForAlarm:]";
      v18 = 2112;
      v19 = self;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "%s(%@) No editAlarmViewController!", &v16, 0x16u);
    }
  }

  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    [v11 setOverrideUserInterfaceStyle:2];
  }

  v12 = [MEMORY[0x277D75348] hu_alarmsBackgroundColor];
  v13 = [v11 view];
  [v13 setBackgroundColor:v12];

  if (!v11)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[HUAlarmTableViewController editViewControllerForAlarm:]";
      v18 = 2112;
      v19 = self;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "%s(%@) No navigationController!", &v16, 0x16u);
    }
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v7];

  v11 = [(HUMobileTimerObjectTableViewController *)self headerUUID];
  v12 = [v10 hmf_isEqualToUUID:v11];

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
      v15 = [v13 alarm];
      if (!v15)
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewController.m" lineNumber:152 description:@"HUMobileTimerObject must wrap an alarm"];
      }

      v16 = HFLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Editing alarm: %@", &v19, 0xCu);
      }

      v17 = [(HUAlarmTableViewController *)self editViewControllerForAlarm:v15];
      [(HUAlarmTableViewController *)self presentViewController:v17 animated:1 completion:0];
    }
  }

  [v8 deselectRowAtIndexPath:v7 animated:1];
}

- (void)setAlarmEnabled:(BOOL)a3 forCell:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
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
    v10 = [v9 alarm];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = self;
      v17 = 2080;
      v18 = "[HUAlarmTableViewController setAlarmEnabled:forCell:]";
      v19 = 2112;
      v20 = v10;
      v21 = 1024;
      v22 = v4;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: setting alarm %@ enabled to %{BOOL}d", &v15, 0x26u);
    }

    v12 = [v10 mutableCopy];
    [v12 setEnabled:v4];
    v13 = [(HUAlarmTableViewController *)self alarmManager];
    v14 = [v13 updateAlarm:v12];
  }
}

- (void)alarmEditControllerGettingDismissed:(id)a3
{
  v3 = [(HUAlarmTableViewController *)self tableView];
  [v3 setUserInteractionEnabled:1];
}

- (void)alarmEditController:(id)a3 didAddAlarm:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v12 = self;
    v13 = 2080;
    v14 = "[HUAlarmTableViewController alarmEditController:didAddAlarm:]";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Adding alarm %@", buf, 0x20u);
  }

  if (v5)
  {
    if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
    {
      NSLog(&cfstr_SShouldOnlyBeC.isa, self, "[HUAlarmTableViewController alarmEditController:didAddAlarm:]");
    }

    v7 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    v8 = [[HUMobileTimerObject alloc] initWithAlarm:v5];
    [v7 addObject:v8];

    v9 = [(HUAlarmTableViewController *)self alarmManager];
    v10 = [v9 addAlarm:v5];

    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
  }

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)a3 didEditAlarm:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = self;
    v21 = 2080;
    v22 = "[HUAlarmTableViewController alarmEditController:didEditAlarm:]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Editing alarm %@", &v19, 0x20u);
  }

  v7 = [(HUAlarmTableViewController *)self alarmManager];
  v8 = [v7 updateAlarm:v5];

  v9 = [[HUMobileTimerObject alloc] initWithAlarm:v5];
  v10 = [(HUMobileTimerObjectTableViewController *)self tableViewDataSource];
  v11 = [(HUMobileTimerObject *)v9 uniqueIdentifier];
  v12 = [v10 indexPathForItemIdentifier:v11];

  v13 = [(HUAlarmTableViewController *)self tableView];
  v14 = [v13 cellForRowAtIndexPath:v12];

  v15 = [v14 alarm];
  v16 = [v15 alarmID];
  v17 = [v5 alarmID];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    [v14 refreshUI:v5 roomName:0 animated:1];
    [(HUMobileTimerObjectTableViewController *)self _checkAccessFetchDataAndReloadTable];
  }

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)alarmEditController:(id)a3 didDeleteAlarm:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = self;
    v12 = 2080;
    v13 = "[HUAlarmTableViewController alarmEditController:didDeleteAlarm:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "(%@)%s: Deleting alarm %@", &v10, 0x20u);
  }

  if ((HFPreferencesBoolForKey() & 1) == 0)
  {
    v7 = [(HUAlarmTableViewController *)self alarmManager];
    v8 = [v7 removeAlarm:v5];
  }

  v9 = [v5 alarmID];
  [(HUMobileTimerObjectTableViewController *)self _quickDeleteMobileTimerObjectFromTable:v9];

  [(HUAlarmTableViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_extractUpdatedTimerObjectsFromNotification:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HUAlarmTableViewController.m" lineNumber:251 description:@"This shouldn't happen"];
  }

  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D295A0]];

  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v25 = self;
    v26 = 2080;
    v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@)%s: NSNotification %@ contained updated alarms: %@", buf, 0x2Au);
  }

  v9 = [v5 name];
  v10 = [v9 isEqualToString:*MEMORY[0x277CFCE78]];

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
      v21 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
      *buf = 138412802;
      v25 = self;
      v26 = 2080;
      v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
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
      v27 = "[HUAlarmTableViewController _extractUpdatedTimerObjectsFromNotification:]";
      v28 = 2112;
      v29 = v22;
      _os_log_debug_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEBUG, "(%@)%s:AFTER replace %@", buf, 0x20u);
    }
  }

  v18 = [v5 name];
  v19 = [v18 isEqualToString:*MEMORY[0x277CFCEC0]];

  if (v19)
  {
    v20 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
    [(HUMobileTimerObjectTableViewController *)self setUpdatedMobileTimerObjects:v20];
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
  v3 = [(HUAlarmTableViewController *)self alarmManager];
  v4 = [(HUAlarmTableViewController *)self addNotificationObserver];
  [v3 removeObserver:v4];

  [(HUAlarmTableViewController *)self setAddNotificationObserver:0];
  v5 = [(HUAlarmTableViewController *)self alarmManager];
  v6 = [(HUAlarmTableViewController *)self updateNotificationObserver];
  [v5 removeObserver:v6];

  [(HUAlarmTableViewController *)self setUpdateNotificationObserver:0];
  v7 = [(HUAlarmTableViewController *)self alarmManager];
  v8 = [(HUAlarmTableViewController *)self removeNotificationObserver];
  [v7 removeObserver:v8];

  [(HUAlarmTableViewController *)self setRemoveNotificationObserver:0];
  v9 = [(HUAlarmTableViewController *)self alarmManager];
  v10 = [(HUAlarmTableViewController *)self canDispatchNotificationObserver];
  [v9 removeObserver:v10];

  [(HUAlarmTableViewController *)self setCanDispatchNotificationObserver:0];
  v11 = [(HUAlarmTableViewController *)self alarmManager];
  v12 = [(HUAlarmTableViewController *)self resetNotificationObserver];
  [v11 removeObserver:v12];

  [(HUAlarmTableViewController *)self setResetNotificationObserver:0];
  v13.receiver = self;
  v13.super_class = HUAlarmTableViewController;
  [(HUMobileTimerObjectTableViewController *)&v13 dealloc];
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

  v9 = [(HUAlarmTableViewController *)self alarmManager];
  v10 = [v9 alarmsForAccessories:v5];
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

- (id)_newCellForMTTimerObjectUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUAlarmTableViewController *)self _findTimerObjectForID:v4];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "[HUAlarmTableViewController _newCellForMTTimerObjectUUID:]";
    v12 = 2112;
    v13 = self;
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
      v11 = self;
      v12 = 2080;
      v13 = "[HUAlarmTableViewController _newCellForMTTimerObjectUUID:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "(%@)%s: could not find mobileTimerObject for ID: %@", &v10, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_canManagerControlAccessory
{
  v3 = [(HUMobileTimerObjectTableViewController *)self accessory];
  v4 = [(HUAlarmTableViewController *)self alarmManager];
  v5 = [HUAlarmsAndTimersAccessUtility canAccess:v3 for:0 withManager:v4];
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v5 reschedule:v6];

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

- (id)_findTimerObjectForID:(id)a3
{
  v4 = a3;
  v5 = [(HUMobileTimerObjectTableViewController *)self mobileTimerObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUAlarmTableViewController__findTimerObjectForID___block_invoke;
  v9[3] = &unk_277DBA650;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __52__HUAlarmTableViewController__findTimerObjectForID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 alarm];
  v4 = [v3 alarmID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

- (void)_removeTimerObjectAtIndexPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUAlarmTableViewController *)self tableView];
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
    v10 = [v9 alarm];
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138413058;
      v16 = self;
      v17 = 2080;
      v18 = "[HUAlarmTableViewController _removeTimerObjectAtIndexPath:]";
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "(%@)%s: Removing alarm %@ at %@", &v15, 0x2Au);
    }

    if (v10)
    {
      if ((HFPreferencesBoolForKey() & 1) == 0)
      {
        v12 = [(HUAlarmTableViewController *)self alarmManager];
        v13 = [v12 removeAlarm:v10];
      }

      v14 = [v10 alarmID];
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