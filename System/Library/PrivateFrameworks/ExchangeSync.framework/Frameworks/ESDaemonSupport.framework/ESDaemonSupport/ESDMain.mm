@interface ESDMain
+ (id)sharedMain;
- (ESDMain)init;
- (void)_configureAggdLogging;
- (void)_forceShutdownDaemonOnLogoutInTimeInterval:(int)a3;
- (void)_forceShutdownTimerFired:(id)a3;
- (void)_shutdownDaemon;
- (void)addLanguageChangeHandler;
- (void)addSignalHandler;
- (void)addToOperationsQueueDisabledCheckAndGoBlock:(id)a3 wrappedBlock:(id)a4;
- (void)dealloc;
- (void)didFinishAllXPCTransactions;
- (void)disable;
- (void)waitForSystemAvailability;
- (void)willSwitchUser;
@end

@implementation ESDMain

- (void)_shutdownDaemon
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "Initiating DA Shutdown...", buf, 2u);
  }

  v5 = +[ESDAccessManager sharedManager];
  [v5 disable];

  [(ESDMain *)self disable];
  [(ESDMain *)self addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_1];
  *buf = 0;
  v8 = buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__ESDMain__shutdownDaemon__block_invoke_5;
  v6[3] = &unk_278FCDC08;
  v6[4] = buf;
  [(ESDMain *)v12 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v6];
  _Block_object_dispose(buf, 8);
}

void __26__ESDMain__shutdownDaemon__block_invoke()
{
  v0 = +[ESDAgentManager sharedManager];
  [v0 _stopMonitoringAndSaveAgents];
}

void __26__ESDMain__shutdownDaemon__block_invoke_5(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = v1;
  v2 = [v1 userSwitchTasks];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *(MEMORY[0x277D03988] + 6);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = DALoggingwithCategory();
        if (os_log_type_enabled(v9, v6))
        {
          v10 = [v8 bundleID];
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_24A184000, v9, v6, "UserManagementFramework: Ending Switch Task For %@", buf, 0xCu);
        }

        [v8 end];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  [v12 _setRunLoopStopped:1];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_forceShutdownTimerFired:(id)a3
{
  forceShutdownTimer = self->_forceShutdownTimer;
  self->_forceShutdownTimer = 0;

  [(ESDMain *)self _shutdownDaemon];
}

