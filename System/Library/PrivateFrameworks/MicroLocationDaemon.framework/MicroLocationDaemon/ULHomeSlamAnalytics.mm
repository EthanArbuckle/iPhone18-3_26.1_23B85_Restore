@interface ULHomeSlamAnalytics
+ (id)shared;
- (ULHomeSlamAnalytics)init;
- (id)_createBGTRequest;
- (uint64_t)logEventAcceleratedTriggerChanged:(uint64_t)a3 AtTimestamp:(int)a4;
- (uint64_t)logEventDaemonStartedAtTimestamp:(void *)a1;
- (uint64_t)logEventEnterHomeLOIAtTimestamp:(void *)a1;
- (uint64_t)logEventExitHomeLOIAtTimestamp:(void *)a1;
- (uint64_t)logEventMiLoEnabled:(uint64_t)a3 AtTimestamp:(int)a4;
- (uint64_t)logEventRequireIsLowLatencyChanged:(uint64_t)a3 AtTimestamp:(int)a4;
- (uint64_t)logEventScanEventGeneratedAfterDisplayOnAtTimeStamp:(void *)a1;
- (uint64_t)logEventScreenOffAtTimestamp:(void *)a1;
- (uint64_t)logEventScreenOnAtTimestamp:(void *)a1;
- (uint64_t)logEventSleepStateRegisterAtTimestamp:(void *)a1;
- (uint64_t)logSleepStateEvent:(uint64_t)a3 atTimestamp:(int)a4;
- (void)_logEventType:(uint64_t)a3 atTimestamp:(__int16)a4;
- (void)_registerForBackgroundTask;
- (void)_runStopDetectionAnalyticsTask;
- (void)_unregisterForBackgroundTask;
- (void)dealloc;
- (void)resetDependencies;
- (void)setDependenciesAndRegisterToBackgroundTaskWithDB:(ULDatabaseStoreInterface *)a3 environment:(id)a4;
@end

@implementation ULHomeSlamAnalytics

+ (id)shared
{
  if (ULSettings::get<ULSettings::LogOdometryAnalyticsEnabled>())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ULHomeSlamAnalytics_shared__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[ULHomeSlamAnalytics shared]::onceToken != -1)
    {
      dispatch_once(&+[ULHomeSlamAnalytics shared]::onceToken, block);
    }

    v3 = +[ULHomeSlamAnalytics shared]::sharedInstance;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __29__ULHomeSlamAnalytics_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = +[ULHomeSlamAnalytics shared]::sharedInstance;
  +[ULHomeSlamAnalytics shared]::sharedInstance = v1;
}

- (ULHomeSlamAnalytics)init
{
  v5.receiver = self;
  v5.super_class = ULHomeSlamAnalytics;
  v2 = [(ULHomeSlamAnalytics *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [(ULHomeSlamAnalytics *)v2 setSleepWakeEventsQueue:v3];
  }

  return v2;
}

- (void)setDependenciesAndRegisterToBackgroundTaskWithDB:(ULDatabaseStoreInterface *)a3 environment:(id)a4
{
  v7 = a4;
  v6 = [v7 queue];
  dispatch_assert_queue_V2(v6);

  [(ULHomeSlamAnalytics *)self setDbStore:a3];
  [(ULHomeSlamAnalytics *)self setEnvironment:v7];
  [(ULHomeSlamAnalytics *)self _registerForBackgroundTask];
  [(ULHomeSlamAnalytics *)self setDependenciesSet:1];
}

- (void)resetDependencies
{
  v3 = [(ULHomeSlamAnalytics *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  [(ULHomeSlamAnalytics *)self setDbStore:0];
  [(ULHomeSlamAnalytics *)self setEnvironment:0];
  [(ULHomeSlamAnalytics *)self _unregisterForBackgroundTask];

  [(ULHomeSlamAnalytics *)self setDependenciesSet:0];
}

- (void)dealloc
{
  [(ULHomeSlamAnalytics *)self _unregisterForBackgroundTask];
  v3.receiver = self;
  v3.super_class = ULHomeSlamAnalytics;
  [(ULHomeSlamAnalytics *)&v3 dealloc];
}

- (uint64_t)logEventDaemonStartedAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:4 atTimestamp:a2];
}

- (uint64_t)logEventScreenOnAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:0 atTimestamp:a2];
}

- (uint64_t)logEventScreenOffAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:1 atTimestamp:a2];
}

- (uint64_t)logEventEnterHomeLOIAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:5 atTimestamp:a2];
}

- (uint64_t)logEventExitHomeLOIAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:6 atTimestamp:a2];
}

- (uint64_t)logEventSleepStateRegisterAtTimestamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:7 atTimestamp:a2];
}

- (uint64_t)logSleepStateEvent:(uint64_t)a3 atTimestamp:(int)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [a1 environment];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

  if (a4 > 29)
  {
    switch(a4)
    {
      case 30:
        v9 = 11;
        goto LABEL_22;
      case 40:
        v9 = 12;
        goto LABEL_22;
      case 50:
        v9 = 13;
        goto LABEL_22;
    }

    goto LABEL_11;
  }

  if (!a4)
  {
LABEL_19:
    v9 = 8;
    goto LABEL_22;
  }

  if (a4 == 10)
  {
    v9 = 9;
    goto LABEL_22;
  }

  if (a4 != 20)
  {
LABEL_11:
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics handleSleepWakeMonitorEvent:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = a4;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:received unknown ULSleepWakeState value, state:%{public}d}", &v14, 0x18u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics logSleepStateEvent:atTimestamp:];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = a4;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "received unknown ULSleepWakeState value", "{msg%{public}.0s:received unknown ULSleepWakeState value, state:%{public}d}", &v14, 0x18u);
    }

    goto LABEL_19;
  }

  v9 = 10;
