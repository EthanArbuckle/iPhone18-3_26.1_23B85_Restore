@interface _OSIBLManager
+ (id)sharedInstance;
- (BOOL)hasVariationForMedianLevels:(id)levels;
- (BOOL)isIBLMCurrentlyEnabled;
- (BOOL)isLPMEnabled;
- (BOOL)isPluggedIn;
- (BOOL)queryAndUpdateCurrentConsoleModeState;
- (BOOL)shouldOverrideMitigations;
- (BOOL)shouldRunForShadowAnalytics;
- (BOOL)updateFeatureState:(int64_t)state withError:(id *)error;
- (BOOL)updateNotificationsState:(int64_t)state withError:(id *)error;
- (_OSIBLManager)init;
- (id)currentMitigationWithError:(id *)error;
- (id)dateFormatter;
- (id)drainResultWithModel:(int64_t)model withError:(id *)error;
- (id)isHighDrainOverAggregatedMedianWithError:(id *)error;
- (id)mitigationWithLevel:(int64_t)level;
- (id)predictMitigationLevelWithError:(id *)error;
- (id)testOverridenMitigation;
- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin;
- (void)cancelTask;
- (void)consoleModeNotificationHandler;
- (void)evaluate;
- (void)handleCLPCTestOverride:(id)override;
- (void)handleCallback:(id)callback;
- (void)handleEngagementNotification;
- (void)handleFeatureDisabled;
- (void)handlePPSTaskingStarted;
- (void)handleTestOverride:(id)override;
- (void)notifyMitigationChange:(id)change;
- (void)overrideAllMitigations:(unint64_t)mitigations;
- (void)overrideCLPCMitigations:(unint64_t)mitigations;
- (void)queryAndUpdateCurrentConsoleModeState;
- (void)resetMitigation;
- (void)shadowEvaluateForModels:(id)models;
- (void)start;
- (void)submitTask;
- (void)triggerIBLMNotification;
- (void)updateMitigationTo:(id)to;
- (void)updateTrialOSIParameters;
- (void)updateTrialPXPParameters;
@end

@implementation _OSIBLManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_OSIBLManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

