@interface CPLEngineSystemMonitor
+ (double)nextOverrideTimeIntervalForSystemBudgets:(unint64_t)budgets;
+ (id)descriptionForBudget:(unint64_t)budget;
+ (id)descriptionForBudgets:(unint64_t)budgets;
+ (void)enumerateSystemBudgets:(unint64_t)budgets withBlock:(id)block;
+ (void)initialize;
- (BOOL)canBoostBackgroundOperations;
- (BOOL)isDataBudgetOverriden;
- (BOOL)isNetworkConnected;
- (BOOL)isNetworkConstrained;
- (BOOL)isOnCellularOrUnknown;
- (CPLEngineLibrary)engineLibrary;
- (CPLEngineSystemMonitor)initWithEngineLibrary:(id)library;
- (double)_minimumBatteryLevelForAutoOverrideEnergyBudget;
- (unint64_t)diskPressureState;
- (unint64_t)freeDiskSpaceSize;
- (void)_attemptScheduleRecoveryOverride:(unint64_t)override withReason:(unint64_t)reason;
- (void)_permanentDataOverrideHasChanged;
- (void)_startOverridingBudget:(unint64_t)budget reason:(unint64_t)reason;
- (void)_startWatchingPermanentDataOverride;
- (void)_stopOverridingBudget:(unint64_t)budget reason:(unint64_t)reason;
- (void)_stopWatchingPermanentDataOverride;
- (void)_withSystemBudgetOverride:(id)override;
- (void)batteryLevelDidChangeWithLevel:(double)level;
- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)openWithCompletionHandler:(id)handler;
- (void)scheduledOverrideDidEnd:(id)end;
- (void)startAutomaticOverridingSystemBudgets:(unint64_t)budgets;
- (void)startOverridingSystemBudgets:(unint64_t)budgets reason:(unint64_t)reason;
- (void)startOverridingSystemBudgetsForClient:(unint64_t)client;
- (void)stopAutomaticOverridingSystemBudgets:(unint64_t)budgets;
- (void)stopOverridingSystemBudgets:(unint64_t)budgets reason:(unint64_t)reason;
- (void)stopOverridingSystemBudgetsForClient:(unint64_t)client;
- (void)watcher:(id)watcher stateDidChangeToNetworkState:(id)state;
@end

@implementation CPLEngineSystemMonitor

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (double)_minimumBatteryLevelForAutoOverrideEnergyBudget
{
  if (_minimumBatteryLevelForAutoOverrideEnergyBudget_onceToken != -1)
  {
    dispatch_once(&_minimumBatteryLevelForAutoOverrideEnergyBudget_onceToken, &__block_literal_global_21701);
  }

  return *&_minimumBatteryLevelForAutoOverrideEnergyBudget_minimumBatteryLevelForAutoOverride;
}

- (unint64_t)diskPressureState
{
  if (_shouldIgnoreLowDiskSpace)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695DD60];
    [(NSURL *)self->_volumeURL removeCachedResourceValueForKey:*MEMORY[0x1E695DD60]];
    volumeURL = self->_volumeURL;
    v12 = 0;
    v7 = [(NSURL *)volumeURL getResourceValue:&v12 forKey:v5 error:0];
    v8 = v12;
    v4 = v8;
    if (v7)
    {
      unsignedLongLongValue = [v8 unsignedLongLongValue];
      if (unsignedLongLongValue >> 29)
      {
        v3 = unsignedLongLongValue >> 30 == 0;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  engineLibrary = [(CPLEngineSystemMonitor *)self engineLibrary];
  [engineLibrary setLowDiskSpace:v3 != 0 veryLowDiskSpace:v3 == 2];

  return v3;
}

- (void)batteryLevelDidChangeWithLevel:(double)level
{
  [(CPLEngineSystemMonitor *)self _minimumBatteryLevelForAutoOverrideEnergyBudget];
  if (v5 >= level)
  {

    [(CPLEngineSystemMonitor *)self stopAutomaticOverridingSystemBudgets:2];
  }
}

void __73__CPLEngineSystemMonitor__minimumBatteryLevelForAutoOverrideEnergyBudget__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"CPLMinimumBatteryLevelForAutoOverrideSystemBudget"];
  [v1 doubleValue];
  _minimumBatteryLevelForAutoOverrideEnergyBudget_minimumBatteryLevelForAutoOverride = v2;

  if (*&_minimumBatteryLevelForAutoOverrideEnergyBudget_minimumBatteryLevelForAutoOverride == 0.0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = 134217984;
        v6 = _minimumBatteryLevelForAutoOverrideEnergyBudget_minimumBatteryLevelForAutoOverride;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEBUG, "Minimum battery level value not set or invalid: %f", &v5, 0xCu);
      }
    }

    _minimumBatteryLevelForAutoOverrideEnergyBudget_minimumBatteryLevelForAutoOverride = 0x4059000000000000;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)watcher:(id)watcher stateDidChangeToNetworkState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CPLEngineSystemMonitor_watcher_stateDidChangeToNetworkState___block_invoke;
  v11[3] = &unk_1E861B290;
  v11[4] = self;
  v12 = stateCopy;
  v7 = v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21709;
  block[3] = &unk_1E861B4E0;
  v14 = v7;
  v8 = queue;
  v9 = stateCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void __63__CPLEngineSystemMonitor_watcher_stateDidChangeToNetworkState___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ((v2[8] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        v17 = 138412290;
        v18 = v4;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Network state changed to %@", &v17, 0xCu);
      }

      v2 = *(a1 + 32);
    }

    v5 = [v2 engineLibrary];
    v6 = [*(a1 + 40) isConnected];
    v7 = *(a1 + 40);
    if (v6)
    {
      if ([v7 canUseNetwork])
      {
        v8 = [v5 feedback];
        [v8 sendFeedbackToServerIfNecessary];

        v9 = [v5 scheduler];
        [v9 noteNetworkStateDidChange];
      }

      if ([*(a1 + 40) isCellular])
      {
        v10 = [*(a1 + 40) isCellularRestricted];
      }

      else
      {
        v10 = 0;
      }

      v12 = v5;
      v13 = 1;
      v11 = 0;
    }

    else
    {
      v11 = [v7 isInAirplaneMode];
      v12 = v5;
      v13 = 0;
      v10 = 0;
    }

    [v12 setConnectedToNetwork:v13 cellularIsRestricted:v10 inAirplaneMode:v11];
    v14 = [v5 scheduler];
    v15 = [v14 predictor];
    [v15 removePredictedValueForType:@"uploadSpeed"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stopAutomaticOverridingSystemBudgets:(unint64_t)budgets
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = budgets;
  dispatch_async(queue, v4);
}