LABEL_22:
  result = [a1 _logEventType:v9 atTimestamp:a2];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)logEventRequireIsLowLatencyChanged:(uint64_t)a3 AtTimestamp:(int)a4
{
  v7 = [a1 environment];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

  if (a4)
  {
    v9 = 14;
  }

  else
  {
    v9 = 15;
  }

  return [a1 _logEventType:v9 atTimestamp:a2];
}

- (uint64_t)logEventMiLoEnabled:(uint64_t)a3 AtTimestamp:(int)a4
{
  v7 = [a1 environment];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

  if (a4)
  {
    v9 = 18;
  }

  else
  {
    v9 = 19;
  }

  return [a1 _logEventType:v9 atTimestamp:a2];
}

- (uint64_t)logEventAcceleratedTriggerChanged:(uint64_t)a3 AtTimestamp:(int)a4
{
  v7 = [a1 environment];
  v8 = [v7 queue];
  dispatch_assert_queue_V2(v8);

  if (a4)
  {
    v9 = 16;
  }

  else
  {
    v9 = 17;
  }

  return [a1 _logEventType:v9 atTimestamp:a2];
}

- (uint64_t)logEventScanEventGeneratedAfterDisplayOnAtTimeStamp:(void *)a1
{
  v4 = [a1 environment];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  return [a1 _logEventType:20 atTimestamp:a2];
}

- (void)_logEventType:(uint64_t)a3 atTimestamp:(__int16)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if ([a1 dbStore])
  {
    ULHomeSlamAnalyticEventDO::ULHomeSlamAnalyticEventDO(&v12, a4, a2);
    v7 = [a1 dbStore];
    v8 = (*(*v7 + 136))(v7);
    v14 = v12;
    v15 = v13;
    v17 = 0uLL;
    __p = 0;
    std::vector<ULHomeSlamAnalyticEventDO>::__init_with_size[abi:ne200100]<ULHomeSlamAnalyticEventDO const*,ULHomeSlamAnalyticEventDO const*>(&__p, &v14, &__p, 1uLL);
    [v8 insertDataObjects:&__p];
    if (__p)
    {
      *&v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics handleSleepWakeMonitorEvent:];
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      __p = 68289026;
      LOWORD(v17) = 2082;
      *(&v17 + 2) = "";
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Home slam event was not added to home slam analytics store since dbStore was not initialized!}", &__p, 0x12u);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics logSleepStateEvent:atTimestamp:];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      __p = 68289026;
      LOWORD(v17) = 2082;
      *(&v17 + 2) = "";
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Home slam event was not added to home slam analytics store since dbStore was not initialized!", "{msg%{public}.0s:Home slam event was not added to home slam analytics store since dbStore was not initialized!}", &__p, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForBackgroundTask
{
  objc_initWeak(&location, self);
  v3 = [(ULHomeSlamAnalytics *)self environment];
  v4 = [v3 backgroundSystemTaskManager];
  v5 = [(ULHomeSlamAnalytics *)self _createBGTRequest];
  v6 = [(ULHomeSlamAnalytics *)self environment];
  v7 = [v6 queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ULHomeSlamAnalytics__registerForBackgroundTask__block_invoke;
  v8[3] = &unk_2798D4410;
  objc_copyWeak(&v9, &location);
  [v4 registerAndSubmitTaskWithRequest:v5 usingQueue:v7 launchHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__ULHomeSlamAnalytics__registerForBackgroundTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained environment];
    v2 = [v1 queue];
    dispatch_assert_queue_V2(v2);

    [WeakRetained _runStopDetectionAnalyticsTask];
  }
}

- (void)_unregisterForBackgroundTask
{
  v3 = [(ULHomeSlamAnalytics *)self environment];
  v2 = [v3 backgroundSystemTaskManager];
  [v2 deregisterAndCancelTaskWithIdentifier:@"com.apple.milod.homeSlamAnalytics"];
}

- (id)_createBGTRequest
{
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamAnalyticsInterval"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = [&unk_286A71310 intValue];
  }

  v7 = v6;

  v8 = [[ULBGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.milod.homeSlamAnalytics" interval:v7 minDurationBetweenInstances:v7 * 0.8];
  [(ULBGSystemTaskRequest *)v8 setPriority:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresProtectionClass:0];
  [(ULBGSystemTaskRequest *)v8 setResourceIntensive:1];
  [(ULBGSystemTaskRequest *)v8 setResources:7];
  [(ULBGSystemTaskRequest *)v8 setRequiresBuddyComplete:1];
  [(ULBGSystemTaskRequest *)v8 setRequiresUserInactivity:1];
  [(ULBGSystemTaskRequest *)v8 setPostInstall:0];
  [(ULBGSystemTaskRequest *)v8 setRequiresExternalPower:1];

  return v8;
}

- (void)_runStopDetectionAnalyticsTask
{
  v14 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::LogOdometryAnalyticsEnabled>())
  {
    v3 = [ULHomeSlamAnalyticEventAnalyzer alloc];
    v4 = [(ULHomeSlamAnalyticEventAnalyzer *)v3 runStopDetectionAnalysisAtTimepoint:[(ULHomeSlamAnalytics *)self dbStore] withDBStore:cl::chrono::CFAbsoluteTimeClock::now()];
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics handleSleepWakeMonitorEvent:];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = [@"com.apple.MicroLocation.AllDayTriggers" UTF8String];
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:sending CoreAnalytics event, event type:%{public, location:escape_only}s}", &v8, 0x1Cu);
    }

    AnalyticsSendEvent();
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULHomeSlamAnalytics handleSleepWakeMonitorEvent:];
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not running homeslam analytics, since sending to core-analytics is disabled}", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end