@interface _OSIAutoLPMManager
+ (id)sharedInstance;
- (BOOL)isPluggedIn;
- (_OSIAutoLPMManager)init;
- (void)disengageAutoLPM;
- (void)engageAutoLPM;
- (void)evaluateAutoLPMDisengagement;
- (void)evaluateAutoLPMEngagement;
- (void)start;
@end

@implementation _OSIAutoLPMManager

- (_OSIAutoLPMManager)init
{
  v15.receiver = self;
  v15.super_class = _OSIAutoLPMManager;
  v2 = [(_OSIAutoLPMManager *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.osintelligence.iblm"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.osintelligence.OSIAutoLPMManager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = os_log_create("com.apple.osintelligence", "AutoLPMManager");
    log = v2->_log;
    v2->_log = v8;

    v10 = [(_OSIAutoLPMManager *)v2 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25D171000, v10, OS_LOG_TYPE_DEFAULT, "AutoLPMManager initiating...", v14, 2u);
    }

    userContext = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = userContext;

    v2->_didEnableAutoLPM = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"autoLPMState"];
  }

  return v2;
}

- (void)start
{
  v3 = MEMORY[0x277CFE360];
  keyPathForBatteryLevel = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  keyPathForBatteryLevel2 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  keyPathForBatteryLevel3 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = [v3 predicateForKeyPath:keyPathForBatteryLevel withFormat:@"SELF.%@.value == %@ OR SELF.%@.value == %@", keyPathForBatteryLevel2, &unk_286EB8BE8, keyPathForBatteryLevel3, &unk_286EB8C00];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __27___OSIAutoLPMManager_start__block_invoke;
  v19[3] = &unk_2799C1838;
  v19[4] = self;
  v8 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.osintelligence.iblm.autoLPM" contextualPredicate:v7 clientIdentifier:@"com.apple.osintelligence.iblm.contextstore-registration" callback:v19];
  [(_CDLocalContext *)self->_context registerCallback:v8];
  v9 = MEMORY[0x277CFE360];
  keyPathForLowPowerModeStatus = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
  v11 = [v9 predicateForChangeAtKeyPath:keyPathForLowPowerModeStatus];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __27___OSIAutoLPMManager_start__block_invoke_31;
  v18[3] = &unk_2799C1838;
  v18[4] = self;
  v12 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.osintelligence.iblm.LPMState" contextualPredicate:v11 clientIdentifier:@"com.apple.osintelligence.iblm.contextstore-registration" callback:v18];

  [(_CDLocalContext *)self->_context registerCallback:v12];
  v13 = MEMORY[0x277CFE360];
  keyPathForPluginStatus = [MEMORY[0x277CFE338] keyPathForPluginStatus];
  v15 = [v13 predicateForChangeAtKeyPath:keyPathForPluginStatus];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27___OSIAutoLPMManager_start__block_invoke_3;
  v17[3] = &unk_2799C1838;
  v17[4] = self;
  v16 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.osintelligence.iblm.autoLPMpluggedInState" contextualPredicate:v15 clientIdentifier:@"com.apple.osintelligence.iblm.contextstore-registration" callback:v17];

  [(_CDLocalContext *)self->_context registerCallback:v16];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[_OSIAutoLPMManager sharedInstance];
  }

  v3 = sharedInstance_instance_4;

  return v3;
}