uint64_t __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke_2;
  v3[3] = &unk_1E861B100;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _withSystemBudgetOverride:v3];
}

uint64_t __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke_3;
  v6[3] = &unk_1E861FC30;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [v3 enumerateSystemBudgets:v4 withBlock:v6];
}

void __63__CPLEngineSystemMonitor_stopAutomaticOverridingSystemBudgets___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 72);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v11 = [v4 objectForKeyedSubscript:v5];

  v6 = *(*(a1 + 32) + 64);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v11 && [v8 containsObject:&unk_1F57EF848])
  {
    [v11 setDelegate:0];
    [v11 cancel];
    v9 = *(*(a1 + 32) + 72);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v9 removeObjectForKey:v10];

    [*(a1 + 32) _stopOverridingBudget:a2 reason:1];
  }
}

- (void)startAutomaticOverridingSystemBudgets:(unint64_t)budgets
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = budgets;
  dispatch_sync(queue, v4);
}

uint64_t __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke_2;
  v3[3] = &unk_1E861B100;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _withSystemBudgetOverride:v3];
}

uint64_t __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke_3;
  v6[3] = &unk_1E861FC30;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [v3 enumerateSystemBudgets:v4 withBlock:v6];
}

void __64__CPLEngineSystemMonitor_startAutomaticOverridingSystemBudgets___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 72);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v9 = [[_CPLScheduledOverride alloc] initWithBudget:a2 withReason:1 queue:*(*(a1 + 32) + 24)];
    [(_CPLScheduledOverride *)v9 setDelegate:*(a1 + 32)];
    if ([(_CPLScheduledOverride *)v9 scheduleEndOfOverride])
    {
      v7 = *(*(a1 + 32) + 72);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v7 setObject:v9 forKeyedSubscript:v8];

      [*(a1 + 32) _startOverridingBudget:a2 reason:1];
    }
  }
}

- (void)_stopWatchingPermanentDataOverride
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileslideshow.PLNotificationUnlimitedSyncOverCellularChanged", 0);
}

- (void)_startWatchingPermanentDataOverride
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _unlimitedSyncOverCellularDidChange, @"com.apple.mobileslideshow.PLNotificationUnlimitedSyncOverCellularChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  _hasPermanentDataOverride = [(CPLEngineSystemMonitor *)self _hasPermanentDataOverride];
  self->_overrideDataSystemBudgetPermanently = _hasPermanentDataOverride;
  if (_hasPermanentDataOverride)
  {

    [(CPLEngineSystemMonitor *)self _startOverridingBudget:1 reason:4];
  }
}

- (void)_permanentDataOverrideHasChanged
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CPLEngineSystemMonitor__permanentDataOverrideHasChanged__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_21709;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

_BYTE *__58__CPLEngineSystemMonitor__permanentDataOverrideHasChanged__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Permanent Data override has changed", buf, 2u);
      }

      result = *(a1 + 32);
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__CPLEngineSystemMonitor__permanentDataOverrideHasChanged__block_invoke_210;
    v4[3] = &unk_1E861A940;
    v4[4] = result;
    return [result _withSystemBudgetOverride:v4];
  }

  return result;
}

_BYTE *__58__CPLEngineSystemMonitor__permanentDataOverrideHasChanged__block_invoke_210(uint64_t a1)
{
  v2 = [*(a1 + 32) _hasPermanentDataOverride];
  result = *(a1 + 32);
  if (v2)
  {
    if ((result[80] & 1) == 0)
    {
      result = [result _startOverridingBudget:1 reason:4];
    }
  }

  else if (result[80])
  {
    result = [result _stopOverridingBudget:1 reason:4];
  }

  *(*(a1 + 32) + 80) = v2;
  return result;
}

