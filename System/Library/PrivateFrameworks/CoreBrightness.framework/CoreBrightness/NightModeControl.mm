@interface NightModeControl
- (BOOL)parseStatusDictionary:(id)dictionary intoStruct:(id *)struct shouldUpdatePrefs:(BOOL *)prefs;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)updateTransitionTimesFromSchedule:(double)schedule;
- (BOOL)updateTransitionTimesFromSunriseSunset:(double)sunset;
- (NightModeControl)initWithSupportObject:(id)object queue:(id)queue callback:(id)callback;
- (id)copyDictionaryFromStatus:(id *)status;
- (id)copyLowPowerModeState;
- (id)copyPreferenceForKey:(id)key user:(id)user;
- (id)copyStatusDictionaryFromPrefs;
- (id)copyTimeStringWithHour:(int)hour minute:(int)minute second:(int)second;
- (id)getPropertyForKey:(id)key;
- (void)addSupportObject:(id)object;
- (void)cancelSchedule;
- (void)cancelTransition;
- (void)clockChanged;
- (void)dealloc;
- (void)displayAlertInteractive:(BOOL)interactive;
- (void)enableBlueLightReduction:(BOOL)reduction withOption:(int)option;
- (void)initiateFullMaxTransition;
- (void)initiateFullMinTransition;
- (void)initiateRestrictedMaxTransition;
- (void)initiateTransitionTo:(float)to andRampLength:(float)length;
- (void)reevaluateCurrentStateWithFactorFadeOption:(float)option;
- (void)removeSupportObject:(id)object;
- (void)retrieveSunriseSunsetTimesFromBackup:(double)backup;
- (void)saveStatusToPrefs:(id)prefs;
- (void)scheduleNextTransition:(double)transition withType:(int)type;
- (void)setAlgoState:(int)state;
- (void)setMode:(int)mode;
- (void)setNightModeFactor:(float)factor withFadePeriod:(float)period;
- (void)setSchedule:(id)schedule;
- (void)setSunPermitted:(BOOL)permitted;
- (void)tearDownAllTimers;
- (void)timeZoneChanged;
- (void)transitionTimerHandler;
- (void)updateLowPowerModeState:(id)state;
- (void)updateOptionTimestamp:(double)timestamp;
- (void)updateStatusDictionaryWithValue:(id)value forKey:(id)key;
- (void)updateSunriseSunsetBackup;
- (void)updateSunriseSunsetInfo:(id)info;
- (void)updateTransitionTimes:(double)times;
@end

@implementation NightModeControl

- (void)cancelSchedule
{
  selfCopy = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v8 = logHandle;
  v7 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel next transition schedule", v6, 2u);
  }

  if (selfCopy->_nextTransitionTimer)
  {
    dispatch_source_cancel(selfCopy->_nextTransitionTimer);
    dispatch_release(selfCopy->_nextTransitionTimer);
    selfCopy->_nextTransitionTimer = 0;
    selfCopy->_currentScheduledTransitionType = 0;
  }
}

- (void)cancelTransition
{
  selfCopy = self;
  v10 = a2;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v9 = logHandle;
  v8 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "cancel current transition", v7, 2u);
  }

  if (selfCopy->_transitionTimer)
  {
    dispatch_source_cancel(selfCopy->_transitionTimer);
    dispatch_release(selfCopy->_transitionTimer);
    selfCopy->_transitionTimer = 0;
  }

  factor = selfCopy->_factorState.factor;
  selfCopy->_factorState.target = factor;
  selfCopy->_factorState.start = factor;
}

- (BOOL)parseStatusDictionary:(id)dictionary intoStruct:(id *)struct shouldUpdatePrefs:(BOOL *)prefs
{
  v19 = 0;
  if (prefs)
  {
    *prefs = 0;
  }

  [dictionary objectForKey:@"Version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(dictionary objectForKey:{@"Version", "intValue"}] != 1)
  {
    return 0;
  }

  struct->var0 = 1;
  [dictionary objectForKey:@"BlueReductionEnabled"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  struct->var1 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionEnabled", "intValue"}] != 0;
  [dictionary objectForKey:@"BlueReductionMode"];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  struct->var3 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionMode", "intValue"}];
  if (struct->var3)
  {
    v19 = 1;
  }

  [dictionary objectForKey:@"BlueReductionSunScheduleAllowed"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  struct->var2 = [objc_msgSend(dictionary objectForKey:{@"BlueReductionSunScheduleAllowed", "intValue"}] != 0;
  v18 = [dictionary objectForKey:@"BlueLightReductionSchedule"];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  [v18 objectForKey:@"NightStartHour"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  struct->var4.var0.var0 = [objc_msgSend(v18 objectForKey:{@"NightStartHour", "intValue"}];
  [v18 objectForKey:@"NightStartMinute"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  struct->var4.var0.var1 = [objc_msgSend(v18 objectForKey:{@"NightStartMinute", "intValue"}];
  [v18 objectForKey:@"DayStartHour"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  struct->var4.var1.var0 = [objc_msgSend(v18 objectForKey:{@"DayStartHour", "intValue"}];
  [v18 objectForKey:@"DayStartMinute"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  struct->var4.var1.var1 = [objc_msgSend(v18 objectForKey:{@"DayStartMinute", "intValue"}];
  [dictionary objectForKey:@"BlueLightReductionDisableScheduleAlertCounter"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (v12)
  {
    self->_notifyUserAboutScheduleCounter = [objc_msgSend(dictionary objectForKey:{@"BlueLightReductionDisableScheduleAlertCounter", "intValue"}];
  }

  if (self->_notifyUserAboutScheduleCounter < 3 && (v19 & 1) != 0)
  {
    self->_notifyUserAboutScheduleCounter = 3;
    if (prefs)
    {
      *prefs = 1;
    }
  }

  [dictionary objectForKey:@"BlueLightReductionRevertToSunriseSunset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_revertToSunriseSunset = [objc_msgSend(dictionary objectForKey:{@"BlueLightReductionRevertToSunriseSunset", "intValue"}] != 0;
  }

  [dictionary objectForKey:@"BlueLightReductionAlgoOverride"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_algoState = [objc_msgSend(dictionary objectForKey:{@"BlueLightReductionAlgoOverride", "intValue"}];
    if (self->_algoState == 2 || self->_algoState == 1)
    {
      v17 = [dictionary objectForKey:@"BlueLightReductionAlgoOverrideTimestamp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_checkInactivity = 1;
        [v17 timeIntervalSinceReferenceDate];
        self->_displayOffTimestamp = v13;
      }
    }

    else if (self->_algoState == 4 || self->_algoState == 3)
    {
      v16 = [dictionary objectForKey:@"BlueLightReductionAlgoOverrideTimestamp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v16 timeIntervalSinceReferenceDate];
        self->_untilNexTransitionTimestamp = v14;
      }
    }
  }

  return 1;
}

- (id)copyDictionaryFromStatus:(id *)status
{
  v15 = 0;
  if (status)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
    if (v5)
    {
      [v15 setObject:v5 forKey:@"AutoBlueReductionEnabled"];
      MEMORY[0x1E69E5920](v5);
    }

    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var1];
    if (v6)
    {
      [v15 setObject:v6 forKey:@"BlueReductionEnabled"];
      MEMORY[0x1E69E5920](v6);
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var3];
    if (v7)
    {
      [v15 setObject:v7 forKey:@"BlueReductionMode"];
      MEMORY[0x1E69E5920](v7);
    }

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var2];
    if (v8)
    {
      [v15 setObject:v8 forKey:@"BlueReductionSunScheduleAllowed"];
      MEMORY[0x1E69E5920](v8);
    }

    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var6];
    if (v9)
    {
      [v15 setObject:v9 forKey:@"BlueReductionAvailable"];
      MEMORY[0x1E69E5920](v9);
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    if (v4)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var4.var0.var0];
      if (v10)
      {
        [v4 setObject:v10 forKey:@"NightStartHour"];
        MEMORY[0x1E69E5920](v10);
      }

      v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var4.var0.var1];
      if (v11)
      {
        [v4 setObject:v11 forKey:@"NightStartMinute"];
        MEMORY[0x1E69E5920](v11);
      }

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var4.var1.var0];
      if (v12)
      {
        [v4 setObject:v12 forKey:@"DayStartHour"];
        MEMORY[0x1E69E5920](v12);
      }

      v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:status->var4.var1.var1];
      if (v13)
      {
        [v4 setObject:v13 forKey:@"DayStartMinute"];
        MEMORY[0x1E69E5920](v13);
      }

      [v15 setObject:v4 forKey:@"BlueLightReductionSchedule"];
      MEMORY[0x1E69E5920](v4);
      v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
      if (v14)
      {
        [v15 setObject:v14 forKey:@"Version"];
        MEMORY[0x1E69E5920](v14);
      }
    }
  }

  return v15;
}

- (void)saveStatusToPrefs:(id)prefs
{
  if (prefs)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
    if (v3)
    {
      if ([v3 objectForKey:@"CBBlueReductionStatus"] || !self->_statusUpdated)
      {
        [v3 setObject:prefs forKey:@"CBBlueReductionStatus"];
        [v3 synchronize];
        self->_statusUpdated = 1;
      }

      MEMORY[0x1E69E5920](v3);
    }
  }
}

- (id)copyStatusDictionaryFromPrefs
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v5)
  {
    [v5 synchronize];
    v6 = [v5 objectForKey:@"CBBlueReductionStatus"];
    if (v6)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
    }

    MEMORY[0x1E69E5920](v5);
  }

  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v8, v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "NightShift status from preferences: %@", v8, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (void)updateStatusDictionaryWithValue:(id)value forKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_properties)
  {
    v8 = [(NSMutableDictionary *)self->_properties objectForKey:@"CBBlueReductionStatus"];
    if (v8)
    {
      v7 = 1;
      if (value)
      {
        [v8 setObject:value forKey:key];
      }

      else if ([v8 objectForKey:key])
      {
        [v8 removeObjectForKey:key];
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        [(NightModeControl *)self saveStatusToPrefs:v8];
        if (self->_callbackBlock && (([key isEqualToString:@"AutoBlueReductionEnabled"] & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueReductionEnabled") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueReductionMode") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueReductionSunScheduleAllowed") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueLightReductionDisableFlags") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueReductionAvailable") & 1) != 0 || (objc_msgSend(key, "isEqualToString:", @"BlueLightReductionSchedule") & 1) != 0))
        {
          (*(self->_callbackBlock + 2))();
        }

        if ([key isEqualToString:@"BlueReductionEnabled"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [objc_alloc(MEMORY[0x1E698EBA0]) initWithStarting:value reason:0];
            [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")];
            MEMORY[0x1E69E5920](v6);
          }
        }
      }
    }

    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v12, key, value);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "NightShift status update: %@ = %@", v12, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateLowPowerModeState:(id)state
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v3)
  {
    if (state)
    {
      [v3 setObject:state forKey:@"BLRLowPowerSavedMode"];
      [v3 synchronize];
    }

    else if ([v3 objectForKey:@"BLRLowPowerSavedMode"])
    {
      [v3 removeObjectForKey:@"BLRLowPowerSavedMode"];
      [v3 synchronize];
    }

    MEMORY[0x1E69E5920](v3);
  }
}

- (id)copyLowPowerModeState
{
  v5 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v4)
  {
    [v4 synchronize];
    v6 = [v4 objectForKey:@"BLRLowPowerSavedMode"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      intValue = [v6 intValue];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:intValue];
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E69E5920](v4);
  }

  return v5;
}

- (NightModeControl)initWithSupportObject:(id)object queue:(id)queue callback:(id)callback
{
  v68 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v64 = a2;
  objectCopy = object;
  queueCopy = queue;
  callbackCopy = callback;
  v60.receiver = self;
  v60.super_class = NightModeControl;
  selfCopy = [(NightModeControl *)&v60 init];
  if (selfCopy)
  {
    if (queueCopy && callbackCopy)
    {
      *(selfCopy + 1) = os_log_create("com.apple.CoreBrightness.NightShift", "default");
      *(selfCopy + 2) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      v54[0] = 0;
      v54[1] = v54;
      v55 = 1375731712;
      v56 = 48;
      v57 = __Block_byref_object_copy__2;
      v58 = __Block_byref_object_dispose__2;
      v59 = selfCopy;
      v27 = [SunriseSunsetProvider alloc];
      v48 = MEMORY[0x1E69E9820];
      v49 = -1073741824;
      v50 = 0;
      v51 = __57__NightModeControl_initWithSupportObject_queue_callback___block_invoke;
      v52 = &unk_1E867B818;
      v53 = v54;
      *(selfCopy + 3) = [(SunriseSunsetProvider *)v27 initWithCallback:?];
      *(selfCopy + 8) = 20;
      if (!*(selfCopy + 3))
      {
        if (*(selfCopy + 1))
        {
          v26 = *(selfCopy + 1);
        }

        else
        {
          v25 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v26 = v25;
        }

        v47 = v26;
        v46 = 16;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          log = v47;
          type = v46;
          __os_log_helper_16_0_0(v45);
          _os_log_error_impl(&dword_1DE8E5000, log, type, "ERROR - sunrise/sunset provider not loaded information not available", v45, 2u);
        }
      }

      *(selfCopy + 38) = @"sunrise";
      *(selfCopy + 39) = @"sunset";
      *(selfCopy + 40) = @"previousSunrise";
      *(selfCopy + 41) = @"previousSunset";
      *(selfCopy + 42) = @"nextSunrise";
      *(selfCopy + 43) = @"nextSunset";
      *(selfCopy + 44) = @"isDaylight";
      *(selfCopy + 5) = 0;
      selfCopy[200] = 0;
      *(selfCopy + 6) = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (objectCopy)
      {
        [*(selfCopy + 6) addObject:objectCopy];
      }

      *(selfCopy + 7) = queueCopy;
      dispatch_retain(*(selfCopy + 7));
      *(selfCopy + 22) = 0;
      *(selfCopy + 33) = 0;
      *(selfCopy + 34) = 0;
      *(selfCopy + 32) = 0;
      *(selfCopy + 27) = 0;
      *(selfCopy + 28) = 1.0;
      selfCopy[229] = 1;
      Current = CFAbsoluteTimeGetCurrent();
      *(selfCopy + 27) = Current;
      *(selfCopy + 26) = Current;
      selfCopy[228] = 0;
      *(selfCopy + 56) = 1155596288;
      *(selfCopy + 8) = 0;
      *(selfCopy + 9) = 0;
      *(selfCopy + 10) = objc_alloc_init(CBAnalyticsNightShiftTracker);
      *(selfCopy + 51) = 0;
      *(selfCopy + 90) = 0;
      selfCopy[377] = 0;
      *(selfCopy + 70) = 22;
      *(selfCopy + 71) = 0;
      *(selfCopy + 72) = 7;
      *(selfCopy + 73) = 0;
      selfCopy[296] = 0;
      *(selfCopy + 33) = 0;
      *(selfCopy + 18) = CFTimeZoneCopySystem();
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:selfCopy selector:sel_timeZoneChanged name:*MEMORY[0x1E695DA68] object:0];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:selfCopy selector:sel_clockChanged name:*MEMORY[0x1E695DA60] object:0];
      v44 = 0;
      copyStatusDictionaryFromPrefs = [selfCopy copyStatusDictionaryFromPrefs];
      if (copyStatusDictionaryFromPrefs)
      {
        copyLowPowerModeState = [selfCopy copyLowPowerModeState];
        if (copyLowPowerModeState)
        {
          [copyStatusDictionaryFromPrefs setObject:copyLowPowerModeState forKey:@"BlueReductionMode"];
          [selfCopy updateLowPowerModeState:0];
          MEMORY[0x1E69E5920](copyLowPowerModeState);
        }

        [copyStatusDictionaryFromPrefs removeObjectForKey:@"BlueLightReductionDisableFlags"];
        selfCopy[296] = 1;
        if ([selfCopy parseStatusDictionary:copyStatusDictionaryFromPrefs intoStruct:selfCopy + 240 shouldUpdatePrefs:&v44])
        {
          v38 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
          if (v38)
          {
            [copyStatusDictionaryFromPrefs setValue:v38 forKey:@"AutoBlueReductionEnabled"];
            [copyStatusDictionaryFromPrefs setValue:v38 forKey:@"BlueReductionAvailable"];
            MEMORY[0x1E69E5920](v38);
          }

          if (*(selfCopy + 1))
          {
            v15 = *(selfCopy + 1);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              inited = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              inited = init_default_corebrightness_log();
            }

            v15 = inited;
          }

          v37 = v15;
          v36 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v67, copyStatusDictionaryFromPrefs);
            _os_log_debug_impl(&dword_1DE8E5000, v37, v36, "Defaults valid and updated: %@", v67, 0xCu);
          }
        }

        else
        {
          MEMORY[0x1E69E5920](copyStatusDictionaryFromPrefs);
          copyStatusDictionaryFromPrefs = 0;
          if (*(selfCopy + 1))
          {
            v19 = *(selfCopy + 1);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v18 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v18 = init_default_corebrightness_log();
            }

            v19 = v18;
          }

          oslog = v19;
          v40 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v16 = oslog;
            v17 = v40;
            __os_log_helper_16_0_0(v39);
            _os_log_error_impl(&dword_1DE8E5000, v16, v17, "Defaults invalid", v39, 2u);
          }
        }
      }

      selfCopy[272] = 1;
      if (!copyStatusDictionaryFromPrefs)
      {
        if (*(selfCopy + 1))
        {
          v13 = *(selfCopy + 1);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v12 = init_default_corebrightness_log();
          }

          v13 = v12;
        }

        v35 = v13;
        v34 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v35;
          v11 = v34;
          __os_log_helper_16_0_0(v33);
          _os_log_impl(&dword_1DE8E5000, v10, v11, "Creating default status info", v33, 2u);
        }

        selfCopy[240] = 1;
        selfCopy[241] = 0;
        *(selfCopy + 61) = 0;
        *(selfCopy + 62) = 22;
        *(selfCopy + 63) = 0;
        *(selfCopy + 64) = 7;
        *(selfCopy + 65) = 0;
        selfCopy[242] = 0;
        copyStatusDictionaryFromPrefs = [selfCopy copyDictionaryFromStatus:selfCopy + 240];
      }

      if (copyStatusDictionaryFromPrefs)
      {
        if (*(selfCopy + 2))
        {
          [*(selfCopy + 2) setObject:copyStatusDictionaryFromPrefs forKey:@"CBBlueReductionStatus"];
        }

        MEMORY[0x1E69E5920](copyStatusDictionaryFromPrefs);
      }

      if (v44)
      {
        v32 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(selfCopy + 90)];
        if (v32)
        {
          [selfCopy updateStatusDictionaryWithValue:v32 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
          MEMORY[0x1E69E5920](v32);
        }
      }

      if (callbackCopy)
      {
        *(selfCopy + 29) = [callbackCopy copy];
      }

      if (*(selfCopy + 61) == 1)
      {
        *(selfCopy + 23) = 1155596288;
      }

      else
      {
        *(selfCopy + 23) = 1123024896;
      }

      *(selfCopy + 24) = *(selfCopy + 23);
      *(selfCopy + 26) = 2.0;
      *(selfCopy + 25) = 1.0;
      if (*(selfCopy + 2))
      {
        v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(selfCopy + 23)];
        if (v28)
        {
          [*(selfCopy + 2) setObject:v28 forKey:@"BlueLightReductionTransitionLength"];
          MEMORY[0x1E69E5920](v28);
        }

        v29 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(selfCopy + 26)];
        if (v29)
        {
          [*(selfCopy + 2) setObject:v29 forKey:@"BlueLightReductionTransitionRate"];
          MEMORY[0x1E69E5920](v29);
        }

        v30 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(selfCopy + 56)];
        if (v30)
        {
          [*(selfCopy + 2) setObject:v30 forKey:@"BlueLightReductionInactivityTimeout"];
          MEMORY[0x1E69E5920](v30);
        }

        v9 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v5) = *(selfCopy + 32);
        v31 = [v9 initWithFloat:v5];
        if (v31)
        {
          [*(selfCopy + 2) setObject:v31 forKey:@"BlueLightReductionFactor"];
          MEMORY[0x1E69E5920](v31);
        }
      }

      _Block_object_dispose(v54, 8);
    }

    else
    {
      MEMORY[0x1E69E5920](selfCopy);
      selfCopy = 0;
    }
  }

  if (*(selfCopy + 1))
  {
    v8 = *(selfCopy + 1);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v7 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v7 = init_default_corebrightness_log();
    }

    v8 = v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v66, selfCopy);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Night Shift initialised: %@", v66, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