- (_OSIBLManager)init
{
  v59.receiver = self;
  v59.super_class = _OSIBLManager;
  v2 = [(_OSIBLManager *)&v59 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.osintelligence.iblm"];
    v4 = *(v2 + 8);
    *(v2 + 8) = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.osintelligence.OSIBLManager", v5);
    v7 = *(v2 + 5);
    *(v2 + 5) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.osintelligence.OSIBLManager.featureStatus", v8);
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.osintelligence.OSIBLManager.managerStartStop", v11);
    v13 = *(v2 + 7);
    *(v2 + 7) = v12;

    v14 = os_log_create("com.apple.osintelligence", "IBLManager");
    v15 = *(v2 + 13);
    *(v2 + 13) = v14;

    v16 = [v2 log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_25D171000, v16, OS_LOG_TYPE_DEFAULT, "OSIBLManager initiating...", &buf, 2u);
    }

    *(v2 + 13) = 0;
    userContext = [MEMORY[0x277CFE318] userContext];
    v18 = *(v2 + 12);
    *(v2 + 12) = userContext;

    v19 = +[_OSIBLMState loadCurrentIBLMState];
    v20 = v19;
    if (v19)
    {
      integerValue = [v19 integerValue];
    }

    else
    {
      integerValue = +[_OSIBLMState isIBLMDefaultOn];
    }

    *(v2 + 14) = integerValue;
    v22 = +[_OSIBLMState loadCurrentIBLMNotificationsState];
    v23 = v22;
    if (v22)
    {
      integerValue2 = [v22 integerValue];
    }

    else
    {
      integerValue2 = +[_OSIBLMState isIBLMNotificationsDefaultOn];
    }

    *(v2 + 15) = integerValue2;
    v25 = [*(v2 + 8) objectForKey:@"kLastIBLMPredictionFetchDate"];
    v26 = *(v2 + 10);
    *(v2 + 10) = v25;

    v27 = [*(v2 + 8) objectForKey:@"kLastNotificationDate"];
    v28 = *(v2 + 21);
    *(v2 + 21) = v27;

    v29 = [*(v2 + 8) objectForKey:@"lastTaskingStartDate"];
    v30 = *(v2 + 22);
    *(v2 + 22) = v29;

    *(v2 + 20) = 0x3FE6666666666666;
    notify_register_check([@"com.apple.osintelligence.iblm.mitigationchanged" UTF8String], v2 + 5);
    mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
    v32 = *(v2 + 5);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __21___OSIBLManager_init__block_invoke;
    v57[3] = &unk_2799C1798;
    v33 = v2;
    v58 = v33;
    [mEMORY[0x277CF0810] registerForTaskWithIdentifier:@"com.apple.osintelligence.iblm.evaluate" usingQueue:v32 launchHandler:v57];
    v34 = [MEMORY[0x277D73660] clientWithIdentifier:293];
    v35 = v33[16];
    v33[16] = v34;

    [v33 updateTrialOSIParameters];
    objc_initWeak(&buf, v33);
    v36 = v33[16];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __21___OSIBLManager_init__block_invoke_86;
    v54[3] = &unk_2799C17C0;
    objc_copyWeak(&v55, &buf);
    v37 = [v36 addUpdateHandlerForNamespaceName:@"COREOS_PREDICTION_BATTERY" usingBlock:v54];
    v38 = [MEMORY[0x277D73660] clientWithIdentifier:364];
    v39 = v33[17];
    v33[17] = v38;

    [v33 updateTrialPXPParameters];
    v40 = v33[17];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __21___OSIBLManager_init__block_invoke_2_88;
    v52[3] = &unk_2799C17C0;
    objc_copyWeak(&v53, &buf);
    v41 = [v40 addUpdateHandlerForNamespaceName:@"COREOS_POWER_EXPERIENCE_POWER_TUNING" usingBlock:v52];
    out_token = 0;
    v42 = *(v2 + 5);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __21___OSIBLManager_init__block_invoke_3;
    handler[3] = &unk_2799C17E8;
    v43 = v33;
    v50 = v43;
    notify_register_dispatch("com.apple.osi.iblm.firstUserNotification", &out_token, v42, handler);
    v48 = 0;
    v44 = *(v2 + 5);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __21___OSIBLManager_init__block_invoke_4;
    v46[3] = &unk_2799C17E8;
    v47 = v43;
    notify_register_dispatch("com.apple.osi.iblm.dailyNotification", &v48, v44, v46);

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&buf);
  }

  return v2;
}