- (void)scheduledOverrideDidEnd:(id)end
{
  endCopy = end;
  if (self->_supportsBudgetOverride)
  {
    dispatch_assert_queue_V2(self->_queue);
    budget = [endCopy budget];
    scheduledOverrides = self->_scheduledOverrides;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:budget];
    v8 = [(NSMutableDictionary *)scheduledOverrides objectForKeyedSubscript:v7];

    if (v8 == endCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__CPLEngineSystemMonitor_scheduledOverrideDidEnd___block_invoke;
      v9[3] = &unk_1E861B128;
      v10 = endCopy;
      selfCopy = self;
      v12 = budget;
      [(CPLEngineSystemMonitor *)self _withSystemBudgetOverride:v9];
    }
  }
}

uint64_t __50__CPLEngineSystemMonitor_scheduledOverrideDidEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) cancel];
  v2 = *(*(a1 + 40) + 72);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 removeObjectForKey:v3];

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(a1 + 32) reason];

  return [v5 _stopOverridingBudget:v4 reason:v6];
}

- (BOOL)isDataBudgetOverriden
{
  if (self->_supportsBudgetOverride)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__CPLEngineSystemMonitor_isDataBudgetOverriden__block_invoke;
    v5[3] = &unk_1E861A850;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __47__CPLEngineSystemMonitor_isDataBudgetOverriden__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:&unk_1F57EF848];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (void)stopOverridingSystemBudgetsForClient:(unint64_t)client
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = client;
  dispatch_sync(queue, v4);
}

uint64_t __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke_2;
  v3[3] = &unk_1E861B100;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _withSystemBudgetOverride:v3];
}

uint64_t __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke_3;
  v6[3] = &unk_1E861FC30;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [v3 enumerateSystemBudgets:v4 withBlock:v6];
}

void __63__CPLEngineSystemMonitor_stopOverridingSystemBudgetsForClient___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 72);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v11 = [v4 objectForKeyedSubscript:v5];

  v6 = *(*(a1 + 32) + 64);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v11 && [v8 containsObject:&unk_1F57EF830])
  {
    [v11 setDelegate:0];
    [v11 resetHeuristics];
    [v11 cancel];
    v9 = *(*(a1 + 32) + 72);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v9 removeObjectForKey:v10];

    [*(a1 + 32) _stopOverridingBudget:a2 reason:0];
  }
}

- (void)startOverridingSystemBudgetsForClient:(unint64_t)client
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke;
  v4[3] = &unk_1E861B100;
  v4[4] = self;
  v4[5] = client;
  dispatch_sync(queue, v4);
}

uint64_t __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke_2;
  v3[3] = &unk_1E861B100;
  v1 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v1;
  return [v4 _withSystemBudgetOverride:v3];
}

uint64_t __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke_3;
  v6[3] = &unk_1E861FC30;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [v3 enumerateSystemBudgets:v4 withBlock:v6];
}

void __64__CPLEngineSystemMonitor_startOverridingSystemBudgetsForClient___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 72);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v9 = [[_CPLScheduledOverride alloc] initWithBudget:a2 withReason:0 queue:*(*(a1 + 32) + 24)];
    [(_CPLScheduledOverride *)v9 setDelegate:*(a1 + 32)];
    if ([(_CPLScheduledOverride *)v9 scheduleEndOfOverride])
    {
      v7 = *(*(a1 + 32) + 72);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
      [v7 setObject:v9 forKeyedSubscript:v8];

      [*(a1 + 32) _startOverridingBudget:a2 reason:0];
    }
  }
}

- (void)stopOverridingSystemBudgets:(unint64_t)budgets reason:(unint64_t)reason
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CPLEngineSystemMonitor_stopOverridingSystemBudgets_reason___block_invoke;
  block[3] = &unk_1E861FEE8;
  block[4] = self;
  block[5] = budgets;
  block[6] = reason;
  dispatch_sync(queue, block);
}

uint64_t __61__CPLEngineSystemMonitor_stopOverridingSystemBudgets_reason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CPLEngineSystemMonitor_stopOverridingSystemBudgets_reason___block_invoke_2;
  v3[3] = &unk_1E861FEE8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 _withSystemBudgetOverride:v3];
}

uint64_t __61__CPLEngineSystemMonitor_stopOverridingSystemBudgets_reason___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CPLEngineSystemMonitor_stopOverridingSystemBudgets_reason___block_invoke_3;
  v7[3] = &unk_1E861FCD0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a1[4];
  v7[5] = v5;
  return [v3 enumerateSystemBudgets:v4 withBlock:v7];
}

- (void)startOverridingSystemBudgets:(unint64_t)budgets reason:(unint64_t)reason
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CPLEngineSystemMonitor_startOverridingSystemBudgets_reason___block_invoke;
  block[3] = &unk_1E861FEE8;
  block[4] = self;
  block[5] = budgets;
  block[6] = reason;
  dispatch_sync(queue, block);
}

uint64_t __62__CPLEngineSystemMonitor_startOverridingSystemBudgets_reason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__CPLEngineSystemMonitor_startOverridingSystemBudgets_reason___block_invoke_2;
  v3[3] = &unk_1E861FEE8;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 _withSystemBudgetOverride:v3];
}

uint64_t __62__CPLEngineSystemMonitor_startOverridingSystemBudgets_reason___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CPLEngineSystemMonitor_startOverridingSystemBudgets_reason___block_invoke_3;
  v7[3] = &unk_1E861FCD0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a1[4];
  v7[5] = v5;
  return [v3 enumerateSystemBudgets:v4 withBlock:v7];
}