- (void)_forceShutdownDaemonOnLogoutInTimeInterval:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  forceShutdownTimer = self->_forceShutdownTimer;
  if (forceShutdownTimer)
  {
    [(NSTimer *)forceShutdownTimer invalidate];
    v6 = self->_forceShutdownTimer;
    self->_forceShutdownTimer = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CBEBB8]);
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v9 = [v7 initWithFireDate:v8 interval:self target:sel__forceShutdownTimerFired_ selector:0 userInfo:0 repeats:0.0];
  v10 = self->_forceShutdownTimer;
  self->_forceShutdownTimer = v9;

  v11 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v11 addTimer:self->_forceShutdownTimer forMode:*MEMORY[0x277CBE738]];
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v12, v13))
  {
    v15[0] = 67109120;
    v15[1] = a3;
    _os_log_impl(&dword_24A184000, v12, v13, "Add Force Logout Timer in %d seconds", v15, 8u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addToOperationsQueueDisabledCheckAndGoBlock:(id)a3 wrappedBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = gDADOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__ESDMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke;
  v10[3] = &unk_278FCDC30;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __68__ESDMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke(uint64_t a1)
{
  v2 = dataaccess_get_global_queue();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__ESDMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke_2;
  v3[3] = &unk_278FCDC30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t __68__ESDMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || (result = (*(v2 + 16))(), result))
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

- (void)willSwitchUser
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[ESDAgentManager sharedManager];
  v4 = [v3 activeAgents];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[ESDAgentManager sharedManager];
    v7 = [v6 hasEASAccountConfigured];

    if (v7)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        v10 = "EAS Accounts Found. Forcing Logout without manual sync";
LABEL_16:
        _os_log_impl(&dword_24A184000, v8, v9, v10, buf, 2u);
      }
    }

    else
    {
      v11 = [(ESDMain *)self userSwitchTasks];
      v12 = [v11 count];

      if (v12 < 2)
      {
        v13 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
        v14 = [v13 transactionCount];

        v15 = DALoggingwithCategory();
        v8 = v15;
        if (v14 < 1)
        {
          v9 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v15, v9))
          {
            *buf = 0;
            v10 = "UserManagementFramework: No Pending Transcation Count. Exiting without blocking logout.";
            goto LABEL_16;
          }
        }

        else
        {
          v16 = *(MEMORY[0x277D03988] + 5);
          if (os_log_type_enabled(v15, v16))
          {
            v17 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
            *buf = 67109120;
            v23 = [v17 transactionCount];
            _os_log_impl(&dword_24A184000, v8, v16, "UserManagementFramework: Creating Switch Tasks For Pending Transcation Count %d", buf, 8u);
          }

          v8 = [MEMORY[0x277D77C20] taskWithName:@"DA-Blocking Task" reason:@"LogoutReceived" forBundleID:@"com.apple.dataaccessd"];
          [v8 begin];
          v21 = v8;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
          [(ESDMain *)self setUserSwitchTasks:v18];

          v19 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
          [v19 setTransactionMonitorDelegate:self];

          [(ESDMain *)self _forceShutdownDaemonOnLogoutInTimeInterval:30];
        }
      }

      else
      {
        v8 = DALoggingwithCategory();
        v9 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 0;
          v10 = "UserManagement. Switch Tasks already pending. NOOP";
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      v10 = "No Active Agents to sync.";
      goto LABEL_16;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)didFinishAllXPCTransactions
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A184000, v2, v3, "All Transactions Finished. Initiating DA Shutdown", v6, 2u);
  }

  v4 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
  [v4 setTransactionMonitorDelegate:0];

  v5 = +[ESDMain sharedMain];
  [v5 shutdownDAD];
}

- (void)addSignalHandler
{
  v2 = dispatch_get_global_queue(2, 0);
  v3 = 0;
  v4 = MEMORY[0x277D85D30];
  do
  {
    v5 = dword_24A1A9558[v3];
    v6 = dispatch_source_create(v4, v5, 0, v2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__ESDMain_addSignalHandler__block_invoke;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v10 = v5;
    dispatch_source_set_event_handler(v6, handler);
    v7 = signalSources[v3];
    signalSources[v3] = v6;
    v8 = v6;

    dispatch_resume(v8);
    signal(v5, 1);
    ++v3;
  }

  while (v3 != 5);
}

- (void)addLanguageChangeHandler
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _languageMayHaveChanged, *MEMORY[0x277CBEEB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _languageMayHaveChanged, @"com.apple.language.changed", 0, 0);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _languageMayHaveChanged, @"com.apple.purplebuddy.LanguageResetReady", 0, 0);
}

+ (id)sharedMain
{
  if (sharedMain_onceToken != -1)
  {
    +[ESDMain sharedMain];
  }

  v3 = sharedMain_gESDMain;

  return v3;
}

void __21__ESDMain_sharedMain__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedMain_gESDMain;
  sharedMain_gESDMain = v0;

  [sharedMain_gESDMain addSignalHandler];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  [v2 registerUserSwitchStakeHolder:sharedMain_gESDMain];

  [sharedMain_gESDMain addLanguageChangeHandler];
  v3 = dataaccess_get_global_queue();
  os_state_add_handler();
}

- (void)waitForSystemAvailability
{
  if (DAMigrationIsNeeded())
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v3, v4, "Dataaccess Migrator Performing Synchronous Migration", buf, 2u);
    }

    DMPerformMigrationReturningAfterPlugin();
    v5 = DALoggingwithCategory();
    if (os_log_type_enabled(v5, v4))
    {
      *v8 = 0;
      _os_log_impl(&dword_24A184000, v5, v4, "Dataaccess Migrator Done Synchronous Migration. Updating Version", v8, 2u);
    }

    DAUpdateMigrationVersion();
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D07AE8]];
  [v6 addObserver:self selector:sel__shutdownNotification_ name:v7 object:0];
}