void __57__NightModeControl_initWithSupportObject_queue_callback___block_invoke(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = a1;
  v11 = [a2 copy];
  global_queue = dispatch_get_global_queue(2, 0);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __57__NightModeControl_initWithSupportObject_queue_callback___block_invoke_2;
  v8 = &unk_1E867B7F0;
  v10 = *(a1 + 32);
  v9 = v11;
  dispatch_async(global_queue, &block);
}

uint64_t __57__NightModeControl_initWithSupportObject_queue_callback___block_invoke_2(uint64_t a1)
{
  obj = *(*(*(a1 + 40) + 8) + 40);
  objc_sync_enter(obj);
  [*(*(*(a1 + 40) + 8) + 40) updateSunriseSunsetInfo:*(a1 + 32)];
  if (*(*(*(*(a1 + 40) + 8) + 40) + 244) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) reevaluateCurrentState];
  }

  MEMORY[0x1E69E5920](*(a1 + 32));
  return objc_sync_exit(obj);
}

- (void)addSupportObject:(id)object
{
  selfCopy = self;
  v7 = a2;
  objectCopy = object;
  if (object)
  {
    [(NSMutableArray *)selfCopy->_supportObjs addObject:objectCopy];
    v5 = [(NightModeControl *)selfCopy getPropertyForKey:@"BlueLightReductionFactor"];
    if (v5)
    {
      v3 = objc_alloc(MEMORY[0x1E695DF20]);
      v4 = [v3 initWithObjectsAndKeys:{&unk_1F59C8CD0, @"BlueLightReductionFactorFadePeriod", v5, @"BlueLightReductionFactorValue", MEMORY[0x1E695E118], @"ForceUpdate", 0}];
      [objectCopy setNightShiftFactorDictionary:v4];
      MEMORY[0x1E69E5920](v4);
    }
  }
}

- (void)removeSupportObject:(id)object
{
  if (object)
  {
    [(NSMutableArray *)self->_supportObjs removeObject:object];
  }
}

- (void)dealloc
{
  selfCopy = self;
  v13 = a2;
  objc_sync_enter(self);
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v12 = logHandle;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "Night Shift terminating", v10, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x1E695DA68] object:0];
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:selfCopy name:*MEMORY[0x1E695DA60] object:0];
  if (selfCopy->_sunriseSunsetProvider)
  {
    [(SunriseSunsetProvider *)selfCopy->_sunriseSunsetProvider cancel];
    MEMORY[0x1E69E5920](selfCopy->_sunriseSunsetProvider);
    selfCopy->_sunriseSunsetProvider = 0;
  }

  if (selfCopy->_callbackBlock)
  {
    MEMORY[0x1E69E5920](selfCopy->_callbackBlock);
    selfCopy->_callbackBlock = 0;
  }

  if (selfCopy->_sunriseSunsetInfo)
  {
    MEMORY[0x1E69E5920](selfCopy->_sunriseSunsetInfo);
    selfCopy->_sunriseSunsetInfo = 0;
  }

  if (selfCopy->_properties)
  {
    MEMORY[0x1E69E5920](selfCopy->_properties);
    selfCopy->_properties = 0;
  }

  [(NightModeControl *)selfCopy tearDownAllTimers];
  if ([(CBAnalyticsNightShiftTracker *)selfCopy->_modeTracker isStarted])
  {
    [(CBAnalyticsNightShiftTracker *)selfCopy->_modeTracker stop:selfCopy->_status.mode isEnabled:selfCopy->_status.enabled];
  }

  MEMORY[0x1E69E5920](selfCopy->_modeTracker);
  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_supportObjs);
  selfCopy->_supportObjs = 0;
  if (selfCopy->_currentTimeZone)
  {
    CFRelease(selfCopy->_currentTimeZone);
    selfCopy->_currentTimeZone = 0;
  }

  objc_sync_exit(self);
  v9.receiver = selfCopy;
  v9.super_class = NightModeControl;
  [(NightModeControl *)&v9 dealloc];
}

