@interface DADMain
+ (id)sharedMain;
- (DADMain)init;
- (void)_configureAggdLogging;
- (void)_forceShutdownDaemonOnLogoutInTimeInterval:(int)interval;
- (void)_forceShutdownTimerFired:(id)fired;
- (void)_shutdownDaemon;
- (void)addLanguageChangeHandler;
- (void)addSignalHandler;
- (void)addToOperationsQueueDisabledCheckAndGoBlock:(id)block wrappedBlock:(id)wrappedBlock;
- (void)dealloc;
- (void)didFinishAllXPCTransactions;
- (void)disable;
- (void)willSwitchUser;
@end

@implementation DADMain

- (void)_shutdownDaemon
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "Initiating DA Shutdown...", buf, 2u);
  }

  [(DADMain *)self disable];
  [(DADMain *)self addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_1];
  *buf = 0;
  v7 = buf;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  selfCopy = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__DADMain__shutdownDaemon__block_invoke_5;
  v5[3] = &unk_278D52B70;
  v5[4] = buf;
  [(DADMain *)selfCopy addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v5];
  _Block_object_dispose(buf, 8);
}

void __26__DADMain__shutdownDaemon__block_invoke()
{
  v0 = +[DADAgentManager sharedManager];
  [v0 _stopMonitoringAndSaveAgents];
}

void __26__DADMain__shutdownDaemon__block_invoke_5(uint64_t a1)
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
    v6 = *(MEMORY[0x277CF3AF0] + 6);
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
          _os_log_impl(&dword_2424DF000, v9, v6, "UserManagementFramework: Ending Switch Task For %@", buf, 0xCu);
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

- (void)_forceShutdownTimerFired:(id)fired
{
  forceShutdownTimer = self->_forceShutdownTimer;
  self->_forceShutdownTimer = 0;

  [(DADMain *)self _shutdownDaemon];
}

- (void)_forceShutdownDaemonOnLogoutInTimeInterval:(int)interval
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
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:interval];
  v9 = [v7 initWithFireDate:v8 interval:self target:sel__forceShutdownTimerFired_ selector:0 userInfo:0 repeats:0.0];
  v10 = self->_forceShutdownTimer;
  self->_forceShutdownTimer = v9;

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:self->_forceShutdownTimer forMode:*MEMORY[0x277CBE738]];
  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v12, v13))
  {
    v15[0] = 67109120;
    v15[1] = interval;
    _os_log_impl(&dword_2424DF000, v12, v13, "Add Force Logout Timer in %d seconds", v15, 8u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addToOperationsQueueDisabledCheckAndGoBlock:(id)block wrappedBlock:(id)wrappedBlock
{
  blockCopy = block;
  wrappedBlockCopy = wrappedBlock;
  v7 = gDADOperationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__DADMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke;
  v10[3] = &unk_278D52B98;
  v11 = blockCopy;
  v12 = wrappedBlockCopy;
  v8 = wrappedBlockCopy;
  v9 = blockCopy;
  dispatch_async(v7, v10);
}

void __68__DADMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke(uint64_t a1)
{
  v2 = dataaccess_get_global_queue();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__DADMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke_2;
  v3[3] = &unk_278D52B98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

uint64_t __68__DADMain_addToOperationsQueueDisabledCheckAndGoBlock_wrappedBlock___block_invoke_2(uint64_t a1)
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
  v3 = +[DADAgentManager sharedManager];
  activeAgents = [v3 activeAgents];
  v5 = [activeAgents count];

  if (v5)
  {
    v6 = +[DADAgentManager sharedManager];
    hasEASAccountConfigured = [v6 hasEASAccountConfigured];

    if (hasEASAccountConfigured)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        v10 = "EAS Accounts Found. Forcing Logout without manual sync";
LABEL_16:
        _os_log_impl(&dword_2424DF000, v8, v9, v10, buf, 2u);
      }
    }

    else
    {
      userSwitchTasks = [(DADMain *)self userSwitchTasks];
      v12 = [userSwitchTasks count];

      if (v12 < 2)
      {
        mEMORY[0x277CF3A38] = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
        transactionCount = [mEMORY[0x277CF3A38] transactionCount];

        v15 = DALoggingwithCategory();
        v8 = v15;
        if (transactionCount < 1)
        {
          v9 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v15, v9))
          {
            *buf = 0;
            v10 = "UserManagementFramework: No Pending Transcation Count. Exiting without blocking logout.";
            goto LABEL_16;
          }
        }

        else
        {
          v16 = *(MEMORY[0x277CF3AF0] + 5);
          if (os_log_type_enabled(v15, v16))
          {
            mEMORY[0x277CF3A38]2 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
            *buf = 67109120;
            transactionCount2 = [mEMORY[0x277CF3A38]2 transactionCount];
            _os_log_impl(&dword_2424DF000, v8, v16, "UserManagementFramework: Creating Switch Tasks For Pending Transcation Count %d", buf, 8u);
          }

          v8 = [MEMORY[0x277D77C20] taskWithName:@"DA-Blocking Task" reason:@"LogoutReceived" forBundleID:@"com.apple.dataaccessd"];
          [v8 begin];
          v21 = v8;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
          [(DADMain *)self setUserSwitchTasks:v18];

          mEMORY[0x277CF3A38]3 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
          [mEMORY[0x277CF3A38]3 setTransactionMonitorDelegate:self];

          [(DADMain *)self _forceShutdownDaemonOnLogoutInTimeInterval:30];
        }
      }

      else
      {
        v8 = DALoggingwithCategory();
        v9 = *(MEMORY[0x277CF3AF0] + 6);
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
    v9 = *(MEMORY[0x277CF3AF0] + 6);
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
  v3 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    *v6 = 0;
    _os_log_impl(&dword_2424DF000, v2, v3, "All Transactions Finished. Initiating DA Shutdown", v6, 2u);
  }

  mEMORY[0x277CF3A38] = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
  [mEMORY[0x277CF3A38] setTransactionMonitorDelegate:0];

  v5 = +[DADMain sharedMain];
  [v5 shutdownDAD];
}