- (void)_withSystemBudgetOverride:(id)override
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_supportsBudgetOverride)
  {
    self->_modifyingBudgetOverride = 1;
    (*(override + 2))(override, a2);
    engineLibrary = [(CPLEngineSystemMonitor *)self engineLibrary];
    transport = [engineLibrary transport];

    newBudgetsToOverride = self->_newBudgetsToOverride;
    if (newBudgetsToOverride)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLSystemMonitorOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [objc_opt_class() descriptionForBudgets:self->_newBudgetsToOverride];
          v13 = 138543362;
          v14 = v8;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Starting override for system budgets: %{public}@", &v13, 0xCu);
        }

        newBudgetsToOverride = self->_newBudgetsToOverride;
      }

      [transport setShouldOverride:1 forSystemBudgets:newBudgetsToOverride];
      self->_newBudgetsToOverride = 0;
    }

    newBudgetsToStopOverriding = self->_newBudgetsToStopOverriding;
    if (newBudgetsToStopOverriding)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = __CPLSystemMonitorOSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [objc_opt_class() descriptionForBudgets:self->_newBudgetsToStopOverriding];
          v13 = 138543362;
          v14 = v11;
          _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_DEFAULT, "Stopping override for system budgets: %{public}@", &v13, 0xCu);
        }

        newBudgetsToStopOverriding = self->_newBudgetsToStopOverriding;
      }

      [transport setShouldOverride:0 forSystemBudgets:newBudgetsToStopOverriding];
      self->_newBudgetsToStopOverriding = 0;
    }

    self->_modifyingBudgetOverride = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_stopOverridingBudget:(unint64_t)budget reason:(unint64_t)reason
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_closed && self->_supportsBudgetOverride)
  {
    if (!self->_modifyingBudgetOverride)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v22 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_1DC05A000, v22, OS_LOG_TYPE_ERROR, "Trying to modify system budget override outside of an override transaction", &v25, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSystemMonitor.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v24 lineNumber:781 description:@"Trying to modify system budget override outside of an override transaction"];

      abort();
    }

    reasonsToOverrideSystemBudget = self->_reasonsToOverrideSystemBudget;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v9 = [(NSMutableDictionary *)reasonsToOverrideSystemBudget objectForKeyedSubscript:v8];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    v11 = [v9 countForObject:v10];

    if (v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
      [v9 removeObject:v12];

      if (![v9 count])
      {
        v13 = self->_reasonsToOverrideSystemBudget;
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:budget];
        [(NSMutableDictionary *)v13 removeObjectForKey:v14];

        v15 = self->_newBudgetsToStopOverriding | budget;
        self->_newBudgetsToOverride &= ~budget;
        self->_newBudgetsToStopOverriding = v15;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [objc_opt_class() descriptionForBudget:budget];
        v18 = v17;
        if (reason - 1 > 3)
        {
          v19 = @"forced by user";
        }

        else
        {
          v19 = off_1E861FD50[reason - 1];
        }

        v25 = 138543618;
        v26 = v17;
        v27 = 2114;
        v28 = v19;
        _os_log_impl(&dword_1DC05A000, v16, OS_LOG_TYPE_ERROR, "Stopping overriding system budget for %{public}@ too many times with reason %{public}@", &v25, 0x16u);
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_startOverridingBudget:(unint64_t)budget reason:(unint64_t)reason
{
  if (!self->_closed && self->_supportsBudgetOverride)
  {
    if (!self->_modifyingBudgetOverride)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Trying to modify system budget override outside of an override transaction", buf, 2u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLEngineSystemMonitor.m"];
      [currentHandler handleFailureInMethod:a2 object:self file:v16 lineNumber:763 description:@"Trying to modify system budget override outside of an override transaction"];

      abort();
    }

    reasonsToOverrideSystemBudget = self->_reasonsToOverrideSystemBudget;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v17 = [(NSMutableDictionary *)reasonsToOverrideSystemBudget objectForKeyedSubscript:v8];

    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E696AB50]);
      v9 = self->_reasonsToOverrideSystemBudget;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:budget];
      [(NSMutableDictionary *)v9 setObject:v17 forKeyedSubscript:v10];

      v11 = self->_newBudgetsToStopOverriding & ~budget;
      self->_newBudgetsToOverride |= budget;
      self->_newBudgetsToStopOverriding = v11;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
    [v17 addObject:v12];
  }
}

- (BOOL)canBoostBackgroundOperations
{
  if (self->_allowBackgroundOperationsBoost)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 1;
    queue = self->_queue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__CPLEngineSystemMonitor_canBoostBackgroundOperations__block_invoke;
    v5[3] = &unk_1E861A850;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __54__CPLEngineSystemMonitor_canBoostBackgroundOperations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) networkState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isCellular] ^ 1;

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = +[CPLPowerAssertion hasEnoughPower];
  }
}

- (BOOL)isOnCellularOrUnknown
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__CPLEngineSystemMonitor_isOnCellularOrUnknown__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__CPLEngineSystemMonitor_isOnCellularOrUnknown__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) networkState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isCellular];
}

- (BOOL)isNetworkConstrained
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__CPLEngineSystemMonitor_isNetworkConstrained__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __46__CPLEngineSystemMonitor_isNetworkConstrained__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) networkState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isConstrained];
}