- (BOOL)shouldRunForShadowAnalytics
{
  v3 = self->_taskingPPSStartDate;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastTaskingStartDate"];
    if (!v4)
    {
LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }
  }

  [v4 timeIntervalSinceNow];
  if (v5 < -172800.0)
  {
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"lastTaskingStartDate"];
    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (void)handlePPSTaskingStarted
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___OSIBLManager_handlePPSTaskingStarted__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)handleCallback:(id)callback
{
  string = xpc_dictionary_get_string(callback, *MEMORY[0x277D86430]);
  if (!strcmp(string, [@"kPLTaskingStartNotificationGlobal" UTF8String]))
  {
    [(_OSIBLManager *)self handlePPSTaskingStarted];
  }

  if (+[_OSIBLMState isIBLMSupported])
  {
    if (!strcmp(string, [@"com.apple.system.console_mode_changed" UTF8String]))
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32___OSIBLManager_handleCallback___block_invoke;
      block[3] = &unk_2799C1770;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

- (BOOL)isIBLMCurrentlyEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  featureStatusQueue = self->_featureStatusQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39___OSIBLManager_isIBLMCurrentlyEnabled__block_invoke;
  v5[3] = &unk_2799C1810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(featureStatusQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)submitTask
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)cancelTask
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTrialOSIParameters
{
  [(TRIClient *)self->_trialClientOSI refresh];
  featureStatusQueue = self->_featureStatusQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___OSIBLManager_updateTrialOSIParameters__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  dispatch_sync(featureStatusQueue, block);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41___OSIBLManager_updateTrialOSIParameters__block_invoke_97;
  v5[3] = &unk_2799C1770;
  v5[4] = self;
  dispatch_sync(queue, v5);
}

- (void)updateTrialPXPParameters
{
  [(TRIClient *)self->_trialClientOSI refresh];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___OSIBLManager_updateTrialPXPParameters__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)isPluggedIn
{
  context = self->_context;
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryRawExternalConnectedKey = [MEMORY[0x277CFE338] batteryRawExternalConnectedKey];
  v6 = [v4 objectForKeyedSubscript:batteryRawExternalConnectedKey];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLPMEnabled
{
  context = self->_context;
  keyPathForLowPowerModeStatus = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:keyPathForLowPowerModeStatus];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)handleCLPCTestOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy)
  {
    v9 = overrideCopy;
    bOOLValue = [overrideCopy BOOLValue];
    v6 = +[_OSICLPCInterface sharedInstance];
    if (bOOLValue)
    {
      v7 = 50;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(_OSIBLManager *)self mitigationWithLevel:v7];
    [v6 updatePerformanceControlWithMitigation:v8];

    overrideCopy = v9;
  }
}

- (void)start
{
  managerStartStopQueue = self->_managerStartStopQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22___OSIBLManager_start__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  dispatch_sync(managerStartStopQueue, block);
}

- (void)notifyMitigationChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  notify_set_state(self->_notifyToken, [changeCopy level]);
  notify_post([@"com.apple.osintelligence.iblm.mitigationchanged" UTF8String]);
  defaults = self->_defaults;
  date = [MEMORY[0x277CBEAA8] date];
  [(NSUserDefaults *)defaults setObject:date forKey:@"kLastIBLMMitigationChangeDate"];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = changeCopy;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Setting IBLM mitigation to %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleEngagementNotification
{
  if (self->_currentNotificationsState && self->_currentFeatureState)
  {
    lastNotificationDate = self->_lastNotificationDate;
    if (!lastNotificationDate)
    {
      v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"kLastNotificationDate"];
      v5 = self->_lastNotificationDate;
      self->_lastNotificationDate = v4;

      lastNotificationDate = self->_lastNotificationDate;
      if (!lastNotificationDate)
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        v7 = self->_lastNotificationDate;
        self->_lastNotificationDate = distantPast;

        v8 = +[_OSIBLMAnalyticsHandler sharedInstance];
        [v8 recordIBLMFirstUserNotificationTrigger:1];

        lastNotificationDate = self->_lastNotificationDate;
      }
    }

    [(NSDate *)lastNotificationDate timeIntervalSinceNow];
    v10 = v9;
    context = self->_context;
    keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
    v13 = [(_CDLocalContext *)context objectForContextualKeyPath:keyPathForBatteryLevel];
    integerValue = [v13 integerValue];

    if (v10 < -72000.0 && integerValue <= 80)
    {
      [(_OSIBLManager *)self triggerIBLMNotification];
      date = [MEMORY[0x277CBEAA8] date];
      v16 = self->_lastNotificationDate;
      self->_lastNotificationDate = date;

      defaults = self->_defaults;
      v18 = self->_lastNotificationDate;

      [(NSUserDefaults *)defaults setObject:v18 forKey:@"kLastNotificationDate"];
    }
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Skipping IBLM engagement notification, since setting is disabled", v20, 2u);
    }
  }
}

- (void)triggerIBLMNotification
{
  notify_post([@"com.apple.osi.iblm.engagedNotification" UTF8String]);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Notified for IBLM Engaged notification", v4, 2u);
  }
}

