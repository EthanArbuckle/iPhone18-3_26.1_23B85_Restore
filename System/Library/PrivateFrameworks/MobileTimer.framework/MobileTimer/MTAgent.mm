@interface MTAgent
+ (id)agent;
- (MTAgent)init;
- (id)_diagnosticProviders;
- (id)gatherDiagnostics;
- (void)_removeUserDefaultsData;
- (void)_removeUserDefaultsDataIfNecessary:(id)necessary;
- (void)_setupAlarmKit;
- (void)_setupAlarms;
- (void)_setupAnalytics;
- (void)_setupInitialListeners;
- (void)_setupNotificationCenter;
- (void)_setupSecondaryListeners;
- (void)_setupSessions;
- (void)_setupStopwatches;
- (void)_setupSync;
- (void)_setupTimers;
- (void)handleF5Reset;
- (void)handleMigrationFinish;
- (void)initCommon;
- (void)printDiagnostics;
- (void)restoreDidFinish;
@end

@implementation MTAgent

+ (id)agent
{
  if (agent_onceToken != -1)
  {
    +[MTAgent agent];
  }

  v3 = agent_agent;

  return v3;
}

uint64_t __16__MTAgent_agent__block_invoke()
{
  v0 = objc_alloc_init(MTAgent);
  v1 = agent_agent;
  agent_agent = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTAgent)init
{
  v5.receiver = self;
  v5.super_class = MTAgent;
  v2 = [(MTAgent *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTAgent *)v2 initCommon];
  }

  return v3;
}

- (void)initCommon
{
  v13 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  launchDate = self->_launchDate;
  self->_launchDate = date;

  self->_isHorseman = MTIsHorseman();
  v5 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAgent", +[MTScheduler defaultPriority]);
  serializer = self->_serializer;
  self->_serializer = v5;

  v7 = MTLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ has launched", buf, 0xCu);
  }

  v8 = self->_serializer;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __21__MTAgent_initCommon__block_invoke;
  v10[3] = &unk_1E7B0C9D8;
  v10[4] = self;
  [(NAScheduler *)v8 performBlock:v10];
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __21__MTAgent_initCommon__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupNotificationCenter];
  if (+[MTFeatures supportsCoreData])
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    v4 = *(v3 + 168);
    *(v3 + 168) = v2;
  }

  [*(a1 + 32) _setupAlarms];
  [*(a1 + 32) _setupTimers];
  [*(*(a1 + 32) + 168) loadStore];
  [*(a1 + 32) _setupAlarmKit];
  [*(a1 + 32) _setupAnalytics];
  [*(a1 + 32) _setupStopwatches];
  [*(a1 + 32) _setupSessions];
  [*(a1 + 32) _setupInitialListeners];
  v5 = *(a1 + 32);

  return [v5 _setupSync];
}

- (void)_setupNotificationCenter
{
  v3 = off_1E7B0B908;
  if (!self->_isHorseman)
  {
    v3 = off_1E7B0BBF8;
  }

  v4 = *v3;
  v5 = objc_opt_new();
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v5;

  MEMORY[0x1EEE66BB8](v5, notificationCenter);
}

- (void)_setupStopwatches
{
  v3 = objc_opt_new();
  stopwatchServer = self->_stopwatchServer;
  self->_stopwatchServer = v3;

  MEMORY[0x1EEE66BB8](v3, stopwatchServer);
}