- (BOOL)isNetworkConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CPLEngineSystemMonitor_isNetworkConnected__block_invoke;
  v5[3] = &unk_1E861A850;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__CPLEngineSystemMonitor_isNetworkConnected__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) networkState];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isConnected];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E861AA50;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v51[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *MEMORY[0x1E695DD60];
  [*(*(a1 + 32) + 16) removeCachedResourceValueForKey:*MEMORY[0x1E695DD60]];
  v4 = *(*(a1 + 32) + 16);
  v46 = 0;
  v47 = 0;
  v5 = [v4 getResourceValue:&v47 forKey:v3 error:&v46];
  v6 = v47;
  v7 = v46;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_38;
  }

  v8 = [*(a1 + 32) diskPressureState];
  if (v8 <= 2)
  {
    [v2 setObject:off_1E861FD38[v8] forKeyedSubscript:@"diskPressure"];
  }

  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"diskAvailableSpace"];
  }

  v9 = *(*(a1 + 32) + 32);
  if (v9)
  {
    v10 = [v9 networkState];
    v11 = [v10 plistDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"unknown";
    }

    [v2 setObject:v13 forKeyedSubscript:@"network"];
  }

  v14 = +[CPLBatteryMonitor powerStatusPlist];
  if (v14)
  {
    [v2 setObject:v14 forKeyedSubscript:@"power"];
  }

  out_token = 0;
  state64 = 0;
  if (notify_register_check(*MEMORY[0x1E69E98C0], &out_token))
  {
    goto LABEL_14;
  }

  notify_get_state(out_token, &state64);
  notify_cancel(out_token);
  if (state64 > 29)
  {
    switch(state64)
    {
      case 0x1EuLL:
        v15 = @"Heavy";
        goto LABEL_15;
      case 0x28uLL:
        v15 = @"Trapping";
        goto LABEL_15;
      case 0x32uLL:
        v15 = @"Sleeping";
        goto LABEL_15;
    }

    goto LABEL_40;
  }

  if (state64)
  {
    if (state64 == 10)
    {
      v15 = @"Light";
      goto LABEL_15;
    }

    if (state64 == 20)
    {
      v15 = @"Moderate";
      goto LABEL_15;
    }

LABEL_40:
    v15 = @"Unknown";
    goto LABEL_15;
  }

LABEL_14:
  v15 = @"Nominal";
LABEL_15:
  [v2 setObject:v15 forKeyedSubscript:@"thermal"];
  v16 = *(a1 + 32);
  if (*(v16 + 40) == 1)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__21856;
    v42 = __Block_byref_object_dispose__21857;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__21856;
    v36 = __Block_byref_object_dispose__21857;
    v37 = 0;
    v17 = *(v16 + 64);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke_128;
    v31[3] = &unk_1E861FCA8;
    v31[5] = &v38;
    v31[6] = &v32;
    v31[4] = v16;
    [v17 enumerateKeysAndObjectsUsingBlock:v31];
    v18 = v39[5];
    if (v18)
    {
      v19 = v33[5];
      if (v19)
      {
        v50[0] = @"reasons";
        v50[1] = @"scheduledEndDates";
        v51[0] = v18;
        v51[1] = v19;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
      }

      else
      {
        v48 = @"reasons";
        v49 = v18;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      }
      v20 = ;
      [v2 setObject:v20 forKeyedSubscript:@"budgetOverrides"];
    }

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke_142;
    v28 = &unk_1E861FC80;
    v29 = *(a1 + 32);
    v30 = v2;
    [v22 enumerateSystemBudgets:18487 withBlock:&v25];

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);

    v16 = *(a1 + 32);
  }

  if (*(v16 + 81) == 1)
  {
    if (*(v16 + 82))
    {
      v23 = @"all";
    }

    else
    {
      v23 = @"foreground";
    }

    [v2 setObject:v23 forKeyedSubscript:{@"allowOperationBoot", v25, v26, v27, v28, v29}];
  }

  (*(*(a1 + 40) + 16))();

LABEL_38:
  v24 = *MEMORY[0x1E69E9840];
}

void __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke_128(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = +[CPLEngineSystemMonitor descriptionForBudget:](CPLEngineSystemMonitor, "descriptionForBudget:", [v18 unsignedIntegerValue]);
  v10 = [v5 allObjects];
  [*(*(a1[5] + 8) + 40) setObject:v10 forKeyedSubscript:v9];

  if (([v5 containsObject:&unk_1F57EF830] & 1) != 0 || objc_msgSend(v5, "containsObject:", &unk_1F57EF848))
  {
    if (!*(*(a1[6] + 8) + 40))
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v14 = [*(a1[4] + 72) objectForKeyedSubscript:v18];
    v15 = [v14 endDate];

    if (v15)
    {
      v16 = MEMORY[0x1E696AD98];
      [v15 timeIntervalSinceReferenceDate];
      v17 = [v16 numberWithDouble:?];
      [*(*(a1[6] + 8) + 40) setObject:v17 forKeyedSubscript:v9];
    }
  }
}

