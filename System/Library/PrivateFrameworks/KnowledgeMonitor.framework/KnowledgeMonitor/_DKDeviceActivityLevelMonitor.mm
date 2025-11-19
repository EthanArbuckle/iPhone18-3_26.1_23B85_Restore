@interface _DKDeviceActivityLevelMonitor
+ (id)_eventWithState:(unint64_t)a3;
+ (void)initialize;
- (void)deactivate;
- (void)dealloc;
- (void)handleUserActivity:(int)a3;
- (void)setLastActivityDate:(id)a3;
- (void)start;
- (void)stop;
- (void)updateActivityDateAndInUseState:(unint64_t)a3;
- (void)updateActivityInUseState:(unint64_t)a3;
- (void)updatePerformanceThrottleStatusWithLevel:(unint64_t)a3;
@end

@implementation _DKDeviceActivityLevelMonitor

+ (void)initialize
{
  v2 = os_log_create("com.apple.coreduet.monitors", "_DKDeviceActivityLevelMonitor");
  v3 = _log;
  _log = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (void)dealloc
{
  [(_DKDeviceActivityLevelMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKDeviceActivityLevelMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithState:(unint64_t)a3
{
  v3 = [MEMORY[0x277CFE148] withValue:a3];
  v4 = MEMORY[0x277CFE1D8];
  v5 = [MEMORY[0x277CFE298] deviceActivityLevelStream];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v4 eventWithStream:v5 startDate:v6 endDate:v7 value:v3];

  return v8;
}

- (void)setLastActivityDate:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSinceDate:v6];
  if (v7 <= 0.0)
  {
    v9 = self->_lastSetActiveDate;
    v10 = v9;
    if (!v9 || ([(NSDate *)v9 timeIntervalSinceDate:v6], v11 > 0.0))
    {
      v12 = [MEMORY[0x277CBEAA8] distantPast];

      v10 = v12;
    }

    [v10 timeIntervalSinceDate:v5];
    if (v13 <= 0.0)
    {
      v15 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:self->_lastUseDate];
      v16 = v15;
      if (!v15 || ([v15 timeIntervalSinceDate:v6], v17 > 0.0))
      {
        v18 = [MEMORY[0x277CBEAA8] distantPast];

        v16 = v18;
      }

      [v16 timeIntervalSinceDate:v5];
      if (v19 >= 0.01)
      {
        v20 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_DEBUG))
        {
          [(_DKDeviceActivityLevelMonitor *)v5 setLastActivityDate:v10, v20];
        }
      }

      else
      {
        [(_CDLocalContext *)self->_context setObject:v5 forKeyedSubscript:self->_lastUseDate];
        objc_storeStrong(&self->_lastSetActiveDate, a3);
      }
    }

    else
    {
      v14 = _log;
      if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_22595A000, v14, OS_LOG_TYPE_DEFAULT, "New last-set date (%@) is earlier than the previous set date (%@). Keeping newer date.", &v22, 0x16u);
      }
    }
  }

  else
  {
    v8 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v5;
      _os_log_impl(&dword_22595A000, v8, OS_LOG_TYPE_DEFAULT, "New active date (%@) is in the future. Ignoring.", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v47[4] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = _DKDeviceActivityLevelMonitor;
  if ([(_DKMonitor *)&v46 instantMonitorNeedsActivation])
  {
    self->_enabled = 1;
    v3 = [MEMORY[0x277CFE338] keyPathForLastUseDate];
    lastUseDate = self->_lastUseDate;
    self->_lastUseDate = v3;

    v5 = [MEMORY[0x277CFE338] keyPathForInUseStatus];
    inUseStatus = self->_inUseStatus;
    self->_inUseStatus = v5;

    v7 = [MEMORY[0x277CFE318] userContext];
    context = self->_context;
    self->_context = v7;

    v9 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:self->_lastUseDate];
    v10 = v9;
    if (!v9)
    {
      v10 = [MEMORY[0x277CBEAA8] distantPast];
    }

    objc_storeStrong(&self->_lastSetActiveDate, v10);
    if (!v9)
    {
    }

    v11 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:self->_inUseStatus];
    v12 = [v11 unsignedIntegerValue];
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    self->_lastInUseStatus = v13;

    self->_currentInUseStatus = self->_lastInUseStatus;
    v14 = [MEMORY[0x277CFE358] keyPathWithKey:@"/charging/topOffCheckpoint"];
    keyPathForDeviceToppingOff = self->_keyPathForDeviceToppingOff;
    self->_keyPathForDeviceToppingOff = v14;

    v16 = [MEMORY[0x277CFE358] keyPathWithKey:@"/system/powerLimitsImposed"];
    keyPathForReducedPerfStateStatus = self->_keyPathForReducedPerfStateStatus;
    self->_keyPathForReducedPerfStateStatus = v16;

    v18 = MEMORY[0x277CFE360];
    v19 = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
    v47[0] = v19;
    v20 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
    v47[1] = v20;
    v21 = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
    v22 = self->_keyPathForDeviceToppingOff;
    v47[2] = v21;
    v47[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v24 = [v18 predicateForChangeAtKeyPaths:v23];

    v25 = self->_context;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __38___DKDeviceActivityLevelMonitor_start__block_invoke;
    v45[3] = &unk_27856F9C8;
    v45[4] = self;
    v26 = [MEMORY[0x277CFE350] localNonWakingRegistrationWithIdentifier:@"com.apple.dkc.reducedPerf" contextualPredicate:v24 callback:v45];
    [(_CDLocalContext *)v25 registerCallback:v26];

    block[6] = 0;
    v44 = 0;
    if (!IOPMGetUserActivityLevel())
    {
      v27 = [(_DKMonitor *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38___DKDeviceActivityLevelMonitor_start__block_invoke_3;
      block[3] = &unk_27856F588;
      block[4] = self;
      block[5] = v44;
      dispatch_sync(v27, block);
    }

    v28 = [(_DKMonitor *)self queue];
    v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v28);
    debounceTimer = self->_debounceTimer;
    self->_debounceTimer = v29;

    dispatch_source_set_timer(self->_debounceTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v31 = self->_debounceTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38___DKDeviceActivityLevelMonitor_start__block_invoke_4;
    handler[3] = &unk_27856F060;
    handler[4] = self;
    dispatch_source_set_event_handler(v31, handler);
    dispatch_resume(self->_debounceTimer);
    v32 = [@"com.apple.coreaudio.borealisTrigger" UTF8String];
    v33 = [(_DKMonitor *)self queue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __38___DKDeviceActivityLevelMonitor_start__block_invoke_5;
    v41[3] = &unk_27856F408;
    v41[4] = self;
    notify_register_dispatch(v32, &self->_siriToken, v33, v41);

    v34 = [(_DKMonitor *)self queue];
    self->_userActivityNotificationHandle = IOPMScheduleUserActivityLevelNotificationWithTimeout();

    v35 = BiomeLibrary();
    v36 = [v35 Activity];
    v37 = [v36 Level];
    v38 = [v37 source];
    bmSource = self->_bmSource;
    self->_bmSource = v38;
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKDeviceActivityLevelMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKDeviceActivityLevelMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  if (self->_userActivityNotificationHandle)
  {
    IOPMUnregisterNotification();
    self->_userActivityNotificationHandle = 0;
  }

  siriToken = self->_siriToken;
  if (siriToken)
  {
    notify_cancel(siriToken);
    self->_siriToken = 0;
  }

  self->_enabled = 0;
  self->_initialized = 0;
}

- (void)handleUserActivity:(int)a3
{
  state64 = 0;
  if (!notify_get_state(a3, &state64))
  {
    [(_DKDeviceActivityLevelMonitor *)self updateActivityInUseState:state64 == 0];
    v4 = [MEMORY[0x277CBEAA8] date];
    [(_DKDeviceActivityLevelMonitor *)self setLastActivityDate:v4];
  }
}

- (void)updateActivityInUseState:(unint64_t)a3
{
  if (self->_enabled && (!self->_initialized || self->_lastInUseStatus != a3))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [(_CDLocalContext *)self->_context setObject:v5 forKeyedSubscript:self->_inUseStatus];

    self->_lastInUseStatus = a3;
    self->_initialized = 1;
    v6 = [_DKDeviceActivityLevelMonitor _eventWithState:a3];
    [(_DKMonitor *)self setCurrentEvent:v6 inferHistoricalState:1];

    v7 = objc_alloc(MEMORY[0x277CF0FA8]);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v9 = [v7 initWithInUseStatus:v8];

    [(BMSource *)self->_bmSource sendEvent:v9];
  }
}

- (void)updateActivityDateAndInUseState:(unint64_t)a3
{
  v3 = a3;
  [(_DKDeviceActivityLevelMonitor *)self updateActivityInUseState:?];
  [(_DKDeviceActivityLevelMonitor *)self updatePerformanceThrottleStatusWithLevel:self->_lastInUseStatus];
  v5 = [MEMORY[0x277CBEAA8] date];
  v9 = v5;
  if ((v3 & 0xC) != 0)
  {
    [(_DKDeviceActivityLevelMonitor *)self setLastActivityDate:v5];
  }

  else
  {
    v6 = CACurrentMediaTime();
    BKSHIDServicesLastUserEventTime();
    v8 = [v9 dateByAddingTimeInterval:-(v6 - v7)];
    [(_DKDeviceActivityLevelMonitor *)self setLastActivityDate:v8];
  }
}

- (void)updatePerformanceThrottleStatusWithLevel:(unint64_t)a3
{
  v40 = *MEMORY[0x277D85DE8];
  context = self->_context;
  v6 = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v7 = [(_CDLocalContext *)context objectForKeyedSubscript:v6];

  v8 = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if (!v10)
  {
LABEL_5:
    v17 = 0;
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CFE338] batteryAdapterIsWirelessKey];
  v12 = [v7 objectForKeyedSubscript:v11];
  v13 = [v12 BOOLValue];

  v14 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:self->_keyPathForDeviceToppingOff];
  v15 = [v14 unsignedIntegerValue];

  if ((v15 - 5) <= 1)
  {
    v16 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      LOWORD(v31[0]) = 0;
      _os_log_impl(&dword_22595A000, v16, OS_LOG_TYPE_INFO, "Device Topping Off. Reduce perf", v31, 2u);
    }

    goto LABEL_5;
  }

  v17 = v13 ^ 1;
LABEL_7:
  v18 = self->_context;
  v19 = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
  v20 = [(_CDLocalContext *)v18 objectForKeyedSubscript:v19];
  v21 = [v20 BOOLValue];

  v22 = self->_context;
  v23 = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  v24 = [(_CDLocalContext *)v22 objectForKeyedSubscript:v23];
  v25 = [v24 BOOLValue];

  if (a3)
  {
    v26 = 1;
  }

  else
  {
    v26 = v17;
  }

  v27 = (((v26 | v21) | v25) & 1) == 0;
  v28 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    v31[0] = 67110144;
    v31[1] = a3 != 0;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v21 & 1;
    v36 = 1024;
    v37 = v25 & 1;
    v38 = 1024;
    v39 = v27;
    _os_log_impl(&dword_22595A000, v28, OS_LOG_TYPE_INFO, "Active: %u | Plugged In : %u | Screen On: %u | CarPlay Active: %u | LIMITS IMPOSED: %u", v31, 0x20u);
  }

  if (!self->_limitsInitialized || self->_limitsImposed != v27)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [(_CDLocalContext *)self->_context setObject:v29 forKeyedSubscript:self->_keyPathForReducedPerfStateStatus];

    self->_limitsImposed = v27;
    self->_limitsInitialized = 1;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)setLastActivityDate:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_22595A000, log, OS_LOG_TYPE_DEBUG, "New active date (%@) is not sufficiently newer than the previous date (%@).", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end