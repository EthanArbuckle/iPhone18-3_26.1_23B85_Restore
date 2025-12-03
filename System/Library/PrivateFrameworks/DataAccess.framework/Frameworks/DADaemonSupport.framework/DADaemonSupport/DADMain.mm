@interface DADMain
+ (id)sharedMain;
- (DADMain)init;
- (void)_boostConnectedActivityPriority;
- (void)_evaluateConnectedStartupActivityStatus;
- (void)_forceShutdownDaemonOnLogoutInTimeInterval:(int)interval;
- (void)_forceShutdownTimerFired:(id)fired;
- (void)_shutdownDaemon;
- (void)addLanguageChangeHandler;
- (void)addSignalHandler;
- (void)addToOperationsQueueDisabledCheckAndGoBlock:(id)block wrappedBlock:(id)wrappedBlock;
- (void)agentsStarted;
- (void)boostConnectedActivityPriority;
- (void)dealloc;
- (void)didFinishAllXPCTransactions;
- (void)disable;
- (void)waitForSystemAvailability;
- (void)willSwitchUser;
- (void)xpc_checkin;
@end

@implementation DADMain

- (void)_shutdownDaemon
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Initiating DA Shutdown...", buf, 2u);
  }

  v5 = +[DADAccessManager sharedManager];
  [v5 disable];

  [(DADMain *)self disable];
  [(DADMain *)self addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_1];
  *buf = 0;
  v8 = buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  selfCopy = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__DADMain__shutdownDaemon__block_invoke_5;
  v6[3] = &unk_278F1D290;
  v6[4] = buf;
  [(DADMain *)selfCopy addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:v6];
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
          _os_log_impl(&dword_248524000, v9, v6, "UserManagementFramework: Ending Switch Task For %@", buf, 0xCu);
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
  v13 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v12, v13))
  {
    v15[0] = 67109120;
    v15[1] = interval;
    _os_log_impl(&dword_248524000, v12, v13, "Add Force Logout Timer in %d seconds", v15, 8u);
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
  v10[3] = &unk_278F1D2B8;
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
  v3[3] = &unk_278F1D2B8;
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
      v9 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        v10 = "EAS Accounts Found. Forcing Logout without manual sync";
LABEL_16:
        _os_log_impl(&dword_248524000, v8, v9, v10, buf, 2u);
      }
    }

    else
    {
      userSwitchTasks = [(DADMain *)self userSwitchTasks];
      v12 = [userSwitchTasks count];

      if (v12 < 2)
      {
        mEMORY[0x277D037F8] = [MEMORY[0x277D037F8] sharedTransactionMonitor];
        transactionCount = [mEMORY[0x277D037F8] transactionCount];

        v15 = DALoggingwithCategory();
        v8 = v15;
        if (transactionCount < 1)
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
            mEMORY[0x277D037F8]2 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
            *buf = 67109120;
            transactionCount2 = [mEMORY[0x277D037F8]2 transactionCount];
            _os_log_impl(&dword_248524000, v8, v16, "UserManagementFramework: Creating Switch Tasks For Pending Transcation Count %d", buf, 8u);
          }

          v8 = [MEMORY[0x277D77C20] taskWithName:@"DA-Blocking Task" reason:@"LogoutReceived" forBundleID:@"com.apple.dataaccessd"];
          [v8 begin];
          v21 = v8;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
          [(DADMain *)self setUserSwitchTasks:v18];

          mEMORY[0x277D037F8]3 = [MEMORY[0x277D037F8] sharedTransactionMonitor];
          [mEMORY[0x277D037F8]3 setTransactionMonitorDelegate:self];

          [(DADMain *)self _forceShutdownDaemonOnLogoutInTimeInterval:30];
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
    _os_log_impl(&dword_248524000, v2, v3, "All Transactions Finished. Initiating DA Shutdown", v6, 2u);
  }

  mEMORY[0x277D037F8] = [MEMORY[0x277D037F8] sharedTransactionMonitor];
  [mEMORY[0x277D037F8] setTransactionMonitorDelegate:0];

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
    v5 = dword_248561180[v3];
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

uint64_t __21__DADMain_sharedMain__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedMain_gDADMain;
  sharedMain_gDADMain = v0;

  [sharedMain_gDADMain addSignalHandler];
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  [v2 registerUserSwitchStakeHolder:sharedMain_gDADMain];

  [sharedMain_gDADMain addLanguageChangeHandler];
  v3 = dataaccess_get_global_queue();
  CalAddStateCaptureBlock();

  v4 = sharedMain_gDADMain;

  return [v4 xpc_checkin];
}

- (void)waitForSystemAvailability
{
  if (DAMigrationIsNeeded())
  {
    v2 = DALoggingwithCategory();
    v3 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v2, v3))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v2, v3, "Dataaccess Migrator Performing Synchronous Migration", buf, 2u);
    }

    DMPerformMigrationReturningAfterPlugin();
    v4 = DALoggingwithCategory();
    if (os_log_type_enabled(v4, v3))
    {
      *v5 = 0;
      _os_log_impl(&dword_248524000, v4, v3, "Dataaccess Migrator Done Synchronous Migration. Updating Version", v5, 2u);
    }

    DAUpdateMigrationVersion();
  }
}

