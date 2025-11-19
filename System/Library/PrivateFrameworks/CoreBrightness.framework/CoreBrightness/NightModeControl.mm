@interface NightModeControl
- (BOOL)parseStatusDictionary:(id)a3 intoStruct:(id *)a4 shouldUpdatePrefs:(BOOL *)a5;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)updateTransitionTimesFromSchedule:(double)a3;
- (BOOL)updateTransitionTimesFromSunriseSunset:(double)a3;
- (NightModeControl)initWithSupportObject:(id)a3 queue:(id)a4 callback:(id)a5;
- (id)copyDictionaryFromStatus:(id *)a3;
- (id)copyLowPowerModeState;
- (id)copyPreferenceForKey:(id)a3 user:(id)a4;
- (id)copyStatusDictionaryFromPrefs;
- (id)copyTimeStringWithHour:(int)a3 minute:(int)a4 second:(int)a5;
- (id)getPropertyForKey:(id)a3;
- (void)addSupportObject:(id)a3;
- (void)cancelSchedule;
- (void)cancelTransition;
- (void)clockChanged;
- (void)dealloc;
- (void)displayAlertInteractive:(BOOL)a3;
- (void)enableBlueLightReduction:(BOOL)a3 withOption:(int)a4;
- (void)initiateFullMaxTransition;
- (void)initiateFullMinTransition;
- (void)initiateRestrictedMaxTransition;
- (void)initiateTransitionTo:(float)a3 andRampLength:(float)a4;
- (void)reevaluateCurrentStateWithFactorFadeOption:(float)a3;
- (void)removeSupportObject:(id)a3;
- (void)retrieveSunriseSunsetTimesFromBackup:(double)a3;
- (void)saveStatusToPrefs:(id)a3;
- (void)scheduleNextTransition:(double)a3 withType:(int)a4;
- (void)setAlgoState:(int)a3;
- (void)setMode:(int)a3;
- (void)setNightModeFactor:(float)a3 withFadePeriod:(float)a4;
- (void)setSchedule:(id)a3;
- (void)setSunPermitted:(BOOL)a3;
- (void)tearDownAllTimers;
- (void)timeZoneChanged;
- (void)transitionTimerHandler;
- (void)updateLowPowerModeState:(id)a3;
- (void)updateOptionTimestamp:(double)a3;
- (void)updateStatusDictionaryWithValue:(id)a3 forKey:(id)a4;
- (void)updateSunriseSunsetBackup;
- (void)updateSunriseSunsetInfo:(id)a3;
- (void)updateTransitionTimes:(double)a3;
@end

@implementation NightModeControl

- (void)cancelSchedule
{
  v10 = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = v10->_logHandle;
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

  if (v10->_nextTransitionTimer)
  {
    dispatch_source_cancel(v10->_nextTransitionTimer);
    dispatch_release(v10->_nextTransitionTimer);
    v10->_nextTransitionTimer = 0;
    v10->_currentScheduledTransitionType = 0;
  }
}