void __67__CPLEngineSystemMonitor_getStatusDictionaryWithCompletionHandler___block_invoke_142(uint64_t a1, uint64_t a2)
{
  if ([_CPLScheduledOverride isBudgetTypeSupportedForProgressiveOverriding:a2 withReason:0])
  {
    v20 = [_CPLScheduledOverride currentBudgetOverrideTimeIntervalStorageKeyForBudget:a2];
    v4 = _CPLSystemMonitorReadOverrideTimeIntervalFromSharedDefaults(v20) / 3600.0;
    v5 = [_CPLScheduledOverride currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:a2];
    v6 = _CPLSystemMonitorReadOverrideTimeIntervalExpiryDateFromSharedDefaults(v5);

    if (v4 > 0.0)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = *(a1 + 32);
      v9 = [objc_opt_class() descriptionForBudget:a2];
      v10 = [v7 stringWithFormat:@"%@_lastUsedBudgetOverrideTime", v9];

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.f hours", *&v4];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];

      if (v6)
      {
        v12 = MEMORY[0x1E696AEC0];
        v13 = *(a1 + 32);
        v14 = [objc_opt_class() descriptionForBudget:a2];
        v15 = [v12 stringWithFormat:@"%@_expiryDate", v14];

        v16 = MEMORY[0x1E696AEC0];
        v17 = [MEMORY[0x1E695DF00] date];
        v18 = [CPLDateFormatter stringFromDateAgo:v6 now:v17];
        v19 = [v16 stringWithFormat:@"%@", v18];
        [*(a1 + 40) setObject:v19 forKeyedSubscript:v15];
      }
    }
  }
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E861AA50;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *MEMORY[0x1E695DD60];
  [*(*(a1 + 32) + 16) removeCachedResourceValueForKey:*MEMORY[0x1E695DD60]];
  v4 = *(*(a1 + 32) + 16);
  v37 = 0;
  v38 = 0;
  v5 = [v4 getResourceValue:&v38 forKey:v3 error:&v37];
  v6 = v38;
  v7 = v37;
  if (!v5)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_23;
  }

  [v6 unsignedLongLongValue];
  if (_shouldIgnoreLowDiskSpace)
  {
    v8 = @"ignoring low disk space";
  }

  else
  {
    v9 = [*(a1 + 32) diskPressureState];
    if (v9 > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = off_1E861FD20[v9];
    }
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = NSLocalizedFileSizeDescription();
  v12 = [v10 initWithFormat:@"%@ - %@", v8, v11];
  [v2 addObject:v12];

  v13 = *(*(a1 + 32) + 32);
  if (v13)
  {
    v14 = [v13 networkState];
    v15 = [v14 description];
    [v2 addObject:v15];
  }

  v16 = +[CPLBatteryMonitor powerStatus];
  if (v16)
  {
    [v2 addObject:v16];
  }

  out_token = 0;
  state64 = 0;
  if (notify_register_check(*MEMORY[0x1E69E98C0], &out_token))
  {
    goto LABEL_13;
  }

  notify_get_state(out_token, &state64);
  notify_cancel(out_token);
  if (state64 > 29)
  {
    switch(state64)
    {
      case 0x1EuLL:
        v17 = @"Heavy";
        goto LABEL_14;
      case 0x28uLL:
        v17 = @"Trapping";
        goto LABEL_14;
      case 0x32uLL:
        v17 = @"Sleeping";
        goto LABEL_14;
    }

    goto LABEL_34;
  }

  if (state64)
  {
    if (state64 == 10)
    {
      v17 = @"Light";
      goto LABEL_14;
    }

    if (state64 == 20)
    {
      v17 = @"Moderate";
      goto LABEL_14;
    }

LABEL_34:
    v17 = @"Unknown";
    goto LABEL_14;
  }

LABEL_13:
  v17 = @"Nominal";
LABEL_14:
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"thermal level: %@", v17];
  [v2 addObject:v18];

  v19 = *(a1 + 32);
  if (*(v19 + 40) == 1)
  {
    v20 = *(v19 + 64);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke_2;
    v33[3] = &unk_1E861FC58;
    v33[4] = v19;
    v21 = v2;
    v34 = v21;
    [v20 enumerateKeysAndObjectsUsingBlock:v33];
    v22 = *(a1 + 32);
    v23 = objc_opt_class();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke_3;
    v30[3] = &unk_1E861FC80;
    v24 = v21;
    v25 = *(a1 + 32);
    v31 = v24;
    v32 = v25;
    [v23 enumerateSystemBudgets:18487 withBlock:v30];
  }

  else
  {
    [v2 addObject:@"engine does not support budget overrides"];
  }

  v26 = *(a1 + 32);
  if (*(v26 + 81) == 1)
  {
    if (*(v26 + 82))
    {
      v27 = @"allowing operations boost (including background)";
    }

    else
    {
      v27 = @"allowing operations boost";
    }

    [v2 addObject:v27];
  }

  v28 = *(a1 + 40);
  v29 = [v2 componentsJoinedByString:@"\n"];
  (*(v28 + 16))(v28, v29, 0);

LABEL_23:
}