- (void)updateMitigationTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = [(NSUserDefaults *)self->_defaults objectForKey:@"testOverrideMitigationAlways"];
  v6 = [(NSUserDefaults *)self->_defaults objectForKey:@"testOverrideCLPCMitigationAlways"];
  if (v5 | v6)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Test overrides in place. Skipping change in mitigations", &v29, 2u);
    }

    goto LABEL_23;
  }

  if (!self->_trialMitigationsEnabled)
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v29 = 134217984;
      level = [toCopy level];
      _os_log_impl(&dword_25D171000, v9, OS_LOG_TYPE_DEFAULT, "Trial overriding mitigation %ld", &v29, 0xCu);
    }

    v10 = [(_OSIBLManager *)self mitigationWithLevel:0];

    toCopy = v10;
  }

  p_currentMitigation = &self->_currentMitigation;
  currentMitigation = self->_currentMitigation;
  if (!currentMitigation)
  {
    v16 = 0;
LABEL_13:
    v14 = v16;
    v15 = 1;
    goto LABEL_14;
  }

  level2 = [(_OSIBLMitigation *)currentMitigation level];
  if (level2 != [toCopy level])
  {
    v16 = *p_currentMitigation;
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
LABEL_14:
  objc_storeStrong(&self->_currentMitigation, toCopy);
  v17 = [MEMORY[0x277CBEAA8] now];
  lastMitigationChangeDate = self->_lastMitigationChangeDate;
  self->_lastMitigationChangeDate = v17;

  defaults = self->_defaults;
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toCopy, "level")}];
  [(NSUserDefaults *)defaults setObject:v20 forKey:@"lastMitigationLevel"];

  [(NSUserDefaults *)self->_defaults setObject:self->_lastMitigationChangeDate forKey:@"lastMitigationChangeDate"];
  if (v15)
  {
    [(_OSIBLManager *)self notifyMitigationChange:toCopy];
    if (+[_OSICLPCInterface supportsPerformanceControl]&& self->_trialPerformanceMitigationEnabled)
    {
      v21 = +[_OSICLPCInterface sharedInstance];
      [v21 updatePerformanceControlWithMitigation:*p_currentMitigation];
    }

    v22 = +[_OSIBLMAnalyticsHandler sharedInstance];
    [v22 recordMitigationUpdateTo:self->_currentMitigation fromPrevious:v14];

    v23 = self->_log;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      level3 = [(_OSIBLMitigation *)v14 level];
      level4 = [(_OSIBLMitigation *)*p_currentMitigation level];
      v29 = 134218240;
      level = level3;
      v31 = 2048;
      v32 = level4;
      _os_log_impl(&dword_25D171000, v24, OS_LOG_TYPE_DEFAULT, "Updated IBLM Mitigation from %ld to %ld", &v29, 0x16u);
    }
  }

  v27 = +[_OSIBLMAnalyticsHandler sharedInstance];
  [v27 reportNewMitigation:toCopy];

  if ([(_OSIBLMitigation *)*p_currentMitigation level]>= 1)
  {
    [(_OSIBLManager *)self handleEngagementNotification];
  }

LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)resetMitigation
{
  v3 = objc_opt_new();
  [v3 setLevel:0];
  [v3 setConfidence:100.0];
  [v3 setDecisionMakerString:@"PluggedIn"];
  [(_OSIBLManager *)self updateMitigationTo:v3];
}

- (void)handleTestOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy)
  {
    v8 = overrideCopy;
    if ([overrideCopy BOOLValue])
    {
      v5 = 50;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(_OSIBLManager *)self mitigationWithLevel:v5];
    [(_OSIBLManager *)self notifyMitigationChange:v6];
    v7 = +[_OSICLPCInterface sharedInstance];
    [v7 updatePerformanceControlWithMitigation:v6];

    overrideCopy = v8;
  }
}

- (void)overrideAllMitigations:(unint64_t)mitigations
{
  if (mitigations == 2)
  {
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"testOverrideMitigationAlways"];
    v4 = MEMORY[0x277CBEC28];

    [(_OSIBLManager *)self handleTestOverride:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(_OSIBLManager *)self handleTestOverride:v6];

    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:mitigations != 0 forKey:@"testOverrideMitigationAlways"];
  }
}