- (id)getPropertyForKey:(id)key
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:key];
  objc_sync_exit(self);
  return v5;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v57 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v54 = a2;
  propertyCopy = property;
  keyCopy = key;
  v51 = 1;
  objc_sync_enter(self);
  if ([keyCopy isEqualToString:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DisplayBrightnessFactorWithFade"))
  {
    v50 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [propertyCopy objectForKey:@"DisplayBrightnessFactor"];
    }

    else
    {
      v50 = propertyCopy;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v50 floatValue];
      v49 = v4;
      v5 = v4;
      if (v5 <= 0.0)
      {
        if (selfCopy->_notificationInProgress && selfCopy->_enableNotification)
        {
          CFUserNotificationCancel(selfCopy->_enableNotification);
        }

        if (selfCopy->_algoState == 2 || selfCopy->_algoState == 1)
        {
          selfCopy->_displayOffTimestamp = CFAbsoluteTimeGetCurrent();
          [(NightModeControl *)selfCopy updateOptionTimestamp:selfCopy->_displayOffTimestamp];
          selfCopy->_checkInactivity = 1;
          if (selfCopy->_logHandle)
          {
            logHandle = selfCopy->_logHandle;
          }

          else
          {
            v27 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            logHandle = v27;
          }

          v47 = logHandle;
          v46 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_0_2_4_0_8_0(v56, selfCopy->_algoState, *&selfCopy->_displayOffTimestamp);
            _os_log_debug_impl(&dword_1DE8E5000, v47, v46, "Display off with algoState=%d ts=%f", v56, 0x12u);
          }
        }

        [(NightModeControl *)selfCopy tearDownAllTimers];
        [(CBAnalyticsNightShiftTracker *)selfCopy->_modeTracker stop:selfCopy->_status.mode isEnabled:selfCopy->_status.enabled];
        selfCopy->_displayOff = 1;
      }

      else if (selfCopy->_displayOff)
      {
        selfCopy->_displayOff = 0;
        [(CBAnalyticsNightShiftTracker *)selfCopy->_modeTracker start:selfCopy->_status.enabled, v5];
        v48 = [(SunriseSunsetProvider *)selfCopy->_sunriseSunsetProvider copySunriseSunsetInfo:selfCopy->_sunriseSunsetInfoQueryTimeout];
        if (v48)
        {
          [(NightModeControl *)selfCopy updateSunriseSunsetInfo:v48];
          MEMORY[0x1E69E5920](v48);
        }

        [(NightModeControl *)selfCopy reevaluateCurrentStateWithFactorFadeOption:0.0];
      }
    }

    goto LABEL_113;
  }

  if ([keyCopy isEqual:@"CBSystemDidWakeFromSleep"])
  {
    if (selfCopy->_logHandle)
    {
      v26 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v26 = inited;
    }

    v45 = v26;
    v44 = 2;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v23 = v45;
      v24 = v44;
      __os_log_helper_16_0_0(v43);
      _os_log_debug_impl(&dword_1DE8E5000, v23, v24, "Force Night Shift update on system wake", v43, 2u);
    }

    [(NightModeControl *)selfCopy reevaluateCurrentStateWithFactorFadeOption:0.0];
    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"AutoBlueReductionEnabled"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"BlueReductionAvailable") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"CBDisplayPresetDisableNightShift"))
  {
    v42 = -1.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([keyCopy isEqualToString:@"AutoBlueReductionEnabled"])
      {
        selfCopy->_status.active = [propertyCopy intValue] != 0;
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:propertyCopy forKey:keyCopy];
      }

      else if ([keyCopy isEqualToString:@"CBDisplayPresetDisableNightShift"])
      {
        available = selfCopy->_status.available;
        if ((__PAIR64__(available, [propertyCopy intValue]) - 1) >> 32)
        {
          [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:keyCopy];
          selfCopy->_status.available = [propertyCopy intValue] == 0;
          v42 = 0.0;
          v41 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:selfCopy->_status.available];
          [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v41 forKey:@"BlueReductionAvailable"];
          MEMORY[0x1E69E5920](v41);
        }
      }

      else if ([keyCopy isEqualToString:@"BlueReductionAvailable"])
      {
        selfCopy->_status.available = [propertyCopy intValue] != 0;
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:propertyCopy forKey:keyCopy];
      }

      if (selfCopy->_status.active && selfCopy->_status.available)
      {
        if ([(NSMutableArray *)selfCopy->_supportObjs count])
        {
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
          if (v37)
          {
            v20 = objc_alloc(MEMORY[0x1E696AD98]);
            *&v7 = selfCopy->_factorState.factor;
            v36 = [v20 initWithFloat:v7];
            if (v36)
            {
              [(NSMutableDictionary *)selfCopy->_properties setObject:v36 forKey:@"BlueLightReductionFactor"];
              [v37 setObject:v36 forKey:@"BlueLightReductionFactorValue"];
              MEMORY[0x1E69E5920](v36);
            }

            v19 = objc_alloc(MEMORY[0x1E696AD98]);
            HIDWORD(v8) = HIDWORD(v42);
            *&v8 = v42;
            v35 = [v19 initWithFloat:v8];
            if (v35)
            {
              [v37 setObject:v35 forKey:@"BlueLightReductionFactorFadePeriod"];
              MEMORY[0x1E69E5920](v35);
            }

            [(NightModeControl *)selfCopy setNightShiftFactorDictionary:v37];
            MEMORY[0x1E69E5920](v37);
          }
        }

        [(NightModeControl *)selfCopy reevaluateCurrentState];
      }

      else if ([(NSMutableArray *)selfCopy->_supportObjs count])
      {
        v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        if (v40)
        {
          v39 = [objc_alloc(MEMORY[0x1E696AD98]) initWithFloat:0.0];
          if (v39)
          {
            [(NSMutableDictionary *)selfCopy->_properties setObject:v39 forKey:@"BlueLightReductionFactor"];
            [v40 setObject:v39 forKey:@"BlueLightReductionFactorValue"];
            MEMORY[0x1E69E5920](v39);
          }

          v21 = objc_alloc(MEMORY[0x1E696AD98]);
          HIDWORD(v6) = HIDWORD(v42);
          *&v6 = v42;
          v38 = [v21 initWithFloat:v6];
          if (v38)
          {
            [v40 setObject:v38 forKey:@"BlueLightReductionFactorFadePeriod"];
            MEMORY[0x1E69E5920](v38);
          }

          [(NightModeControl *)selfCopy setNightShiftFactorDictionary:v40];
          MEMORY[0x1E69E5920](v40);
        }
      }
    }

    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"BlueLightReductionSchedule"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NightModeControl *)selfCopy setSchedule:propertyCopy];
      [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:propertyCopy forKey:keyCopy];
      [(NightModeControl *)selfCopy reevaluateCurrentState];
    }

    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"BlueReductionEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [propertyCopy objectForKey:@"BlueReductionEnabledValue"];
      if (v34)
      {
        v33 = [propertyCopy objectForKey:@"BlueReductionEnabledOption"];
        if (v33)
        {
          -[NightModeControl enableBlueLightReduction:withOption:](selfCopy, "enableBlueLightReduction:withOption:", [v34 intValue] != 0, objc_msgSend(v33, "intValue"));
        }

        else
        {
          -[NightModeControl enableBlueLightReduction:withOption:](selfCopy, "enableBlueLightReduction:withOption:", [v34 intValue] != 0, 0);
        }

        [(NightModeControl *)selfCopy updateLowPowerModeState:0];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selfCopy->_logHandle)
        {
          v18 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v17 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v17 = init_default_corebrightness_log();
          }

          v18 = v17;
        }

        v32 = v18;
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v32;
          v16 = v31;
          __os_log_helper_16_0_0(v30);
          _os_log_impl(&dword_1DE8E5000, v15, v16, "internal settings workaround", v30, 2u);
        }

        [(NightModeControl *)selfCopy setMode:0];
        v14 = selfCopy;
        *&v9 = [propertyCopy intValue];
        [(NightModeControl *)v14 setNightModeFactor:v9];
      }
    }

    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"BlueReductionMode"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:keyCopy];
      -[NightModeControl setMode:](selfCopy, "setMode:", [propertyCopy intValue]);
      [(NightModeControl *)selfCopy updateLowPowerModeState:0];
    }

    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"BlueLightReductionTransitionLength"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:keyCopy];
      [propertyCopy floatValue];
      selfCopy->_transitionLength = v10;
    }

LABEL_99:
    [(NightModeControl *)selfCopy reevaluateCurrentState];
    goto LABEL_113;
  }

  if ([keyCopy isEqualToString:@"BlueLightReductionTransitionRate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:keyCopy];
      [propertyCopy floatValue];
      selfCopy->_transitionRate = v11;
    }

    goto LABEL_99;
  }

  if ([keyCopy isEqualToString:@"BlueLightReductionInactivityTimeout"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:keyCopy];
      [propertyCopy floatValue];
      selfCopy->_inactivityTimeout = v12;
    }
  }

  else if ([keyCopy isEqualToString:@"BlueLightReductionSunInfoQueryTimeout"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)selfCopy->_properties setObject:propertyCopy forKey:@"BlueLightReductionSunInfoQueryTimeout"];
      selfCopy->_sunriseSunsetInfoQueryTimeout = [propertyCopy intValue];
    }
  }

  else
  {
    [keyCopy isEqualToString:@"EcoMode"];
  }

LABEL_113:
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v51 & 1;
}