void __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v26 = v5;
  v7 = [v5 unsignedIntegerValue];
  v8 = objc_alloc(MEMORY[0x1E696AD60]);
  v9 = [CPLEngineSystemMonitor descriptionForBudget:v7];
  v10 = [v8 initWithFormat:@"overriding %@ budget: ", v9];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 1;
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if ((v14 & 1) == 0)
        {
          [v10 appendString:{@", "}];
        }

        if ([v17 integerValue] && objc_msgSend(v17, "integerValue") != 1)
        {
          v22 = [v17 integerValue] - 1;
          v23 = @"forced by user";
          if (v22 <= 3)
          {
            v23 = off_1E861FD50[v22];
          }

          [v10 appendString:v23];
        }

        else
        {
          v18 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v26];
          v19 = [v17 integerValue] - 1;
          if (v18)
          {
            v20 = @"forced by user";
            if (v19 <= 3)
            {
              v20 = off_1E861FD50[v19];
            }

            v21 = [v18 status];
            [v10 appendFormat:@"%@ (%@)", v20, v21];
          }

          else
          {
            v24 = @"forced by user";
            if (v19 <= 3)
            {
              v24 = off_1E861FD50[v19];
            }

            [v10 appendFormat:@"%@ (no scheduled end)", v24];
          }
        }

        v14 = 0;
        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v14 = 0;
    }

    while (v13);
  }

  [*(a1 + 40) addObject:v10];
  v25 = *MEMORY[0x1E69E9840];
}

void __57__CPLEngineSystemMonitor_getStatusWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (![_CPLScheduledOverride isBudgetTypeSupportedForProgressiveOverriding:a2 withReason:0])
  {
    return;
  }

  v20 = [_CPLScheduledOverride currentBudgetOverrideTimeIntervalStorageKeyForBudget:a2];
  v4 = _CPLSystemMonitorReadOverrideTimeIntervalFromSharedDefaults(v20) / 3600.0;
  v5 = [_CPLScheduledOverride currentBudgetOverrideTimeIntervalExpiryDateStorageKeyForBudget:a2];
  v6 = _CPLSystemMonitorReadOverrideTimeIntervalExpiryDateFromSharedDefaults(v5);

  if (v4 > 0.0)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    if (v9 <= 1.0)
    {
      if (v9 >= -1.0)
      {
        v14 = &stru_1F57BD298;
        goto LABEL_10;
      }

      v10 = @"already expired %@";
    }

    else
    {
      v10 = @"expiring %@";
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [CPLDateFormatter stringFromDateAgo:v6 now:v12];
    v14 = [v11 stringWithFormat:v10, v13];

LABEL_10:
    v15 = MEMORY[0x1E696AEC0];
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = [objc_opt_class() descriptionForBudget:a2];
    v19 = [v15 stringWithFormat:@"last used budget override time interval for %@: %.f hours. %@", v18, *&v4, v14];
    [v17 addObject:v19];
  }
}

- (unint64_t)freeDiskSpaceSize
{
  v3 = *MEMORY[0x1E695DD60];
  [(NSURL *)self->_volumeURL removeCachedResourceValueForKey:*MEMORY[0x1E695DD60]];
  volumeURL = self->_volumeURL;
  v6 = 0;
  if ([(NSURL *)volumeURL getResourceValue:&v6 forKey:v3 error:0])
  {
    return [v6 unsignedLongLongValue];
  }

  else
  {
    return -1;
  }
}

- (void)closeAndDeactivate:(BOOL)deactivate completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CPLEngineSystemMonitor_closeAndDeactivate_completionHandler___block_invoke;
  v8[3] = &unk_1E861AA50;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

uint64_t __63__CPLEngineSystemMonitor_closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 32) setDelegate:0];
  [*(*(a1 + 32) + 32) stop];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [CPLBatteryMonitor setDelegate:0];
  *(*(a1 + 32) + 83) = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__CPLEngineSystemMonitor_closeAndDeactivate_completionHandler___block_invoke_2;
  v6[3] = &unk_1E861A940;
  v6[4] = v4;
  [v4 _withSystemBudgetOverride:v6];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __63__CPLEngineSystemMonitor_closeAndDeactivate_completionHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _stopWatchingPermanentDataOverride];
  *(*(a1 + 32) + 56) = 18495;
  return result;
}

- (void)openWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E861AA50;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  *(*(a1 + 32) + 81) = [v2 BOOLForKey:@"CPLAllowOperationsBoost"];

  if (*(*(a1 + 32) + 81) == 1)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    *(*(a1 + 32) + 82) = [v3 BOOLForKey:@"CPLAllowBackgroundOperationsBoost"];

    if (*(*(a1 + 32) + 82) == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = __CPLSystemMonitorOSLogDomain();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v5 = "Will boost operations, including background, when possible";
LABEL_9:
          _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = __CPLSystemMonitorOSLogDomain();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "Will boost operations when possible";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  v6 = [[CPLNetworkWatcher alloc] initWithQueue:*(*(a1 + 32) + 24)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  [*(*(a1 + 32) + 32) setDelegate:?];
  [*(*(a1 + 32) + 32) start];
  [CPLBatteryMonitor setDelegate:*(a1 + 32)];
  +[CPLBatteryMonitor startMonitoringPowerEvents];
  *(*(a1 + 32) + 83) = 1;
  v9 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke_14;
  v11[3] = &unk_1E861A940;
  v11[4] = v9;
  [v9 _withSystemBudgetOverride:v11];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke_14(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 56) = 18495;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        *(*(a1 + 32) + 56) &= ~[*(*(&v12 + 1) + 8 * v6++) unsignedIntegerValue];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _startWatchingPermanentDataOverride];
  v7 = *(a1 + 32);
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E861FC30;
  v11[4] = *(a1 + 32);
  result = [v8 enumerateSystemBudgets:18495 withBlock:v11];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __52__CPLEngineSystemMonitor_openWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _attemptScheduleRecoveryOverride:a2 withReason:0];
  v4 = *(a1 + 32);

  return [v4 _attemptScheduleRecoveryOverride:a2 withReason:1];
}