- (void)overrideCLPCMitigations:(unint64_t)mitigations
{
  if (mitigations == 2)
  {
    [(NSUserDefaults *)self->_defaults removeObjectForKey:@"testOverrideCLPCMitigationAlways"];
    v4 = MEMORY[0x277CBEC28];

    [(_OSIBLManager *)self handleCLPCTestOverride:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [(_OSIBLManager *)self handleCLPCTestOverride:v6];

    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setBool:mitigations != 0 forKey:@"testOverrideCLPCMitigationAlways"];
  }
}

- (void)shadowEvaluateForModels:(id)models
{
  v33 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  if ([(_OSIBLManager *)self isLPMEnabled])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "LPM on. Skipping shadow evaluation for drain prediction";
LABEL_7:
      v7 = log;
      v8 = 2;
LABEL_8:
      _os_log_impl(&dword_25D171000, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
    }
  }

  else if ([(_OSIBLManager *)self isPluggedIn])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Device currently plugged in. Skipping shadow evaluation for drain prediction";
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [OSIUtilities currentBatteryLevelWithContext:self->_context];
    v10 = self->_log;
    if (v9 >= 81)
    {
      v11 = v9;
      if (!os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      *buf = 134217984;
      v32 = v11;
      v6 = "Current battery level %ld is above Battery SOC engagement threshold. Skipping shadow evaluation";
      v7 = v10;
      v8 = 12;
      goto LABEL_8;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D171000, v10, OS_LOG_TYPE_DEFAULT, "Shadow evaluating for Drain prediction", buf, 2u);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = modelsCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          integerValue = [v17 integerValue];
          v25 = 0;
          v19 = [(_OSIBLManager *)self drainResultWithModel:integerValue withError:&v25];
          v20 = v25;
          if (v20)
          {
            v22 = v20;
            v23 = self->_log;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(_OSIBLManager *)v23 shadowEvaluateForModels:v22];
            }

            goto LABEL_26;
          }

          v21 = +[_OSIBLMAnalyticsHandler sharedInstance];
          [v21 reportDrainResult:v19 forModel:{objc_msgSend(v17, "integerValue")}];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)evaluate
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(_OSIBLManager *)self isIBLMCurrentlyEnabled])
  {
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    LOWORD(v20) = 0;
    v8 = "IBLM currently disabled. Skipping evaluation";
    v9 = log;
    v10 = OS_LOG_TYPE_INFO;
LABEL_7:
    _os_log_impl(&dword_25D171000, v9, v10, v8, &v20, 2u);
    goto LABEL_24;
  }

  if ([(_OSIBLManager *)self isPluggedIn])
  {
    v3 = self->_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      v4 = "Device currently plugged in. Reseting IBLM mitigation";
      v5 = v3;
      v6 = 2;
LABEL_11:
      _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_INFO, v4, &v20, v6);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v11 = [OSIUtilities currentBatteryLevelWithContext:self->_context];
  if (v11 >= 81)
  {
    v12 = v11;
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = v12;
      v4 = "Current battery level %ld is above Battery SOC engagement threshold. Skipping evaluation";
      v5 = v13;
      v6 = 12;
      goto LABEL_11;
    }

LABEL_12:
    currentMitigation = self->_currentMitigation;
    if (currentMitigation && [(_OSIBLMitigation *)currentMitigation level])
    {
      [(_OSIBLManager *)self resetMitigation];
    }

    goto LABEL_24;
  }

  isLPMEnabled = [(_OSIBLManager *)self isLPMEnabled];
  v16 = self->_log;
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (isLPMEnabled)
  {
    if (!v17)
    {
      goto LABEL_24;
    }

    LOWORD(v20) = 0;
    v8 = "LPM on. Skipping evaluation for drain prediction";
    v9 = v16;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (v17)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_25D171000, v16, OS_LOG_TYPE_DEFAULT, "Evaluating for Drain prediction", &v20, 2u);
  }

  if ([(_OSIBLManager *)self shouldOverrideMitigations])
  {
    [(_OSIBLManager *)self mitigationWithLevel:0];
  }

  else
  {
    [(_OSIBLManager *)self predictMitigationLevelWithError:0];
  }
  v18 = ;
  [(_OSIBLManager *)self updateMitigationTo:v18];

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
}