- (void)cancelTransition
{
  v11 = self;
  v10 = a2;
  if (self->_logHandle)
  {
    logHandle = v11->_logHandle;
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

  if (v11->_transitionTimer)
  {
    dispatch_source_cancel(v11->_transitionTimer);
    dispatch_release(v11->_transitionTimer);
    v11->_transitionTimer = 0;
  }

  factor = v11->_factorState.factor;
  v11->_factorState.target = factor;
  v11->_factorState.start = factor;
}

- (BOOL)parseStatusDictionary:(id)a3 intoStruct:(id *)a4 shouldUpdatePrefs:(BOOL *)a5
{
  v19 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  [a3 objectForKey:@"Version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(a3 objectForKey:{@"Version", "intValue"}] != 1)
  {
    return 0;
  }

  a4->var0 = 1;
  [a3 objectForKey:@"BlueReductionEnabled"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  a4->var1 = [objc_msgSend(a3 objectForKey:{@"BlueReductionEnabled", "intValue"}] != 0;
  [a3 objectForKey:@"BlueReductionMode"];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  a4->var3 = [objc_msgSend(a3 objectForKey:{@"BlueReductionMode", "intValue"}];
  if (a4->var3)
  {
    v19 = 1;
  }

  [a3 objectForKey:@"BlueReductionSunScheduleAllowed"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  a4->var2 = [objc_msgSend(a3 objectForKey:{@"BlueReductionSunScheduleAllowed", "intValue"}] != 0;
  v18 = [a3 objectForKey:@"BlueLightReductionSchedule"];
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

  a4->var4.var0.var0 = [objc_msgSend(v18 objectForKey:{@"NightStartHour", "intValue"}];
  [v18 objectForKey:@"NightStartMinute"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  a4->var4.var0.var1 = [objc_msgSend(v18 objectForKey:{@"NightStartMinute", "intValue"}];
  [v18 objectForKey:@"DayStartHour"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  a4->var4.var1.var0 = [objc_msgSend(v18 objectForKey:{@"DayStartHour", "intValue"}];
  [v18 objectForKey:@"DayStartMinute"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  a4->var4.var1.var1 = [objc_msgSend(v18 objectForKey:{@"DayStartMinute", "intValue"}];
  [a3 objectForKey:@"BlueLightReductionDisableScheduleAlertCounter"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (v12)
  {
    self->_notifyUserAboutScheduleCounter = [objc_msgSend(a3 objectForKey:{@"BlueLightReductionDisableScheduleAlertCounter", "intValue"}];
  }

  if (self->_notifyUserAboutScheduleCounter < 3 && (v19 & 1) != 0)
  {
    self->_notifyUserAboutScheduleCounter = 3;
    if (a5)
    {
      *a5 = 1;
    }
  }

  [a3 objectForKey:@"BlueLightReductionRevertToSunriseSunset"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_revertToSunriseSunset = [objc_msgSend(a3 objectForKey:{@"BlueLightReductionRevertToSunriseSunset", "intValue"}] != 0;
  }

  [a3 objectForKey:@"BlueLightReductionAlgoOverride"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_algoState = [objc_msgSend(a3 objectForKey:{@"BlueLightReductionAlgoOverride", "intValue"}];
    if (self->_algoState == 2 || self->_algoState == 1)
    {
      v17 = [a3 objectForKey:@"BlueLightReductionAlgoOverrideTimestamp"];
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
      v16 = [a3 objectForKey:@"BlueLightReductionAlgoOverrideTimestamp"];
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

- (id)copyDictionaryFromStatus:(id *)a3
{
  v15 = 0;
  if (a3)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
    if (v5)
    {
      [v15 setObject:v5 forKey:@"AutoBlueReductionEnabled"];
      MEMORY[0x1E69E5920](v5);
    }

    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var1];
    if (v6)
    {
      [v15 setObject:v6 forKey:@"BlueReductionEnabled"];
      MEMORY[0x1E69E5920](v6);
    }

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var3];
    if (v7)
    {
      [v15 setObject:v7 forKey:@"BlueReductionMode"];
      MEMORY[0x1E69E5920](v7);
    }

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var2];
    if (v8)
    {
      [v15 setObject:v8 forKey:@"BlueReductionSunScheduleAllowed"];
      MEMORY[0x1E69E5920](v8);
    }

    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var6];
    if (v9)
    {
      [v15 setObject:v9 forKey:@"BlueReductionAvailable"];
      MEMORY[0x1E69E5920](v9);
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    if (v4)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var4.var0.var0];
      if (v10)
      {
        [v4 setObject:v10 forKey:@"NightStartHour"];
        MEMORY[0x1E69E5920](v10);
      }

      v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var4.var0.var1];
      if (v11)
      {
        [v4 setObject:v11 forKey:@"NightStartMinute"];
        MEMORY[0x1E69E5920](v11);
      }

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var4.var1.var0];
      if (v12)
      {
        [v4 setObject:v12 forKey:@"DayStartHour"];
        MEMORY[0x1E69E5920](v12);
      }

      v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var4.var1.var1];
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

- (void)saveStatusToPrefs:(id)a3
{
  if (a3)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
    if (v3)
    {
      if ([v3 objectForKey:@"CBBlueReductionStatus"] || !self->_statusUpdated)
      {
        [v3 setObject:a3 forKey:@"CBBlueReductionStatus"];
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

- (void)updateStatusDictionaryWithValue:(id)a3 forKey:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_properties)
  {
    v8 = [(NSMutableDictionary *)self->_properties objectForKey:@"CBBlueReductionStatus"];
    if (v8)
    {
      v7 = 1;
      if (a3)
      {
        [v8 setObject:a3 forKey:a4];
      }

      else if ([v8 objectForKey:a4])
      {
        [v8 removeObjectForKey:a4];
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        [(NightModeControl *)self saveStatusToPrefs:v8];
        if (self->_callbackBlock && (([a4 isEqualToString:@"AutoBlueReductionEnabled"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueReductionEnabled") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueReductionMode") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueReductionSunScheduleAllowed") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueLightReductionDisableFlags") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueReductionAvailable") & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"BlueLightReductionSchedule") & 1) != 0))
        {
          (*(self->_callbackBlock + 2))();
        }

        if ([a4 isEqualToString:@"BlueReductionEnabled"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [objc_alloc(MEMORY[0x1E698EBA0]) initWithStarting:a3 reason:0];
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
      __os_log_helper_16_2_2_8_64_8_64(v12, a4, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "NightShift status update: %@ = %@", v12, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateLowPowerModeState:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v3)
  {
    if (a3)
    {
      [v3 setObject:a3 forKey:@"BLRLowPowerSavedMode"];
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
      v3 = [v6 intValue];
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v3];
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1E69E5920](v4);
  }

  return v5;
}

- (NightModeControl)initWithSupportObject:(id)a3 queue:(id)a4 callback:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v65 = self;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  v61 = a5;
  v60.receiver = self;
  v60.super_class = NightModeControl;
  v65 = [(NightModeControl *)&v60 init];
  if (v65)
  {
    if (v62 && v61)
    {
      *(v65 + 1) = os_log_create("com.apple.CoreBrightness.NightShift", "default");
      *(v65 + 2) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      v54[0] = 0;
      v54[1] = v54;
      v55 = 1375731712;
      v56 = 48;
      v57 = __Block_byref_object_copy__2;
      v58 = __Block_byref_object_dispose__2;
      v59 = v65;
      v27 = [SunriseSunsetProvider alloc];
      v48 = MEMORY[0x1E69E9820];
      v49 = -1073741824;
      v50 = 0;
      v51 = __57__NightModeControl_initWithSupportObject_queue_callback___block_invoke;
      v52 = &unk_1E867B818;
      v53 = v54;
      *(v65 + 3) = [(SunriseSunsetProvider *)v27 initWithCallback:?];
      *(v65 + 8) = 20;
      if (!*(v65 + 3))
      {
        if (*(v65 + 1))
        {
          v26 = *(v65 + 1);
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

      *(v65 + 38) = @"sunrise";
      *(v65 + 39) = @"sunset";
      *(v65 + 40) = @"previousSunrise";
      *(v65 + 41) = @"previousSunset";
      *(v65 + 42) = @"nextSunrise";
      *(v65 + 43) = @"nextSunset";
      *(v65 + 44) = @"isDaylight";
      *(v65 + 5) = 0;
      v65[200] = 0;
      *(v65 + 6) = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v63)
      {
        [*(v65 + 6) addObject:v63];
      }

      *(v65 + 7) = v62;
      dispatch_retain(*(v65 + 7));
      *(v65 + 22) = 0;
      *(v65 + 33) = 0;
      *(v65 + 34) = 0;
      *(v65 + 32) = 0;
      *(v65 + 27) = 0;
      *(v65 + 28) = 1.0;
      v65[229] = 1;
      Current = CFAbsoluteTimeGetCurrent();
      *(v65 + 27) = Current;
      *(v65 + 26) = Current;
      v65[228] = 0;
      *(v65 + 56) = 1155596288;
      *(v65 + 8) = 0;
      *(v65 + 9) = 0;
      *(v65 + 10) = objc_alloc_init(CBAnalyticsNightShiftTracker);
      *(v65 + 51) = 0;
      *(v65 + 90) = 0;
      v65[377] = 0;
      *(v65 + 70) = 22;
      *(v65 + 71) = 0;
      *(v65 + 72) = 7;
      *(v65 + 73) = 0;
      v65[296] = 0;
      *(v65 + 33) = 0;
      *(v65 + 18) = CFTimeZoneCopySystem();
      v21 = [MEMORY[0x1E696AD88] defaultCenter];
      [v21 addObserver:v65 selector:sel_timeZoneChanged name:*MEMORY[0x1E695DA68] object:0];
      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      [v20 addObserver:v65 selector:sel_clockChanged name:*MEMORY[0x1E695DA60] object:0];
      v44 = 0;
      v43 = [v65 copyStatusDictionaryFromPrefs];
      if (v43)
      {
        v42 = [v65 copyLowPowerModeState];
        if (v42)
        {
          [v43 setObject:v42 forKey:@"BlueReductionMode"];
          [v65 updateLowPowerModeState:0];
          MEMORY[0x1E69E5920](v42);
        }

        [v43 removeObjectForKey:@"BlueLightReductionDisableFlags"];
        v65[296] = 1;
        if ([v65 parseStatusDictionary:v43 intoStruct:v65 + 240 shouldUpdatePrefs:&v44])
        {
          v38 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
          if (v38)
          {
            [v43 setValue:v38 forKey:@"AutoBlueReductionEnabled"];
            [v43 setValue:v38 forKey:@"BlueReductionAvailable"];
            MEMORY[0x1E69E5920](v38);
          }

          if (*(v65 + 1))
          {
            v15 = *(v65 + 1);
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
            __os_log_helper_16_2_1_8_64(v67, v43);
            _os_log_debug_impl(&dword_1DE8E5000, v37, v36, "Defaults valid and updated: %@", v67, 0xCu);
          }
        }

        else
        {
          MEMORY[0x1E69E5920](v43);
          v43 = 0;
          if (*(v65 + 1))
          {
            v19 = *(v65 + 1);
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

      v65[272] = 1;
      if (!v43)
      {
        if (*(v65 + 1))
        {
          v13 = *(v65 + 1);
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

        v65[240] = 1;
        v65[241] = 0;
        *(v65 + 61) = 0;
        *(v65 + 62) = 22;
        *(v65 + 63) = 0;
        *(v65 + 64) = 7;
        *(v65 + 65) = 0;
        v65[242] = 0;
        v43 = [v65 copyDictionaryFromStatus:v65 + 240];
      }

      if (v43)
      {
        if (*(v65 + 2))
        {
          [*(v65 + 2) setObject:v43 forKey:@"CBBlueReductionStatus"];
        }

        MEMORY[0x1E69E5920](v43);
      }

      if (v44)
      {
        v32 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(v65 + 90)];
        if (v32)
        {
          [v65 updateStatusDictionaryWithValue:v32 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
          MEMORY[0x1E69E5920](v32);
        }
      }

      if (v61)
      {
        *(v65 + 29) = [v61 copy];
      }

      if (*(v65 + 61) == 1)
      {
        *(v65 + 23) = 1155596288;
      }

      else
      {
        *(v65 + 23) = 1123024896;
      }

      *(v65 + 24) = *(v65 + 23);
      *(v65 + 26) = 2.0;
      *(v65 + 25) = 1.0;
      if (*(v65 + 2))
      {
        v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(v65 + 23)];
        if (v28)
        {
          [*(v65 + 2) setObject:v28 forKey:@"BlueLightReductionTransitionLength"];
          MEMORY[0x1E69E5920](v28);
        }

        v29 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(v65 + 26)];
        if (v29)
        {
          [*(v65 + 2) setObject:v29 forKey:@"BlueLightReductionTransitionRate"];
          MEMORY[0x1E69E5920](v29);
        }

        v30 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(v65 + 56)];
        if (v30)
        {
          [*(v65 + 2) setObject:v30 forKey:@"BlueLightReductionInactivityTimeout"];
          MEMORY[0x1E69E5920](v30);
        }

        v9 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v5) = *(v65 + 32);
        v31 = [v9 initWithFloat:v5];
        if (v31)
        {
          [*(v65 + 2) setObject:v31 forKey:@"BlueLightReductionFactor"];
          MEMORY[0x1E69E5920](v31);
        }
      }

      _Block_object_dispose(v54, 8);
    }

    else
    {
      MEMORY[0x1E69E5920](v65);
      v65 = 0;
    }
  }

  if (*(v65 + 1))
  {
    v8 = *(v65 + 1);
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
    __os_log_helper_16_2_1_8_64(v66, v65);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Night Shift initialised: %@", v66, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v65;
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

- (void)addSupportObject:(id)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  if (a3)
  {
    [(NSMutableArray *)v8->_supportObjs addObject:v6];
    v5 = [(NightModeControl *)v8 getPropertyForKey:@"BlueLightReductionFactor"];
    if (v5)
    {
      v3 = objc_alloc(MEMORY[0x1E695DF20]);
      v4 = [v3 initWithObjectsAndKeys:{&unk_1F59C8CD0, @"BlueLightReductionFactorFadePeriod", v5, @"BlueLightReductionFactorValue", MEMORY[0x1E695E118], @"ForceUpdate", 0}];
      [v6 setNightShiftFactorDictionary:v4];
      MEMORY[0x1E69E5920](v4);
    }
  }
}

- (void)removeSupportObject:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_supportObjs removeObject:a3];
  }
}

- (void)dealloc
{
  v14 = self;
  v13 = a2;
  objc_sync_enter(self);
  if (v14->_logHandle)
  {
    logHandle = v14->_logHandle;
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

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:v14 name:*MEMORY[0x1E695DA68] object:0];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:v14 name:*MEMORY[0x1E695DA60] object:0];
  if (v14->_sunriseSunsetProvider)
  {
    [(SunriseSunsetProvider *)v14->_sunriseSunsetProvider cancel];
    MEMORY[0x1E69E5920](v14->_sunriseSunsetProvider);
    v14->_sunriseSunsetProvider = 0;
  }

  if (v14->_callbackBlock)
  {
    MEMORY[0x1E69E5920](v14->_callbackBlock);
    v14->_callbackBlock = 0;
  }

  if (v14->_sunriseSunsetInfo)
  {
    MEMORY[0x1E69E5920](v14->_sunriseSunsetInfo);
    v14->_sunriseSunsetInfo = 0;
  }

  if (v14->_properties)
  {
    MEMORY[0x1E69E5920](v14->_properties);
    v14->_properties = 0;
  }

  [(NightModeControl *)v14 tearDownAllTimers];
  if ([(CBAnalyticsNightShiftTracker *)v14->_modeTracker isStarted])
  {
    [(CBAnalyticsNightShiftTracker *)v14->_modeTracker stop:v14->_status.mode isEnabled:v14->_status.enabled];
  }

  MEMORY[0x1E69E5920](v14->_modeTracker);
  if (v14->_queue)
  {
    dispatch_release(v14->_queue);
    v14->_queue = 0;
  }

  if (v14->_logHandle)
  {
    MEMORY[0x1E69E5920](v14->_logHandle);
    v14->_logHandle = 0;
  }

  MEMORY[0x1E69E5920](v14->_supportObjs);
  v14->_supportObjs = 0;
  if (v14->_currentTimeZone)
  {
    CFRelease(v14->_currentTimeZone);
    v14->_currentTimeZone = 0;
  }

  objc_sync_exit(self);
  v9.receiver = v14;
  v9.super_class = NightModeControl;
  [(NightModeControl *)&v9 dealloc];
}

- (id)getPropertyForKey:(id)a3
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_properties objectForKey:a3];
  objc_sync_exit(self);
  return v5;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = self;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v51 = 1;
  objc_sync_enter(self);
  if ([v52 isEqualToString:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(v52, "isEqualToString:", @"DisplayBrightnessFactorWithFade"))
  {
    v50 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [v53 objectForKey:@"DisplayBrightnessFactor"];
    }

    else
    {
      v50 = v53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v50 floatValue];
      v49 = v4;
      v5 = v4;
      if (v5 <= 0.0)
      {
        if (v55->_notificationInProgress && v55->_enableNotification)
        {
          CFUserNotificationCancel(v55->_enableNotification);
        }

        if (v55->_algoState == 2 || v55->_algoState == 1)
        {
          v55->_displayOffTimestamp = CFAbsoluteTimeGetCurrent();
          [(NightModeControl *)v55 updateOptionTimestamp:v55->_displayOffTimestamp];
          v55->_checkInactivity = 1;
          if (v55->_logHandle)
          {
            logHandle = v55->_logHandle;
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
            __os_log_helper_16_0_2_4_0_8_0(v56, v55->_algoState, *&v55->_displayOffTimestamp);
            _os_log_debug_impl(&dword_1DE8E5000, v47, v46, "Display off with algoState=%d ts=%f", v56, 0x12u);
          }
        }

        [(NightModeControl *)v55 tearDownAllTimers];
        [(CBAnalyticsNightShiftTracker *)v55->_modeTracker stop:v55->_status.mode isEnabled:v55->_status.enabled];
        v55->_displayOff = 1;
      }

      else if (v55->_displayOff)
      {
        v55->_displayOff = 0;
        [(CBAnalyticsNightShiftTracker *)v55->_modeTracker start:v55->_status.enabled, v5];
        v48 = [(SunriseSunsetProvider *)v55->_sunriseSunsetProvider copySunriseSunsetInfo:v55->_sunriseSunsetInfoQueryTimeout];
        if (v48)
        {
          [(NightModeControl *)v55 updateSunriseSunsetInfo:v48];
          MEMORY[0x1E69E5920](v48);
        }

        [(NightModeControl *)v55 reevaluateCurrentStateWithFactorFadeOption:0.0];
      }
    }

    goto LABEL_113;
  }

  if ([v52 isEqual:@"CBSystemDidWakeFromSleep"])
  {
    if (v55->_logHandle)
    {
      v26 = v55->_logHandle;
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

    [(NightModeControl *)v55 reevaluateCurrentStateWithFactorFadeOption:0.0];
    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"AutoBlueReductionEnabled"] & 1) != 0 || (objc_msgSend(v52, "isEqualToString:", @"BlueReductionAvailable") & 1) != 0 || (objc_msgSend(v52, "isEqualToString:", @"CBDisplayPresetDisableNightShift"))
  {
    v42 = -1.0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v52 isEqualToString:@"AutoBlueReductionEnabled"])
      {
        v55->_status.active = [v53 intValue] != 0;
        [(NightModeControl *)v55 updateStatusDictionaryWithValue:v53 forKey:v52];
      }

      else if ([v52 isEqualToString:@"CBDisplayPresetDisableNightShift"])
      {
        available = v55->_status.available;
        if ((__PAIR64__(available, [v53 intValue]) - 1) >> 32)
        {
          [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:v52];
          v55->_status.available = [v53 intValue] == 0;
          v42 = 0.0;
          v41 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v55->_status.available];
          [(NightModeControl *)v55 updateStatusDictionaryWithValue:v41 forKey:@"BlueReductionAvailable"];
          MEMORY[0x1E69E5920](v41);
        }
      }

      else if ([v52 isEqualToString:@"BlueReductionAvailable"])
      {
        v55->_status.available = [v53 intValue] != 0;
        [(NightModeControl *)v55 updateStatusDictionaryWithValue:v53 forKey:v52];
      }

      if (v55->_status.active && v55->_status.available)
      {
        if ([(NSMutableArray *)v55->_supportObjs count])
        {
          v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
          if (v37)
          {
            v20 = objc_alloc(MEMORY[0x1E696AD98]);
            *&v7 = v55->_factorState.factor;
            v36 = [v20 initWithFloat:v7];
            if (v36)
            {
              [(NSMutableDictionary *)v55->_properties setObject:v36 forKey:@"BlueLightReductionFactor"];
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

            [(NightModeControl *)v55 setNightShiftFactorDictionary:v37];
            MEMORY[0x1E69E5920](v37);
          }
        }

        [(NightModeControl *)v55 reevaluateCurrentState];
      }

      else if ([(NSMutableArray *)v55->_supportObjs count])
      {
        v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        if (v40)
        {
          v39 = [objc_alloc(MEMORY[0x1E696AD98]) initWithFloat:0.0];
          if (v39)
          {
            [(NSMutableDictionary *)v55->_properties setObject:v39 forKey:@"BlueLightReductionFactor"];
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

          [(NightModeControl *)v55 setNightShiftFactorDictionary:v40];
          MEMORY[0x1E69E5920](v40);
        }
      }
    }

    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"BlueLightReductionSchedule"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NightModeControl *)v55 setSchedule:v53];
      [(NightModeControl *)v55 updateStatusDictionaryWithValue:v53 forKey:v52];
      [(NightModeControl *)v55 reevaluateCurrentState];
    }

    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"BlueReductionEnabled"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v53 objectForKey:@"BlueReductionEnabledValue"];
      if (v34)
      {
        v33 = [v53 objectForKey:@"BlueReductionEnabledOption"];
        if (v33)
        {
          -[NightModeControl enableBlueLightReduction:withOption:](v55, "enableBlueLightReduction:withOption:", [v34 intValue] != 0, objc_msgSend(v33, "intValue"));
        }

        else
        {
          -[NightModeControl enableBlueLightReduction:withOption:](v55, "enableBlueLightReduction:withOption:", [v34 intValue] != 0, 0);
        }

        [(NightModeControl *)v55 updateLowPowerModeState:0];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v55->_logHandle)
        {
          v18 = v55->_logHandle;
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

        [(NightModeControl *)v55 setMode:0];
        v14 = v55;
        *&v9 = [v53 intValue];
        [(NightModeControl *)v14 setNightModeFactor:v9];
      }
    }

    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"BlueReductionMode"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:v52];
      -[NightModeControl setMode:](v55, "setMode:", [v53 intValue]);
      [(NightModeControl *)v55 updateLowPowerModeState:0];
    }

    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"BlueLightReductionTransitionLength"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:v52];
      [v53 floatValue];
      v55->_transitionLength = v10;
    }

LABEL_99:
    [(NightModeControl *)v55 reevaluateCurrentState];
    goto LABEL_113;
  }

  if ([v52 isEqualToString:@"BlueLightReductionTransitionRate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:v52];
      [v53 floatValue];
      v55->_transitionRate = v11;
    }

    goto LABEL_99;
  }

  if ([v52 isEqualToString:@"BlueLightReductionInactivityTimeout"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:v52];
      [v53 floatValue];
      v55->_inactivityTimeout = v12;
    }
  }

  else if ([v52 isEqualToString:@"BlueLightReductionSunInfoQueryTimeout"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableDictionary *)v55->_properties setObject:v53 forKey:@"BlueLightReductionSunInfoQueryTimeout"];
      v55->_sunriseSunsetInfoQueryTimeout = [v53 intValue];
    }
  }

  else
  {
    [v52 isEqualToString:@"EcoMode"];
  }

LABEL_113:
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v51 & 1;
}

- (void)setMode:(int)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  v25 = a3;
  if (self->_status.mode != a3)
  {
    if (v25 != 1 || v27->_status.sunSchedulePermitted)
    {
      if (v27->_logHandle)
      {
        logHandle = v27->_logHandle;
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
        __os_log_helper_16_0_2_4_0_4_0(v28, v27->_status.mode, v25);
        _os_log_impl(&dword_1DE8E5000, v21, v20, "update from mode=%d to new mode=%d", v28, 0xEu);
      }

      [(CBAnalyticsNightShiftTracker *)v27->_modeTracker update:v27->_status.mode isEnabled:v27->_status.enabled];
      [(NightModeControl *)v27 setAlgoState:0];
      v27->_status.mode = v25;
      v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v27->_status.mode];
      if (v19)
      {
        [(NightModeControl *)v27 updateStatusDictionaryWithValue:v19 forKey:@"BlueReductionMode"];
        MEMORY[0x1E69E5920](v19);
      }

      if (v27->_status.mode == 1)
      {
        v27->_transitionLength = 1800.0;
      }

      else
      {
        v27->_transitionLength = 120.0;
      }

      v27->_transitionLengthActual = v27->_transitionLength;
      v27->_transitionsTimesCoeff = 1.0;
      if (v27->_revertToSunriseSunset)
      {
        if (v27->_logHandle)
        {
          v7 = v27->_logHandle;
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

        v27->_revertToSunriseSunset = 0;
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        [(NightModeControl *)v27 updateStatusDictionaryWithValue:v15 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        MEMORY[0x1E69E5920](v15);
      }

      if (v27->_notifyUserAboutScheduleCounter < 3)
      {
        if (v25)
        {
          v27->_notifyUserAboutScheduleCounter = 3;
          v3 = objc_alloc(MEMORY[0x1E696AD98]);
          v14 = [v3 initWithInt:v27->_notifyUserAboutScheduleCounter];
          if (v14)
          {
            [(NightModeControl *)v27 updateStatusDictionaryWithValue:v14 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
            MEMORY[0x1E69E5920](v14);
          }
        }
      }

      [(NightModeControl *)v27 reevaluateCurrentState];
    }

    else
    {
      if (v27->_logHandle)
      {
        v13 = v27->_logHandle;
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

- (void)setSchedule:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  v19 = a2;
  v18 = a3;
  if (self->_logHandle)
  {
    logHandle = v20->_logHandle;
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
    __os_log_helper_16_2_1_8_64(v21, v18);
    _os_log_impl(&dword_1DE8E5000, v17, v16, "update NightShift schedule: %@", v21, 0xCu);
  }

  [(NSMutableDictionary *)v20->_properties setObject:v18 forKey:@"BlueLightReductionSchedule"];
  if ([v18 count] == 4)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v15 = [v18 objectForKey:@"DayStartHour"];
    if (v15)
    {
      v20->_status.schedule.toTime.hour = [v15 intValue];
    }

    v14 = [v18 objectForKey:@"DayStartMinute"];
    if (v15)
    {
      v20->_status.schedule.toTime.minute = [v14 intValue];
    }

    v13 = [v18 objectForKey:@"NightStartHour"];
    if (v13)
    {
      v20->_status.schedule.fromTime.hour = [v13 intValue];
    }

    v12 = [v18 objectForKey:@"NightStartMinute"];
    if (v12)
    {
      v20->_status.schedule.fromTime.minute = [v12 intValue];
    }
  }

  else
  {
    if (v20->_logHandle)
    {
      v6 = v20->_logHandle;
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

- (void)enableBlueLightReduction:(BOOL)a3 withOption:(int)a4
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
    __os_log_helper_16_0_3_4_0_4_0_4_0(v11, self->_status.mode, a3, a4);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "mode=%d enable=%d option=%d", v11, 0x14u);
  }

  if (self->_status.mode)
  {
    if (a4 == 3)
    {
      a4 = 2;
    }

    if (a4 == 1)
    {
      v4 = self;
      if (a3)
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
      v4 = self;
      if (a3)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }
    }

    [(NightModeControl *)v4 setAlgoState:v5];
    goto LABEL_27;
  }

  if (!a3)
  {
    [(NightModeControl *)self setAlgoState:0];
LABEL_27:
    [CBAnalytics nightShiftEnabled:a3 withOption:a4];
    [(NightModeControl *)self reevaluateCurrentState];
    goto LABEL_28;
  }

  if (a4 != 3)
  {
    if (a4 == 1)
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

- (void)initiateTransitionTo:(float)a3 andRampLength:(float)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  [(NightModeControl *)self cancelTransition];
  if (v20->_queue && v18 != v20->_factorState.factor)
  {
    v20->_factorState.start = v20->_factorState.factor;
    v20->_factorState.target = v18;
    v20->_factorState.rampStartTime = CFAbsoluteTimeGetCurrent();
    v20->_factorState.rampLength = v17;
    if (v20->_logHandle)
    {
      logHandle = v20->_logHandle;
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
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v21, *&v20->_factorState.rampStartTime, COERCE__INT64(v20->_factorState.start), COERCE__INT64(v20->_factorState.target), COERCE__INT64(v20->_factorState.rampLength));
      _os_log_impl(&dword_1DE8E5000, v16, v15, "[%f] START transition (%f -> %f) in %f sec ", v21, 0x2Au);
    }

    v20->_transitionTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v20->_queue);
    source = v20->_transitionTimer;
    v4 = dispatch_time(0, 0);
    dispatch_source_set_timer(source, v4, (v20->_transitionRate * 1000000000.0), 0x3B9ACA00uLL);
    transitionTimer = v20->_transitionTimer;
    handler = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __55__NightModeControl_initiateTransitionTo_andRampLength___block_invoke;
    v13 = &unk_1E867B480;
    v14 = v20;
    dispatch_source_set_event_handler(transitionTimer, &handler);
    dispatch_resume(v20->_transitionTimer);
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

- (void)scheduleNextTransition:(double)a3 withType:(int)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v29 = self;
  v28 = a2;
  *&v27 = a3;
  v26 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  if (v29->_logHandle)
  {
    logHandle = v29->_logHandle;
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

  if (v29->_nextTransitionTimer)
  {
    dispatch_source_cancel(v29->_nextTransitionTimer);
    dispatch_release(v29->_nextTransitionTimer);
    v29->_nextTransitionTimer = 0;
  }

  v22 = (*&v27 - Current) * 1000000000.0 + 1000000000.0;
  v21 = 0;
  if (v22 < 3.1536e16)
  {
    v21 = dispatch_time(0, v22);
  }

  else
  {
    if (v29->_logHandle)
    {
      v9 = v29->_logHandle;
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

  if (v29->_queue)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v29->_queue);
    v29->_nextTransitionTimer = v4;
    dispatch_source_set_timer(v29->_nextTransitionTimer, v21, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    nextTransitionTimer = v29->_nextTransitionTimer;
    handler = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __52__NightModeControl_scheduleNextTransition_withType___block_invoke;
    v16 = &unk_1E867B480;
    v17 = v29;
    dispatch_source_set_event_handler(nextTransitionTimer, &handler);
    v29->_currentScheduledTransitionType = v26;
    dispatch_resume(v29->_nextTransitionTimer);
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

- (void)setNightModeFactor:(float)a3 withFadePeriod:(float)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 <= self->_maxFactor)
  {
    maxFactor = a3;
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
    __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(minFactor), COERCE__INT64(a4));
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
        *&v9 = a4;
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

- (BOOL)updateTransitionTimesFromSchedule:(double)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = self;
  v40 = a2;
  v39 = a3;
  v38 = 0;
  v37 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  if (v37)
  {
    CFCalendarSetTimeZone(v37, v41->_currentTimeZone);
    v36 = 0;
    v35 = 0;
    v34 = 0;
    hour = 0;
    minute = 0;
    if (CFCalendarDecomposeAbsoluteTime(v37, v39, "yMdHm", &v36, &v35, &v34, &hour, &minute))
    {
      if (v41->_status.mode)
      {
        hour = v41->_status.schedule.fromTime.hour;
        minute = v41->_status.schedule.fromTime.minute;
      }

      else
      {
        hour = 22;
        minute = 0;
      }

      if (CFCalendarComposeAbsoluteTime(v37, &v41->_sunsetAbsolute, "yMdHm", v36, v35, v34, hour, minute))
      {
        v41->_sunsetPreviousAbsolute = v41->_sunsetAbsolute;
        if (v41->_sunsetAbsolute >= v39)
        {
          CFCalendarAddComponents(v37, &v41->_sunsetPreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v37, &v41->_sunsetAbsolute, 0, "d", 1);
        }

        if (v41->_status.mode)
        {
          hour = v41->_status.schedule.toTime.hour;
          minute = v41->_status.schedule.toTime.minute;
        }

        else
        {
          hour = 7;
          minute = 0;
        }

        if (CFCalendarComposeAbsoluteTime(v37, &v41->_sunriseAbsolute, "yMdHm", v36, v35, v34, hour, minute))
        {
          v41->_offTransitionTimeAbsoluteUnrestricted = v41->_sunriseAbsolute - v41->_transitionLength;
          if (v41->_sunriseAbsolute < v41->_sunsetAbsolute || v41->_sunriseAbsolute - v41->_sunsetAbsolute >= (v41->_transitionLength * 2.0))
          {
            if (v41->_sunriseAbsolute < v41->_sunsetPreviousAbsolute || v41->_sunriseAbsolute - v41->_sunsetPreviousAbsolute >= (v41->_transitionLength * 2.0))
            {
              v41->_transitionsTimesCoeff = 1.0;
              v41->_sunriseAbsolute = v41->_sunriseAbsolute - v41->_transitionLength;
              v41->_transitionLengthActual = v41->_transitionLength;
            }

            else
            {
              v25 = v41->_sunriseAbsolute - v41->_sunsetPreviousAbsolute;
              v5 = v25 / (v41->_transitionLength * 2.0);
              v41->_transitionsTimesCoeff = v5;
              v41->_sunriseAbsolute = v41->_sunriseAbsolute - v25 / 2.0;
              v6 = v25 / 2.0;
              v41->_transitionLengthActual = v6;
              if (v41->_logHandle)
              {
                logHandle = v41->_logHandle;
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
                __os_log_helper_16_0_2_8_0_8_0(v42, COERCE__INT64(v41->_transitionsTimesCoeff), COERCE__INT64(v41->_transitionLengthActual));
                _os_log_debug_impl(&dword_1DE8E5000, v24, v23, "transitions overlaping coeff=%f trLenghtActual=%f", v42, 0x16u);
              }
            }
          }

          else
          {
            v28 = v41->_sunriseAbsolute - v41->_sunsetAbsolute;
            v3 = v28 / (v41->_transitionLength * 2.0);
            v41->_transitionsTimesCoeff = v3;
            v41->_sunriseAbsolute = v41->_sunriseAbsolute - v28 / 2.0;
            v4 = v28 / 2.0;
            v41->_transitionLengthActual = v4;
            if (v41->_logHandle)
            {
              v15 = v41->_logHandle;
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
              __os_log_helper_16_0_2_8_0_8_0(v43, COERCE__INT64(v41->_transitionsTimesCoeff), COERCE__INT64(v41->_transitionLengthActual));
              _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "transitions overlaping coeff=%f trLenghtActual=%f", v43, 0x16u);
            }
          }

          v41->_sunrisePreviousAbsolute = v41->_sunriseAbsolute;
          if (v41->_sunriseAbsolute >= v39)
          {
            CFCalendarAddComponents(v37, &v41->_sunrisePreviousAbsolute, 0, "d", -1);
          }

          else
          {
            CFCalendarAddComponents(v37, &v41->_sunriseAbsolute, 0, "d", 1);
          }

          v41->_offTransitionTimeAbsoluteUnrestrictedPrev = v41->_offTransitionTimeAbsoluteUnrestricted;
          if (v41->_offTransitionTimeAbsoluteUnrestricted >= v39)
          {
            CFCalendarAddComponents(v37, &v41->_offTransitionTimeAbsoluteUnrestrictedPrev, 0, "d", -1);
          }

          else
          {
            CFCalendarAddComponents(v37, &v41->_offTransitionTimeAbsoluteUnrestricted, 0, "d", 1);
          }

          v38 = 1;
        }

        else
        {
          if (v41->_logHandle)
          {
            v11 = v41->_logHandle;
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
        if (v41->_logHandle)
        {
          v19 = v41->_logHandle;
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

- (void)updateTransitionTimes:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_status.mode == 1)
  {
    v3 = [(NightModeControl *)self updateTransitionTimesFromSunriseSunset:a3];
  }

  else
  {
    v3 = [(NightModeControl *)self updateTransitionTimesFromSchedule:a3];
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

- (void)reevaluateCurrentStateWithFactorFadeOption:(float)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = self;
  v39 = a2;
  v38 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v36 = 0;
  if (v40->_logHandle)
  {
    logHandle = v40->_logHandle;
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
    __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(v42, *&Current, v40->_status.enabled, v40->_status.mode, v40->_algoState);
    _os_log_impl(&dword_1DE8E5000, v35, v34, "now=%f enabled=%d mode=%d algo=%d", v42, 0x1Eu);
  }

  [(NightModeControl *)v40 cancelSchedule];
  [(NightModeControl *)v40 cancelTransition];
  if (v40->_checkInactivity)
  {
    v40->_checkInactivity = 0;
    if (Current - v40->_displayOffTimestamp > v40->_inactivityTimeout)
    {
      if (v40->_logHandle)
      {
        v28 = v40->_logHandle;
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

      [(NightModeControl *)v40 setAlgoState:0];
    }

    [(NightModeControl *)v40 updateStatusDictionaryWithValue:0 forKey:@"BlueLightReductionAlgoOverrideTimestamp"];
  }

  if (v40->_algoState == 4)
  {
    [(NightModeControl *)v40 updateTransitionTimes:Current];
    v36 = 1;
    if (v40->_transitionTimesValid)
    {
      untilNexTransitionTimestamp = v40->_untilNexTransitionTimestamp;
      offTransitionTimeAbsoluteUnrestrictedPrev = v40->_offTransitionTimeAbsoluteUnrestrictedPrev;
      if (untilNexTransitionTimestamp < offTransitionTimeAbsoluteUnrestrictedPrev)
      {
        HIDWORD(untilNexTransitionTimestamp) = HIDWORD(Current);
        offTransitionTimeAbsoluteUnrestrictedPrev = v40->_offTransitionTimeAbsoluteUnrestrictedPrev + v40->_transitionLength;
        if (Current >= offTransitionTimeAbsoluteUnrestrictedPrev)
        {
          [(NightModeControl *)v40 setAlgoState:0, Current];
        }
      }
    }
  }

  else if (v40->_algoState == 3)
  {
    [(NightModeControl *)v40 updateTransitionTimes:Current];
    v36 = 1;
    if (v40->_transitionTimesValid)
    {
      untilNexTransitionTimestamp = v40->_untilNexTransitionTimestamp;
      offTransitionTimeAbsoluteUnrestrictedPrev = v40->_sunsetPreviousAbsolute;
      if (untilNexTransitionTimestamp < offTransitionTimeAbsoluteUnrestrictedPrev)
      {
        [(NightModeControl *)v40 setAlgoState:0];
      }
    }
  }

  switch(v40->_algoState)
  {
    case 3:
      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)v40 updateTransitionTimes:Current];
      }

      v5 = v40->_untilNexTransitionTimestamp;
      sunsetPreviousAbsolute = v40->_sunsetPreviousAbsolute;
      if (v5 < sunsetPreviousAbsolute)
      {
        if (Current >= v40->_sunsetPreviousAbsolute + v40->_transitionLengthActual)
        {
          [(NightModeControl *)v40 setAlgoState:0, Current];
          *&v9 = v40->_maxFactor * v40->_transitionsTimesCoeff;
          *&v10 = v38;
          [(NightModeControl *)v40 setNightModeFactor:v9 withFadePeriod:v10];
          if (v40->_status.mode)
          {
            [(NightModeControl *)v40 scheduleNextTransition:2 withType:v40->_sunriseAbsolute];
          }
        }

        else
        {
          transitionLengthActual = v40->_transitionLengthActual;
          v8 = vabdd_f64(Current, v40->_sunsetPreviousAbsolute) / transitionLengthActual;
          *&v8 = v8;
          *&transitionLengthActual = v38;
          [(NightModeControl *)v40 setNightModeFactor:v8 withFadePeriod:transitionLengthActual];
          [(NightModeControl *)v40 initiateRestrictedMaxTransition];
          if (v40->_status.mode)
          {
            [(NightModeControl *)v40 scheduleNextTransition:2 withType:v40->_sunriseAbsolute];
          }
        }

        break;
      }

LABEL_42:
      *&v5 = v40->_minFactor;
      *&sunsetPreviousAbsolute = v38;
      [(NightModeControl *)v40 setNightModeFactor:v5 withFadePeriod:sunsetPreviousAbsolute];
      [(NightModeControl *)v40 scheduleNextTransition:1 withType:v40->_sunsetAbsolute];
      break;
    case 4:
      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)v40 updateTransitionTimes:Current];
      }

      v11 = v40->_untilNexTransitionTimestamp;
      v12 = v40->_offTransitionTimeAbsoluteUnrestrictedPrev + v40->_transitionLength;
      if (v11 >= v12)
      {
        *&v11 = v40->_maxFactor;
        *&v12 = v38;
        [(NightModeControl *)v40 setNightModeFactor:v11 withFadePeriod:v12];
        [(NightModeControl *)v40 scheduleNextTransition:2 withType:v40->_offTransitionTimeAbsoluteUnrestricted];
      }

      else if (Current >= v40->_offTransitionTimeAbsoluteUnrestrictedPrev + v40->_transitionLength)
      {
        [(NightModeControl *)v40 setAlgoState:0, Current];
        *&v15 = v40->_minFactor;
        *&v16 = v38;
        [(NightModeControl *)v40 setNightModeFactor:v15 withFadePeriod:v16];
        if (v40->_status.mode)
        {
          [(NightModeControl *)v40 scheduleNextTransition:1 withType:v40->_sunsetAbsolute];
        }
      }

      else
      {
        v13 = vabdd_f64(Current, v40->_offTransitionTimeAbsoluteUnrestrictedPrev) / v40->_transitionLength;
        v14 = v40->_maxFactor - v13;
        *&v14 = v14;
        *&v13 = v38;
        [(NightModeControl *)v40 setNightModeFactor:v14 withFadePeriod:v13];
        [(NightModeControl *)v40 initiateFullMinTransition];
        if (v40->_status.mode)
        {
          [(NightModeControl *)v40 scheduleNextTransition:1 withType:v40->_sunsetAbsolute];
        }
      }

      break;
    case 2:
      *&untilNexTransitionTimestamp = v40->_maxFactor;
      *&offTransitionTimeAbsoluteUnrestrictedPrev = v38;
      [(NightModeControl *)v40 setNightModeFactor:untilNexTransitionTimestamp withFadePeriod:offTransitionTimeAbsoluteUnrestrictedPrev];
      break;
    default:
      if (v40->_algoState == 1 || !v40->_status.mode)
      {
        *&untilNexTransitionTimestamp = v40->_minFactor;
        *&offTransitionTimeAbsoluteUnrestrictedPrev = v38;
        [(NightModeControl *)v40 setNightModeFactor:untilNexTransitionTimestamp withFadePeriod:offTransitionTimeAbsoluteUnrestrictedPrev];
        break;
      }

      if ((v36 & 1) == 0)
      {
        [(NightModeControl *)v40 updateTransitionTimes:Current];
      }

      if (v40->_transitionTimesValid)
      {
        if (v40->_sunriseAbsolute < v40->_sunsetAbsolute)
        {
          HIDWORD(v19) = HIDWORD(Current);
          v20 = v40->_sunsetPreviousAbsolute + v40->_transitionLengthActual;
          if (Current >= v20)
          {
            *&v19 = v40->_maxFactor * v40->_transitionsTimesCoeff;
            *&v20 = v38;
            [(NightModeControl *)v40 setNightModeFactor:v19 withFadePeriod:v20];
            [(NightModeControl *)v40 scheduleNextTransition:2 withType:v40->_sunriseAbsolute];
          }

          else
          {
            [(NightModeControl *)v40 scheduleNextTransition:2 withType:v40->_sunriseAbsolute];
            transitionsTimesCoeff = v40->_transitionsTimesCoeff;
            v22 = vabdd_f64(Current, v40->_sunsetPreviousAbsolute) / v40->_transitionLengthActual * transitionsTimesCoeff;
            *&v22 = v22;
            *&transitionsTimesCoeff = v38;
            [(NightModeControl *)v40 setNightModeFactor:v22 withFadePeriod:transitionsTimesCoeff];
            [(NightModeControl *)v40 initiateRestrictedMaxTransition];
          }

          break;
        }

        HIDWORD(v5) = HIDWORD(Current);
        sunsetPreviousAbsolute = v40->_sunrisePreviousAbsolute + v40->_transitionLengthActual;
        if (Current < sunsetPreviousAbsolute)
        {
          [(NightModeControl *)v40 scheduleNextTransition:1 withType:v40->_sunsetAbsolute];
          v17 = v40->_transitionsTimesCoeff;
          v18 = (v40->_maxFactor - vabdd_f64(Current, v40->_sunrisePreviousAbsolute) / v40->_transitionLengthActual) * v17;
          *&v18 = v18;
          *&v17 = v38;
          [(NightModeControl *)v40 setNightModeFactor:v18 withFadePeriod:v17];
          [(NightModeControl *)v40 initiateFullMinTransition];
          break;
        }

        goto LABEL_42;
      }

      break;
  }

  if (v40->_logHandle)
  {
    v24 = v40->_logHandle;
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
    __os_log_helper_16_0_2_8_0_8_0(v41, COERCE__INT64(v40->_factorState.factor), COERCE__INT64(v38));
    _os_log_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_INFO, "updated factor=%f with fade %f", v41, 0x16u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setSunPermitted:(BOOL)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v26 = a3;
  if (self->_logHandle)
  {
    logHandle = v28->_logHandle;
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
    __os_log_helper_16_0_2_4_0_4_0(v29, v28->_status.sunSchedulePermitted, v26);
    _os_log_impl(&dword_1DE8E5000, v25, v24, "update sun mode permission from %d to %d", v29, 0xEu);
  }

  if (v28->_status.sunSchedulePermitted != v26)
  {
    v28->_status.sunSchedulePermitted = v26;
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v28->_status.sunSchedulePermitted];
    [(NightModeControl *)v28 updateStatusDictionaryWithValue:v23 forKey:@"BlueReductionSunScheduleAllowed"];
    [CBAnalytics nightShiftSunSchedulePermitted:v28->_status.sunSchedulePermitted];
    *&v3 = MEMORY[0x1E69E5920](v23).n128_u64[0];
    if (v28->_status.sunSchedulePermitted)
    {
      if (v28->_revertToSunriseSunset)
      {
        if (v28->_logHandle)
        {
          v8 = v28->_logHandle;
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

        v28->_revertToSunriseSunset = 0;
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        [(NightModeControl *)v28 updateStatusDictionaryWithValue:v15 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        *&v4 = MEMORY[0x1E69E5920](v15).n128_u64[0];
        [(NightModeControl *)v28 setMode:1, v4];
      }
    }

    else
    {
      [(NSMutableDictionary *)v28->_properties removeObjectForKey:@"BlueLightSunSchedule", v3];
      MEMORY[0x1E69E5920](v28->_sunriseSunsetInfo);
      v28->_sunriseSunsetInfo = 0;
      if (v28->_status.mode == 1)
      {
        if (v28->_logHandle)
        {
          v12 = v28->_logHandle;
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

        [(NightModeControl *)v28 setMode:0];
        v28->_revertToSunriseSunset = 1;
        v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
        [(NightModeControl *)v28 updateStatusDictionaryWithValue:v19 forKey:@"BlueLightReductionRevertToSunriseSunset"];
        MEMORY[0x1E69E5920](v19);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateSunriseSunsetBackup
{
  v10 = self;
  v9 = a2;
  if (self->_status.sunSchedulePermitted)
  {
    v8 = 7;
    v7 = 0;
    v6 = 22;
    v5 = 0;
    if (v10->_sunriseSunsetInfo)
    {
      calendar = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
      if (calendar)
      {
        CFCalendarSetTimeZone(calendar, v10->_currentTimeZone);
        [-[NSDictionary objectForKey:](v10->_sunriseSunsetInfo objectForKey:{v10->_nextSunriseKey), "timeIntervalSinceReferenceDate"}];
        if (!CFCalendarDecomposeAbsoluteTime(calendar, v2, "Hm", &v8, &v7))
        {
          v8 = 7;
          v7 = 0;
        }

        [-[NSDictionary objectForKey:](v10->_sunriseSunsetInfo objectForKey:{v10->_nextSunsetKey), "timeIntervalSinceReferenceDate"}];
        if (!CFCalendarDecomposeAbsoluteTime(calendar, v3, "Hm", &v6, &v5))
        {
          v6 = 22;
          v5 = 0;
        }

        CFRelease(calendar);
      }
    }

    if (v6 != v10->_backupSchedule.fromTime.hour || v5 != v10->_backupSchedule.fromTime.minute || v8 != v10->_backupSchedule.toTime.hour || v5 != v10->_backupSchedule.toTime.minute)
    {
      v10->_backupSchedule.fromTime.hour = v6;
      v10->_backupSchedule.fromTime.minute = v5;
      v10->_backupSchedule.toTime.hour = v8;
      v10->_backupSchedule.toTime.minute = v7;
    }
  }
}

- (void)updateSunriseSunsetInfo:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = self;
  v38 = a2;
  v37 = a3;
  if (a3)
  {
    v36 = [objc_msgSend(v37 objectForKeyedSubscript:{@"status", "intValue"}];
    if (v36)
    {
      if (v36 == 1)
      {
        v39->_sunriseSunsetInfo = [v37 objectForKey:{@"sunSchedule", MEMORY[0x1E69E5920](v39->_sunriseSunsetInfo).n128_f64[0]}];
        MEMORY[0x1E69E5928](v39->_sunriseSunsetInfo);
        if (v39->_sunriseSunsetInfo)
        {
          [(NSMutableDictionary *)v39->_properties setObject:v39->_sunriseSunsetInfo forKey:@"BlueLightSunSchedule"];
        }

        else
        {
          [(NSMutableDictionary *)v39->_properties removeObjectForKey:@"BlueLightSunSchedule"];
        }

        [(NightModeControl *)v39 setSunPermitted:1];
        if (v39->_logHandle)
        {
          logHandle = v39->_logHandle;
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
          if (v39->_sunriseSunsetInfo)
          {
            sunriseSunsetInfo = v39->_sunriseSunsetInfo;
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
        if (v39->_logHandle)
        {
          v14 = v39->_logHandle;
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

        [(NightModeControl *)v39 setSunPermitted:1];
      }

      else
      {
        if (v39->_logHandle)
        {
          v10 = v39->_logHandle;
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
      if (v39->_logHandle)
      {
        v21 = v39->_logHandle;
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

      [(NightModeControl *)v39 setSunPermitted:0];
    }
  }

  else
  {
    if (v39->_logHandle)
    {
      v6 = v39->_logHandle;
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

  [(NightModeControl *)v39 updateSunriseSunsetBackup];
  *MEMORY[0x1E69E9840];
}

- (void)retrieveSunriseSunsetTimesFromBackup:(double)a3
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  if (v22)
  {
    CFCalendarSetTimeZone(v22, v25->_currentTimeZone);
    v21 = 0;
    v20 = 0;
    v19 = 0;
    hour = 0;
    minute = 0;
    if (CFCalendarDecomposeAbsoluteTime(v22, v23, "yMdHm", &v21, &v20, &v19, &hour, &minute))
    {
      hour = v25->_backupSchedule.fromTime.hour;
      minute = v25->_backupSchedule.fromTime.minute;
      if (CFCalendarComposeAbsoluteTime(v22, &v25->_sunsetAbsolute, "yMdHm", v21, v20, v19, hour, minute))
      {
        v25->_sunsetPreviousAbsolute = v25->_sunsetAbsolute;
        if (v25->_sunsetAbsolute >= v23)
        {
          CFCalendarAddComponents(v22, &v25->_sunsetPreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v22, &v25->_sunsetAbsolute, 0, "d", 1);
        }
      }

      else
      {
        if (v25->_logHandle)
        {
          logHandle = v25->_logHandle;
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

      hour = v25->_backupSchedule.toTime.hour;
      minute = v25->_backupSchedule.toTime.minute;
      if (CFCalendarComposeAbsoluteTime(v22, &v25->_sunriseAbsolute, "yMdHm", v21, v20, v19, hour, minute))
      {
        v25->_sunriseAbsolute = v25->_sunriseAbsolute - v25->_transitionLength;
        v25->_sunrisePreviousAbsolute = v25->_sunriseAbsolute;
        if (v25->_sunriseAbsolute >= v23)
        {
          CFCalendarAddComponents(v22, &v25->_sunrisePreviousAbsolute, 0, "d", -1);
        }

        else
        {
          CFCalendarAddComponents(v22, &v25->_sunriseAbsolute, 0, "d", 1);
        }
      }

      else
      {
        if (v25->_logHandle)
        {
          v6 = v25->_logHandle;
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

- (BOOL)updateTransitionTimesFromSunriseSunset:(double)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v42 = self;
  v41 = a2;
  v40 = a3;
  v39 = 0;
  if (self->_sunriseSunsetInfo)
  {
    v32 = 0;
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
    v31 = v3;
    [objc_msgSend(MEMORY[0x1E695DF00] "distantPast")];
    v30 = v4;
    v39 = 1;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_previousSunriseKey), "timeIntervalSinceReferenceDate"}];
    v45 = v5;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_previousSunsetKey), "timeIntervalSinceReferenceDate"}];
    v46 = v6;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_currentSunriseKey), "timeIntervalSinceReferenceDate"}];
    v47 = v7;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_currentSunsetKey), "timeIntervalSinceReferenceDate"}];
    v48 = v8;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_nextSunriseKey), "timeIntervalSinceReferenceDate"}];
    v49 = v9;
    [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_nextSunsetKey), "timeIntervalSinceReferenceDate"}];
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

    v45 = v45 - v42->_transitionLength;
    v47 = v47 - v42->_transitionLength;
    v49 = v49 - v42->_transitionLength;
    [(NSDictionary *)v42->_sunriseSunsetInfo objectForKey:v42->_isDaylightKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = [-[NSDictionary objectForKey:](v42->_sunriseSunsetInfo objectForKey:{v42->_isDaylightKey), "BOOLValue"}];
      v42->_isDaylight = v12;
    }

    if (v42->_logHandle)
    {
      logHandle = v42->_logHandle;
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
      __os_log_helper_16_0_2_4_0_4_0(v44, v32, v42->_isDaylight);
      _os_log_debug_impl(&dword_1DE8E5000, v28, v27, "flag=%d isDaylight=%d", v44, 0xEu);
    }

    if (v32 == 6)
    {
      if (v42->_isDaylight)
      {
        v42->_sunriseAbsolute = v31;
        v42->_sunsetAbsolute = v31 - 86400.0;
        v42->_sunrisePreviousAbsolute = v30 + 86400.0;
        v42->_sunsetPreviousAbsolute = v30;
      }

      else
      {
        v42->_sunsetAbsolute = v31;
        v42->_sunriseAbsolute = v31 - 86400.0;
        v42->_sunsetPreviousAbsolute = v30 + 86400.0;
        v42->_sunrisePreviousAbsolute = v30;
      }
    }

    else if (v32 == 5)
    {
      for (j = 0; j < 6; ++j)
      {
        if (*(&v33 + j))
        {
          if (j % 2 == 1 && v40 < *(&v45 + j))
          {
            v42->_sunsetAbsolute = *(&v45 + j);
            v42->_sunriseAbsolute = v31;
            v42->_sunsetPreviousAbsolute = v30;
            v42->_sunrisePreviousAbsolute = v30;
          }

          else if (j % 2 == 1 && v40 >= *(&v45 + j))
          {
            v42->_sunsetAbsolute = v31;
            v42->_sunriseAbsolute = v31 - 86400.0;
            v42->_sunsetPreviousAbsolute = *(&v45 + j);
            v42->_sunrisePreviousAbsolute = v30;
          }

          else if (j % 2 || v40 >= *(&v45 + j))
          {
            v42->_sunsetAbsolute = v31 - 86400.0;
            v42->_sunriseAbsolute = v31;
            v42->_sunrisePreviousAbsolute = *(&v45 + j);
            v42->_sunsetPreviousAbsolute = v30;
          }

          else
          {
            v42->_sunsetAbsolute = v31;
            v42->_sunriseAbsolute = *(&v45 + j);
            v42->_sunsetPreviousAbsolute = v30 + 86400.0;
            v42->_sunrisePreviousAbsolute = v30;
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
          if (v40 >= v48)
          {
            if (v40 >= v47)
            {
              if (v37)
              {
                v42->_sunriseAbsolute = v49;
              }

              else
              {
                v42->_sunriseAbsolute = v31;
              }

              if (v38)
              {
                v42->_sunsetAbsolute = v50;
              }

              else
              {
                v42->_sunsetAbsolute = v31 - 86400.0;
              }

              v42->_sunrisePreviousAbsolute = v47;
              v42->_sunsetPreviousAbsolute = v48;
            }

            else
            {
              v42->_sunriseAbsolute = v47;
              if (v38)
              {
                v42->_sunsetAbsolute = v50;
              }

              else
              {
                v42->_sunsetAbsolute = v31;
              }

              if (v33)
              {
                v42->_sunrisePreviousAbsolute = v45;
              }

              else
              {
                v42->_sunrisePreviousAbsolute = v30;
              }

              v42->_sunsetPreviousAbsolute = v48;
            }
          }

          else
          {
            v42->_sunriseAbsolute = v47;
            v42->_sunsetAbsolute = v48;
            if (v33)
            {
              v42->_sunrisePreviousAbsolute = v45;
            }

            else
            {
              v42->_sunrisePreviousAbsolute = v30;
            }

            if (v34)
            {
              v42->_sunsetPreviousAbsolute = v46;
            }

            else
            {
              v42->_sunsetPreviousAbsolute = v30;
            }
          }
        }

        else if (v40 >= v47)
        {
          if (v40 >= v48)
          {
            if (v37)
            {
              v42->_sunriseAbsolute = v49;
            }

            else
            {
              v42->_sunriseAbsolute = v31 - 86400.0;
            }

            if (v38)
            {
              v42->_sunsetAbsolute = v50;
            }

            else
            {
              v42->_sunsetAbsolute = v31;
            }

            v42->_sunrisePreviousAbsolute = v47;
            v42->_sunsetPreviousAbsolute = v48;
          }

          else
          {
            if (v37)
            {
              v42->_sunriseAbsolute = v49;
            }

            else
            {
              v42->_sunriseAbsolute = v31;
            }

            v42->_sunsetAbsolute = v48;
            v42->_sunrisePreviousAbsolute = v47;
            if (v34)
            {
              v42->_sunsetPreviousAbsolute = v46;
            }

            else
            {
              v42->_sunsetPreviousAbsolute = v30;
            }
          }
        }

        else
        {
          v42->_sunriseAbsolute = v47;
          v42->_sunsetAbsolute = v48;
          if (v33)
          {
            v42->_sunrisePreviousAbsolute = v45;
          }

          else
          {
            v42->_sunrisePreviousAbsolute = v30;
          }

          if (v34)
          {
            v42->_sunsetPreviousAbsolute = v46;
          }

          else
          {
            v42->_sunsetPreviousAbsolute = v30;
          }
        }
      }

      else if (v36 & 1) != 0 || (v35)
      {
        if (v38)
        {
          if (v40 < v48)
          {
            v42->_sunriseAbsolute = v31;
            v42->_sunsetAbsolute = v48;
            v42->_sunrisePreviousAbsolute = v45;
            v42->_sunsetPreviousAbsolute = v46;
          }

          else
          {
            v42->_sunriseAbsolute = v31 - 86400.0;
            v42->_sunsetAbsolute = v31;
            v42->_sunrisePreviousAbsolute = v45;
            v42->_sunsetPreviousAbsolute = v48;
          }
        }

        else
        {
          if (v40 < v47)
          {
            v42->_sunriseAbsolute = v47;
            v42->_sunsetAbsolute = v31;
            v42->_sunrisePreviousAbsolute = v45;
          }

          else
          {
            v42->_sunriseAbsolute = v31;
            v42->_sunsetAbsolute = v31 - 86400.0;
            v42->_sunrisePreviousAbsolute = v47;
          }

          v42->_sunsetPreviousAbsolute = v46;
        }
      }

      else if (v42->_isDaylight)
      {
        v42->_sunriseAbsolute = v31;
        v42->_sunsetAbsolute = v31 - 86400.0;
        v42->_sunrisePreviousAbsolute = v30 + 86400.0;
        v42->_sunsetPreviousAbsolute = v30;
      }

      else
      {
        v42->_sunsetAbsolute = v31;
        v42->_sunriseAbsolute = v31 - 86400.0;
        v42->_sunsetPreviousAbsolute = v30 + 86400.0;
        v42->_sunrisePreviousAbsolute = v30;
      }
    }

    else if (v47 > v48)
    {
      if (v40 >= v48)
      {
        if (v40 >= v47)
        {
          if (v40 >= v50)
          {
            v39 = 0;
          }

          else
          {
            v42->_sunriseAbsolute = v49;
            v42->_sunsetAbsolute = v50;
            v42->_sunrisePreviousAbsolute = v47;
            v42->_sunsetPreviousAbsolute = v48;
          }
        }

        else
        {
          v42->_sunriseAbsolute = v47;
          v42->_sunsetAbsolute = v50;
          v42->_sunrisePreviousAbsolute = v45;
          v42->_sunsetPreviousAbsolute = v48;
        }
      }

      else
      {
        v42->_sunriseAbsolute = v47;
        v42->_sunsetAbsolute = v48;
        v42->_sunrisePreviousAbsolute = v45;
        v42->_sunsetPreviousAbsolute = v46;
      }
    }

    else if (v40 >= v47)
    {
      if (v40 >= v48)
      {
        if (v40 >= v49)
        {
          v39 = 0;
        }

        else
        {
          v42->_sunriseAbsolute = v49;
          v42->_sunsetAbsolute = v50;
          v42->_sunrisePreviousAbsolute = v47;
          v42->_sunsetPreviousAbsolute = v48;
        }
      }

      else
      {
        v42->_sunriseAbsolute = v49;
        v42->_sunsetAbsolute = v48;
        v42->_sunrisePreviousAbsolute = v47;
        v42->_sunsetPreviousAbsolute = v46;
      }
    }

    else
    {
      v42->_sunriseAbsolute = v47;
      v42->_sunsetAbsolute = v48;
      v42->_sunrisePreviousAbsolute = v45;
      v42->_sunsetPreviousAbsolute = v46;
    }
  }

  if ((v39 & 1) == 0)
  {
    if (v42->_logHandle)
    {
      v19 = v42->_logHandle;
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

    [(NightModeControl *)v42 retrieveSunriseSunsetTimesFromBackup:v40];
    v39 = 1;
  }

  v22 = v42->_sunriseAbsolute + v42->_transitionLength;
  if ((v22 < v42->_sunsetAbsolute || v22 - v42->_sunsetAbsolute >= (v42->_transitionLength * 2.0)) && (v22 < v42->_sunsetPreviousAbsolute || v22 - v42->_sunsetPreviousAbsolute >= (v42->_transitionLength * 2.0)))
  {
    v42->_transitionsTimesCoeff = 1.0;
    v42->_transitionLengthActual = v42->_transitionLength;
    v42->_offTransitionTimeAbsoluteUnrestrictedPrev = v42->_sunrisePreviousAbsolute;
    v42->_offTransitionTimeAbsoluteUnrestricted = v42->_sunriseAbsolute;
  }

  else
  {
    v42->_transitionsTimesCoeff = 0.0;
    v42->_transitionLengthActual = 0.0;
    v42->_sunriseAbsolute = v42->_sunsetAbsolute;
    v42->_sunrisePreviousAbsolute = v42->_sunsetPreviousAbsolute;
    v42->_offTransitionTimeAbsoluteUnrestricted = v42->_sunriseAbsolute - v42->_transitionLength;
    v42->_offTransitionTimeAbsoluteUnrestrictedPrev = v42->_sunrisePreviousAbsolute - v42->_transitionLength;
    if (v42->_logHandle)
    {
      v15 = v42->_logHandle;
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
      __os_log_helper_16_0_2_8_0_8_0(v43, COERCE__INT64(v42->_transitionsTimesCoeff), COERCE__INT64(v42->_transitionLengthActual));
      _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "Sunrise/Sunset transitions overlaping coeff=%f trLenghtActual=%f", v43, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v39 & 1;
}

- (void)updateOptionTimestamp:(double)a3
{
  v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a3];
  if (v3)
  {
    [(NightModeControl *)self updateStatusDictionaryWithValue:v3 forKey:@"BlueLightReductionAlgoOverrideTimestamp"];
    MEMORY[0x1E69E5920](v3);
  }
}

- (void)setAlgoState:(int)a3
{
  if (self->_algoState != a3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    self->_algoState = a3;
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
  v10 = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __35__NightModeControl_timeZoneChanged__block_invoke;
  v7 = &unk_1E867B480;
  v8 = v10;
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
  v10 = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __32__NightModeControl_clockChanged__block_invoke;
  v7 = &unk_1E867B480;
  v8 = v10;
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
  v10 = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = v10->_logHandle;
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

  [(NightModeControl *)v10 cancelTransition];
  [(NightModeControl *)v10 cancelSchedule];
}

- (id)copyTimeStringWithHour:(int)a3 minute:(int)a4 second:(int)a5
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
      v10 = [v12 dateFormat];
      if (v10 && ([v10 containsString:@"a"] & 1) == 0 && (objc_msgSend(v10, "containsString:", @"b") & 1) == 0 && (objc_msgSend(v10, "containsString:", @"B") & 1) == 0)
      {
        [v12 setLocalizedDateFormatFromTemplate:@"jjmm"];
      }

      v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:0.0];
      if (v9)
      {
        v8 = [v11 components:32 fromDate:v9];
        if (v8)
        {
          [v8 setHour:a3];
          [v8 setMinute:a4];
          [v8 setSecond:a5];
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

- (void)displayAlertInteractive:(BOOL)a3
{
  __b[9] = *MEMORY[0x1E69E9840];
  v30 = self;
  v29 = a2;
  v28 = a3;
  if (!self->_notificationInProgress)
  {
    if (v30->_notifyUserAboutScheduleCounter < 3)
    {
      ++v30->_notifyUserAboutScheduleCounter;
      v27 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v30->_notifyUserAboutScheduleCounter];
      if (v27)
      {
        [(NightModeControl *)v30 updateStatusDictionaryWithValue:v27 forKey:@"BlueLightReductionDisableScheduleAlertCounter"];
        MEMORY[0x1E69E5920](v27);
      }

      if (!v28)
      {
        [(NightModeControl *)v30 enableBlueLightReduction:1 withOption:2];
      }

      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = MEMORY[0x1E696AAE8];
      v6 = [v26 localizations];
      v25 = [v7 preferredLocalizationsFromArray:v6 forPreferences:{objc_msgSend(MEMORY[0x1E695DF58], "preferredLanguages")}];
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
            v18 = [(NightModeControl *)v30 copyTimeStringWithHour:7 minute:0 second:?];
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
              v30->_notificationInProgress = 1;
              v3 = CFUserNotificationCreate(0, 0.0, 3uLL, &v16, dictionary);
              v30->_enableNotification = v3;
              CFRelease(dictionary);
              global_queue = dispatch_get_global_queue(0, 0);
              block = MEMORY[0x1E69E9820];
              v9 = -1073741824;
              v10 = 0;
              v11 = __44__NightModeControl_displayAlertInteractive___block_invoke;
              v12 = &unk_1E867B840;
              v13 = v30;
              v14 = v28;
              dispatch_async(global_queue, &block);
            }
          }
        }
      }
    }

    else
    {
      [(NightModeControl *)v30 enableBlueLightReduction:1 withOption:2];
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

- (id)copyPreferenceForKey:(id)a3 user:(id)a4
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
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
  v12 = a3;
  v13 = a4;
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