- (void)disable
{
  v2.receiver = self;
  v2.super_class = DADMain;
  [(DADisableableObject *)&v2 disable];
}

- (DADMain)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = DADMain;
  v2 = [(DADMain *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.dataaccessd.dadOperation", 0);
    v4 = gDADOperationQueue;
    gDADOperationQueue = v3;

    v5 = dispatch_queue_create("com.apple.dataaccessd.dadHighAvailability", 0);
    v6 = gDADHighAvailabilityQueue;
    gDADHighAvailabilityQueue = v5;

    dispatch_suspend(gDADHighAvailabilityQueue);
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      isAppleInternalInstall = [MEMORY[0x277D03910] isAppleInternalInstall];
      v10 = @"NON";
      if (isAppleInternalInstall)
      {
        v10 = &stru_285AC0920;
      }

      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_248524000, v7, v8, "Device is a %@AppleInternal install", buf, 0xCu);
    }

    if ([MEMORY[0x277D03910] CFNetworkLogging])
    {
      v11 = DALoggingwithCategory();
      if (os_log_type_enabled(v11, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v11, v8, "Enabling CFNetwork diagnostics", buf, 2u);
      }

      setenv("CFNETWORK_DIAGNOSTICS", "2", 1);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [MEMORY[0x277D03760] endDailyAnalyticsReporter];
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
  v6.super_class = DADMain;
  [(DADMain *)&v6 dealloc];
}

- (void)xpc_checkin
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_agentsStarted name:@"DADAgentsStartedNotification" object:0];

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__DADMain_xpc_checkin__block_invoke;
  handler[3] = &unk_278F1CEA8;
  handler[4] = self;
  xpc_activity_register("com.apple.dataaccess.connected", v4, handler);
}

void __22__DADMain_xpc_checkin__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  state = xpc_activity_get_state(v4);
  os_unfair_lock_lock(&_connectedLock);
  objc_storeStrong(&_connectedActivity, a2);
  if (state == 2)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v6, v7))
    {
      *v8 = 0;
      _os_log_impl(&dword_248524000, v6, v7, "DA launched on network connectivity", v8, 2u);
    }

    [*(a1 + 32) _evaluateConnectedStartupActivityStatus];
  }

  else if (!state && _boostConnectedPriority == 1)
  {
    [*(a1 + 32) _boostConnectedActivityPriority];
  }

  os_unfair_lock_unlock(&_connectedLock);
}

- (void)agentsStarted
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Agents have completed their first start after launch.", v6, 2u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"DADAgentsStartedNotification" object:0];

  os_unfair_lock_lock(&_connectedLock);
  _startupComplete = 1;
  [(DADMain *)self _evaluateConnectedStartupActivityStatus];
  os_unfair_lock_unlock(&_connectedLock);
}

- (void)_evaluateConnectedStartupActivityStatus
{
  if (_connectedActivity)
  {
    if (_startupComplete == 1)
    {
      xpc_activity_set_state(_connectedActivity, 5);
      v3 = _connectedActivity;
      _connectedActivity = 0;

      v4 = _connectedQueue;
      _connectedQueue = 0;

      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 0;
        v7 = "DA launched on network connectivity - DONE";
LABEL_8:
        _os_log_impl(&dword_248524000, v5, v6, v7, buf, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (xpc_activity_should_defer(_connectedActivity))
    {
      xpc_activity_set_state(_connectedActivity, 3);
      v5 = DALoggingwithCategory();
      v6 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v5, v6))
      {
        *buf = 0;
        v7 = "DA launched on network connectivity - asked to defer, deferring now";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    if (!_connectedQueue)
    {
      v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9 = dispatch_queue_create("com.apple.dataaccess.connected", v8);
      v10 = _connectedQueue;
      _connectedQueue = v9;
    }

    v11 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DADMain__evaluateConnectedStartupActivityStatus__block_invoke;
    block[3] = &unk_278F1CDC0;
    block[4] = self;
    dispatch_after(v11, _connectedQueue, block);
  }
}

void __50__DADMain__evaluateConnectedStartupActivityStatus__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&_connectedLock);
  [*(a1 + 32) _evaluateConnectedStartupActivityStatus];

  os_unfair_lock_unlock(&_connectedLock);
}

- (void)boostConnectedActivityPriority
{
  os_unfair_lock_lock(&_connectedLock);
  if ((_boostConnectedPriority & 1) == 0 && (_startupComplete & 1) == 0)
  {
    v3 = DALoggingwithCategory();
    v4 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v3, v4))
    {
      *v5 = 0;
      _os_log_impl(&dword_248524000, v3, v4, "Requesting expedited handling of connected activity", v5, 2u);
    }

    _boostConnectedPriority = 1;
    [(DADMain *)self _boostConnectedActivityPriority];
  }

  os_unfair_lock_unlock(&_connectedLock);
}

- (void)_boostConnectedActivityPriority
{
  v2 = _connectedActivity;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_248524000, v3, v4, "Requesting connected activity run with priority utility", v6, 2u);
    }

    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86368], 1);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 1);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86388], 10);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D863A0], 0);
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_int64(v3, *MEMORY[0x277D86270], 5);
    xpc_activity_set_criteria(_connectedActivity, v3);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Connected activity hasn't been created yet; can't boost priority yet.", buf, 2u);
  }
}

@end