- (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    [_OSIBLManager dateFormatter];
  }

  v3 = dateFormatter_formatter;

  return v3;
}

- (BOOL)hasVariationForMedianLevels:(id)levels
{
  v20 = *MEMORY[0x277D85DE8];
  levelsCopy = levels;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [levelsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    integerValue2 = 0;
    v8 = *v16;
    integerValue = 101;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(levelsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 integerValue] < integerValue)
        {
          integerValue = [v11 integerValue];
        }

        if ([v11 integerValue] > integerValue2)
        {
          integerValue2 = [v11 integerValue];
        }
      }

      v6 = [levelsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    integerValue2 = 0;
    integerValue = 101;
  }

  if (integerValue2 - integerValue <= 50)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(_OSIBLManager *)log hasVariationForMedianLevels:integerValue, integerValue2];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return integerValue2 - integerValue > 50;
}

- (id)isHighDrainOverAggregatedMedianWithError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.osintelligence.medianBatteryLevelsModel"];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [OSIUtilities midnightDateFrom:date];
  dateFormatter = [(_OSIBLManager *)self dateFormatter];
  v9 = [dateFormatter stringFromDate:v7];

  v10 = objc_alloc_init(_OSDayDrainResult);
  v11 = [v5 valueForKey:@"medianLevels"];
  v12 = [v11 objectForKeyedSubscript:v9];
  if (v12)
  {
    goto LABEL_2;
  }

  errorCopy = error;
  v28 = +[_OSBatteryPredictor predictor];
  v38 = 0;
  v12 = [v28 typicalBatteryLevelWithReferenceDays:0 aggregatedOverTimeWidth:15 withError:&v38];
  v29 = v38;

  if (!v29)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v12 forKeyedSubscript:v9];
    [v5 setObject:dictionary forKey:@"medianLevels"];

LABEL_2:
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(_OSIBLManager *)v12 isHighDrainOverAggregatedMedianWithError:?];
    }

    if ([(_OSIBLManager *)self hasVariationForMedianLevels:v12])
    {
      v36 = v5;
      context = self->_context;
      keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
      v16 = [(_CDLocalContext *)context objectForContextualKeyPath:keyPathForBatteryLevel];
      integerValue = [v16 integerValue];

      v35 = date;
      [date timeIntervalSinceDate:v7];
      v19 = [v12 objectAtIndexedSubscript:(v18 / 900.0)];
      integerValue2 = [v19 integerValue];

      v21 = integerValue2 - integerValue;
      v22 = (integerValue2 - integerValue);
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = MEMORY[0x277CCABB0];
        v25 = v23;
        v26 = [v24 numberWithInteger:integerValue2];
        v27 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
        *buf = 138412546;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        _os_log_impl(&dword_25D171000, v25, OS_LOG_TYPE_DEFAULT, "StatMedian Reference %@, Current %@", buf, 0x16u);
      }

      [(_OSDayDrainResult *)v10 setIsHighDrain:v21 > 10];
      [(_OSDayDrainResult *)v10 setBatteryDifference:v22];
      [(_OSDayDrainResult *)v10 setConfidence:100.0];
      date = v35;
      v5 = v36;
    }

    else
    {
      [(_OSDayDrainResult *)v10 setIsHighDrain:0];
    }

    goto LABEL_13;
  }

  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(_OSIBLManager *)v30 isHighDrainOverAggregatedMedianWithError:v29];
  }

  v31 = v29;
  *errorCopy = v29;
  [(_OSDayDrainResult *)v10 setIsHighDrain:0];