- (void)setMode:(int)mode
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v26 = a2;
  modeCopy = mode;
  if (self->_status.mode != mode)
  {
    if (modeCopy != 1 || selfCopy->_status.sunSchedulePermitted)
    {
      if (selfCopy->_logHandle)
      {
        logHandle = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v21 = logHandle;
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_4_0_4_0(v28, selfCopy->_status.mode, modeCopy);
        _os_log_impl(&dword_1DE8E5000, v21, v20, "update from mode=%d to new mode=%d", v28, 0xEu);
      }

      [(CBAnalyticsNightShiftTracker *)selfCopy->_modeTracker update:selfCopy->_status.mode isEnabled:selfCopy->_status.enabled];
      [(NightModeControl *)selfCopy setAlgoState:0];
      selfCopy->_status.mode = modeCopy;
      v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:selfCopy->_status.mode];
      if (v19)
      {
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v19 forKey:@"BlueReductionMode"];
        MEMORY[0x1E69E5920](v19);
      }

      if (selfCopy->_status.mode == 1)
      {
        selfCopy->_transitionLength = 1800.0;
      }

      else
      {
        selfCopy->_transitionLength = 120.0;
      }

      selfCopy->_transitionLengthActual = selfCopy->_transitionLength;
      selfCopy->_transitionsTimesCoeff = 1.0;
      if (selfCopy->_revertToSunriseSunset)
      {
        if (selfCopy->_logHandle)
        {
          v7 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v6 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v6 = init_default_corebrightness_log();
          }

          v7 = v6;
        }

        v18 = v7;
        v17 = 1;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v4 = v18;
          v5 = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&dword_1DE8E5000, v4, v5, "user changed mode - clearing out the sun mode revert mark", v16, 2u);
        }

        selfCopy->_revertToSunriseSunset = 0;
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v15 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        MEMORY[0x1E69E5920](v15);
      }

      if (selfCopy->_notifyUserAboutScheduleCounter < 3)
      {
        if (modeCopy)
        {
          selfCopy->_notifyUserAboutScheduleCounter = 3;
          v3 = objc_alloc(MEMORY[0x1E696AD98]);
          v14 = [v3 initWithInt:selfCopy->_notifyUserAboutScheduleCounter];
          if (v14)
          {
            [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v14 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
            MEMORY[0x1E69E5920](v14);
          }
        }
      }

      [(NightModeControl *)selfCopy reevaluateCurrentState];
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v13 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v12 = init_default_corebrightness_log();
        }

        v13 = v12;
      }

      v24 = v13;
      v23 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        log = v24;
        type = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_impl(&dword_1DE8E5000, log, type, "change to sun mode not permitted", v22, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setSchedule:(id)schedule
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v19 = a2;
  scheduleCopy = schedule;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v17 = logHandle;
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v21, scheduleCopy);
    _os_log_impl(&dword_1DE8E5000, v17, v16, "update NightShift schedule: %@", v21, 0xCu);
  }

  [(NSMutableDictionary *)selfCopy->_properties setObject:scheduleCopy forKey:@"BlueLightReductionSchedule"];
  if ([scheduleCopy count] == 4)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = [scheduleCopy objectForKey:@"DayStartHour"];
    if (v15)
    {
      selfCopy->_status.schedule.toTime.hour = [v15 intValue];
    }

    v14 = [scheduleCopy objectForKey:@"DayStartMinute"];
    if (v15)
    {
      selfCopy->_status.schedule.toTime.minute = [v14 intValue];
    }

    v13 = [scheduleCopy objectForKey:@"NightStartHour"];
    if (v13)
    {
      selfCopy->_status.schedule.fromTime.hour = [v13 intValue];
    }

    v12 = [scheduleCopy objectForKey:@"NightStartMinute"];
    if (v12)
    {
      selfCopy->_status.schedule.fromTime.minute = [v12 intValue];
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v6 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    oslog = v6;
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "insufficient number of records in schedule", v9, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)enableBlueLightReduction:(BOOL)reduction withOption:(int)option
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_3_4_0_4_0_4_0(v11, self->_status.mode, reduction, option);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "mode=%d enable=%d option=%d", v11, 0x14u);
  }

  if (self->_status.mode)
  {
    if (option == 3)
    {
      option = 2;
    }

    if (option == 1)
    {
      selfCopy2 = self;
      if (reduction)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      selfCopy2 = self;
      if (reduction)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }
    }

    [(NightModeControl *)selfCopy2 setAlgoState:v5];
    goto LABEL_27;
  }

  if (!reduction)
  {
    [(NightModeControl *)self setAlgoState:0];
LABEL_27:
    [CBAnalytics nightShiftEnabled:reduction withOption:option];
    [(NightModeControl *)self reevaluateCurrentState];
    goto LABEL_28;
  }

  if (option != 3)
  {
    if (option == 1)
    {
      [(NightModeControl *)self setAlgoState:2];
    }

    else
    {
      [(NightModeControl *)self setAlgoState:4];
    }

    goto LABEL_27;
  }

  [(NightModeControl *)self displayAlertInteractive:1];
LABEL_28:
  *MEMORY[0x1E69E9840];
}

- (void)initiateTransitionTo:(float)to andRampLength:(float)length
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v19 = a2;
  toCopy = to;
  lengthCopy = length;
  [(NightModeControl *)self cancelTransition];
  if (selfCopy->_queue && toCopy != selfCopy->_factorState.factor)
  {
    selfCopy->_factorState.start = selfCopy->_factorState.factor;
    selfCopy->_factorState.target = toCopy;
    selfCopy->_factorState.rampStartTime = CFAbsoluteTimeGetCurrent();
    selfCopy->_factorState.rampLength = lengthCopy;
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v16 = logHandle;
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v21, *&selfCopy->_factorState.rampStartTime, COERCE__INT64(selfCopy->_factorState.start), COERCE__INT64(selfCopy->_factorState.target), COERCE__INT64(selfCopy->_factorState.rampLength));
      _os_log_impl(&dword_1DE8E5000, v16, v15, "[%f] START transition (%f -> %f) in %f sec ", v21, 0x2Au);
    }

    selfCopy->_transitionTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_queue);
    source = selfCopy->_transitionTimer;
    v4 = dispatch_time(0, 0);
    dispatch_source_set_timer(source, v4, (selfCopy->_transitionRate * 1000000000.0), 0x3B9ACA00uLL);
    transitionTimer = selfCopy->_transitionTimer;
    handler = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __55__NightModeControl_initiateTransitionTo_andRampLength___block_invoke;
    v13 = &unk_1E867B480;
    v14 = selfCopy;
    dispatch_source_set_event_handler(transitionTimer, &handler);
    dispatch_resume(selfCopy->_transitionTimer);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __55__NightModeControl_initiateTransitionTo_andRampLength___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) transitionTimerHandler];
  return objc_sync_exit(obj);
}

- (void)scheduleNextTransition:(double)transition withType:(int)type
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v28 = a2;
  *&v27 = transition;
  typeCopy = type;
  Current = CFAbsoluteTimeGetCurrent();
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v24 = logHandle;
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v30, v27, COERCE__INT64(*&v27 - Current));
    _os_log_impl(&dword_1DE8E5000, v24, v23, "next transition at %f (in %f seconds) \n", v30, 0x16u);
  }

  if (selfCopy->_nextTransitionTimer)
  {
    dispatch_source_cancel(selfCopy->_nextTransitionTimer);
    dispatch_release(selfCopy->_nextTransitionTimer);
    selfCopy->_nextTransitionTimer = 0;
  }

  v22 = (*&v27 - Current) * 1000000000.0 + 1000000000.0;
  v21 = 0;
  if (v22 < 3.1536e16)
  {
    v21 = dispatch_time(0, v22);
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v9 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    v20 = v9;
    v19 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v6 = v20;
      v7 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_1DE8E5000, v6, v7, "dispatch time overflow - clamping to DISPATCH_TIME_FOREVER", v18, 2u);
    }

    v21 = -1;
  }

  if (selfCopy->_queue)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_queue);
    selfCopy->_nextTransitionTimer = v4;
    dispatch_source_set_timer(selfCopy->_nextTransitionTimer, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    nextTransitionTimer = selfCopy->_nextTransitionTimer;
    handler = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __52__NightModeControl_scheduleNextTransition_withType___block_invoke;
    v16 = &unk_1E867B480;
    v17 = selfCopy;
    dispatch_source_set_event_handler(nextTransitionTimer, &handler);
    selfCopy->_currentScheduledTransitionType = typeCopy;
    dispatch_resume(selfCopy->_nextTransitionTimer);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __52__NightModeControl_scheduleNextTransition_withType___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(a1 + 32) + 64))
  {
    dispatch_source_cancel(*(*(a1 + 32) + 64));
    dispatch_release(*(*(a1 + 32) + 64));
    *(*(a1 + 32) + 64) = 0;
  }

  [*(a1 + 32) reevaluateCurrentState];
  return objc_sync_exit(obj);
}

- (void)setNightModeFactor:(float)factor withFadePeriod:(float)period
{
  v21 = *MEMORY[0x1E69E9840];
  if (factor <= self->_maxFactor)
  {
    maxFactor = factor;
  }

  else
  {
    maxFactor = self->_maxFactor;
  }

  if (maxFactor >= self->_minFactor)
  {
    minFactor = maxFactor;
  }

  else
  {
    minFactor = self->_minFactor;
  }

  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(minFactor), COERCE__INT64(period));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "factor=%f period=%f", v20, 0x16u);
  }

  self->_factorState.factor = minFactor;
  *&v4 = minFactor;
  v5 = minFactor > self->_minFactor;
  if ((__PAIR64__(self->_status.enabled, self->_minFactor) - LODWORD(minFactor)) >> 32)
  {
    self->_status.enabled = minFactor > self->_minFactor;
    [(CBAnalyticsNightShiftTracker *)self->_modeTracker update:self->_status.mode isEnabled:v5, v4];
    v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:self->_status.enabled];
    if (v17)
    {
      [(NightModeControl *)self updateStatusDictionaryWithValue:v17 forKey:@"BlueReductionEnabled"];
      MEMORY[0x1E69E5920](v17);
    }
  }

  if ([(NSMutableArray *)self->_supportObjs count])
  {
    if (self->_status.active && self->_status.available)
    {
      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
      if (v16)
      {
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v7 = minFactor;
        v15 = [v6 initWithFloat:v7];
        if (v15)
        {
          [(NSMutableDictionary *)self->_properties setObject:v15 forKey:@"BlueLightReductionFactor"];
          [v16 setObject:v15 forKey:@"BlueLightReductionFactorValue"];
          MEMORY[0x1E69E5920](v15);
        }

        v8 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v9 = period;
        v14 = [v8 initWithFloat:v9];
        if (v14)
        {
          [v16 setObject:v14 forKey:@"BlueLightReductionFactorFadePeriod"];
          MEMORY[0x1E69E5920](v14);
        }

        [(NightModeControl *)self setNightShiftFactorDictionary:v16];
        MEMORY[0x1E69E5920](v16);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)transitionTimerHandler
{
  v8 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  factor = self->_factorState.factor;
  if (self->_factorState.start >= self->_factorState.target)
  {
    if (self->_factorState.start > self->_factorState.target)
    {
      Current = self->_factorState.start - (self->_factorState.start - self->_factorState.target) * ((Current - self->_factorState.rampStartTime) / self->_factorState.rampLength);
      *&Current = Current;
      factor = *&Current;
    }
  }

  else
  {
    Current = self->_factorState.start + (self->_factorState.target - self->_factorState.start) * ((Current - self->_factorState.rampStartTime) / self->_factorState.rampLength);
    *&Current = Current;
    factor = *&Current;
  }

  if (self->_factorState.start <= self->_factorState.target && factor >= self->_factorState.target || self->_factorState.start >= self->_factorState.target && factor <= self->_factorState.target)
  {
    factor = self->_factorState.target;
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v7, COERCE__INT64(self->_factorState.start), COERCE__INT64(factor));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "blue light reduction factor ramp done (%f -> %f)", v7, 0x16u);
    }

    if (self->_transitionTimer)
    {
      dispatch_source_cancel(self->_transitionTimer);
      dispatch_release(self->_transitionTimer);
      self->_transitionTimer = 0;
    }

    [(NightModeControl *)self setAlgoState:0];
  }

  *&Current = factor;
  [(NightModeControl *)self setNightModeFactor:Current];
  *MEMORY[0x1E69E9840];
}