- (void)_setupAlarms
{
  if (+[MTFeatures supportsCoreData])
  {
    v3 = [[MTAlarmStorage alloc] initWithCoreDataStore:self->_coreDataStore];
  }

  else
  {
    v3 = objc_opt_new();
  }

  alarmStorage = self->_alarmStorage;
  self->_alarmStorage = v3;

  if (MTShouldHandleForEucalyptus())
  {
    v5 = [[MTSleepManager alloc] initWithAlarmStorage:self->_alarmStorage];
    sleepManager = self->_sleepManager;
    self->_sleepManager = v5;
  }

  v7 = [[MTAlarmServer alloc] initWithStorage:self->_alarmStorage];
  alarmServer = self->_alarmServer;
  self->_alarmServer = v7;

  v9 = [[MTAlarmScheduler alloc] initWithStorage:self->_alarmStorage notificationCenter:self->_notificationCenter];
  alarmScheduler = self->_alarmScheduler;
  self->_alarmScheduler = v9;

  [(MTAlarmStorage *)self->_alarmStorage setScheduler:self->_alarmScheduler];
  v11 = [[MTAlarmSnapshot alloc] initWithStorage:self->_alarmStorage];
  alarmSnapshot = self->_alarmSnapshot;
  self->_alarmSnapshot = v11;

  v13 = [(MTBaseAlarmWidgetProvider *)[MTWidgetProvider alloc] initWithAlarmStorage:self->_alarmStorage];
  widgetProvider = self->_widgetProvider;
  self->_widgetProvider = v13;

  if (!self->_isHorseman)
  {
    v15 = [[MTCoreDuetMonitor alloc] initWithAlarmStorage:self->_alarmStorage];
    coreDuetMonitor = self->_coreDuetMonitor;
    self->_coreDuetMonitor = v15;

    v17 = [[MTAlarmIntentDonor alloc] initWithStorage:self->_alarmStorage];
    alarmIntentDonor = self->_alarmIntentDonor;
    self->_alarmIntentDonor = v17;

    if (MTShouldHandleForBedtime())
    {
      v19 = [[MTSleepCoordinator alloc] initWithAlarmStorage:self->_alarmStorage];
      sleepCoordinator = self->_sleepCoordinator;
      self->_sleepCoordinator = v19;

      v21 = [[MTSleepModeMonitor alloc] initWithAlarmStorage:self->_alarmStorage sleepCoordinator:self->_sleepCoordinator];
      sleepModeMonitor = self->_sleepModeMonitor;
      self->_sleepModeMonitor = v21;

      [(MTSleepCoordinator *)self->_sleepCoordinator setSleepModeMonitor:self->_sleepModeMonitor];
      v23 = [(MTSleepSessionTracker *)[MTTimeInBedSessionTracker alloc] initWithAlarmStorage:self->_alarmStorage];
      sleepSessionTracker = self->_sleepSessionTracker;
      self->_sleepSessionTracker = &v23->super;

      v25 = [[MTSleepSessionManager alloc] initWithAlarmStorage:self->_alarmStorage sleepCoordinator:self->_sleepCoordinator sleepSessionTracker:self->_sleepSessionTracker];
      sleepSessionManager = self->_sleepSessionManager;
      self->_sleepSessionManager = v25;

      MEMORY[0x1EEE66BB8](v25, sleepSessionManager);
    }
  }
}

- (void)_setupTimers
{
  if (+[MTFeatures supportsCoreData])
  {
    v3 = [[MTTimerStorage alloc] initWithCoreDataStore:self->_coreDataStore];
  }

  else
  {
    v3 = objc_opt_new();
  }

  timerStorage = self->_timerStorage;
  self->_timerStorage = v3;

  v5 = [[MTTimerServer alloc] initWithStorage:self->_timerStorage];
  timerServer = self->_timerServer;
  self->_timerServer = v5;

  v7 = [[MTTimerScheduler alloc] initWithStorage:self->_timerStorage notificationCenter:self->_notificationCenter];
  timerScheduler = self->_timerScheduler;
  self->_timerScheduler = v7;

  [(MTTimerStorage *)self->_timerStorage setScheduler:self->_timerScheduler];
  v9 = [[MTTimerSnapshot alloc] initWithStorage:self->_timerStorage];
  timerSnapshot = self->_timerSnapshot;
  self->_timerSnapshot = v9;

  if (!self->_isHorseman)
  {
    v11 = [[MTTimerIntentDonor alloc] initWithStorage:self->_timerStorage];
    timerIntentDonor = self->_timerIntentDonor;
    self->_timerIntentDonor = v11;

    MEMORY[0x1EEE66BB8](v11, timerIntentDonor);
  }
}

- (void)_setupSessions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ setting up activity coordinator", &v9, 0xCu);
  }

  v4 = [[MTActivityCoordinator alloc] initWithStorage:self->_timerStorage alarmStorage:self->_alarmStorage notificationCenter:self->_notificationCenter];
  activityCoordinator = self->_activityCoordinator;
  self->_activityCoordinator = v4;

  v6 = [[MTSessionServer alloc] initWithCoordinator:self->_activityCoordinator];
  sessionServer = self->_sessionServer;
  self->_sessionServer = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupAnalytics
{
  v3 = [[MTAnalyticsCoordinator alloc] initWithAlarmStorage:self->_alarmStorage];
  analyticsCoordinator = self->_analyticsCoordinator;
  self->_analyticsCoordinator = v3;

  alarmServer = self->_alarmServer;
  v6 = self->_analyticsCoordinator;

  [(MTAlarmServer *)alarmServer registerAnalyticsDelegate:v6];
}