LABEL_13:
  v32 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)drainResultWithModel:(int64_t)model withError:(id *)error
{
  errorCopy = error;
  if (model == 2)
  {
    errorCopy = [(_OSIBLManager *)self isHighDrainOverAggregatedMedianWithError:error];
  }

  else if (model == 1)
  {
    v5 = +[_OSBatteryPredictor predictor];
    errorCopy = [v5 highDayDrainAroundCurrentDateWithError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_OSIBLManager drainResultWithModel:withError:];
    }

    *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.OSIntelligence" code:6 userInfo:0];
  }

  return errorCopy;
}

- (id)predictMitigationLevelWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  p_lastPrediction = &self->_lastPrediction;
  if (self->_lastPrediction)
  {
    [(NSDate *)self->_lastPredictionDate timeIntervalSinceNow];
    if (v6 > -1500.0)
    {
      v7 = self->_lastPrediction;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *p_lastPrediction;
        v22 = 138543362;
        v23 = v9;
        _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Using cached result %{public}@", &v22, 0xCu);
      }

      goto LABEL_10;
    }
  }

  v10 = +[_OSBatteryPredictor predictor];
  v7 = [v10 highDayDrainAroundCurrentDateWithError:error];

  if (!error)
  {
    objc_storeStrong(p_lastPrediction, v7);
    date = [MEMORY[0x277CBEAA8] date];
    lastPredictionDate = self->_lastPredictionDate;
    self->_lastPredictionDate = date;

    [(NSUserDefaults *)self->_defaults setObject:self->_lastPredictionDate forKey:@"kLastIBLMPredictionFetchDate"];
LABEL_10:
    v14 = +[_OSIBLMAnalyticsHandler sharedInstance];
    [v14 reportDrainResult:v7 forModel:1];

    v11 = objc_opt_new();
    if ([(_OSDayDrainResult *)v7 isHighDrain])
    {
      [(_OSDayDrainResult *)v7 confidence];
      if (v15 > self->_engagementThreshold)
      {
        v16 = self->_log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          [(_OSDayDrainResult *)v7 confidence];
          engagementThreshold = self->_engagementThreshold;
          v22 = 134349312;
          v23 = v19;
          v24 = 2050;
          v25 = engagementThreshold;
          _os_log_impl(&dword_25D171000, v17, OS_LOG_TYPE_DEFAULT, "Prev12Next12Drain Prediction Confidence: %{public}lf Engagement Threshold: %{public}f", &v22, 0x16u);
        }

        [v11 setLevel:50];
        [(_OSDayDrainResult *)v7 confidence];
        [v11 setConfidence:?];
      }
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_OSIBLManager predictMitigationLevelWithError:error];
  }

  v11 = 0;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)consoleModeNotificationHandler
{
  if ([(_OSIBLMitigation *)self->_currentMitigation level]&& [(_OSIBLManager *)self queryAndUpdateCurrentConsoleModeState]&& self->_isConsoleModeActive)
  {
    v3 = [(_OSIBLManager *)self mitigationWithLevel:0];
    [(_OSIBLManager *)self updateMitigationTo:v3];
  }
}

- (void)cameraViewfinder:(id)viewfinder viewfinderSessionDidBegin:(id)begin
{
  self->_viewfinderIsActive = 1;
  if ([(_OSIBLMitigation *)self->_currentMitigation level:viewfinder])
  {
    v5 = [(_OSIBLManager *)self mitigationWithLevel:0];
    [(_OSIBLManager *)self updateMitigationTo:v5];
  }
}