- (BOOL)updateTransitionTimesFromSchedule:(double)schedule
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v40 = a2;
  scheduleCopy = schedule;
  v38 = 0;
  v37 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  if (v37)
  {
    CFCalendarSetTimeZone(v37, selfCopy->_currentTimeZone);
    v36 = 0;
    v35 = 0;
    v34 = 0;
    hour = 0;
    minute = 0;
    if (CFCalendarDecomposeAbsoluteTime(v37, scheduleCopy, "yMdHm", &v36, &v35, &v34, &hour, &minute))
    {
      if (selfCopy->_status.mode)
      {
        hour = selfCopy->_status.schedule.fromTime.hour;
        minute = selfCopy->_status.schedule.fromTime.minute;
      }

      else
      {
        hour = 22;
        minute = 0;
      }

      if (CFCalendarComposeAbsoluteTime(v37, &selfCopy->_sunsetAbsolute, "yMdHm", v36, v35, v34, hour, minute))
      {
        selfCopy->_sunsetPreviousAbsolute = selfCopy->_sunsetAbsolute;
        if (selfCopy->_sunsetAbsolute >= scheduleCopy)
        {
          CFCalendarAddComponents(v37, &selfCopy->_sunsetPreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v37, &selfCopy->_sunsetAbsolute, 0, "d", 1);
        }

        if (selfCopy->_status.mode)
        {
          hour = selfCopy->_status.schedule.toTime.hour;
          minute = selfCopy->_status.schedule.toTime.minute;
        }

        else
        {
          hour = 7;
          minute = 0;
        }

        if (CFCalendarComposeAbsoluteTime(v37, &selfCopy->_sunriseAbsolute, "yMdHm", v36, v35, v34, hour, minute))
        {
          selfCopy->_offTransitionTimeAbsoluteUnrestricted = selfCopy->_sunriseAbsolute - selfCopy->_transitionLength;
          if (selfCopy->_sunriseAbsolute < selfCopy->_sunsetAbsolute || selfCopy->_sunriseAbsolute - selfCopy->_sunsetAbsolute >= (selfCopy->_transitionLength * 2.0))
          {
            if (selfCopy->_sunriseAbsolute < selfCopy->_sunsetPreviousAbsolute || selfCopy->_sunriseAbsolute - selfCopy->_sunsetPreviousAbsolute >= (selfCopy->_transitionLength * 2.0))
            {
              selfCopy->_transitionsTimesCoeff = 1.0;
              selfCopy->_sunriseAbsolute = selfCopy->_sunriseAbsolute - selfCopy->_transitionLength;
              selfCopy->_transitionLengthActual = selfCopy->_transitionLength;
            }

            else
            {
              v25 = selfCopy->_sunriseAbsolute - selfCopy->_sunsetPreviousAbsolute;
              v5 = v25 / (selfCopy->_transitionLength * 2.0);
              selfCopy->_transitionsTimesCoeff = v5;
              selfCopy->_sunriseAbsolute = selfCopy->_sunriseAbsolute - v25 / 2.0;
              v6 = v25 / 2.0;
              selfCopy->_transitionLengthActual = v6;
              if (selfCopy->_logHandle)
              {
                logHandle = selfCopy->_logHandle;
              }

              else
              {
                if (_COREBRIGHTNESS_LOG_DEFAULT)
                {
                  inited = _COREBRIGHTNESS_LOG_DEFAULT;
                }

                else
                {
                  inited = init_default_corebrightness_log();
                }

                logHandle = inited;
              }

              v24 = logHandle;
              v23 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_2_8_0_8_0(v42, COERCE__INT64(selfCopy->_transitionsTimesCoeff), COERCE__INT64(selfCopy->_transitionLengthActual));
                _os_log_debug_impl(&dword_1DE8E5000, v24, v23, "transitions overlaping coeff=%f trLenghtActual=%f", v42, 0x16u);
              }
            }
          }

          else
          {
            v28 = selfCopy->_sunriseAbsolute - selfCopy->_sunsetAbsolute;
            v3 = v28 / (selfCopy->_transitionLength * 2.0);
            selfCopy->_transitionsTimesCoeff = v3;
            selfCopy->_sunriseAbsolute = selfCopy->_sunriseAbsolute - v28 / 2.0;
            v4 = v28 / 2.0;
            selfCopy->_transitionLengthActual = v4;
            if (selfCopy->_logHandle)
            {
              v15 = selfCopy->_logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v14 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v14 = init_default_corebrightness_log();
              }

              v15 = v14;
            }

            v27 = v15;
            v26 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_0_2_8_0_8_0(v43, COERCE__INT64(selfCopy->_transitionsTimesCoeff), COERCE__INT64(selfCopy->_transitionLengthActual));
              _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "transitions overlaping coeff=%f trLenghtActual=%f", v43, 0x16u);
            }
          }

          selfCopy->_sunrisePreviousAbsolute = selfCopy->_sunriseAbsolute;
          if (selfCopy->_sunriseAbsolute >= scheduleCopy)
          {
            CFCalendarAddComponents(v37, &selfCopy->_sunrisePreviousAbsolute, 0, "d", -1);
          }

          else
          {
            CFCalendarAddComponents(v37, &selfCopy->_sunriseAbsolute, 0, "d", 1);
          }

          selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_offTransitionTimeAbsoluteUnrestricted;
          if (selfCopy->_offTransitionTimeAbsoluteUnrestricted >= scheduleCopy)
          {
            CFCalendarAddComponents(v37, &selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev, 0, "d", -1);
          }

          else
          {
            CFCalendarAddComponents(v37, &selfCopy->_offTransitionTimeAbsoluteUnrestricted, 0, "d", 1);
          }

          v38 = 1;
        }

        else
        {
          if (selfCopy->_logHandle)
          {
            v11 = selfCopy->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v10 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v10 = init_default_corebrightness_log();
            }

            v11 = v10;
          }

          oslog = v11;
          v21 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v8 = oslog;
            v9 = v21;
            __os_log_helper_16_0_0(v20);
            _os_log_error_impl(&dword_1DE8E5000, v8, v9, "FATAL ERROR - unable to obtain OFF transition time", v20, 2u);
          }
        }
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v19 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v18 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v18 = init_default_corebrightness_log();
          }

          v19 = v18;
        }

        v31 = v19;
        v30 = 16;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          log = v31;
          type = v30;
          __os_log_helper_16_0_0(v29);
          _os_log_error_impl(&dword_1DE8E5000, log, type, "FATAL ERROR - unable to obtain ON transition time", v29, 2u);
        }
      }
    }

    CFRelease(v37);
  }

  *MEMORY[0x1E69E9840];
  return v38 & 1;
}

- (void)updateTransitionTimes:(double)times
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_status.mode == 1)
  {
    v3 = [(NightModeControl *)self updateTransitionTimesFromSunriseSunset:times];
  }

  else
  {
    v3 = [(NightModeControl *)self updateTransitionTimesFromSchedule:times];
  }

  self->_transitionTimesValid = v3;
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v7, *&self->_sunrisePreviousAbsolute, *&self->_sunsetPreviousAbsolute, *&self->_sunriseAbsolute, *&self->_sunsetAbsolute, COERCE__INT64(self->_minFactor), COERCE__INT64(self->_maxFactor));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "prev. sunrise=%f, prev. sunset=%f, sunrise=%f, sunset=%f, min factor=%f, max factor=%f", v7, 0x3Eu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)initiateRestrictedMaxTransition
{
  *&v2 = self->_maxFactor * self->_transitionsTimesCoeff;
  *&v3 = fabsf(-(self->_factorState.factor - *&v2)) * self->_transitionLength;
  [(NightModeControl *)self initiateTransitionTo:v2 andRampLength:v3, a2, self];
}

- (void)initiateFullMaxTransition
{
  *&v2 = self->_maxFactor;
  *&v3 = (*&v2 - self->_factorState.factor) * self->_transitionLength;
  [(NightModeControl *)self initiateTransitionTo:v2 andRampLength:v3, a2, self];
}

- (void)initiateFullMinTransition
{
  *&v2 = self->_minFactor;
  *&v3 = self->_factorState.factor * self->_transitionLength;
  [(NightModeControl *)self initiateTransitionTo:v2 andRampLength:v3, a2, self];
}

- (void)reevaluateCurrentStateWithFactorFadeOption:(float)option
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v39 = a2;
  optionCopy = option;
  Current = CFAbsoluteTimeGetCurrent();
  v36 = 0;
  if (selfCopy->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v35 = logHandle;
  v34 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(v42, *&Current, selfCopy->_status.enabled, selfCopy->_status.mode, selfCopy->_algoState);
    _os_log_impl(&dword_1DE8E5000, v35, v34, "now=%f enabled=%d mode=%d algo=%d", v42, 0x1Eu);
  }

  [(NightModeControl *)selfCopy cancelSchedule];
  [(NightModeControl *)selfCopy cancelTransition];
  if (selfCopy->_checkInactivity)
  {
    selfCopy->_checkInactivity = 0;
    if (Current - selfCopy->_displayOffTimestamp > selfCopy->_inactivityTimeout)
    {
      if (selfCopy->_logHandle)
      {
        v28 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v27 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v27 = init_default_corebrightness_log();
        }

        v28 = v27;
      }

      v33 = v28;
      v32 = 2;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v25 = v33;
        v26 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_debug_impl(&dword_1DE8E5000, v25, v26, "inactivity check passed", v31, 2u);
      }

      [(NightModeControl *)selfCopy setAlgoState:0];
    }

    [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:0 forKey:@"BlueLightReductionAlgoOverrideTimestamp"];
  }

  if (selfCopy->_algoState == 4)
  {
    [(NightModeControl *)selfCopy updateTransitionTimes:Current];
    v36 = 1;
    if (selfCopy->_transitionTimesValid)
    {
      untilNexTransitionTimestamp = selfCopy->_untilNexTransitionTimestamp;
      offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev;
      if (untilNexTransitionTimestamp < offTransitionTimeAbsoluteUnrestrictedPrev)
      {
        HIDWORD(untilNexTransitionTimestamp) = HIDWORD(Current);
        offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev + selfCopy->_transitionLength;
        if (Current >= offTransitionTimeAbsoluteUnrestrictedPrev)
        {
          [(NightModeControl *)selfCopy setAlgoState:0, Current];
        }
      }
    }
  }

  else if (selfCopy->_algoState == 3)
  {
    [(NightModeControl *)selfCopy updateTransitionTimes:Current];
    v36 = 1;
    if (selfCopy->_transitionTimesValid)
    {
      untilNexTransitionTimestamp = selfCopy->_untilNexTransitionTimestamp;
      offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_sunsetPreviousAbsolute;
      if (untilNexTransitionTimestamp < offTransitionTimeAbsoluteUnrestrictedPrev)
      {
        [(NightModeControl *)selfCopy setAlgoState:0];
      }
    }
  }

  switch(selfCopy->_algoState)
  {
    case 3:
      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)selfCopy updateTransitionTimes:Current];
      }

      v5 = selfCopy->_untilNexTransitionTimestamp;
      sunsetPreviousAbsolute = selfCopy->_sunsetPreviousAbsolute;
      if (v5 < sunsetPreviousAbsolute)
      {
        if (Current >= selfCopy->_sunsetPreviousAbsolute + selfCopy->_transitionLengthActual)
        {
          [(NightModeControl *)selfCopy setAlgoState:0, Current];
          *&v9 = selfCopy->_maxFactor * selfCopy->_transitionsTimesCoeff;
          *&v10 = optionCopy;
          [(NightModeControl *)selfCopy setNightModeFactor:v9 withFadePeriod:v10];
          if (selfCopy->_status.mode)
          {
            [(NightModeControl *)selfCopy scheduleNextTransition:2 withType:selfCopy->_sunriseAbsolute];
          }
        }

        else
        {
          transitionLengthActual = selfCopy->_transitionLengthActual;
          v8 = vabdd_f64(Current, selfCopy->_sunsetPreviousAbsolute) / transitionLengthActual;
          *&v8 = v8;
          *&transitionLengthActual = optionCopy;
          [(NightModeControl *)selfCopy setNightModeFactor:v8 withFadePeriod:transitionLengthActual];
          [(NightModeControl *)selfCopy initiateRestrictedMaxTransition];
          if (selfCopy->_status.mode)
          {
            [(NightModeControl *)selfCopy scheduleNextTransition:2 withType:selfCopy->_sunriseAbsolute];
          }
        }

        break;
      }