- (void)addSignalHandler
{
  v2 = dispatch_get_global_queue(2, 0);
  v3 = 0;
  v4 = MEMORY[0x277D85D30];
  do
  {
    v5 = dword_2424F7F68[v3];
    v6 = dispatch_source_create(v4, v5, 0, v2);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __27__DADMain_addSignalHandler__block_invoke;
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
    +[DADMain sharedMain];
  }

  v3 = sharedMain_gDADMain;

  return v3;
}

void __21__DADMain_sharedMain__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedMain_gDADMain;
  sharedMain_gDADMain = v0;

  [sharedMain_gDADMain addSignalHandler];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  [v2 registerUserSwitchStakeHolder:sharedMain_gDADMain];

  [sharedMain_gDADMain addLanguageChangeHandler];
  out_token = 0;
  v3 = dispatch_get_global_queue(2, 0);
  notify_register_dispatch("com.apple.crash_mover", &out_token, v3, &__block_literal_global_32);
}

void __21__DADMain_sharedMain__block_invoke_2(int a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  if (state64)
  {
    logState(0);
  }
}

- (void)disable
{
  v2.receiver = self;
  v2.super_class = DADMain;
  [(DADisableableObject *)&v2 disable];
}

- (void)_configureAggdLogging
{
  isAppleInternalInstall = [MEMORY[0x277CF3AC8] isAppleInternalInstall];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  v6 = os_log_type_enabled(v4, v5);
  if (isAppleInternalInstall)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v4, v5, "Setting up memory usage logging", buf, 2u);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.dataaccessd.aggd", v7);
    aggdStatsQueue = self->_aggdStatsQueue;
    self->_aggdStatsQueue = v8;

    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_aggdStatsQueue);
    aggdStatsSource = self->_aggdStatsSource;
    self->_aggdStatsSource = v10;

    v12 = self->_aggdStatsSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__DADMain__configureAggdLogging__block_invoke;
    handler[3] = &unk_278D52C00;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);
    v13 = self->_aggdStatsSource;
    v14 = dispatch_time(0, 0);
    dispatch_source_set_timer(v13, v14, 0xD18C2E2800uLL, 0x34630B8A00uLL);
    dispatch_resume(self->_aggdStatsSource);
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v4, v5, "This isn't an internal install so we're not going to log memory use", buf, 2u);
    }
  }
}

void __32__DADMain__configureAggdLogging__block_invoke(uint64_t a1)
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
      __32__DADMain__configureAggdLogging__block_invoke_cold_1();
    }

    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277CF3AF0] + 5);
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
      _os_log_impl(&dword_2424DF000, v18, v19, "Current dirty memory use is %luB. Resident memory is %luB. (That took %0.04f seconds to find out)", buf, 0x20u);
    }

    ADClientPushValueForDistributionKey();
    ADClientPushValueForDistributionKey();
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v16, v17))
    {
      *buf = 0;
      _os_log_impl(&dword_2424DF000, v16, v17, "Couldn't get our own task to get memory use", buf, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 48));
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __32__DADMain__configureAggdLogging__block_invoke_39()
{
  result = sysconf(29);
  signalSources_block_invoke_pageSize = result;
  return result;
}

- (DADMain)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = DADMain;
  v2 = [(DADMain *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.dataaccessd.dadOperation", v3);
    v5 = gDADOperationQueue;
    gDADOperationQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.dataaccessd.dadHighAvailability", v6);
    v8 = gDADHighAvailabilityQueue;
    gDADHighAvailabilityQueue = v7;

    dispatch_suspend(gDADHighAvailabilityQueue);
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      isAppleInternalInstall = [MEMORY[0x277CF3AC8] isAppleInternalInstall];
      v12 = @"NON";
      if (isAppleInternalInstall)
      {
        v12 = &stru_2854C04E8;
      }

      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_2424DF000, v9, v10, "Device is a %@AppleInternal install", buf, 0xCu);
    }

    if ([MEMORY[0x277CF3AC8] CFNetworkLogging])
    {
      v13 = DALoggingwithCategory();
      if (os_log_type_enabled(v13, v10))
      {
        *buf = 0;
        _os_log_impl(&dword_2424DF000, v13, v10, "Enabling CFNetwork diagnostics", buf, 2u);
      }

      setenv("CFNETWORK_DIAGNOSTICS", "2", 1);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(NSTimer *)self->_delayedShutdownTimer invalidate];
  v3.receiver = self;
  v3.super_class = DADMain;
  [(DADMain *)&v3 dealloc];
}

@end