- (BOOL)queryAndUpdateCurrentConsoleModeState
{
  v13 = *MEMORY[0x277D85DE8];
  state64 = 0;
  consoleModeNotifyToken = self->_consoleModeNotifyToken;
  if (consoleModeNotifyToken == -1)
  {
    result = 0;
  }

  else
  {
    isConsoleModeActive = self->_isConsoleModeActive;
    state = notify_get_state(consoleModeNotifyToken, &state64);
    log = self->_log;
    if (state)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [_OSIBLManager queryAndUpdateCurrentConsoleModeState];
      }

      v7 = self->_isConsoleModeActive;
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v12 = state64;
        _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Console Mode Status is now %{public}llu", buf, 0xCu);
      }

      v7 = state64 != 0;
      self->_isConsoleModeActive = v7;
    }

    result = isConsoleModeActive != v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldOverrideMitigations
{
  if (self->_isConsoleModeActive)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v3 = "Console Mode active";
      v4 = &v7;
LABEL_7:
      _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
      return 1;
    }

    return 1;
  }

  if (self->_viewfinderIsActive)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 0;
      v3 = "Viewfinder camera active";
      v4 = &v6;
      goto LABEL_7;
    }

    return 1;
  }

  return 0;
}

- (id)mitigationWithLevel:(int64_t)level
{
  v4 = objc_opt_new();
  [v4 setLevel:level];
  [v4 setConfidence:1.0];

  return v4;
}

- (id)testOverridenMitigation
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"testOverrideMitigationAlways"];
  v4 = v3;
  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v5 = 50;
    }

    else
    {
      v5 = 0;
    }

    v6 = [(_OSIBLManager *)self mitigationWithLevel:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentMitigationWithError:(id *)error
{
  testOverridenMitigation = [(_OSIBLManager *)self testOverridenMitigation];
  if (testOverridenMitigation)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "Returning test overridden mitigation", buf, 2u);
    }

    v6 = testOverridenMitigation;
  }

  else
  {
    if ([(_OSIBLManager *)self shouldOverrideMitigations])
    {
      v8 = [(_OSIBLManager *)self mitigationWithLevel:0];
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44___OSIBLManager_currentMitigationWithError___block_invoke;
      block[3] = &unk_2799C1770;
      block[4] = self;
      dispatch_sync(queue, block);
      v8 = self->_currentMitigation;
    }

    v7 = v8;
    if (v8)
    {
      goto LABEL_10;
    }

    v6 = [(_OSIBLManager *)self mitigationWithLevel:0];
  }

  v7 = v6;
LABEL_10:

  return v7;
}

- (void)handleFeatureDisabled
{
  managerStartStopQueue = self->_managerStartStopQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38___OSIBLManager_handleFeatureDisabled__block_invoke;
  block[3] = &unk_2799C1770;
  block[4] = self;
  dispatch_sync(managerStartStopQueue, block);
}

- (BOOL)updateFeatureState:(int64_t)state withError:(id *)error
{
  featureStatusQueue = self->_featureStatusQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46___OSIBLManager_updateFeatureState_withError___block_invoke;
  v6[3] = &unk_2799C1860;
  v6[4] = self;
  v6[5] = state;
  dispatch_sync(featureStatusQueue, v6);
  return 1;
}

- (BOOL)updateNotificationsState:(int64_t)state withError:(id *)error
{
  featureStatusQueue = self->_featureStatusQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52___OSIBLManager_updateNotificationsState_withError___block_invoke;
  v6[3] = &unk_2799C1860;
  v6[4] = self;
  v6[5] = state;
  dispatch_sync(featureStatusQueue, v6);
  return 1;
}

- (void)shadowEvaluateForModels:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_2_1(&dword_25D171000, v5, v6, "Shadow evaluating for Drain prediction failed. Error %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)hasVariationForMedianLevels:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithInteger:a2];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  _os_log_debug_impl(&dword_25D171000, v6, OS_LOG_TYPE_DEBUG, "Not enough variation in the values. Min %@, Max %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)isHighDrainOverAggregatedMedianWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 description];
  OUTLINED_FUNCTION_2_1(&dword_25D171000, v5, v6, "Returning because of error %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)isHighDrainOverAggregatedMedianWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_25D171000, a2, OS_LOG_TYPE_DEBUG, "Using StatMedian %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)predictMitigationLevelWithError:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryAndUpdateCurrentConsoleModeState
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end