- (void)disable
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D07AE8]];
  [v3 removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = ESDMain;
  [(DADisableableObject *)&v5 disable];
}

- (void)_configureAggdLogging
{
  v3 = [MEMORY[0x277D03910] isAppleInternalInstall];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v4, v5, "Setting up memory usage logging", buf, 2u);
    }

    v7 = dispatch_queue_create("com.apple.dataaccessd.aggd", 0);
    aggdStatsQueue = self->_aggdStatsQueue;
    self->_aggdStatsQueue = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_aggdStatsQueue);
    aggdStatsSource = self->_aggdStatsSource;
    self->_aggdStatsSource = v9;

    v11 = self->_aggdStatsSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__ESDMain__configureAggdLogging__block_invoke;
    handler[3] = &unk_278FCDC98;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    v12 = self->_aggdStatsSource;
    v13 = dispatch_time(0, 0);
    dispatch_source_set_timer(v12, v13, 0xD18C2E2800uLL, 0x34630B8A00uLL);
    dispatch_resume(self->_aggdStatsSource);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v4, v5, "This isn't an internal install so we're not going to log memory use", buf, 2u);
    }
  }
}

void __32__ESDMain__configureAggdLogging__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *MEMORY[0x277D85F48];
  if (v3)
  {
    v4 = Current;
    v5 = [objc_alloc(MEMORY[0x277D6AFA8]) initWithTask:v3 options:0];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v5 regions];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = *v25;
      v12 = MEMORY[0x277D6AFB0];
      v13 = MEMORY[0x277D6AFB8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v10 += *(v15 + *v12);
          v9 += *(v15 + *v13);
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    if (signalSources_block_invoke_onceToken != -1)
    {
      __32__ESDMain__configureAggdLogging__block_invoke_cold_1();
    }

    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = signalSources_block_invoke_pageSize * v10;
      v21 = signalSources_block_invoke_pageSize * v9;
      v22 = CFAbsoluteTimeGetCurrent();
      *buf = 134218496;
      v29 = v20;
      v30 = 2048;
      v31 = v21;
      v32 = 2048;
      v33 = v22 - v4;
      _os_log_impl(&dword_24A184000, v18, v19, "Current dirty memory use is %luB. Resident memory is %luB. (That took %0.04f seconds to find out)", buf, 0x20u);
    }

    ADClientPushValueForDistributionKey();
    ADClientPushValueForDistributionKey();
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v16, v17))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v16, v17, "Couldn't get our own task to get memory use", buf, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 48));
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __32__ESDMain__configureAggdLogging__block_invoke_45()
{
  result = sysconf(29);
  signalSources_block_invoke_pageSize = result;
  return result;
}

- (ESDMain)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ESDMain;
  v2 = [(ESDMain *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.exchangesyncd.esdOperation", 0);
    v4 = gDADOperationQueue;
    gDADOperationQueue = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.exchangesyncd.esdHighAvailability", v5);
    v7 = gDADHighAvailabilityQueue;
    gDADHighAvailabilityQueue = v6;

    dispatch_suspend(gDADHighAvailabilityQueue);
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [MEMORY[0x277D03910] isAppleInternalInstall];
      v11 = @"NON";
      if (v10)
      {
        v11 = &stru_285D58A48;
      }

      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_24A184000, v8, v9, "Device is a %@AppleInternal install", buf, 0xCu);
    }

    if ([MEMORY[0x277D03910] CFNetworkLogging])
    {
      v12 = DALoggingwithCategory();
      if (os_log_type_enabled(v12, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_24A184000, v12, v9, "Enabling CFNetwork diagnostics", buf, 2u);
      }

      setenv("CFNETWORK_DIAGNOSTICS", "2", 1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [MEMORY[0x277D03758] endDailyAggDReporter];
  for (i = 0; i != 5; ++i)
  {
    v4 = signalSources[i];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = signalSources[i];
      signalSources[i] = 0;
    }
  }

  [(NSTimer *)self->_delayedShutdownTimer invalidate];
  v6.receiver = self;
  v6.super_class = ESDMain;
  [(ESDMain *)&v6 dealloc];
}

@end