- (BOOL)isPluggedIn
{
  context = self->_context;
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v4 = [(_CDLocalContext *)context objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryExternalConnectedKey = [MEMORY[0x277CFE338] batteryExternalConnectedKey];
  v6 = [v4 objectForKeyedSubscript:batteryExternalConnectedKey];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)engageAutoLPM
{
  v3 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v3 isIBLMCurrentlyEnabled];

  v5 = [(_OSIAutoLPMManager *)self log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isIBLMCurrentlyEnabled)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "Engaging Auto LPM", buf, 2u);
    }

    mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
    v8 = [mEMORY[0x277D244D8] setPowerMode:1 fromSource:*MEMORY[0x277D244E0]];

    if (v8)
    {
      self->_didEnableAutoLPM = 1;
      [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"autoLPMState"];
      v9 = [(_OSIAutoLPMManager *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25D171000, v9, OS_LOG_TYPE_DEFAULT, "Engaged Auto LPM", v12, 2u);
      }

      v10 = +[_OSIBLMAnalyticsHandler sharedInstance];
      [v10 recordAutoLPMState:1];

      v5 = [(NSUserDefaults *)self->_defaults valueForKey:@"presentedFirstUserNotification"];
      if (!v5)
      {
        [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"presentedFirstUserNotification"];
        v11 = +[_OSIBLMAnalyticsHandler sharedInstance];
        [v11 recordIBLMFirstUserNotificationTrigger:2];
      }
    }

    else
    {
      v5 = [(_OSIAutoLPMManager *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(_OSIAutoLPMManager *)v5 engageAutoLPM];
      }
    }
  }

  else if (v6)
  {
    *v14 = 0;
    _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "IBLM switch is disabled. Skipping Auto LPM", v14, 2u);
  }
}

- (void)disengageAutoLPM
{
  v3 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v3 isIBLMCurrentlyEnabled];

  v5 = [(_OSIAutoLPMManager *)self log];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isIBLMCurrentlyEnabled)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "Disengaging Auto LPM", buf, 2u);
    }

    mEMORY[0x277D244D8] = [MEMORY[0x277D244D8] sharedInstance];
    v8 = [mEMORY[0x277D244D8] setPowerMode:0 fromSource:*MEMORY[0x277D244E0]];

    if (v8)
    {
      self->_didEnableAutoLPM = 0;
      [(NSUserDefaults *)self->_defaults setBool:0 forKey:@"autoLPMState"];
      v9 = [(_OSIAutoLPMManager *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25D171000, v9, OS_LOG_TYPE_DEFAULT, "Disengaged Auto LPM", v10, 2u);
      }

      v5 = +[_OSIBLMAnalyticsHandler sharedInstance];
      [v5 recordAutoLPMState:0];
    }

    else
    {
      v5 = [(_OSIAutoLPMManager *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(_OSIAutoLPMManager *)v5 disengageAutoLPM];
      }
    }
  }

  else if (v6)
  {
    *v12 = 0;
    _os_log_impl(&dword_25D171000, v5, OS_LOG_TYPE_DEFAULT, "IBLM switch is disabled. Falling back to default LPM behavior", v12, 2u);
  }
}

- (void)evaluateAutoLPMEngagement
{
  context = [(_OSIAutoLPMManager *)self context];
  keyPathForLowPowerModeStatus = [MEMORY[0x277CFE338] keyPathForLowPowerModeStatus];
  v5 = [context objectForKeyedSubscript:keyPathForLowPowerModeStatus];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_DEFAULT, "LPM is already enabled. Skipping Auto LPM", v10, 2u);
    }
  }

  else
  {
    v8 = +[_OSBatteryPredictor predictor];
    v9 = [v8 recommendsAutoLPMWithError:0];

    if (v9)
    {

      [(_OSIAutoLPMManager *)self engageAutoLPM];
    }
  }
}

- (void)evaluateAutoLPMDisengagement
{
  context = self->_context;
  keyPathForBatteryStateDataDictionary = [MEMORY[0x277CFE338] keyPathForBatteryStateDataDictionary];
  v8 = [(_CDLocalContext *)context objectForKeyedSubscript:keyPathForBatteryStateDataDictionary];

  batteryPercentageKey = [MEMORY[0x277CFE338] batteryPercentageKey];
  v6 = [v8 objectForKeyedSubscript:batteryPercentageKey];
  integerValue = [v6 integerValue];

  if (integerValue >= 20 && [(_OSIAutoLPMManager *)self didEnableAutoLPM])
  {
    [(_OSIAutoLPMManager *)self disengageAutoLPM];
  }
}

@end