- (void)_attemptScheduleRecoveryOverride:(unint64_t)override withReason:(unint64_t)reason
{
  if (self->_supportsBudgetOverride)
  {
    scheduledOverrides = self->_scheduledOverrides;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v9 = [(NSMutableDictionary *)scheduledOverrides objectForKeyedSubscript:v8];

    if (!v9)
    {
      v12 = [[_CPLScheduledOverride alloc] initWithBudget:override withReason:reason queue:self->_queue];
      if ([(_CPLScheduledOverride *)v12 scheduleEndFromPersistedOverride])
      {
        [(_CPLScheduledOverride *)v12 setDelegate:self];
        v10 = self->_scheduledOverrides;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:override];
        [(NSMutableDictionary *)v10 setObject:v12 forKeyedSubscript:v11];

        [(CPLEngineSystemMonitor *)self _startOverridingBudget:override reason:reason];
      }
    }
  }
}

- (CPLEngineSystemMonitor)initWithEngineLibrary:(id)library
{
  libraryCopy = library;
  v16.receiver = self;
  v16.super_class = CPLEngineSystemMonitor;
  v5 = [(CPLEngineSystemMonitor *)&v16 init];
  if (v5)
  {
    clientLibraryBaseURL = [libraryCopy clientLibraryBaseURL];
    v7 = [clientLibraryBaseURL copy];
    volumeURL = v5->_volumeURL;
    v5->_volumeURL = v7;

    v9 = dispatch_queue_create("com.apple.cpl.systemmonitor", 0);
    queue = v5->_queue;
    v5->_queue = v9;

    objc_storeWeak(&v5->_engineLibrary, libraryCopy);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    reasonsToOverrideSystemBudget = v5->_reasonsToOverrideSystemBudget;
    v5->_reasonsToOverrideSystemBudget = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scheduledOverrides = v5->_scheduledOverrides;
    v5->_scheduledOverrides = v13;

    v5->_hasSetupBatteryMonitor = 0;
    v5->_supportsBudgetOverride = [libraryCopy isSystemLibrary];
  }

  return v5;
}

+ (double)nextOverrideTimeIntervalForSystemBudgets:(unint64_t)budgets
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x40AC200000000000;
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CPLEngineSystemMonitor_nextOverrideTimeIntervalForSystemBudgets___block_invoke;
  v7[3] = &unk_1E861FCF8;
  v7[4] = &v8;
  [v4 enumerateSystemBudgets:budgets withBlock:v7];
  v5 = fmin(v9[3], 86400.0);
  v9[3] = v5;
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __67__CPLEngineSystemMonitor_nextOverrideTimeIntervalForSystemBudgets___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [_CPLScheduledOverride nextTimeIntervalForOverridingBudget:a2 withReason:0];
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) >= v4)
  {
    v4 = *(v5 + 24);
  }

  *(v5 + 24) = v4;
  return result;
}

+ (void)enumerateSystemBudgets:(unint64_t)budgets withBlock:(id)block
{
  v6 = 1;
  do
  {
    if ((v6 & budgets) != 0)
    {
      (*(block + 2))(block, v6);
    }

    v7 = v6 >> 5;
    v6 *= 2;
  }

  while (v7 < 0x121);
}

+ (id)descriptionForBudgets:(unint64_t)budgets
{
  if (budgets)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __48__CPLEngineSystemMonitor_descriptionForBudgets___block_invoke;
    v12 = &unk_1E861FCD0;
    v13 = v5;
    selfCopy = self;
    v6 = v5;
    [self enumerateSystemBudgets:budgets withBlock:&v9];
    v7 = [v6 componentsJoinedByString:{@", ", v9, v10, v11, v12}];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

void __48__CPLEngineSystemMonitor_descriptionForBudgets___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) descriptionForBudget:a2];
  [v2 addObject:v3];
}

+ (id)descriptionForBudget:(unint64_t)budget
{
  if (budget > 15)
  {
    if (budget <= 2047)
    {
      if (budget == 16)
      {
        budget = @"Low Data Mode";
        goto LABEL_25;
      }

      if (budget == 32)
      {
        budget = @"Low Power Mode";
        goto LABEL_25;
      }
    }

    else
    {
      switch(budget)
      {
        case 0x800uLL:
          budget = @"Thermal Moderate";
          goto LABEL_25;
        case 0x4000uLL:
          budget = @"All Other";
          goto LABEL_25;
        case 0x4837uLL:
          budget = @"All";
          goto LABEL_25;
      }
    }
  }

  else if (budget <= 1)
  {
    if (!budget)
    {
      budget = @"None";
      goto LABEL_25;
    }

    if (budget == 1)
    {
      budget = @"Data";
      goto LABEL_25;
    }
  }

  else
  {
    switch(budget)
    {
      case 2uLL:
        budget = @"Energy";
        goto LABEL_25;
      case 4uLL:
        budget = @"SignificantWork";
        goto LABEL_25;
      case 8uLL:
        budget = @"Foreground";
        goto LABEL_25;
    }
  }

  budget = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"???(0x%lx)", budget];
LABEL_25:

  return budget;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    _shouldIgnoreLowDiskSpace = [standardUserDefaults BOOLForKey:@"CPLShouldIgnoreLowDiskSpace"];
  }
}

@end