LABEL_42:
      *&v5 = selfCopy->_minFactor;
      *&sunsetPreviousAbsolute = optionCopy;
      [(NightModeControl *)selfCopy setNightModeFactor:v5 withFadePeriod:sunsetPreviousAbsolute];
      [(NightModeControl *)selfCopy scheduleNextTransition:1 withType:selfCopy->_sunsetAbsolute];
      break;
    case 4:
      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)selfCopy updateTransitionTimes:Current];
      }

      v11 = selfCopy->_untilNexTransitionTimestamp;
      v12 = selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev + selfCopy->_transitionLength;
      if (v11 >= v12)
      {
        *&v11 = selfCopy->_maxFactor;
        *&v12 = optionCopy;
        [(NightModeControl *)selfCopy setNightModeFactor:v11 withFadePeriod:v12];
        [(NightModeControl *)selfCopy scheduleNextTransition:2 withType:selfCopy->_offTransitionTimeAbsoluteUnrestricted];
      }

      else if (Current >= selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev + selfCopy->_transitionLength)
      {
        [(NightModeControl *)selfCopy setAlgoState:0, Current];
        *&v15 = selfCopy->_minFactor;
        *&v16 = optionCopy;
        [(NightModeControl *)selfCopy setNightModeFactor:v15 withFadePeriod:v16];
        if (selfCopy->_status.mode)
        {
          [(NightModeControl *)selfCopy scheduleNextTransition:1 withType:selfCopy->_sunsetAbsolute];
        }
      }

      else
      {
        v13 = vabdd_f64(Current, selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev) / selfCopy->_transitionLength;
        v14 = selfCopy->_maxFactor - v13;
        *&v14 = v14;
        *&v13 = optionCopy;
        [(NightModeControl *)selfCopy setNightModeFactor:v14 withFadePeriod:v13];
        [(NightModeControl *)selfCopy initiateFullMinTransition];
        if (selfCopy->_status.mode)
        {
          [(NightModeControl *)selfCopy scheduleNextTransition:1 withType:selfCopy->_sunsetAbsolute];
        }
      }

      break;
    case 2:
      *&untilNexTransitionTimestamp = selfCopy->_maxFactor;
      *&offTransitionTimeAbsoluteUnrestrictedPrev = optionCopy;
      [(NightModeControl *)selfCopy setNightModeFactor:untilNexTransitionTimestamp withFadePeriod:offTransitionTimeAbsoluteUnrestrictedPrev];
      break;
    default:
      if (selfCopy->_algoState == 1 || !selfCopy->_status.mode)
      {
        *&untilNexTransitionTimestamp = selfCopy->_minFactor;
        *&offTransitionTimeAbsoluteUnrestrictedPrev = optionCopy;
        [(NightModeControl *)selfCopy setNightModeFactor:untilNexTransitionTimestamp withFadePeriod:offTransitionTimeAbsoluteUnrestrictedPrev];
        break;
      }

      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)selfCopy updateTransitionTimes:Current];
      }

      if (selfCopy->_transitionTimesValid)
      {
        if (selfCopy->_sunriseAbsolute < selfCopy->_sunsetAbsolute)
        {
          HIDWORD(v19) = HIDWORD(Current);
          v20 = selfCopy->_sunsetPreviousAbsolute + selfCopy->_transitionLengthActual;
          if (Current >= v20)
          {
            *&v19 = selfCopy->_maxFactor * selfCopy->_transitionsTimesCoeff;
            *&v20 = optionCopy;
            [(NightModeControl *)selfCopy setNightModeFactor:v19 withFadePeriod:v20];
            [(NightModeControl *)selfCopy scheduleNextTransition:2 withType:selfCopy->_sunriseAbsolute];
          }

          else
          {
            [(NightModeControl *)selfCopy scheduleNextTransition:2 withType:selfCopy->_sunriseAbsolute];
            transitionsTimesCoeff = selfCopy->_transitionsTimesCoeff;
            v22 = vabdd_f64(Current, selfCopy->_sunsetPreviousAbsolute) / selfCopy->_transitionLengthActual * transitionsTimesCoeff;
            *&v22 = v22;
            *&transitionsTimesCoeff = optionCopy;
            [(NightModeControl *)selfCopy setNightModeFactor:v22 withFadePeriod:transitionsTimesCoeff];
            [(NightModeControl *)selfCopy initiateRestrictedMaxTransition];
          }

          break;
        }

        HIDWORD(v5) = HIDWORD(Current);
        sunsetPreviousAbsolute = selfCopy->_sunrisePreviousAbsolute + selfCopy->_transitionLengthActual;
        if (Current < sunsetPreviousAbsolute)
        {
          [(NightModeControl *)selfCopy scheduleNextTransition:1 withType:selfCopy->_sunsetAbsolute];
          v17 = selfCopy->_transitionsTimesCoeff;
          v18 = (selfCopy->_maxFactor - vabdd_f64(Current, selfCopy->_sunrisePreviousAbsolute) / selfCopy->_transitionLengthActual) * v17;
          *&v18 = v18;
          *&v17 = optionCopy;
          [(NightModeControl *)selfCopy setNightModeFactor:v18 withFadePeriod:v17];
          [(NightModeControl *)selfCopy initiateFullMinTransition];
          break;
        }

        goto LABEL_42;
      }

      break;
  }

  if (selfCopy->_logHandle)
  {
    v24 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v23 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v23 = init_default_corebrightness_log();
    }

    v24 = v23;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_8_0_8_0(v41, COERCE__INT64(selfCopy->_factorState.factor), COERCE__INT64(optionCopy));
    _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_INFO, "updated factor=%f with fade %f", v41, 0x16u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setSunPermitted:(BOOL)permitted
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v27 = a2;
  permittedCopy = permitted;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v25 = logHandle;
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_4_0_4_0(v29, selfCopy->_status.sunSchedulePermitted, permittedCopy);
    _os_log_impl(&dword_1DE8E5000, v25, v24, "update sun mode permission from %d to %d", v29, 0xEu);
  }

  if (selfCopy->_status.sunSchedulePermitted != permittedCopy)
  {
    selfCopy->_status.sunSchedulePermitted = permittedCopy;
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:selfCopy->_status.sunSchedulePermitted];
    [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v23 forKey:@"BlueReductionSunScheduleAllowed"];
    [CBAnalytics nightShiftSunSchedulePermitted:selfCopy->_status.sunSchedulePermitted];
    *&v3 = MEMORY[0x1E69E5920](v23).n128_u64[0];
    if (selfCopy->_status.sunSchedulePermitted)
    {
      if (selfCopy->_revertToSunriseSunset)
      {
        if (selfCopy->_logHandle)
        {
          v8 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v7 = init_default_corebrightness_log();
          }

          v8 = v7;
        }

        v18 = v8;
        v17 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v18;
          v6 = v17;
          __os_log_helper_16_0_0(v16);
          _os_log_impl(&dword_1DE8E5000, v5, v6, "reverting back to sun mode", v16, 2u);
        }

        selfCopy->_revertToSunriseSunset = 0;
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v15 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        *&v4 = MEMORY[0x1E69E5920](v15).n128_u64[0];
        [(NightModeControl *)selfCopy setMode:1, v4];
      }
    }

    else
    {
      [(NSMutableDictionary *)selfCopy->_properties removeObjectForKey:@"BlueLightSunSchedule", v3];
      MEMORY[0x1E69E5920](selfCopy->_sunriseSunsetInfo);
      selfCopy->_sunriseSunsetInfo = 0;
      if (selfCopy->_status.mode == 1)
      {
        if (selfCopy->_logHandle)
        {
          v12 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v11 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v11 = init_default_corebrightness_log();
          }

          v12 = v11;
        }

        v22 = v12;
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v22;
          v10 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_impl(&dword_1DE8E5000, v9, v10, "taking a mark to return to sun mode", v20, 2u);
        }

        [(NightModeControl *)selfCopy setMode:0];
        selfCopy->_revertToSunriseSunset = 1;
        v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v19 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        MEMORY[0x1E69E5920](v19);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateSunriseSunsetBackup
{
  selfCopy = self;
  v9 = a2;
  if (self->_status.sunSchedulePermitted)
  {
    v8 = 7;
    v7 = 0;
    v6 = 22;
    v5 = 0;
    if (selfCopy->_sunriseSunsetInfo)
    {
      calendar = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
      if (calendar)
      {
        CFCalendarSetTimeZone(calendar, selfCopy->_currentTimeZone);
        [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_nextSunriseKey), "timeIntervalSinceReferenceDate"}];
        if (!CFCalendarDecomposeAbsoluteTime(calendar, v2, "Hm", &v8, &v7))
        {
          v8 = 7;
          v7 = 0;
        }

        [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_nextSunsetKey), "timeIntervalSinceReferenceDate"}];
        if (!CFCalendarDecomposeAbsoluteTime(calendar, v3, "Hm", &v6, &v5))
        {
          v6 = 22;
          v5 = 0;
        }

        CFRelease(calendar);
      }
    }

    if (v6 != selfCopy->_backupSchedule.fromTime.hour || v5 != selfCopy->_backupSchedule.fromTime.minute || v8 != selfCopy->_backupSchedule.toTime.hour || v5 != selfCopy->_backupSchedule.toTime.minute)
    {
      selfCopy->_backupSchedule.fromTime.hour = v6;
      selfCopy->_backupSchedule.fromTime.minute = v5;
      selfCopy->_backupSchedule.toTime.hour = v8;
      selfCopy->_backupSchedule.toTime.minute = v7;
    }
  }
}

- (void)updateSunriseSunsetInfo:(id)info
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v38 = a2;
  infoCopy = info;
  if (info)
  {
    v36 = [objc_msgSend(infoCopy objectForKeyedSubscript:{@"status", "intValue"}];
    if (v36)
    {
      if (v36 == 1)
      {
        selfCopy->_sunriseSunsetInfo = [infoCopy objectForKey:{@"sunSchedule", MEMORY[0x1E69E5920](selfCopy->_sunriseSunsetInfo).n128_f64[0]}];
        MEMORY[0x1E69E5928](selfCopy->_sunriseSunsetInfo);
        if (selfCopy->_sunriseSunsetInfo)
        {
          [(NSMutableDictionary *)selfCopy->_properties setObject:selfCopy->_sunriseSunsetInfo forKey:@"BlueLightSunSchedule"];
        }

        else
        {
          [(NSMutableDictionary *)selfCopy->_properties removeObjectForKey:@"BlueLightSunSchedule"];
        }

        [(NightModeControl *)selfCopy setSunPermitted:1];
        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v32 = logHandle;
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          if (selfCopy->_sunriseSunsetInfo)
          {
            sunriseSunsetInfo = selfCopy->_sunriseSunsetInfo;
          }

          else
          {
            sunriseSunsetInfo = @"unavailable";
          }

          __os_log_helper_16_2_1_8_64(v40, sunriseSunsetInfo);
          _os_log_impl(&dword_1DE8E5000, v32, v31, "sunrise/sunset info: %@", v40, 0xCu);
        }
      }

      else if (v36 == 2)
      {
        if (selfCopy->_logHandle)
        {
          v14 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v13 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v13 = init_default_corebrightness_log();
          }

          v14 = v13;
        }

        v30 = v14;
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v30;
          v12 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_impl(&dword_1DE8E5000, v11, v12, "sunrise/sunset info: unavailable but permited", v28, 2u);
        }

        [(NightModeControl *)selfCopy setSunPermitted:1];
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v10 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v9 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v9 = init_default_corebrightness_log();
          }

          v10 = v9;
        }

        v27 = v10;
        v26 = 16;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v7 = v27;
          v8 = v26;
          __os_log_helper_16_0_0(v25);
          _os_log_error_impl(&dword_1DE8E5000, v7, v8, "unexpected status, ignore", v25, 2u);
        }
      }
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v21 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v20 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v20 = init_default_corebrightness_log();
        }

        v21 = v20;
      }

      v35 = v21;
      v34 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        log = v35;
        type = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "sunrise/sunset not permitted", v33, 2u);
      }

      [(NightModeControl *)selfCopy setSunPermitted:0];
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v6 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    v24 = v6;
    v23 = 16;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = v24;
      v4 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "warning - sunrise/sunset key not found, waiting for recovery", v22, 2u);
    }
  }

  [(NightModeControl *)selfCopy updateSunriseSunsetBackup];
  *MEMORY[0x1E69E9840];
}

- (void)retrieveSunriseSunsetTimesFromBackup:(double)backup
{
  selfCopy = self;
  v24 = a2;
  backupCopy = backup;
  v22 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  if (v22)
  {
    CFCalendarSetTimeZone(v22, selfCopy->_currentTimeZone);
    v21 = 0;
    v20 = 0;
    v19 = 0;
    hour = 0;
    minute = 0;
    if (CFCalendarDecomposeAbsoluteTime(v22, backupCopy, "yMdHm", &v21, &v20, &v19, &hour, &minute))
    {
      hour = selfCopy->_backupSchedule.fromTime.hour;
      minute = selfCopy->_backupSchedule.fromTime.minute;
      if (CFCalendarComposeAbsoluteTime(v22, &selfCopy->_sunsetAbsolute, "yMdHm", v21, v20, v19, hour, minute))
      {
        selfCopy->_sunsetPreviousAbsolute = selfCopy->_sunsetAbsolute;
        if (selfCopy->_sunsetAbsolute >= backupCopy)
        {
          CFCalendarAddComponents(v22, &selfCopy->_sunsetPreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v22, &selfCopy->_sunsetAbsolute, 0, "d", 1);
        }
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v16 = logHandle;
        v15 = 16;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          log = v16;
          type = v15;
          __os_log_helper_16_0_0(v14);
          _os_log_error_impl(&dword_1DE8E5000, log, type, "FATAL ERROR - unable to obtain sunset date", v14, 2u);
        }
      }

      hour = selfCopy->_backupSchedule.toTime.hour;
      minute = selfCopy->_backupSchedule.toTime.minute;
      if (CFCalendarComposeAbsoluteTime(v22, &selfCopy->_sunriseAbsolute, "yMdHm", v21, v20, v19, hour, minute))
      {
        selfCopy->_sunriseAbsolute = selfCopy->_sunriseAbsolute - selfCopy->_transitionLength;
        selfCopy->_sunrisePreviousAbsolute = selfCopy->_sunriseAbsolute;
        if (selfCopy->_sunriseAbsolute >= backupCopy)
        {
          CFCalendarAddComponents(v22, &selfCopy->_sunrisePreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v22, &selfCopy->_sunriseAbsolute, 0, "d", 1);
        }
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v6 = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v5 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v5 = init_default_corebrightness_log();
          }

          v6 = v5;
        }

        v13 = v6;
        v12 = 16;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v3 = v13;
          v4 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_error_impl(&dword_1DE8E5000, v3, v4, "FATAL ERROR - unable to obtain sunrise date", v11, 2u);
        }
      }
    }

    CFRelease(v22);
  }
}