- (void)_setupAlarmKit
{
  v3 = [[MTAlarmKit alloc] initWithCoreDataStore:self->_coreDataStore notificationCenter:self->_notificationCenter];
  alarmKit = self->_alarmKit;
  self->_alarmKit = v3;

  v5 = [[MTAlarmKitAdoptionCoordinator alloc] initWithStorage:self->_timerStorage alarmStorage:self->_alarmStorage];
  alarmKitCoordinator = self->_alarmKitCoordinator;
  self->_alarmKitCoordinator = v5;

  MEMORY[0x1EEE66BB8](v5, alarmKitCoordinator);
}

- (void)_setupSync
{
  v3 = objc_opt_new();
  syncMetrics = self->_syncMetrics;
  self->_syncMetrics = v3;

  v5 = [[MTAlarmSyncDataModel alloc] initWithAlarmStorage:self->_alarmStorage syncMetrics:self->_syncMetrics];
  alarmSyncDataModel = self->_alarmSyncDataModel;
  self->_alarmSyncDataModel = v5;

  MEMORY[0x1EEE66BB8](v5, alarmSyncDataModel);
}

- (void)_setupInitialListeners
{
  v3 = objc_opt_new();
  notificationManager = self->_notificationManager;
  self->_notificationManager = v3;

  v5 = objc_alloc_init(MTLanguageChangeListener);
  languageChangeListener = self->_languageChangeListener;
  self->_languageChangeListener = v5;

  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_languageChangeListener];
  v7 = objc_opt_new();
  timeListener = self->_timeListener;
  self->_timeListener = v7;

  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_timeListener];
  v9 = [[MTSystemStateListener alloc] initWithDelegate:self];
  systemStateListener = self->_systemStateListener;
  self->_systemStateListener = v9;

  self->_systemReady = [(MTSystemStateListener *)self->_systemStateListener checkSystemReady];
  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_systemStateListener];
  if (!self->_systemReady)
  {
    [(MTAlarmServer *)self->_alarmServer startListening];
    [(MTTimerServer *)self->_timerServer startListening];
    [(MTStopwatchServer *)self->_stopwatchServer startListening];
    [(MTSessionServer *)self->_sessionServer startListening];
  }

  [(MTAlarmStorage *)self->_alarmStorage setupListeners];
  [(MTTimerStorage *)self->_timerStorage setupListeners];
  v11 = +[MTApplicationWorkspaceObserver sharedWorkspaceObserver];
  [v11 addObserver:self forBundleIdentifier:@"com.apple.mobiletimer"];
}

- (void)restoreDidFinish
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__MTAgent_restoreDidFinish__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

uint64_t __27__MTAgent_restoreDidFinish__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v17 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ system is ready", buf, 0xCu);
  }

  if (!+[MTFeatures supportsCoreData])
  {
    [*(*(a1 + 32) + 128) loadAlarms];
    [*(*(a1 + 32) + 160) loadTimers];
  }

  v4 = *(a1 + 32);
  if ((*(v4 + 8) & 1) == 0)
  {
    [*(v4 + 192) setupNotificationCenter];
    v5 = [[MTUserNotificationActionDispatcher alloc] initWithAlarmStorage:*(*(a1 + 32) + 128) timerStorage:*(*(a1 + 32) + 160) alarmKit:*(*(a1 + 32) + 32)];
    [*(*(a1 + 32) + 192) registerActionHandler:v5];

    v4 = *(a1 + 32);
  }

  [*(v4 + 192) registerAnalyticsDelegate:*(v4 + 88)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 128);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __27__MTAgent_restoreDidFinish__block_invoke_39;
  v15[3] = &unk_1E7B0C9D8;
  v15[4] = v6;
  [v7 registerStoreLoadCompletion:v15];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__MTAgent_restoreDidFinish__block_invoke_2;
  v14[3] = &unk_1E7B0C9D8;
  v14[4] = v8;
  [v9 registerStoreLoadCompletion:v14];
  v10 = *(a1 + 32);
  if ((*(v10 + 8) & 1) == 0)
  {
    [*(v10 + 264) startSyncServices];
    [*(*(a1 + 32) + 280) handleSystemReady];
    if (MTShouldHandleForBedtime())
    {
      [*(*(a1 + 32) + 232) updateSleepState];
      [*(*(a1 + 32) + 232) registerObserver:*(*(a1 + 32) + 240)];
      [*(*(a1 + 32) + 96) registerObserver:*(*(a1 + 32) + 232)];
      [*(*(a1 + 32) + 96) registerObserver:*(*(a1 + 32) + 240)];
      [*(*(a1 + 32) + 240) updateMonitorState];
      [*(*(a1 + 32) + 232) registerObserver:*(*(a1 + 32) + 256)];
      [*(*(a1 + 32) + 256) prepare];
      [*(*(a1 + 32) + 248) saveSessionData];
    }

    [*(*(a1 + 32) + 216) handleSystemReady];
    [*(*(a1 + 32) + 224) handleSystemReady];
    v10 = *(a1 + 32);
  }

  [*(v10 + 24) handleSystemReady];
  [*(*(a1 + 32) + 176) handleSystemReady];
  [*(*(a1 + 32) + 184) handleSystemReady];
  [*(*(a1 + 32) + 200) prepareAlarms];
  result = [*(a1 + 32) _setupSecondaryListeners];
  v12 = *(a1 + 32);
  if (*(v12 + 9) == 1)
  {
    [*(v12 + 104) startListening];
    [*(*(a1 + 32) + 136) startListening];
    [*(*(a1 + 32) + 176) startListening];
    result = [*(*(a1 + 32) + 184) startListening];
  }

  else
  {
    *(v12 + 9) = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __27__MTAgent_restoreDidFinish__block_invoke_39(uint64_t a1)
{
  [*(*(a1 + 32) + 112) rescheduleAlarmsWithCompletion:0];
  [*(*(a1 + 32) + 104) handleSystemReady];
  [*(*(a1 + 32) + 24) handleAlarmStorageReady];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  v4 = *(v2 + 128);

  return [v3 registerObserver:v4];
}

uint64_t __27__MTAgent_restoreDidFinish__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 144) rescheduleTimers];
  [*(*(a1 + 32) + 136) handleSystemReady];
  [*(*(a1 + 32) + 24) handleTimerStorageReady];
  result = MTIdiomIpad();
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    v5 = *(v3 + 160);

    return [v4 registerObserver:v5];
  }

  return result;
}

- (void)_setupSecondaryListeners
{
  notificationManager = self->_notificationManager;
  v4 = +[MTDeviceListener sharedDeviceListener];
  [(MTAgentNotificationManager *)notificationManager registerListener:v4];

  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_alarmScheduler];
  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_timerScheduler];
  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_alarmStorage];
  if (MTShouldHandleForBedtime())
  {
    if (self->_sleepCoordinator)
    {
      [(MTAgentNotificationManager *)self->_notificationManager registerListener:?];
    }

    if (self->_sleepSessionTracker)
    {
      [(MTAgentNotificationManager *)self->_notificationManager registerListener:?];
    }
  }

  v5 = [[MTAgentDiagnosticListener alloc] initWithDelegate:self];
  diagnostics = self->_diagnostics;
  self->_diagnostics = v5;

  [(MTAgentNotificationManager *)self->_notificationManager registerListener:self->_diagnostics];
  v7 = self->_notificationManager;
  v8 = +[MTPairedDeviceListener sharedListener];
  [(MTAgentNotificationManager *)v7 registerListener:v8];

  [(MTAgentNotificationManager *)self->_notificationManager beginListening];
  v9 = +[MTSensitiveUIMonitor sharedMonitor];
}

- (void)handleF5Reset
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __24__MTAgent_handleF5Reset__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

uint64_t __24__MTAgent_handleF5Reset__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) handleF5Reset];
  v2 = *(*(a1 + 32) + 160);

  return [v2 handleF5Reset];
}

- (void)handleMigrationFinish
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ migration finished", buf, 0xCu);
  }

  serializer = self->_serializer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MTAgent_handleMigrationFinish__block_invoke;
  v6[3] = &unk_1E7B0C9D8;
  v6[4] = self;
  [(NAScheduler *)serializer performBlock:v6];
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __32__MTAgent_handleMigrationFinish__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) handleMigrationFinish];
  v2 = *(*(a1 + 32) + 160);

  return [v2 handleMigrationFinish];
}