- (BOOL)updateTransitionTimesFromSunriseSunset:(double)sunset
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v41 = a2;
  sunsetCopy = sunset;
  v39 = 0;
  if (self->_sunriseSunsetInfo)
  {
    v32 = 0;
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
    v31 = v3;
    [objc_msgSend(MEMORY[0x1E695DF00] "distantPast")];
    v30 = v4;
    v39 = 1;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_previousSunriseKey), "timeIntervalSinceReferenceDate"}];
    v45 = v5;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_previousSunsetKey), "timeIntervalSinceReferenceDate"}];
    v46 = v6;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_currentSunriseKey), "timeIntervalSinceReferenceDate"}];
    v47 = v7;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_currentSunsetKey), "timeIntervalSinceReferenceDate"}];
    v48 = v8;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_nextSunriseKey), "timeIntervalSinceReferenceDate"}];
    v49 = v9;
    [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_nextSunsetKey), "timeIntervalSinceReferenceDate"}];
    v50 = v10;
    for (i = 0; i < 6; ++i)
    {
      if (*(&v45 + i) == v30 || *(&v45 + i) == v31)
      {
        ++v32;
        *(&v33 + i) = 0;
      }

      else
      {
        *(&v33 + i) = 1;
      }
    }

    v45 = v45 - selfCopy->_transitionLength;
    v47 = v47 - selfCopy->_transitionLength;
    v49 = v49 - selfCopy->_transitionLength;
    [(NSDictionary *)selfCopy->_sunriseSunsetInfo objectForKey:selfCopy->_isDaylightKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = [-[NSDictionary objectForKey:](selfCopy->_sunriseSunsetInfo objectForKey:{selfCopy->_isDaylightKey), "BOOLValue"}];
      selfCopy->_isDaylight = v12;
    }

    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v28 = logHandle;
    v27 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_4_0_4_0(v44, v32, selfCopy->_isDaylight);
      _os_log_debug_impl(&dword_1DE8E5000, v28, v27, "flag=%d isDaylight=%d", v44, 0xEu);
    }

    if (v32 == 6)
    {
      if (selfCopy->_isDaylight)
      {
        selfCopy->_sunriseAbsolute = v31;
        selfCopy->_sunsetAbsolute = v31 - 86400.0;
        selfCopy->_sunrisePreviousAbsolute = v30 + 86400.0;
        selfCopy->_sunsetPreviousAbsolute = v30;
      }

      else
      {
        selfCopy->_sunsetAbsolute = v31;
        selfCopy->_sunriseAbsolute = v31 - 86400.0;
        selfCopy->_sunsetPreviousAbsolute = v30 + 86400.0;
        selfCopy->_sunrisePreviousAbsolute = v30;
      }
    }

    else if (v32 == 5)
    {
      for (j = 0; j < 6; ++j)
      {
        if (*(&v33 + j))
        {
          if (j % 2 == 1 && sunsetCopy < *(&v45 + j))
          {
            selfCopy->_sunsetAbsolute = *(&v45 + j);
            selfCopy->_sunriseAbsolute = v31;
            selfCopy->_sunsetPreviousAbsolute = v30;
            selfCopy->_sunrisePreviousAbsolute = v30;
          }

          else if (j % 2 == 1 && sunsetCopy >= *(&v45 + j))
          {
            selfCopy->_sunsetAbsolute = v31;
            selfCopy->_sunriseAbsolute = v31 - 86400.0;
            selfCopy->_sunsetPreviousAbsolute = *(&v45 + j);
            selfCopy->_sunrisePreviousAbsolute = v30;
          }

          else if (j % 2 || sunsetCopy >= *(&v45 + j))
          {
            selfCopy->_sunsetAbsolute = v31 - 86400.0;
            selfCopy->_sunriseAbsolute = v31;
            selfCopy->_sunrisePreviousAbsolute = *(&v45 + j);
            selfCopy->_sunsetPreviousAbsolute = v30;
          }

          else
          {
            selfCopy->_sunsetAbsolute = v31;
            selfCopy->_sunriseAbsolute = *(&v45 + j);
            selfCopy->_sunsetPreviousAbsolute = v30 + 86400.0;
            selfCopy->_sunrisePreviousAbsolute = v30;
          }
        }
      }
    }

    else if (v32)
    {
      if (v36 & 1) != 0 && (v35)
      {
        if (v47 > v48)
        {
          if (sunsetCopy >= v48)
          {
            if (sunsetCopy >= v47)
            {
              if (v37)
              {
                selfCopy->_sunriseAbsolute = v49;
              }

              else
              {
                selfCopy->_sunriseAbsolute = v31;
              }

              if (v38)
              {
                selfCopy->_sunsetAbsolute = v50;
              }

              else
              {
                selfCopy->_sunsetAbsolute = v31 - 86400.0;
              }

              selfCopy->_sunrisePreviousAbsolute = v47;
              selfCopy->_sunsetPreviousAbsolute = v48;
            }

            else
            {
              selfCopy->_sunriseAbsolute = v47;
              if (v38)
              {
                selfCopy->_sunsetAbsolute = v50;
              }

              else
              {
                selfCopy->_sunsetAbsolute = v31;
              }

              if (v33)
              {
                selfCopy->_sunrisePreviousAbsolute = v45;
              }

              else
              {
                selfCopy->_sunrisePreviousAbsolute = v30;
              }

              selfCopy->_sunsetPreviousAbsolute = v48;
            }
          }

          else
          {
            selfCopy->_sunriseAbsolute = v47;
            selfCopy->_sunsetAbsolute = v48;
            if (v33)
            {
              selfCopy->_sunrisePreviousAbsolute = v45;
            }

            else
            {
              selfCopy->_sunrisePreviousAbsolute = v30;
            }

            if (v34)
            {
              selfCopy->_sunsetPreviousAbsolute = v46;
            }

            else
            {
              selfCopy->_sunsetPreviousAbsolute = v30;
            }
          }
        }

        else if (sunsetCopy >= v47)
        {
          if (sunsetCopy >= v48)
          {
            if (v37)
            {
              selfCopy->_sunriseAbsolute = v49;
            }

            else
            {
              selfCopy->_sunriseAbsolute = v31 - 86400.0;
            }

            if (v38)
            {
              selfCopy->_sunsetAbsolute = v50;
            }

            else
            {
              selfCopy->_sunsetAbsolute = v31;
            }

            selfCopy->_sunrisePreviousAbsolute = v47;
            selfCopy->_sunsetPreviousAbsolute = v48;
          }

          else
          {
            if (v37)
            {
              selfCopy->_sunriseAbsolute = v49;
            }

            else
            {
              selfCopy->_sunriseAbsolute = v31;
            }

            selfCopy->_sunsetAbsolute = v48;
            selfCopy->_sunrisePreviousAbsolute = v47;
            if (v34)
            {
              selfCopy->_sunsetPreviousAbsolute = v46;
            }

            else
            {
              selfCopy->_sunsetPreviousAbsolute = v30;
            }
          }
        }

        else
        {
          selfCopy->_sunriseAbsolute = v47;
          selfCopy->_sunsetAbsolute = v48;
          if (v33)
          {
            selfCopy->_sunrisePreviousAbsolute = v45;
          }

          else
          {
            selfCopy->_sunrisePreviousAbsolute = v30;
          }

          if (v34)
          {
            selfCopy->_sunsetPreviousAbsolute = v46;
          }

          else
          {
            selfCopy->_sunsetPreviousAbsolute = v30;
          }
        }
      }

      else if (v36 & 1) != 0 || (v35)
      {
        if (v38)
        {
          if (sunsetCopy < v48)
          {
            selfCopy->_sunriseAbsolute = v31;
            selfCopy->_sunsetAbsolute = v48;
            selfCopy->_sunrisePreviousAbsolute = v45;
            selfCopy->_sunsetPreviousAbsolute = v46;
          }

          else
          {
            selfCopy->_sunriseAbsolute = v31 - 86400.0;
            selfCopy->_sunsetAbsolute = v31;
            selfCopy->_sunrisePreviousAbsolute = v45;
            selfCopy->_sunsetPreviousAbsolute = v48;
          }
        }

        else
        {
          if (sunsetCopy < v47)
          {
            selfCopy->_sunriseAbsolute = v47;
            selfCopy->_sunsetAbsolute = v31;
            selfCopy->_sunrisePreviousAbsolute = v45;
          }

          else
          {
            selfCopy->_sunriseAbsolute = v31;
            selfCopy->_sunsetAbsolute = v31 - 86400.0;
            selfCopy->_sunrisePreviousAbsolute = v47;
          }

          selfCopy->_sunsetPreviousAbsolute = v46;
        }
      }

      else if (selfCopy->_isDaylight)
      {
        selfCopy->_sunriseAbsolute = v31;
        selfCopy->_sunsetAbsolute = v31 - 86400.0;
        selfCopy->_sunrisePreviousAbsolute = v30 + 86400.0;
        selfCopy->_sunsetPreviousAbsolute = v30;
      }

      else
      {
        selfCopy->_sunsetAbsolute = v31;
        selfCopy->_sunriseAbsolute = v31 - 86400.0;
        selfCopy->_sunsetPreviousAbsolute = v30 + 86400.0;
        selfCopy->_sunrisePreviousAbsolute = v30;
      }
    }

    else if (v47 > v48)
    {
      if (sunsetCopy >= v48)
      {
        if (sunsetCopy >= v47)
        {
          if (sunsetCopy >= v50)
          {
            v39 = 0;
          }

          else
          {
            selfCopy->_sunriseAbsolute = v49;
            selfCopy->_sunsetAbsolute = v50;
            selfCopy->_sunrisePreviousAbsolute = v47;
            selfCopy->_sunsetPreviousAbsolute = v48;
          }
        }

        else
        {
          selfCopy->_sunriseAbsolute = v47;
          selfCopy->_sunsetAbsolute = v50;
          selfCopy->_sunrisePreviousAbsolute = v45;
          selfCopy->_sunsetPreviousAbsolute = v48;
        }
      }

      else
      {
        selfCopy->_sunriseAbsolute = v47;
        selfCopy->_sunsetAbsolute = v48;
        selfCopy->_sunrisePreviousAbsolute = v45;
        selfCopy->_sunsetPreviousAbsolute = v46;
      }
    }

    else if (sunsetCopy >= v47)
    {
      if (sunsetCopy >= v48)
      {
        if (sunsetCopy >= v49)
        {
          v39 = 0;
        }

        else
        {
          selfCopy->_sunriseAbsolute = v49;
          selfCopy->_sunsetAbsolute = v50;
          selfCopy->_sunrisePreviousAbsolute = v47;
          selfCopy->_sunsetPreviousAbsolute = v48;
        }
      }

      else
      {
        selfCopy->_sunriseAbsolute = v49;
        selfCopy->_sunsetAbsolute = v48;
        selfCopy->_sunrisePreviousAbsolute = v47;
        selfCopy->_sunsetPreviousAbsolute = v46;
      }
    }

    else
    {
      selfCopy->_sunriseAbsolute = v47;
      selfCopy->_sunsetAbsolute = v48;
      selfCopy->_sunrisePreviousAbsolute = v45;
      selfCopy->_sunsetPreviousAbsolute = v46;
    }
  }

  if ((v39 & 1) == 0)
  {
    if (selfCopy->_logHandle)
    {
      v19 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    oslog = v19;
    v24 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v16 = oslog;
      v17 = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_1DE8E5000, v16, v17, "Warning - invalid sunrise/sunset info, using defaults", v23, 2u);
    }

    [(NightModeControl *)selfCopy retrieveSunriseSunsetTimesFromBackup:sunsetCopy];
    v39 = 1;
  }

  v22 = selfCopy->_sunriseAbsolute + selfCopy->_transitionLength;
  if ((v22 < selfCopy->_sunsetAbsolute || v22 - selfCopy->_sunsetAbsolute >= (selfCopy->_transitionLength * 2.0)) && (v22 < selfCopy->_sunsetPreviousAbsolute || v22 - selfCopy->_sunsetPreviousAbsolute >= (selfCopy->_transitionLength * 2.0)))
  {
    selfCopy->_transitionsTimesCoeff = 1.0;
    selfCopy->_transitionLengthActual = selfCopy->_transitionLength;
    selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_sunrisePreviousAbsolute;
    selfCopy->_offTransitionTimeAbsoluteUnrestricted = selfCopy->_sunriseAbsolute;
  }

  else
  {
    selfCopy->_transitionsTimesCoeff = 0.0;
    selfCopy->_transitionLengthActual = 0.0;
    selfCopy->_sunriseAbsolute = selfCopy->_sunsetAbsolute;
    selfCopy->_sunrisePreviousAbsolute = selfCopy->_sunsetPreviousAbsolute;
    selfCopy->_offTransitionTimeAbsoluteUnrestricted = selfCopy->_sunriseAbsolute - selfCopy->_transitionLength;
    selfCopy->_offTransitionTimeAbsoluteUnrestrictedPrev = selfCopy->_sunrisePreviousAbsolute - selfCopy->_transitionLength;
    if (selfCopy->_logHandle)
    {
      v15 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_8_0_8_0(v43, COERCE__INT64(selfCopy->_transitionsTimesCoeff), COERCE__INT64(selfCopy->_transitionLengthActual));
      _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "Sunrise/Sunset transitions overlaping coeff=%f trLenghtActual=%f", v43, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v39 & 1;
}

- (void)updateOptionTimestamp:(double)timestamp
{
  v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:timestamp];
  if (v3)
  {
    [(NightModeControl *)self updateStatusDictionaryWithValue:v3 forKey:@"BlueLightReductionAlgoOverrideTimestamp"];
    MEMORY[0x1E69E5920](v3);
  }
}