- (id)_diagnosticProviders
{
  v3 = objc_opt_new();
  systemStateListener = [(MTAgent *)self systemStateListener];

  if (systemStateListener)
  {
    systemStateListener2 = [(MTAgent *)self systemStateListener];
    [v3 addObject:systemStateListener2];
  }

  alarmServer = [(MTAgent *)self alarmServer];

  if (alarmServer)
  {
    alarmServer2 = [(MTAgent *)self alarmServer];
    [v3 addObject:alarmServer2];
  }

  alarmStorage = [(MTAgent *)self alarmStorage];

  if (alarmStorage)
  {
    alarmStorage2 = [(MTAgent *)self alarmStorage];
    [v3 addObject:alarmStorage2];
  }

  alarmScheduler = [(MTAgent *)self alarmScheduler];

  if (alarmScheduler)
  {
    alarmScheduler2 = [(MTAgent *)self alarmScheduler];
    [v3 addObject:alarmScheduler2];
  }

  timerServer = [(MTAgent *)self timerServer];

  if (timerServer)
  {
    timerServer2 = [(MTAgent *)self timerServer];
    [v3 addObject:timerServer2];
  }

  sessionServer = [(MTAgent *)self sessionServer];

  if (sessionServer)
  {
    sessionServer2 = [(MTAgent *)self sessionServer];
    [v3 addObject:sessionServer2];
  }

  timerStorage = [(MTAgent *)self timerStorage];

  if (timerStorage)
  {
    timerStorage2 = [(MTAgent *)self timerStorage];
    [v3 addObject:timerStorage2];
  }

  timerScheduler = [(MTAgent *)self timerScheduler];

  if (timerScheduler)
  {
    timerScheduler2 = [(MTAgent *)self timerScheduler];
    [v3 addObject:timerScheduler2];
  }

  v20 = +[MTDeviceListener sharedDeviceListener];
  [v3 addObject:v20];

  if (self->_alarmSyncDataModel)
  {
    [v3 addObject:?];
  }

  v21 = +[MTPairedDeviceListener sharedListener];
  [v3 addObject:v21];

  if (MTShouldHandleForBedtime())
  {
    sleepCoordinator = [(MTAgent *)self sleepCoordinator];

    if (sleepCoordinator)
    {
      sleepCoordinator2 = [(MTAgent *)self sleepCoordinator];
      [v3 addObject:sleepCoordinator2];
    }
  }

  return v3;
}

- (void)printDiagnostics
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v5 = MTLogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v6 = MTLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v7 = MTLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    *buf = 138543362;
    v28 = v8;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "-----%{public}@-----", buf, 0xCu);
  }

  v9 = MTLogForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    launchDate = [(MTAgent *)self launchDate];
    *buf = 138543362;
    v28 = launchDate;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "Launched: %{public}@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  _diagnosticProviders = [(MTAgent *)self _diagnosticProviders];
  v12 = [_diagnosticProviders countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(_diagnosticProviders);
        }

        [*(*(&v22 + 1) + 8 * v15++) printDiagnostics];
      }

      while (v13 != v15);
      v13 = [_diagnosticProviders countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = MTLogForCategory(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v16, OS_LOG_TYPE_DEFAULT, "------------------------", buf, 2u);
  }

  v17 = MTLogForCategory(1);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v17, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v18 = MTLogForCategory(1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v18, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v19 = MTLogForCategory(1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v19, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v20 = MTLogForCategory(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v20, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  launchDate = [(MTAgent *)self launchDate];
  [v3 setObject:launchDate forKeyedSubscript:@"Launched"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _diagnosticProviders = [(MTAgent *)self _diagnosticProviders];
  v6 = [_diagnosticProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(_diagnosticProviders);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          gatherDiagnostics = [v10 gatherDiagnostics];
          [v3 addEntriesFromDictionary:gatherDiagnostics];
        }
      }

      v7 = [_diagnosticProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_removeUserDefaultsDataIfNecessary:(id)necessary
{
  v13 = *MEMORY[0x1E69E9840];
  if (([necessary isEqualToString:@"com.apple.mobiletimer"] & 1) != 0 || !necessary && (+[MTApplicationWorkspaceObserver sharedWorkspaceObserver](MTApplicationWorkspaceObserver, "sharedWorkspaceObserver"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isApplicationInstalledForBundleIdentifier:", @"com.apple.mobiletimer"), v7, (v8 & 1) == 0))
  {
    v5 = MTLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ removing user defaults", buf, 0xCu);
    }

    serializer = [(MTAgent *)self serializer];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MTAgent__removeUserDefaultsDataIfNecessary___block_invoke;
    v10[3] = &unk_1E7B0C9D8;
    v10[4] = self;
    [serializer performBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeUserDefaultsData
{
  v2 = [MTUserDefaults alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobiletimer"];
  v4 = [(MTUserDefaults *)v2 initWithUserDefaults:v3];

  [(MTUserDefaults *)v4 removeAllObjects];
}

@end