- (void)setAlgoState:(int)state
{
  if (self->_algoState != state)
  {
    Current = CFAbsoluteTimeGetCurrent();
    self->_algoState = state;
    v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:self->_algoState];
    if (v3)
    {
      [(NightModeControl *)self updateStatusDictionaryWithValue:v3 forKey:@"BlueLightReductionAlgoOverride"];
      MEMORY[0x1E69E5920](v3);
    }

    if (self->_algoState == 4 || self->_algoState == 3)
    {
      [(NightModeControl *)self updateOptionTimestamp:Current];
      self->_untilNexTransitionTimestamp = Current;
    }

    else
    {
      [(NightModeControl *)self updateStatusDictionaryWithValue:0 forKey:@"BlueLightReductionAlgoOverrideTimestamp"];
    }
  }
}

- (void)timeZoneChanged
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __35__NightModeControl_timeZoneChanged__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_async(queue, &block);
}

uint64_t __35__NightModeControl_timeZoneChanged__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v6 = CFTimeZoneCopySystem();
  if (*(*(a1 + 32) + 8))
  {
    v3 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v7, *(*(a1 + 32) + 144), v6);
    _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "time zone changed from %@ to %@", v7, 0x16u);
  }

  if (*(*(a1 + 32) + 144))
  {
    CFRelease(*(*(a1 + 32) + 144));
  }

  *(*(a1 + 32) + 144) = v6;
  [*(a1 + 32) reevaluateCurrentState];
  result = objc_sync_exit(obj);
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)clockChanged
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __32__NightModeControl_clockChanged__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_async(queue, &block);
}

uint64_t __32__NightModeControl_clockChanged__block_invoke(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v5 = inited;
  }

  v10 = v5;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "clock changed", v8, 2u);
  }

  [*(a1 + 32) reevaluateCurrentState];
  return objc_sync_exit(obj);
}

- (void)tearDownAllTimers
{
  selfCopy = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v8 = logHandle;
  v7 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "disable all timers", v6, 2u);
  }

  [(NightModeControl *)selfCopy cancelTransition];
  [(NightModeControl *)selfCopy cancelSchedule];
}

- (id)copyTimeStringWithHour:(int)hour minute:(int)minute second:(int)second
{
  v13 = 0;
  v12 = 0;
  v5 = objc_alloc(MEMORY[0x1E695DEE8]);
  v11 = [v5 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    if (v12)
    {
      [v12 setLocalizedDateFormatFromTemplate:@"j"];
      dateFormat = [v12 dateFormat];
      if (dateFormat && ([dateFormat containsString:@"a"] & 1) == 0 && (objc_msgSend(dateFormat, "containsString:", @"b") & 1) == 0 && (objc_msgSend(dateFormat, "containsString:", @"B") & 1) == 0)
      {
        [v12 setLocalizedDateFormatFromTemplate:@"jjmm"];
      }

      v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:0.0];
      if (v9)
      {
        v8 = [v11 components:32 fromDate:v9];
        if (v8)
        {
          [v8 setHour:hour];
          [v8 setMinute:minute];
          [v8 setSecond:second];
          v7 = [v11 dateFromComponents:v8];
          if (v7)
          {
            v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:{objc_msgSend(v12, "stringFromDate:", v7)}];
          }
        }

        MEMORY[0x1E69E5920](v9);
      }
    }
  }

  if (v12)
  {
    MEMORY[0x1E69E5920](v12);
  }

  if (v11)
  {
    MEMORY[0x1E69E5920](v11);
  }

  return v13;
}

- (void)displayAlertInteractive:(BOOL)interactive
{
  __b[9] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v29 = a2;
  interactiveCopy = interactive;
  if (!self->_notificationInProgress)
  {
    if (selfCopy->_notifyUserAboutScheduleCounter < 3)
    {
      ++selfCopy->_notifyUserAboutScheduleCounter;
      v27 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:selfCopy->_notifyUserAboutScheduleCounter];
      if (v27)
      {
        [(NightModeControl *)selfCopy updateStatusDictionaryWithValue:v27 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
        MEMORY[0x1E69E5920](v27);
      }

      if (!interactiveCopy)
      {
        [(NightModeControl *)selfCopy enableBlueLightReduction:1 withOption:2];
      }

      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = MEMORY[0x1E696AAE8];
      localizations = [v26 localizations];
      v25 = [v7 preferredLocalizationsFromArray:localizations forPreferences:{objc_msgSend(MEMORY[0x1E695DF58], "preferredLanguages")}];
      if ([v25 count])
      {
        v24 = [v25 objectAtIndexedSubscript:0];
        v23 = [v26 localizedStringForKey:@"BLR_ALERT_TITLE" value:? table:? localization:?];
        v22 = [v26 localizedStringForKey:@"BLR_ALERT_TEXT_2" value:0 table:@"Localizable" localization:v24];
        v21 = [v26 localizedStringForKey:@"BLR_ALERT_OK_2" value:0 table:@"Localizable" localization:v24];
        v20 = [v26 localizedStringForKey:@"BLR_ALERT_CANCEL_3" value:0 table:@"Localizable" localization:v24];
        if (v23)
        {
          if (v22 && v21 && v20)
          {
            v19 = 0;
            v18 = [(NightModeControl *)selfCopy copyTimeStringWithHour:7 minute:0 second:?];
            if (v18)
            {
              context = objc_autoreleasePoolPush();
              v17 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, v18];
              v19 = [v17 copy];
              objc_autoreleasePoolPop(context);
              MEMORY[0x1E69E5920](v18);
            }

            if (v19)
            {
              v16 = 0;
              memset(__b, 0, 0x48uLL);
              __b[0] = *MEMORY[0x1E695EE68];
              __b[1] = *MEMORY[0x1E695EE58];
              __b[2] = *MEMORY[0x1E695EE60];
              __b[3] = *MEMORY[0x1E695EE78];
              __b[4] = *MEMORY[0x1E695EE70];
              __b[5] = *MEMORY[0x1E69D44E0];
              __b[6] = *MEMORY[0x1E69D4500];
              __b[7] = *MEMORY[0x1E69D44D8];
              __b[8] = *MEMORY[0x1E69D44C8];
              memset(v31, 0, sizeof(v31));
              v31[0] = *MEMORY[0x1E695E4D0];
              v31[1] = v23;
              v31[2] = v22;
              v31[3] = v21;
              v31[4] = v19;
              v31[5] = *MEMORY[0x1E695E4D0];
              v31[6] = *MEMORY[0x1E695E4D0];
              v31[7] = *MEMORY[0x1E695E4D0];
              v31[8] = @"prefs:root=DISPLAY&path=BLUE_LIGHT_REDUCTION";
              dictionary = CFDictionaryCreate(0, __b, v31, 9, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              MEMORY[0x1E69E5920](v19);
              selfCopy->_notificationInProgress = 1;
              v3 = CFUserNotificationCreate(0, 0.0, 3uLL, &v16, dictionary);
              selfCopy->_enableNotification = v3;
              CFRelease(dictionary);
              global_queue = dispatch_get_global_queue(0, 0);
              block = MEMORY[0x1E69E9820];
              v9 = -1073741824;
              v10 = 0;
              v11 = __44__NightModeControl_displayAlertInteractive___block_invoke;
              v12 = &unk_1E867B840;
              v13 = selfCopy;
              v14 = interactiveCopy;
              dispatch_async(global_queue, &block);
            }
          }
        }
      }
    }

    else
    {
      [(NightModeControl *)selfCopy enableBlueLightReduction:1 withOption:2];
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __44__NightModeControl_displayAlertInteractive___block_invoke(CFOptionFlags a1)
{
  v6 = a1;
  responseFlags[2] = a1;
  responseFlags[1] = a1;
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(*(*(a1 + 32) + 368), 0.0, responseFlags);
  if (responseFlags[0] == 1 && (*(v6 + 40) & 1) != 0)
  {
    v5 = 0x1E696A000uLL;
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
    if (v9)
    {
      if (v8)
      {
        v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"BlueReductionEnabledValue", v8, @"BlueReductionEnabledOption", 0}];
        if (v7)
        {
          [*(v6 + 32) setProperty:v7 forKey:@"BlueReductionEnabled"];
          MEMORY[0x1E69E5920](v7);
        }
      }
    }

    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v8);
  }

  obj = *(v6 + 32);
  objc_sync_enter(obj);
  v1 = v6;
  *(*(v6 + 32) + 376) = 0;
  CFRelease(*(*(v1 + 32) + 368));
  v2 = obj;
  *(*(v6 + 32) + 368) = 0;
  return objc_sync_exit(v2);
}

uint64_t __50__NightModeControl_setNightShiftFactorDictionary___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59D3198];
  if (result)
  {
    return [a2 setNightShiftFactorDictionary:*(a1 + 32)];
  }

  return result;
}

- (id)copyPreferenceForKey:(id)key user:(id)user
{
  selfCopy = self;
  v24 = a2;
  keyCopy = key;
  userCopy = user;
  v15 = 0;
  v16 = &v15;
  v17 = 1375731712;
  v18 = 48;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  supportObjs = self->_supportObjs;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __46__NightModeControl_copyPreferenceForKey_user___block_invoke;
  v11 = &unk_1E867B868;
  v14 = &v15;
  keyCopy2 = key;
  userCopy2 = user;
  [(NSMutableArray *)supportObjs enumerateObjectsUsingBlock:?];
  v6 = v16[5];
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t __46__NightModeControl_copyPreferenceForKey_user___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59D3198];
  if (result)
  {
    result = [a2 copyPreferenceForKey:a1[4] user:a1[5]];
    *(*(a1[6] + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

uint64_t __46__NightModeControl_setPreference_forKey_user___block_invoke(void *a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59D3198];
  if (result)
  {
    return [a2 setPreference:a1[4] forKey:a1[5] user:a1[6]];
  }

  return result;
}

@end