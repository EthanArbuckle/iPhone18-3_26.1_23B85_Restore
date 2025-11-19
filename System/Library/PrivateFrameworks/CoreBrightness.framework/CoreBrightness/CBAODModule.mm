@interface CBAODModule
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)copyAndHandleEventWithTransitionLength:(float)a3 forceUpdate:(BOOL)a4;
- (BOOL)copyAndHandleEventWithTransitionParameters:(id *)a3;
- (BOOL)handleAABSensorOverridePropertyHandler:(id)a3;
- (BOOL)handleALSEvent:(id)a3 transitionParameters:(id *)a4;
- (BOOL)handleDisplayModeUpdate:(id)a3;
- (BOOL)handleDisplayModeUpdate:(int64_t)a3 transitionLength:(float)a4;
- (BOOL)handleDisplayNitsOverridePropertyHandler:(id)a3;
- (BOOL)handleFlipBookStatePropertyHandler:(id)a3;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4 transitionLength:(float)a5 forceUpdate:(BOOL)a6;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4 transitionParameters:(id *)a5;
- (BOOL)performUpdate:(float)a3 forceUpdate:(BOOL)a4 rampDoneCallback:(id)a5 rampCanceledCallback:(id)a6;
- (BOOL)performUpdateWithTransitionParameters:(id *)a3;
- (BOOL)performUpdateWithTransitionParameters:(id *)a3 rampDoneCallback:(id)a4 rampCanceledCallback:(id)a5;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setALSServiceProperty:(void *)a3 forKey:(__CFString *)a4;
- (BOOL)setDisplayFactor:(float)a3 transitionLength:(float)a4;
- (BOOL)setModulesProperty:(id)a3 forKey:(id)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)updateAODState:(unint64_t)a3 transitionParameters:(id *)a4 brightnessFactor:(float)a5 forDisplayMode:(int64_t)a6;
- (CBAODModule)initWithCBBrtControl:(id)a3 andContext:(id)a4;
- (float)getFloatValueFrom:(id)a3 key:(id)a4;
- (float)getFloatValueFrom:(id)a3 key:(id)a4 subkey:(id)a5;
- (id)copyArrayFromPrefsForKey:(id)a3;
- (id)copyModulesExtendedIdentifiers;
- (id)copyModulesIdentifiers;
- (id)copyModulesInfo:(BOOL)a3;
- (id)copyModulesPropertyForKey:(id)a3;
- (id)copyPropertyForKey:(id)a3;
- (int64_t)getIntegerValueFrom:(id)a3 key:(id)a4;
- (void)addModule:(id)a3;
- (void)checkBootArgsConfiguration;
- (void)dealloc;
- (void)didCompleteTransitionToDisplayMode:(int64_t)a3;
- (void)enteringAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4;
- (void)enteringSuppressedAODRoutineWithTransitionParameters:(id *)a3;
- (void)exitingAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)handleSystemDidWakeFromSleepPropertyHandler:(id)a3;
- (void)loadAODCurveFromDefaults;
- (void)offAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4;
- (void)onAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4;
- (void)onSuppresedAODRoutine;
- (void)prepareForEnterToAODRoutine;
- (void)releaseDisplayModeCompletionTimer;
- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)start;
- (void)updateModulesAODState:(unint64_t)a3;
- (void)updateModulesAODState:(unint64_t)a3 context:(id)a4;
- (void)updateModulesAODState:(unint64_t)a3 transitionParameters:(id *)a4;
- (void)updateModulesAODState:(unint64_t)a3 transitionParameters:(id *)a4 context:(id)a5;
@end

@implementation CBAODModule

- (void)releaseDisplayModeCompletionTimer
{
  v10 = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "Release scheduled display mode completion timer", v6, 2u);
  }

  if (v10->_displayModeCompletionTimer)
  {
    dispatch_source_cancel(v10->_displayModeCompletionTimer);
    dispatch_release(v10->_displayModeCompletionTimer);
    v10->_displayModeCompletionTimer = 0;
  }
}

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (CBAODModule)initWithCBBrtControl:(id)a3 andContext:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22.receiver = self;
  v22.super_class = CBAODModule;
  v26 = -[CBModule initWithQueue:](&v22, sel_initWithQueue_, [a4 displayQueue]);
  if (v26)
  {
    v4 = os_log_create("com.apple.CoreBrightness.AOD.CBAODModule", "default");
    v26->super._logHandle = v4;
    if (![+[CBAODState isAODSupported] sharedInstance]
    {
LABEL_25:
      MEMORY[0x1E69E5920](v26);
      v27 = 0;
      goto LABEL_26;
    }

    v26->_brtCtl = v24;
    MEMORY[0x1E69E5928](v26->_brtCtl);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26->_modules = v5;
    v18 = [CBAODThresholdModule alloc];
    v6 = -[CBAODThresholdModule initWithQueue:](v18, "initWithQueue:", [v23 displayQueue]);
    v26->_thresholdModule = v6;
    v7 = [CBAODTransitionController alloc];
    v8 = [(CBAODTransitionController *)v7 initWithContext:v23 andThresholdModule:v26->_thresholdModule];
    v26->_transitionController = v8;
    if (!v26->_transitionController)
    {
      if (v26->super._logHandle)
      {
        logHandle = v26->super._logHandle;
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
      v20 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v21;
        type = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to initialized transition controller", v19, 2u);
      }

      goto LABEL_25;
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26->_alsServiceClients = v9;
    v26->_ABStateBackup = 1;
    v26->_displayBrightnessBackup = 2.0;
    v26->_ABLuxFilterBackup = 0;
    v26->_aabSensorOverrideFilter = 0;
    v26->_backupState = 0;
    v26->_currentDisplayMode = 5;
    v26->_suspendFeatureUpdates = 0;
    v26->_displayModeCompletionTimer = 0;
    v26->_aodEnabled = 1;
    v26->_flipBookEnabled = 0;
    v26->_dominoModeEnabled = 0;
    [(CBAODModule *)v26 checkBootArgsConfiguration];
    if (v26->super._logHandle)
    {
      v13 = v26->super._logHandle;
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

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v26->_aodEnabled)
      {
        v10 = "enabled";
      }

      else
      {
        v10 = "disabled";
      }

      __os_log_helper_16_2_1_8_32(v28, v10);
      _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "Andromeda support %s.", v28, 0xCu);
    }
  }

  v27 = v26;
LABEL_26:
  *MEMORY[0x1E69E9840];
  return v27;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(CBAODModule *)self releaseDisplayModeCompletionTimer];
  MEMORY[0x1E69E5920](v5->_modules);
  MEMORY[0x1E69E5920](v5->_brtCtl);
  MEMORY[0x1E69E5920](v5->_transitionController);
  MEMORY[0x1E69E5920](v5->_currentALSEvent);
  MEMORY[0x1E69E5920](v5->_alsServiceClients);
  v2 = MEMORY[0x1E69E5920](v5->_backupState).n128_u64[0];
  if (v5->_aabSensorOverrideFilter)
  {
    v2 = MEMORY[0x1E69E5920](v5->_aabSensorOverrideFilter).n128_u64[0];
    v5->_aabSensorOverrideFilter = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBAODModule;
  [(CBModule *)&v3 dealloc];
}

- (void)checkBootArgsConfiguration
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = self;
  v7[1] = a2;
  bzero(__s1, 0x400uLL);
  v7[0] = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, v7, 0, 0))
  {
    v6 = strstr(__s1, "cb_enable_aod");
    if (v6)
    {
      v2 = strtol(v6 + 14, 0, 0) != 0;
      v8->_aodEnabled = v2;
      if (v8->super._logHandle)
      {
        logHandle = v8->super._logHandle;
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
        if (v8->_aodEnabled)
        {
          v3 = "Enable";
        }

        else
        {
          v3 = "Disable";
        }

        __os_log_helper_16_2_1_8_32(v9, v3);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Boot arg override: %s AOD.", v9, 0xCu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyPropertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"AODDisplayNits"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController currentDisplayNits];
    return [v7 initWithFloat:?];
  }

  else if ([a3 isEqualToString:@"AODBrightnessState"])
  {
    return [(CBAODTransitionController *)self->_transitionController copyCurrentDisplayState];
  }

  else if ([a3 isEqualToString:@"AODDisplayNitsCap"])
  {
    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    [+[CBAODState sharedInstance](CBAODState nitsCap];
    return [v6 initWithFloat:?];
  }

  else if ([a3 isEqualToString:@"AODDisplayNitsOverride"])
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController nitsOverride];
    return [v5 initWithFloat:?];
  }

  else if ([a3 isEqualToString:@"AODPCCStrength"])
  {
    v4 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController currentAAPFactor];
    return [v4 initWithFloat:?];
  }

  else
  {
    return [(CBAODThresholdModule *)self->_thresholdModule copyPropertyForKey:a3];
  }
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  if ([a3 isEqualToString:@"CPMSCurrentCap"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v26->super._logHandle)
      {
        logHandle = v26->super._logHandle;
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

      v22 = logHandle;
      v21 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        if ([v23 BOOLValue])
        {
          v4 = "";
        }

        else
        {
          v4 = "not";
        }

        __os_log_helper_16_2_1_8_32(v27, v4);
        _os_log_debug_impl(&dword_1DE8E5000, v22, v21, "CPMS Cap Updated: Forcing update while %s ramping", v27, 0xCu);
      }

      if ([v23 BOOLValue])
      {
        [(CBAODModule *)v26 performUpdate];
      }

      else
      {
        [(CBAODModule *)v26 performUpdate:0.0];
      }
    }
  }

  else if ([v24 isEqualToString:@"IndicatorUpdateRampAOD"])
  {
    queue = v26->super._queue;
    block = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __53__CBAODModule_handleNotificationForKey_withProperty___block_invoke;
    v19 = &unk_1E867B480;
    v20 = v26;
    dispatch_async(queue, &block);
  }

  else if ([v24 isEqualToString:@"IndicatorRampFinishedAOD"])
  {
    v6 = v26->super._queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __53__CBAODModule_handleNotificationForKey_withProperty___block_invoke_2;
    v13 = &unk_1E867B480;
    v14 = v26;
    dispatch_async(v6, &v9);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v52 = self;
  v51 = a2;
  v50 = a3;
  v49 = a4;
  v48 = 0;
  if ([a4 isEqualToString:@"FlipBookState"])
  {
    v48 = [(CBAODModule *)v52 handleFlipBookStatePropertyHandler:v50];
  }

  else if ([v49 isEqualToString:@"DisplayBrightness"])
  {
    if (v52->super._logHandle)
    {
      logHandle = v52->super._logHandle;
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

    oslog = logHandle;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v60, v49, v50);
      _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "DisplayBrightness = %@ property = %@", v60, 0x16u);
    }

    v48 = [(CBAODModule *)v52 performUpdate:0.0];
  }

  else if ([v49 isEqualToString:@"DisplayNitsKey"])
  {
    if (v52->super._logHandle)
    {
      v26 = v52->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v25 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v25 = init_default_corebrightness_log();
      }

      v26 = v25;
    }

    v45 = v26;
    v44 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v59, v49, v50);
      _os_log_debug_impl(&dword_1DE8E5000, v45, v44, "DisplayNits = %@ property = %@", v59, 0x16u);
    }

    v48 = [(CBAODModule *)v52 performUpdate:0.0];
  }

  else if ([v49 isEqualToString:@"AODDisplayNitsOverride"])
  {
    [(CBAODModule *)v52 handleDisplayNitsOverridePropertyHandler:v50];
  }

  else if ([v49 isEqualToString:@"ForceLiveUpdates"])
  {
    if (v52->super._logHandle)
    {
      v24 = v52->super._logHandle;
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

    v43 = v24;
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v58, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v43, v42, "ForceLiveUpdates = %@ property = %@", v58, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBAODTransitionController setLiveUpdatesOverride:](v52->_transitionController, "setLiveUpdatesOverride:", [v50 BOOLValue]);
      -[CBAODTransitionController setLiveUpdates:](v52->_transitionController, "setLiveUpdates:", [v50 BOOLValue]);
    }
  }

  else if ([v49 isEqualToString:@"EnableDCPFlipBookUpdates"])
  {
    if (v52->super._logHandle)
    {
      v22 = v52->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v21 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v21 = init_default_corebrightness_log();
      }

      v22 = v21;
    }

    v41 = v22;
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v57, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v41, v40, "EnableDCPFlipBookUpdates = %@ property = %@", v57, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBAODTransitionController enableDCPFlipBookUpdates:](v52->_transitionController, "enableDCPFlipBookUpdates:", [v50 BOOLValue]);
    }
  }

  else if ([v49 isEqualToString:@"AABSensorOverride"])
  {
    if (v52->super._logHandle)
    {
      v20 = v52->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v19 = init_default_corebrightness_log();
      }

      v20 = v19;
    }

    v39 = v20;
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v56, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v39, v38, "AABSensorOverride = %@ property = %@", v56, 0x16u);
    }

    [(CBAODModule *)v52 handleAABSensorOverridePropertyHandler:v50];
  }

  else if ([v49 isEqualToString:@"EnableAOD"])
  {
    if (v52->super._logHandle)
    {
      v18 = v52->super._logHandle;
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

    v37 = v18;
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v55, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v37, v36, "Enable AOD = %@ property = %@", v55, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52->_aodEnabled = [v50 BOOLValue];
    }
  }

  else if ([v49 isEqualToString:@"AODEDRRampDurationPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitionController = v52->_transitionController;
      [v50 floatValue];
      [(CBAODTransitionController *)transitionController setDurationOfEDRRamp:?];
    }
  }

  else if ([v49 isEqualToString:@"AODUpdateWithCopiedEvent"])
  {
    if (v52->super._logHandle)
    {
      v15 = v52->super._logHandle;
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

    v35 = v15;
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v54, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v35, v34, "%@ = %@", v54, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v50 BOOLValue])
    {
      [(CBAODModule *)v52 copyAndHandleEvent];
    }
  }

  else if ([v49 isEqualToString:@"ALSMedianHistorySize"])
  {
    if (v52->super._logHandle)
    {
      v13 = v52->super._logHandle;
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

    v33 = v13;
    v32 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v53, v49, v50);
      _os_log_impl(&dword_1DE8E5000, v33, v32, "%@ = %@", v53, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)v52 setALSServiceProperty:v50 forKey:@"ALSMedianHistorySize"];
    }
  }

  else if ([v49 isEqualToString:@"CBSystemDidWakeFromSleep"])
  {
    [(CBAODModule *)v52 handleSystemDidWakeFromSleepPropertyHandler:v50];
  }

  else if ([v49 isEqual:{-[CBBrightnessProxy brightnessNotificationPowerOff](v52->_brtCtl, "brightnessNotificationPowerOff")}])
  {
    if ([(CBAODTransitionController *)v52->_transitionController displayON])
    {
      if (v52->super._logHandle)
      {
        v11 = v52->super._logHandle;
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

      v31 = v11;
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v31;
        v9 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_impl(&dword_1DE8E5000, v8, v9, "BrightnessNotificationPowerOff from CA -> canceling ongoing transitions.", v29, 2u);
      }

      [(CBAODTransitionController *)v52->_transitionController setDisplayON:0];
      [(CBAODTransitionController *)v52->_transitionController cancelTransition];
    }
  }

  else if ([v49 isEqualToString:@"DominoStateUpdate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52->_dominoModeEnabled = [v50 BOOLValue];
    }
  }

  v4 = [(CBAODThresholdModule *)v52->_thresholdModule setProperty:v50 forKey:v49];
  v48 = v48 || v4;
  v5 = +[CBAODState sharedInstance];
  v6 = [(CBAODState *)v5 setProperty:v50 forKey:v49];
  v48 = v48 || v6;
  *MEMORY[0x1E69E9840];
  return v48;
}

- (void)start
{
  v12 = *MEMORY[0x1E69E9840];
  [(CBModule *)self->_thresholdModule registerNotificationBlock:?];
  [(CBModule *)self->_transitionController registerNotificationBlock:?];
  v7 = [(CBAODModule *)self copyModulesPropertyForKey:@"DisplayOn"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v7 BOOLValue];
    v3 = 3;
    if ((v2 & 1) == 0)
    {
      v3 = 0;
    }

    self->_currentDisplayMode = v3;
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
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
      __os_log_helper_16_2_1_8_66(v11, [CBDisplayStateUtilities stringForDisplayMode:self->_currentDisplayMode]);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "display mode initialised to %{public}@ based on display brightness state", v11, 0xCu);
    }
  }

  else
  {
    self->_currentDisplayMode = 0;
    v6 = self->super._logHandle;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_66(v10, [CBDisplayStateUtilities stringForDisplayMode:self->_currentDisplayMode]);
      _os_log_fault_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_FAULT, "display mode initialised to %{public}@ - display state invalid", v10, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
}

uint64_t __20__CBAODModule_start__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 16))
    {
      v4 = *(*(result + 32) + 16);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __20__CBAODModule_start__block_invoke_76(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(result + 32) + 16))
    {
      v4 = *(*(result + 32) + 16);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v8, a2, a3);
      _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Notification block key=%@, value=%@\n", v8, 0x16u);
    }

    result = [*(v5 + 32) sendNotificationForKey:a2 andValue:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyModulesPropertyForKey:(id)a3
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 1375731712;
  v16 = 48;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  modules = self->_modules;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__CBAODModule_copyModulesPropertyForKey___block_invoke;
  v10 = &unk_1E867BEB8;
  v12 = &v13;
  v11 = a3;
  [(NSMutableArray *)modules enumerateObjectsUsingBlock:?];
  v5 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __41__CBAODModule_copyModulesPropertyForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 conformsToProtocol:&unk_1F59CBED8])
  {
    result = [a2 copyPropertyForKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }

  else
  {
    result = [a2 conformsToProtocol:&unk_1F59CFD60];
    if (result)
    {
      result = [a2 copyPropertyForKey:*(a1 + 32)];
      *(*(*(a1 + 40) + 8) + 40) = result;
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (BOOL)setModulesProperty:(id)a3 forKey:(id)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  [(NSMutableArray *)self->_modules enumerateObjectsUsingBlock:?];
  v5 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v5 & 1;
}

uint64_t __41__CBAODModule_setModulesProperty_forKey___block_invoke(void *a1, void *a2)
{
  if ([a2 conformsToProtocol:&unk_1F59CBED8] & 1) != 0 || (result = objc_msgSend(a2, "conformsToProtocol:", &unk_1F59CFD60), (result))
  {
    result = [a2 setProperty:a1[4] forKey:a1[5]];
    *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) & 1 | result) != 0;
  }

  return result;
}

- (void)addModule:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_2_1_8_64(v8, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Adding module to AOD modules %@", v8, 0xCu);
  }

  [(NSMutableArray *)self->_modules addObject:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_transitionController)
  {
    v5 = [a3 copyPropertyForKey:@"IndicatorModule"];
    [(CBAODTransitionController *)self->_transitionController setIndicator:v5];
    MEMORY[0x1E69E5920](v5);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleFlipBookStatePropertyHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [a3 integerValue];
    if (![+[CBAODState isFlipbookSupported]&& v13 <= 1 sharedInstance]
    {
      logHandle = self->super._logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_66(v21, [CBDisplayStateUtilities stringForFlipbookState:v13]);
        _os_log_fault_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_FAULT, "[Flipbook state][FAULT] Received flipbook state request (%{public}@) on a device that doesn't support flipbook modes", v21, 0xCu);
      }
    }

    if (self->_currentDisplayMode == 3 || [+[CBAODState sharedInstance](CBAODState AODState]== 4 || [+[CBAODState sharedInstance](CBAODState AODState]== 3 || [+[CBAODState AODState]== 2 sharedInstance]
    {
      v11 = self->super._logHandle;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_3_8_66_8_66_8_32(v20, +[CBDisplayStateUtilities stringForFlipbookState:](CBDisplayStateUtilities, "stringForFlipbookState:", v13), +[CBDisplayStateUtilities stringForDisplayMode:](CBDisplayStateUtilities, "stringForDisplayMode:", self->_currentDisplayMode), [+[CBAODState AODStateString] sharedInstance];
        _os_log_fault_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_FAULT, "[Flipbook state][FAULT] Unexpected flipbook state request (%{public}@) while in display mode [%{public}@] and AOD state [%s]", v20, 0x20u);
      }
    }

    if (self->super._logHandle)
    {
      v10 = self->super._logHandle;
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

      v10 = inited;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v19, [CBDisplayStateUtilities stringForFlipbookState:v13]);
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "[Flipbook state] %{public}@", v19, 0xCu);
    }

    if (v13)
    {
      switch(v13)
      {
        case 1uLL:
          self->_suspendFeatureUpdates = 0;
          [(CBAODModule *)self copyAndHandleEvent];
          if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
          {
            [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
          }

          break;
        case 2uLL:
          self->_flipBookEnabled = 0;
          if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
          {
            [(CBAODModule *)self setALSServiceProperty:*MEMORY[0x1E695E4C0] forKey:@"CBAODSendSamplesToDCP"];
          }

          [(CBAODTransitionController *)self->_transitionController cancelTransition];
          [(CBAODTransitionController *)self->_transitionController setLiveUpdates:1];
          self->_suspendFeatureUpdates = 1;
          break;
        case 3uLL:
          self->_suspendFeatureUpdates = 0;
          if ([(CBAODTransitionController *)self->_transitionController displayON])
          {
            [(CBAODTransitionController *)self->_transitionController updateAllBrightnessFeaturesForced:1];
          }

          [(CBAODModule *)self copyAndHandleEvent];
          break;
        default:
          v14 = 0;
          if (self->super._logHandle)
          {
            v8 = self->super._logHandle;
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

          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_8_0(v18, v13);
            _os_log_error_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_ERROR, "invalid flipbook state change request (%ld)", v18, 0xCu);
          }

          break;
      }
    }

    else
    {
      self->_flipBookEnabled = 1;
      [(CBAODTransitionController *)self->_transitionController cancelTransition];
      [(CBAODTransitionController *)self->_transitionController setLiveUpdates:0];
      if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
      {
        [(CBAODModule *)self setALSServiceProperty:*MEMORY[0x1E695E4D0] forKey:@"CBAODSendSamplesToDCP"];
      }

      self->_suspendFeatureUpdates = 1;
    }
  }

  else
  {
    v14 = 0;
    if (self->super._logHandle)
    {
      v6 = self->super._logHandle;
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = objc_opt_class();
      __os_log_helper_16_2_1_8_66(v17, v3);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "invalid flipbook state change request data format (%{public}@)", v17, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)handleDisplayNitsOverridePropertyHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_2_1_8_64(v15, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "CBAODDisplayNitsOverride = %@", v15, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transitionController = self->_transitionController;
    [a3 floatValue];
    [(CBAODTransitionController *)transitionController setNitsOverride:?];
    v12 = [(CBAODModule *)self performUpdate:0.0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [a3 objectForKey:@"AODDisplayNitsOverrideSubKey"];
      v10 = [a3 objectForKey:@"AODDisplayNitsOverrideFadePeriodSubKey"];
      if (v11)
      {
        v5 = self->_transitionController;
        [v11 floatValue];
        [(CBAODTransitionController *)v5 setNitsOverride:?];
        HIDWORD(v3) = 0;
        v9 = 0;
        if (v10)
        {
          [v10 floatValue];
          v9 = LODWORD(v3);
        }

        LODWORD(v3) = v9;
        v12 = [(CBAODModule *)self performUpdate:v3];
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)handleAABSensorOverridePropertyHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = -1.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    v10 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a3 objectForKey:@"AABSensorOverrideValue"];
      v8 = [a3 objectForKey:@"AABSensorOverrideOrientation"];
      if (v9)
      {
        [v9 floatValue];
        v10 = v4;
      }

      if (v8)
      {
        v11 = [v8 intValue];
      }
    }
  }

  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_0_2_8_0_4_0(v14, COERCE__INT64(v10), v11);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "override ALS samples with value = %f, with orientation = %d", v14, 0x12u);
  }

  if (self->_aabSensorOverrideFilter)
  {
    MEMORY[0x1E69E5920](self->_aabSensorOverrideFilter);
    self->_aabSensorOverrideFilter = 0;
  }

  if (v10 >= 0.0)
  {
    self->_aabSensorOverrideFilter = [[CBSensorOverrideFilter alloc] initWithData:a3];
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)handleSystemDidWakeFromSleepPropertyHandler:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = self;
  v37[2] = a2;
  v37[1] = a3;
  strcpy(__s2, "aop_threshold_als");
  v37[0] = 128;
  if (!sysctlbyname("kern.wakereason", __s1, v37, 0, 0))
  {
    if (v38->super._logHandle)
    {
      logHandle = v38->super._logHandle;
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
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v35;
      *v20 = type;
      buf = v40;
      __os_log_helper_16_2_1_8_32(v40, __s1);
      _os_log_impl(&dword_1DE8E5000, v35, type, "AP Wake. Reason: %s", v40, 0xCu);
    }

    if (strstr(__s1, __s2))
    {
      if (v38->super._logHandle)
      {
        v18 = v38->super._logHandle;
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

      oslog = v18;
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v14 = oslog;
        *v15 = v32;
        currentALSEvent = v38->_currentALSEvent;
        if (currentALSEvent)
        {
          [(CBALSEvent *)currentALSEvent vendorData];
        }

        else
        {
          memset(__b, 0, sizeof(__b));
        }

        v13 = v39;
        __os_log_helper_16_0_1_8_0(v39, COERCE__INT64(*&__b[20]));
        _os_log_impl(&dword_1DE8E5000, v14, v15[0], "Wake reason aop_threshold_als: lux value = %f", v39, 0xCu);
      }

      v30 = [(CBAODModule *)v38 copyModulesPropertyForKey:@"CBAmbientLightTelemetry"];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:__s1];
      v11 = objc_alloc(MEMORY[0x1E696AD98]);
      v12 = v38->_currentALSEvent;
      if (v12)
      {
        [(CBALSEvent *)v12 vendorData];
      }

      else
      {
        memset(v27, 0, sizeof(v27));
      }

      LODWORD(v3) = *&v27[20];
      v28 = [v11 initWithFloat:v3];
      v7 = 0x1E696A000uLL;
      v6 = objc_alloc(MEMORY[0x1E696AD98]);
      v8 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
      [(CBAODThresholdModule *)v38->_thresholdModule dimLuxThreshold];
      v26 = [v6 initWithFloat:?];
      v9 = objc_alloc(*(v7 + 3480));
      [*(&v38->super.super.isa + v8[58]) brightenLuxThreshold];
      v25 = [v9 initWithFloat:?];
      v4 = objc_alloc(MEMORY[0x1E695DF90]);
      v10 = &v5;
      v24 = [v4 initWithObjectsAndKeys:{v29, @"WakeReason", v28, @"Lux", v26, @"DimThreshold", v25, @"BrightenThreshold", 0}];
      if (v30)
      {
        [v24 setObject:v30 forKey:@"ALSSamplesBeforeWake"];
      }

      [(CBAODModule *)v38 sendNotificationForKey:@"AODWakeFromALSThreshold" andValue:v24];
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v29);
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v26);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](v24);
    }
  }

  if ([+[CBAODState AODState] sharedInstance]
  {
    [(CBAODModule *)v38 copyAndHandleEvent];
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __41__CBAODModule_performUpdate_forceUpdate___block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v8 = v5;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "Transition in AOD done", v6, 2u);
  }

  return [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
}

- (BOOL)performUpdate:(float)a3 forceUpdate:(BOOL)a4 rampDoneCallback:(id)a5 rampCanceledCallback:(id)a6
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = v11;
  HIBYTE(__b[0]) = v12 >= 0.0;
  *&__b[1] = v12;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)v14 performUpdateWithTransitionParameters:__dst rampDoneCallback:v10 rampCanceledCallback:v9];
}

- (BOOL)performUpdateWithTransitionParameters:(id *)a3
{
  v6[7] = self;
  v6[6] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CBAODModule_performUpdateWithTransitionParameters___block_invoke;
  v6[3] = &unk_1E867B480;
  v6[4] = self;
  memcpy(__dst, a3, sizeof(__dst));
  return [(CBAODModule *)self performUpdateWithTransitionParameters:__dst rampDoneCallback:v6 rampCanceledCallback:0];
}

uint64_t __53__CBAODModule_performUpdateWithTransitionParameters___block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v8 = v5;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "Transition in AOD done", v6, 2u);
  }

  return [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
}

- (BOOL)performUpdateWithTransitionParameters:(id *)a3 rampDoneCallback:(id)a4 rampCanceledCallback:(id)a5
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = 1;
  queue = self->super._queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __91__CBAODModule_performUpdateWithTransitionParameters_rampDoneCallback_rampCanceledCallback___block_invoke;
  v11 = &unk_1E867BEE0;
  v12 = self;
  memcpy(v15, a3, sizeof(v15));
  v13 = v18;
  v14 = v17;
  dispatch_async(queue, &v7);
  return v16 & 1;
}

void __91__CBAODModule_performUpdateWithTransitionParameters_rampDoneCallback_rampCanceledCallback___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = a1;
  v27 = a1;
  if ([+[CBAODState AODState]== 1 && (*(*(a1 + 32) + 136) & 1) == 0 || (*(a1 + 56) & 1) != 0 sharedInstance]
  {
    v26 = [*(a1 + 32) copyModulesInfo:0];
    if (*(*(a1 + 32) + 16))
    {
      v15 = *(*(a1 + 32) + 16);
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

    v25 = v15;
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v30, v26);
      _os_log_debug_impl(&dword_1DE8E5000, v25, v24, "CB features update for Collected modules info \n %@", v30, 0xCu);
    }

    v11 = *(*(a1 + 32) + 48);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    memcpy(__dst, (a1 + 56), 0x34uLL);
    v23 = [v11 startTransition:v26 transitionParameters:__dst rampDoneCallback:v12 rampCanceledCallback:v13];
    if (v23)
    {
      if (*(*(a1 + 32) + 16))
      {
        v6 = *(*(a1 + 32) + 16);
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

      v19 = v6;
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v19;
        v4 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_impl(&dword_1DE8E5000, v3, v4, "This change doesn't trigger transition.", v17, 2u);
      }
    }

    else
    {
      [*(*(a1 + 32) + 48) remainingTransitionLength];
      if (v1 <= 0.0)
      {
        if (*(a1 + 40))
        {
          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        if (*(*(a1 + 32) + 16))
        {
          v10 = *(*(a1 + 32) + 16);
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

        v21 = v10;
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          [*(*(a1 + 32) + 48) remainingTransitionLength];
          __os_log_helper_16_0_1_8_0(v29, COERCE__INT64(v2));
          _os_log_impl(&dword_1DE8E5000, v21, v20, "Detected unfinished transition -> force to ramp to the target in remaining time = %f.", v29, 0xCu);
        }

        v7 = *(*(a1 + 32) + 48);
        v8 = v26;
        [v7 remainingTransitionLength];
        [v7 startTransition:v8 length:1 forceUpdate:*(a1 + 40) rampDoneCallback:*(a1 + 48) rampCanceledCallback:?];
      }
    }

    MEMORY[0x1E69E5920](v26);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleDisplayModeUpdate:(id)a3
{
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a3 objectForKey:@"Value"];
    v7 = [a3 objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v8 intValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 floatValue];
        v5 = *&v3;
      }

      else
      {
        v5 = -1.0;
      }

      *&v3 = v5;
      return [(CBAODModule *)self handleDisplayModeUpdate:v6 transitionLength:v3];
    }
  }

  return v9;
}

- (BOOL)handleDisplayModeUpdate:(int64_t)a3 transitionLength:(float)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = self;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v56 = 0;
  context = objc_autoreleasePoolPush();
  if (!v60->_aodEnabled)
  {
    goto LABEL_68;
  }

  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = 1;
  HIBYTE(__b[0]) = 1;
  *&__b[1] = v57;
  if ([+[CBAODState isDCPBasedAODSupported]&& v60->_flipBookEnabled sharedInstance]
  {
    LOBYTE(__b[12]) = 1;
  }

  if (v60->super._logHandle)
  {
    logHandle = v60->super._logHandle;
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

  v54 = logHandle;
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_66_8_66_8_0(v63, [CBDisplayStateUtilities stringForDisplayMode:v60->_currentDisplayMode], [CBDisplayStateUtilities stringForDisplayMode:v58], COERCE__INT64(v57));
    _os_log_impl(&dword_1DE8E5000, v54, v53, "[Display Mode] %{public}@ -> %{public}@ in %f seconds", v63, 0x20u);
  }

  [(CBAODTransitionController *)v60->_transitionController cancelTransition];
  [(CBAODModule *)v60 releaseDisplayModeCompletionTimer];
  if (!v58)
  {
    if (v60->_currentDisplayMode == 1 || v60->_currentDisplayMode == 2)
    {
      memcpy(v33, __b, sizeof(v33));
      [(CBAODModule *)v60 updateAODState:0 transitionParameters:v33 brightnessFactor:0.0 forDisplayMode:?];
      v56 = 1;
      goto LABEL_68;
    }

    goto LABEL_45;
  }

  if (v58 != 1)
  {
    if (v58 != 2)
    {
      if (v58 == 3)
      {
        [(CBAODTransitionController *)v60->_transitionController setDisplayON:1];
        if (v60->_currentDisplayMode == 2)
        {
          if (!v60->_flipBookEnabled)
          {
            BYTE2(__b[0]) = 1;
          }

          LOBYTE(__b[4]) = 1;
          __b[5] = 0;
          memcpy(__dst, __b, 0x34uLL);
          LODWORD(v5) = 1.0;
          [(CBAODModule *)v60 updateAODState:0 transitionParameters:__dst brightnessFactor:3 forDisplayMode:v5];
          v56 = 1;
        }

        else if (v60->_currentDisplayMode == 1)
        {
          memcpy(v51, __b, sizeof(v51));
          LODWORD(v6) = -1.0;
          [(CBAODModule *)v60 updateAODState:0 transitionParameters:v51 brightnessFactor:3 forDisplayMode:v6];
          v56 = 1;
        }
      }

      else if (v58 == 4)
      {
        [(CBAODTransitionController *)v60->_transitionController setDisplayON:1];
        if (v60->_currentDisplayMode == 1 || v60->_currentDisplayMode == 2)
        {
          memcpy(v32, __b, sizeof(v32));
          LODWORD(v14) = 1028443341;
          [(CBAODModule *)v60 updateAODState:0 transitionParameters:v32 brightnessFactor:4 forDisplayMode:v14];
          currentDisplayMode = v60->_currentDisplayMode;
          if (currentDisplayMode == 1)
          {
            oslog = v60->super._logHandle;
            v30 = OS_LOG_TYPE_FAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
            {
              v18 = oslog;
              v19 = v30;
              __os_log_helper_16_0_0(v29);
              _os_log_fault_impl(&dword_1DE8E5000, v18, v19, "[Display Mode] Unexpected display mode transition: Always On -> Active Dimmed", v29, 2u);
            }
          }

          else if (currentDisplayMode == 2)
          {
            v28 = v60->super._logHandle;
            v27 = OS_LOG_TYPE_FAULT;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              v16 = v28;
              v17 = v27;
              __os_log_helper_16_0_0(v26);
              _os_log_fault_impl(&dword_1DE8E5000, v16, v17, "[Display Mode] Unexpected display mode transition: Always On Suppressed -> Active Dimmed", v26, 2u);
            }
          }

          else
          {
            v25 = v60->super._logHandle;
            if (os_log_type_enabled(v60->super._logHandle, OS_LOG_TYPE_FAULT))
            {
              __os_log_helper_16_2_1_8_66(v62, [CBDisplayStateUtilities stringForDisplayMode:v60->_currentDisplayMode]);
              _os_log_fault_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_FAULT, "[Display Mode] Unexpected display mode transition: %{public}@ -> Active Dimmed", v62, 0xCu);
            }
          }

          v56 = 1;
        }
      }

      else
      {
        v24 = v60->super._logHandle;
        if (os_log_type_enabled(v60->super._logHandle, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_2_2_8_66_4_0(v61, [CBDisplayStateUtilities stringForDisplayMode:v60->_currentDisplayMode], v58);
          _os_log_fault_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_FAULT, "[Display Mode] Transition to unknown display mode: %{public}@ -> display mode %d", v61, 0x12u);
        }

        v56 = 0;
      }

      goto LABEL_68;
    }

    if (v60->_currentDisplayMode == 3 || v60->_currentDisplayMode == 4 || !v60->_currentDisplayMode)
    {
      memcpy(v46, __b, sizeof(v46));
      [(CBAODModule *)v60 updateAODState:5 transitionParameters:v46 brightnessFactor:2 forDisplayMode:0.0];
      v56 = 1;
      goto LABEL_68;
    }

    if (v60->_currentDisplayMode == 1)
    {
      LODWORD(v4) = 0;
      [(CBAODModule *)v60 setDisplayFactor:v4 transitionLength:?];
      *&v12 = v57;
      v40 = MEMORY[0x1E69E9820];
      v41 = -1073741824;
      v42 = 0;
      v43 = __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke;
      v44 = &unk_1E867B480;
      v45 = v60;
      v34 = MEMORY[0x1E69E9820];
      v35 = -1073741824;
      v36 = 0;
      v37 = __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke_197;
      v38 = &unk_1E867B480;
      v39 = v60;
      [CBAODModule performUpdate:v60 forceUpdate:"performUpdate:forceUpdate:rampDoneCallback:rampCanceledCallback:" rampDoneCallback:1 rampCanceledCallback:v12];
      v13 = v57 + 0.05;
      *&v13 = v13;
      [(CBAODModule *)v60 scheduleDisplayModeCompletionTimerIn:2 forDisplayMode:v13];
      v56 = 1;
      goto LABEL_68;
    }

LABEL_45:
    [(CBAODTransitionController *)v60->_transitionController setDisplayON:0];
    goto LABEL_68;
  }

  [(CBAODTransitionController *)v60->_transitionController setDisplayON:1];
  if (v60->_currentDisplayMode == 3)
  {
    memcpy(v50, __b, sizeof(v50));
    LODWORD(v8) = -1.0;
    [(CBAODModule *)v60 updateAODState:1 transitionParameters:v50 brightnessFactor:v8 forDisplayMode:?];
    v56 = 1;
  }

  else if (v60->_currentDisplayMode)
  {
    if (v60->_currentDisplayMode == 4)
    {
      memcpy(v48, __b, sizeof(v48));
      LODWORD(v10) = 1.0;
      [(CBAODModule *)v60 updateAODState:1 transitionParameters:v48 brightnessFactor:v10 forDisplayMode:?];
      v56 = 1;
    }

    else if (v60->_currentDisplayMode == 2)
    {
      if (!v60->_flipBookEnabled)
      {
        BYTE2(__b[0]) = 1;
      }

      LODWORD(v7) = 1.0;
      [(CBAODModule *)v60 setDisplayFactor:v7 transitionLength:?];
      LOBYTE(__b[4]) = 1;
      __b[5] = 0;
      memcpy(v47, __b, sizeof(v47));
      [(CBAODModule *)v60 copyAndHandleEventWithTransitionParameters:v47];
      v11 = v57 + 0.05;
      *&v11 = v11;
      [(CBAODModule *)v60 scheduleDisplayModeCompletionTimerIn:1 forDisplayMode:v11];
      v56 = 1;
    }
  }

  else
  {
    if (!v60->_flipBookEnabled)
    {
      BYTE2(__b[0]) = 1;
    }

    LOBYTE(__b[4]) = 1;
    __b[5] = 0;
    memcpy(v49, __b, sizeof(v49));
    LODWORD(v9) = 1.0;
    [(CBAODModule *)v60 updateAODState:1 transitionParameters:v49 brightnessFactor:v9 forDisplayMode:?];
    v56 = 1;
  }

LABEL_68:
  objc_autoreleasePoolPop(context);
  v60->_currentDisplayMode = v58;
  *MEMORY[0x1E69E9840];
  return v56 & 1;
}

uint64_t __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v9 = v5;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "Transition in AOD done", v7, 2u);
  }

  [*(*(a1 + 32) + 48) setDisplayON:0];
  return [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
}

uint64_t __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke_197(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v9 = v5;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "Transition in AOD canceled", v7, 2u);
  }

  [*(*(a1 + 32) + 48) setDisplayON:0];
  return [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
}

- (BOOL)setDisplayFactor:(float)a3 transitionLength:(float)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = 0;
  context = objc_autoreleasePoolPush();
  if (v19->super._logHandle)
  {
    logHandle = v19->super._logHandle;
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

  v14 = logHandle;
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(v17), COERCE__INT64(v16));
    _os_log_impl(&dword_1DE8E5000, v14, v13, "Set brightness factor = %f fade = %f", v20, 0x16u);
  }

  *&v4 = v16;
  -[CBAODModule setModulesProperty:forKey:](v19, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v4], @"DisplayBrightnessFadePeriod");
  *&v5 = v17;
  v15 = -[CBAODModule setModulesProperty:forKey:](v19, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v5], @"DisplayBrightnessFactorWithFade");
  *&v6 = v17;
  if (v17 >= 1.0)
  {
    memset(__b, 0, sizeof(__b));
    __b[1] = 1;
    memcpy(__dst, __b, sizeof(__dst));
    [(CBAODModule *)v19 copyAndHandleEventWithTransitionParameters:__dst];
  }

  [(CBAODModule *)v19 setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate", v6];
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)updateAODState:(unint64_t)a3 transitionParameters:(id *)a4 brightnessFactor:(float)a5 forDisplayMode:(int64_t)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = 0;
  context = objc_autoreleasePoolPush();
  if (v33->_aodEnabled)
  {
    if ([+[CBAODState AODStateExternal]!= v31 sharedInstance]
    {
      [+[CBAODState sharedInstance](CBAODState setAODStateExternal:"setAODStateExternal:", v31];
      if (v33->super._logHandle)
      {
        logHandle = v33->super._logHandle;
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

      v26 = logHandle;
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        if (v31)
        {
          v6 = "Entering AOD";
        }

        else
        {
          v6 = "Exiting AOD";
        }

        __os_log_helper_16_2_4_8_0_8_32_8_0_8_0(v34, v31, v6, COERCE__INT64(a4->var4), COERCE__INT64(v29));
        _os_log_impl(&dword_1DE8E5000, v26, v25, "AOD State update (%lu), %s, transitionTime: %f, factor = %f", v34, 0x2Au);
      }

      if ([+[CBAODState AODStateExternal]== 1 sharedInstance]
      {
        [(CBAODModule *)v33 prepareForEnterToAODRoutine];
        if (v29 >= 0.0)
        {
          *&v7 = v29;
          [(CBAODModule *)v33 setDisplayFactor:v7 transitionLength:0.0];
        }

        memcpy(__dst, a4, 0x34uLL);
        [(CBAODModule *)v33 enteringAODRoutineForDisplayMode:v28 transitionParameters:__dst];
      }

      else if ([+[CBAODState AODStateExternal] sharedInstance]
      {
        if ([+[CBAODState AODStateExternal]== 5 sharedInstance]
        {
          [(CBAODModule *)v33 prepareForEnterToAODRoutine];
          if (v29 >= 0.0)
          {
            *&v9 = v29;
            [(CBAODModule *)v33 setDisplayFactor:v9 transitionLength:0.0];
          }

          memcpy(v22, a4, sizeof(v22));
          [(CBAODModule *)v33 enteringSuppressedAODRoutineWithTransitionParameters:v22];
        }
      }

      else
      {
        if (v29 >= 0.0)
        {
          *&v8 = v29;
          [(CBAODModule *)v33 setDisplayFactor:v8 transitionLength:0.0];
        }

        memcpy(v23, a4, sizeof(v23));
        [(CBAODModule *)v33 exitingAODRoutineForDisplayMode:v28 transitionParameters:v23];
      }

      v27 = 1;
    }
  }

  else
  {
    if (v33->super._logHandle)
    {
      v14 = v33->super._logHandle;
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

    oslog = v14;
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v11 = oslog;
      v12 = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_error_impl(&dword_1DE8E5000, v11, v12, "CB AOD support is disabled.", v19, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (void)prepareForEnterToAODRoutine
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v21 = objc_autoreleasePoolPush();
  if (v28->super._logHandle)
  {
    logHandle = v28->super._logHandle;
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

  v26 = logHandle;
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v26;
    type = v25;
    __os_log_helper_16_0_0(v24);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: prepare to enter AOD", v24, 2u);
  }

  [+[CBAODState sharedInstance](CBAODState acquirePowerAssertion];
  [(CBAODModule *)v28 setALSServiceProperty:*MEMORY[0x1E695E4D0] forKey:@"AODALSMode"];
  [(CBAODModule *)v28 loadAODCurveFromDefaults];
  [(CBAODModule *)v28 updateModulesAODState:2];
  [(CBAODModule *)v28 setModulesProperty:&unk_1F59C8E20 forKey:@"DisplayBrightnessFadePeriodOverride"];
  v23 = [(CBAODModule *)v28 copyModulesInfo:1];
  if (v28->super._logHandle)
  {
    v16 = v28->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v15 = init_default_corebrightness_log();
    }

    v16 = v15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v32, v23);
    _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "Current modules info: \n %@", v32, 0xCu);
  }

  v2 = [(CBAODModule *)v28 getIntegerValueFrom:v23 key:@"AutoBrightnessLuxFilter"];
  v28->_ABLuxFilterBackup = v2;
  if (v28->super._logHandle)
  {
    v14 = v28->super._logHandle;
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

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v31, v28->_ABLuxFilterBackup);
    _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "ALS lux filter backup %ld", v31, 0xCu);
  }

  [(CBAODModule *)v28 getFloatValueFrom:v23 key:@"PendingDisplayNits"];
  v28->_displayBrightnessBackup = v3;
  if (v28->super._logHandle)
  {
    v12 = v28->super._logHandle;
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

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v30, COERCE__INT64(v28->_displayBrightnessBackup));
    _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "Display brightness backup %f Nits", v30, 0xCu);
  }

  [(CBAODModule *)v28 setModulesProperty:MEMORY[0x1E695E110] forKey:@"CEEnable"];
  [v23 objectForKey:@"DisplayBrightnessAuto"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_msgSend(v23 objectForKey:{@"DisplayBrightnessAuto", "BOOLValue"}];
    v28->_ABStateBackup = v4;
    if (!v28->_ABStateBackup)
    {
      [(CBAODModule *)v28 getFloatValueFrom:v23 key:@"PendingDisplayNits"];
      v22 = v5;
      if (v28->super._logHandle)
      {
        v10 = v28->super._logHandle;
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v29, COERCE__INT64(v22));
        _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "AB is off -> backup AB state and set Nits cap to %f", v29, 0xCu);
      }

      v6 = +[CBAODState sharedInstance];
      *&v7 = v22;
      [(CBAODState *)v6 setNitsCap:v7];
    }
  }

  if (v28->_backupState)
  {
    MEMORY[0x1E69E5920](v28->_backupState);
    v28->_backupState = 0;
  }

  v8 = MEMORY[0x1E69E5928](v23);
  v28->_backupState = v8;
  -[CBAODState setProperty:forKey:](+[CBAODState sharedInstance](CBAODState, "sharedInstance"), "setProperty:forKey:", [v23 objectForKey:?], @"AOTCurve");
  [(CBAODTransitionController *)v28->_transitionController setInitialState:v23];
  MEMORY[0x1E69E5920](v23);
  objc_autoreleasePoolPop(v21);
  *MEMORY[0x1E69E9840];
}

- (void)enteringAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v62 = self;
  v61 = a2;
  v60 = a3;
  v59 = a4;
  context = objc_autoreleasePoolPush();
  if (v62->super._logHandle)
  {
    logHandle = v62->super._logHandle;
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

  v58 = logHandle;
  v57 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v58;
    type = v57;
    __os_log_helper_16_0_0(v56);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: entering AOD", v56, 2u);
  }

  [(CBAODModule *)v62 setModulesProperty:&unk_1F59C8E20 forKey:@"DynamicSliderEnable"];
  v55 = [(CBAODTransitionController *)v62->_transitionController copyContext];
  memcpy(__dst, a4, sizeof(__dst));
  [(CBAODModule *)v62 updateModulesAODState:3 transitionParameters:__dst context:v55];
  *&v4 = MEMORY[0x1E69E5920](v55).n128_u64[0];
  if (!v62->_ABStateBackup)
  {
    if (v62->super._logHandle)
    {
      v18 = v62->super._logHandle;
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

    v53 = v18;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v53;
      v16 = v52;
      __os_log_helper_16_0_0(v51);
      _os_log_impl(&dword_1DE8E5000, v15, v16, "Override AB to ON in AOD.", v51, 2u);
    }

    [(CBAODModule *)v62 setModulesProperty:MEMORY[0x1E695E118] forKey:@"DisplayBrightnessAuto"];
  }

  [(CBAODModule *)v62 setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate", v4];
  v50 = [(CBAODModule *)v62 copyModulesPropertyForKey:?];
  [+[CBAODState sharedInstance](CBAODState setProperty:"setProperty:forKey:" forKey:v50, @"AODDarkerCurve"];
  v49 = [(CBAODModule *)v62 copyModulesInfo:0, MEMORY[0x1E69E5920](v50).n128_f64[0]];
  if (v62->super._logHandle)
  {
    v14 = v62->super._logHandle;
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

  v48 = v14;
  v47 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v63, v49);
    _os_log_impl(&dword_1DE8E5000, v48, v47, "ENTERING AOD - Target modules info: \n %@", v63, 0xCu);
  }

  [v49 objectForKey:@"TrustedLux"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v62;
    [objc_msgSend(v49 objectForKey:{@"TrustedLux", "floatValue"}];
    [(CBAODModule *)v12 reevaluatePThresholdsForLux:?];
  }

  v10 = v62;
  v9 = MEMORY[0x1E696AD98];
  [+[CBAODState sharedInstance](CBAODState thresholdPCCLuxDelta];
  -[CBAODModule setModulesProperty:forKey:](v10, "setModulesProperty:forKey:", [v9 numberWithFloat:?], @"AAPLuxDelta");
  transitionController = v62->_transitionController;
  v38 = MEMORY[0x1E69E9820];
  v39 = -1073741824;
  v40 = 0;
  v41 = __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke;
  v42 = &unk_1E867BF08;
  v43 = v62;
  v44 = v60;
  memcpy(v45, a4, sizeof(v45));
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke_245;
  v34 = &unk_1E867BF08;
  v35 = v62;
  v36 = v60;
  memcpy(v37, a4, sizeof(v37));
  memcpy(v29, a4, sizeof(v29));
  if (![(CBAODTransitionController *)transitionController startTransition:v49 transitionParameters:v29 rampDoneCallback:&v38 rampCanceledCallback:&v30])
  {
    if (v62->super._logHandle)
    {
      v8 = v62->super._logHandle;
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

    oslog = v8;
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "This change doesn't trigger transition -> start AOD ON routine", v26, 2u);
    }

    memcpy(v25, a4, sizeof(v25));
    [(CBAODModule *)v62 onAODRoutineForDisplayMode:v60 transitionParameters:v25];
  }

  MEMORY[0x1E69E5920](v49);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

uint64_t __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke(void *a1)
{
  v14 = a1;
  v13 = a1;
  if (*(a1[4] + 16))
  {
    v7 = *(a1[4] + 16);
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

    v7 = inited;
  }

  v12 = v7;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "AOD enter transition is done -> start AOD ON routine", v10, 2u);
  }

  v2 = a1[4];
  v3 = a1[5];
  memcpy(__dst, a1 + 6, sizeof(__dst));
  return [v2 onAODRoutineForDisplayMode:v3 transitionParameters:__dst];
}

uint64_t __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke_245(void *a1)
{
  v14 = a1;
  v13 = a1;
  if (*(a1[4] + 16))
  {
    v7 = *(a1[4] + 16);
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

    v7 = inited;
  }

  v12 = v7;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "AOD enter transition was canceled -> start AOD ON routine", v10, 2u);
  }

  v2 = a1[4];
  v3 = a1[5];
  memcpy(__dst, a1 + 6, sizeof(__dst));
  return [v2 onAODRoutineForDisplayMode:v3 transitionParameters:__dst];
}

- (void)onAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  context = objc_autoreleasePoolPush();
  if (v17->super._logHandle)
  {
    logHandle = v17->super._logHandle;
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

  v13 = logHandle;
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    __os_log_helper_16_0_0(v11);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: AOD is ON", v11, 2u);
  }

  [(CBAODModule *)v17 setModulesProperty:&unk_1F59C8E20 forKey:@"AutoBrightnessLuxFilter"];
  [(CBAODModule *)v17 updateModulesAODState:1];
  if (a4->var15)
  {
    v4 = a4->var4 + 0.05;
    *&v4 = v4;
    [(CBAODModule *)v17 scheduleDisplayModeCompletionTimerIn:v15 forDisplayMode:v4];
  }

  else
  {
    [(CBAODModule *)v17 didCompleteTransitionToDisplayMode:v15];
  }

  [(CBAODModule *)v17 copyAndHandleEvent];
  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(context);
}

- (void)enteringSuppressedAODRoutineWithTransitionParameters:(id *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = self;
  v46 = a2;
  v45 = a3;
  context = objc_autoreleasePoolPush();
  if (v47->super._logHandle)
  {
    logHandle = v47->super._logHandle;
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

  v44 = logHandle;
  v43 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v44;
    type = v43;
    __os_log_helper_16_0_0(v42);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: entering Suppressed AOD", v42, 2u);
  }

  [(CBAODModule *)v47 setModulesProperty:&unk_1F59C8E20 forKey:@"DynamicSliderEnable"];
  memcpy(__dst, a3, sizeof(__dst));
  [(CBAODModule *)v47 updateModulesAODState:3 transitionParameters:__dst];
  if (!v47->_ABStateBackup)
  {
    if (v47->super._logHandle)
    {
      v16 = v47->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v15 = init_default_corebrightness_log();
      }

      v16 = v15;
    }

    v40 = v16;
    v39 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v40;
      v14 = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_impl(&dword_1DE8E5000, v13, v14, "Override AB to ON in AOD.", v38, 2u);
    }

    [(CBAODModule *)v47 setModulesProperty:MEMORY[0x1E695E118] forKey:@"DisplayBrightnessAuto"];
  }

  [(CBAODModule *)v47 setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate"];
  v37 = [(CBAODModule *)v47 copyModulesInfo:0];
  if (v47->super._logHandle)
  {
    v12 = v47->super._logHandle;
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

  v36 = v12;
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v48, v37);
    _os_log_impl(&dword_1DE8E5000, v36, v35, "ENTERING Suppressed AOD - Target modules info: \n %@", v48, 0xCu);
  }

  [v37 objectForKey:@"TrustedLux"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v47;
    [objc_msgSend(v37 objectForKey:{@"TrustedLux", "floatValue"}];
    [(CBAODModule *)v10 reevaluatePThresholdsForLux:?];
  }

  v8 = v47;
  v7 = MEMORY[0x1E696AD98];
  [+[CBAODState sharedInstance](CBAODState thresholdPCCLuxDelta];
  -[CBAODModule setModulesProperty:forKey:](v8, "setModulesProperty:forKey:", [v7 numberWithFloat:?], @"AAPLuxDelta");
  transitionController = v47->_transitionController;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke;
  v33[3] = &unk_1E867B480;
  v33[4] = v47;
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke_246;
  v31 = &unk_1E867B480;
  v32 = v47;
  memcpy(v26, a3, sizeof(v26));
  if (![(CBAODTransitionController *)transitionController startTransition:v37 transitionParameters:v26 rampDoneCallback:v33 rampCanceledCallback:&v27])
  {
    if (v47->super._logHandle)
    {
      v6 = v47->super._logHandle;
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
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&dword_1DE8E5000, v3, v4, "This change doesn't trigger transition -> start AOD ON + suppressed routine", v23, 2u);
    }

    [(CBAODModule *)v47 onSuppresedAODRoutine];
  }

  MEMORY[0x1E69E5920](v37);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

uint64_t __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v9 = v5;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "AOD suppressed enter transition is done -> start AOD ON + suppressed routine", v7, 2u);
  }

  return [*(a1 + 32) onSuppresedAODRoutine];
}

uint64_t __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke_246(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
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

  v9 = v5;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "AOD suppressed enter transition was canceled -> start AOD ON + suppressed routine", v7, 2u);
  }

  return [*(a1 + 32) onSuppresedAODRoutine];
}

- (void)onSuppresedAODRoutine
{
  v12 = self;
  v11 = a2;
  v7 = objc_autoreleasePoolPush();
  if (v12->super._logHandle)
  {
    logHandle = v12->super._logHandle;
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

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: AOD suppressed is ON", v8, 2u);
  }

  [(CBAODModule *)v12 setModulesProperty:&unk_1F59C8E20 forKey:@"AutoBrightnessLuxFilter"];
  [(CBAODModule *)v12 updateModulesAODState:1];
  [(CBAODTransitionController *)v12->_transitionController setDisplayON:0];
  if (v12->_flipBookEnabled)
  {
    [(CBAODModule *)v12 didCompleteTransitionToDisplayMode:2];
  }

  else
  {
    LODWORD(v2) = 1028443341;
    [(CBAODModule *)v12 scheduleDisplayModeCompletionTimerIn:2 forDisplayMode:v2];
  }

  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(v7);
}

- (void)exitingAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v65 = self;
  v64 = a2;
  v63 = a3;
  v62 = a4;
  context = objc_autoreleasePoolPush();
  if (v65->super._logHandle)
  {
    logHandle = v65->super._logHandle;
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

  v61 = logHandle;
  v60 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v61;
    type = v60;
    __os_log_helper_16_0_0(v59);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: exiting AOD", v59, 2u);
  }

  [(CBAODModule *)v65 setModulesProperty:&unk_1F59C8E08 forKey:@"DynamicSliderEnable"];
  v58 = [(CBAODTransitionController *)v65->_transitionController copyContext];
  memcpy(__dst, a4, sizeof(__dst));
  [(CBAODModule *)v65 updateModulesAODState:4 transitionParameters:__dst context:v58];
  v4 = MEMORY[0x1E69E5920](v58).n128_u64[0];
  if (!v65->_ABStateBackup)
  {
    if (v65->super._logHandle)
    {
      v19 = v65->super._logHandle;
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

    v56 = v19;
    v55 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v56;
      v17 = v55;
      __os_log_helper_16_0_0(v54);
      _os_log_impl(&dword_1DE8E5000, v16, v17, "Set AB to OFF", v54, 2u);
    }

    [(CBAODModule *)v65 setModulesProperty:MEMORY[0x1E695E110] forKey:@"DisplayBrightnessAuto"];
    if (!v65->_dominoModeEnabled)
    {
      *&v4 = v65->_displayBrightnessBackup;
      -[CBAODModule setModulesProperty:forKey:](v65, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:*&v4], @"DisplayNitsKey");
    }
  }

  if (v65->_backupState)
  {
    if (v65->super._logHandle)
    {
      v15 = v65->super._logHandle;
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

    v53 = v15;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v67, [(NSDictionary *)v65->_backupState objectForKey:@"ALSBrightenPdeltaFast"], [(NSDictionary *)v65->_backupState objectForKey:@"ALSBrightenPdeltaSlow"], [(NSDictionary *)v65->_backupState objectForKey:@"ALSDimPdeltaSlow"]);
      _os_log_impl(&dword_1DE8E5000, v53, v52, "AP thresholds: Recover P thresholds from backup: BrightenPdeltaFast = %@, BrightenPdeltaSlow = %@, DimPdeltaSlow = %@", v67, 0x20u);
    }

    v51 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[NSDictionary objectForKey:](v65->_backupState, "objectForKey:"), @"ALSBrightenPdeltaFast", -[NSDictionary objectForKey:](v65->_backupState, "objectForKey:"), @"ALSBrightenPdeltaSlow", -[NSDictionary objectForKey:](v65->_backupState, "objectForKey:"), @"ALSDimPdeltaSlow", 0}];
    [(CBAODModule *)v65 setModulesProperty:v51 forKey:@"ALSInternalSettings"];
    [(NSDictionary *)v65->_backupState objectForKey:@"AAPLuxDelta"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)v65 setModulesProperty:[(NSDictionary *)v65->_backupState objectForKey:?] forKey:@"AAPLuxDelta"];
    }

    [(NSDictionary *)v65->_backupState objectForKey:@"CEEnable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)v65 setModulesProperty:[(NSDictionary *)v65->_backupState objectForKey:?] forKey:@"CEEnable"];
    }

    v4 = MEMORY[0x1E69E5920](v51).n128_u64[0];
  }

  v5 = +[CBAODState sharedInstance];
  LODWORD(v6) = -1.0;
  [(CBAODState *)v5 setNitsCap:v6];
  v50 = [(CBAODModule *)v65 copyModulesInfo:0];
  if (v65->super._logHandle)
  {
    v13 = v65->super._logHandle;
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

  v49 = v13;
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v66, v50);
    _os_log_impl(&dword_1DE8E5000, v49, v48, "EXITING AOD - Target modules info: \n %@", v66, 0xCu);
  }

  transitionController = v65->_transitionController;
  v39 = MEMORY[0x1E69E9820];
  v40 = -1073741824;
  v41 = 0;
  v42 = __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke;
  v43 = &unk_1E867BF08;
  v44 = v65;
  v45 = v63;
  memcpy(v46, a4, sizeof(v46));
  v31 = MEMORY[0x1E69E9820];
  v32 = -1073741824;
  v33 = 0;
  v34 = __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke_259;
  v35 = &unk_1E867BF08;
  v36 = v65;
  v37 = v63;
  memcpy(v38, a4, sizeof(v38));
  memcpy(v30, a4, sizeof(v30));
  if (![(CBAODTransitionController *)transitionController startTransition:v50 transitionParameters:v30 rampDoneCallback:&v39 rampCanceledCallback:&v31])
  {
    if (v65->super._logHandle)
    {
      v10 = v65->super._logHandle;
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

    oslog = v10;
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_1DE8E5000, v7, v8, "This change doesn't trigger transition -> start AOD OFF routine", v27, 2u);
    }

    memcpy(v26, a4, sizeof(v26));
    [(CBAODModule *)v65 offAODRoutineForDisplayMode:v63 transitionParameters:v26];
  }

  MEMORY[0x1E69E5920](v50);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

uint64_t __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke(void *a1)
{
  v14 = a1;
  v13 = a1;
  if (*(a1[4] + 16))
  {
    v7 = *(a1[4] + 16);
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

    v7 = inited;
  }

  v12 = v7;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "Exit transition done -> start AOD OFF routine", v10, 2u);
  }

  v2 = a1[4];
  v3 = a1[5];
  memcpy(__dst, a1 + 6, sizeof(__dst));
  return [v2 offAODRoutineForDisplayMode:v3 transitionParameters:__dst];
}

uint64_t __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke_259(void *a1)
{
  v14 = a1;
  v13 = a1;
  if (*(a1[4] + 16))
  {
    v7 = *(a1[4] + 16);
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

    v7 = inited;
  }

  v12 = v7;
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_1DE8E5000, log, type, "AOD exit transition was canceled -> start AOD OFF routine", v10, 2u);
  }

  v2 = a1[4];
  v3 = a1[5];
  memcpy(__dst, a1 + 6, sizeof(__dst));
  return [v2 offAODRoutineForDisplayMode:v3 transitionParameters:__dst];
}

- (void)offAODRoutineForDisplayMode:(int64_t)a3 transitionParameters:(id *)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  context = objc_autoreleasePoolPush();
  if (v20->super._logHandle)
  {
    logHandle = v20->super._logHandle;
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
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, "[AOD routine]: AOD is OFF", v14, 2u);
  }

  [(CBAODModule *)v20 setModulesProperty:&unk_1F59C9808 forKey:@"ALSInternalSettings"];
  -[CBAODModule setModulesProperty:forKey:](v20, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v20->_ABLuxFilterBackup], @"AutoBrightnessLuxFilter");
  v13 = [(CBAODTransitionController *)v20->_transitionController copyContext];
  [(CBAODModule *)v20 updateModulesAODState:0 context:v13];
  *&v4 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  [(CBAODModule *)v20 setModulesProperty:&unk_1F59C8E38 forKey:@"DisplayBrightnessFadePeriodOverride", v4];
  [(CBAODModule *)v20 setALSServiceProperty:*MEMORY[0x1E695E4C0] forKey:@"AODALSMode"];
  if (!v18 || v18 == 2)
  {
    [(CBAODTransitionController *)v20->_transitionController setDisplayON:0];
  }

  if (a4->var15)
  {
    v6 = a4->var4 + 0.05;
    *&v6 = v6;
    [(CBAODModule *)v20 scheduleDisplayModeCompletionTimerIn:v18 forDisplayMode:v6];
  }

  else if (v20->_flipBookEnabled || v18)
  {
    [(CBAODModule *)v20 didCompleteTransitionToDisplayMode:v18];
  }

  else
  {
    LODWORD(v5) = 1028443341;
    [(CBAODModule *)v20 scheduleDisplayModeCompletionTimerIn:0 forDisplayMode:v5];
  }

  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(context);
}

- (void)didCompleteTransitionToDisplayMode:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  [(CBAODModule *)v18 sendNotificationForKey:@"DisplayModeChangeComplete" andValue:v15];
  MEMORY[0x1E69E5920](v15);
  if (v18->super._logHandle)
  {
    logHandle = v18->super._logHandle;
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

  v14 = logHandle;
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v19, [CBDisplayStateUtilities stringForDisplayMode:v16]);
    _os_log_impl(&dword_1DE8E5000, v14, v13, "[Display Mode] didCompleteTransitionToDisplayMode %@", v19, 0xCu);
  }

  if (v16 == 2)
  {
    [(CBAODModule *)v18 setALSServiceProperty:&unk_1F59C8E50 forKey:@"ALSMedianHistorySize"];
  }

  else if (v16 == 1)
  {
    [(CBAODModule *)v18 setALSServiceProperty:&unk_1F59C8E68 forKey:@"ALSMedianHistorySize"];
  }

  else if (v16 == 3 && v18->_flipBookEnabled)
  {
    if (v18->super._logHandle)
    {
      v7 = v18->super._logHandle;
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

    v12 = v7;
    v11 = 16;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v4 = v12;
      v5 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, v4, v5, "Warning: Flipbook enabled in Active On mode.", v10, 2u);
    }

    [(CBAODModule *)v18 setProperty:&unk_1F59C8E80 forKey:@"FlipBookState"];
    [(CBAODModule *)v18 setProperty:&unk_1F59C8E98 forKey:v3];
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyModulesInfo:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a3)
  {
    v4 = [(CBAODModule *)self copyModulesExtendedIdentifiers];
  }

  else
  {
    v4 = [(CBAODModule *)self copyModulesIdentifiers];
  }

  [v4 enumerateObjectsUsingBlock:?];
  MEMORY[0x1E69E5920](v4);
  return v5;
}

double __31__CBAODModule_copyModulesInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) copyModulesPropertyForKey:a2];
    if (v4)
    {
      [*(a1 + 40) setObject:v4 forKey:a2];
      *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
    }
  }

  return result;
}

- (id)copyModulesIdentifiers
{
  v5 = self;
  v4 = a2;
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  return [v2 initWithObjects:{@"DisplayBrightness", @"DisplayAAPFactor", @"TrustedLux", @"ColorRamp", kCBBrightnessCapToCA, 0}];
}

- (id)copyModulesExtendedIdentifiers
{
  v5 = self;
  v4 = a2;
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  return [v2 initWithObjects:{@"DisplayBrightness", @"PendingDisplayNits", @"DisplayPanelLuminanceMin", @"DisplayPanelLuminanceMax", @"DisplayBrightnessAuto", @"DisplayAAPFactor", @"CBAODMinNits", @"TrustedLux", @"DynamicSliderEnable", @"ALSInternalSettings", @"AOTCurve", @"ALSBrightenPdeltaSlow", @"ALSBrightenPdeltaFast", @"ALSDimPdeltaSlow", @"AAPLuxDelta", @"AutoBrightnessLuxFilter", @"ColorRamp", @"CEEnable", kCBBrightnessCapToCA, 0}];
}

- (void)updateModulesAODState:(unint64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __b, sizeof(__dst));
  [(CBAODModule *)v7 updateModulesAODState:v5 transitionParameters:__dst];
}

- (void)updateModulesAODState:(unint64_t)a3 context:(id)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __b, sizeof(__dst));
  [(CBAODModule *)v9 updateModulesAODState:v7 transitionParameters:__dst context:v6];
}

- (void)updateModulesAODState:(unint64_t)a3 transitionParameters:(id *)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  memcpy(__dst, a4, sizeof(__dst));
  [(CBAODModule *)self updateModulesAODState:a3 transitionParameters:__dst context:0];
}

- (void)updateModulesAODState:(unint64_t)a3 transitionParameters:(id *)a4 context:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  if ([+[CBAODState AODState]!= a3 sharedInstance]
  {
    [+[CBAODState sharedInstance](CBAODState setAODState:"setAODState:", v20];
    if (v22->super._logHandle)
    {
      logHandle = v22->super._logHandle;
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
      __os_log_helper_16_2_2_8_32_8_0(v23, [+[CBAODState sharedInstance](CBAODState AODStateString], [+[CBAODState AODState] sharedInstance];
      _os_log_impl(&dword_1DE8E5000, v17, v16, "AOD %s (State update = %lu)", v23, 0x16u);
    }

    modules = v22->_modules;
    v9 = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __66__CBAODModule_updateModulesAODState_transitionParameters_context___block_invoke;
    v13 = &unk_1E867BF30;
    memcpy(v15, a4, sizeof(v15));
    v14 = v18;
    [(NSMutableArray *)modules enumerateObjectsUsingBlock:&v9];
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __66__CBAODModule_updateModulesAODState_transitionParameters_context___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC0D0];
  if (result)
  {
    v3 = [+[CBAODState sharedInstance](CBAODState AODState];
    LODWORD(v4) = *(a1 + 44);
    return [a2 handleAODStateUpdate:v3 transitionTime:*(a1 + 32) context:v4];
  }

  return result;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (([(__IOHIDServiceClient *)a3 conformsToUsagePage:65280 usage:4]& 1) != 0)
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v12, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Received ALS service - save it! %@", v12, 0xCu);
    }

    if (([(NSMutableArray *)self->_alsServiceClients containsObject:a3]& 1) == 0)
    {
      [(NSMutableArray *)self->_alsServiceClients addObject:a3];
      if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
      {
        v5 = MEMORY[0x1E695E4C0];
        [(CBAODModule *)self setALSServiceProperty:*MEMORY[0x1E695E4C0] forKey:@"CBAODSendSamplesToDCP"];
        [(CBAODModule *)self setALSServiceProperty:*v5 forKey:@"AODALSMode"];
      }
    }

    v9 = 1;
  }

  v4 = (v9 & 1 | [(CBAODThresholdModule *)self->_thresholdModule addHIDServiceClient:a3]) != 0;
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (([(NSMutableArray *)self->_alsServiceClients containsObject:a3]& 1) != 0)
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v11, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Remove ALS service! %@", v11, 0xCu);
    }

    [(NSMutableArray *)self->_alsServiceClients removeObject:a3];
    v8 = 1;
  }

  v4 = (v8 & 1 | [(CBAODThresholdModule *)self->_thresholdModule removeHIDServiceClient:a3]) != 0;
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4 transitionLength:(float)a5 forceUpdate:(BOOL)a6
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = v9;
  HIBYTE(__b[0]) = v10 >= 0.0;
  *&__b[1] = v10;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)v14 handleHIDEvent:v12 from:v11 transitionParameters:__dst];
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4 transitionParameters:(id *)a5
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  if ([+[CBAODState AODState]== 1 sharedInstance]
  {
    v8 = [CBHIDEvent newEvent:v11 andService:v10];
    if (v13->_aabSensorOverrideFilter)
    {
      [(CBSensorOverrideFilter *)v13->_aabSensorOverrideFilter filterEvent:v8];
    }

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memcpy(__dst, a5, sizeof(__dst));
        [(CBAODModule *)v13 handleALSEvent:v8 transitionParameters:__dst];
      }
    }

    MEMORY[0x1E69E5920](v8);
  }

  return 1;
}

- (BOOL)handleALSEvent:(id)a3 transitionParameters:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  if (a3 && (-[NSMutableArray containsObject:](v17->_alsServiceClients, "containsObject:", [v15 service]) & 1) != 0)
  {
    if (v17->super._logHandle)
    {
      logHandle = v17->super._logHandle;
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
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v18, v15);
      _os_log_debug_impl(&dword_1DE8E5000, v12, v11, "Incoming event %@", v18, 0xCu);
    }

    v10 = 0;
    if (v17->_currentALSEvent)
    {
      v10 = 1;
      MEMORY[0x1E69E5920](v17->_currentALSEvent);
      v17->_currentALSEvent = MEMORY[0x1E69E5928](v15);
    }

    else
    {
      v17->_currentALSEvent = MEMORY[0x1E69E5928](v15);
      v10 = 1;
    }

    [(CBALSEvent *)v17->_currentALSEvent illuminance];
    *&v4 = v4;
    [(CBAODModule *)v17 reevaluatePThresholdsForLux:v4];
    if (!a4->var1 && ((v10 & 1) != 0 || a4->var0))
    {
      memcpy(__dst, a4, 0x34uLL);
      [(CBAODModule *)v17 performUpdateWithTransitionParameters:__dst];
    }

    v13 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)copyAndHandleEventWithTransitionLength:(float)a3 forceUpdate:(BOOL)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = v7;
  HIBYTE(__b[0]) = v8 >= 0.0;
  *&__b[1] = v8;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)v10 copyAndHandleEventWithTransitionParameters:__dst];
}

- (BOOL)copyAndHandleEventWithTransitionParameters:(id *)a3
{
  v40 = self;
  v39 = a2;
  v38 = a3;
  if (self->super._logHandle)
  {
    logHandle = v40->super._logHandle;
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

  v37 = logHandle;
  v36 = 1;
  v35 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(logHandle))
  {
    log = v37;
    type = v36;
    spid = v35;
    __os_log_helper_16_0_0(v34);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "copyAndHandleEvent", &unk_1DEAD656F, v34, 2u);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x20000000;
  v32 = 32;
  v33 = 0;
  alsServiceClients = v40->_alsServiceClients;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __58__CBAODModule_copyAndHandleEventWithTransitionParameters___block_invoke;
  v25 = &unk_1E867BF58;
  v26 = v40;
  memcpy(v28, a3, sizeof(v28));
  v27 = &v29;
  [(NSMutableArray *)alsServiceClients enumerateObjectsUsingBlock:&v21];
  if (v40->super._logHandle)
  {
    v9 = v40->super._logHandle;
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
  v19 = 2;
  v18 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v9))
  {
    v5 = v20;
    v6 = v19;
    v7 = v18;
    __os_log_helper_16_0_0(v17);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v5, v6, v7, "copyAndHandleEvent", &unk_1DEAD656F, v17, 2u);
  }

  v4 = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return v4 & 1;
}

void __58__CBAODModule_copyAndHandleEventWithTransitionParameters___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v32 = a2;
  v31 = a3;
  v30 = a4;
  v29 = a1;
  memset(&v34[15], 0, 0xA9uLL);
  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    cf = IOHIDServiceClientCopyEvent();
    CFRelease(VendorDefinedEvent);
    if (cf)
    {
      v26 = [*(a1 + 32) copyModulesPropertyForKey:@"ALSIntegrationMode"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v26 intValue] != 2 && objc_msgSend(v26, "intValue") != 1)
      {
        [CBALSEvent replaceLuxWithFilteredLux:cf];
      }

      MEMORY[0x1E69E5920](v26);
      if (*(*(a1 + 32) + 16))
      {
        v11 = *(*(a1 + 32) + 16);
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

        v11 = inited;
      }

      oslog = v11;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v34, cf);
        _os_log_impl(&dword_1DE8E5000, oslog, type, "Copied event %@", v34, 0xCu);
      }

      v4 = *(*(a1 + 32) + 32);
      v17 = MEMORY[0x1E69E9820];
      v18 = -1073741824;
      v19 = 0;
      v20 = __58__CBAODModule_copyAndHandleEventWithTransitionParameters___block_invoke_302;
      v21 = &unk_1E867BC30;
      v23 = cf;
      v22 = v32;
      [v4 enumerateObjectsUsingBlock:?];
      v9 = *(a1 + 32);
      memcpy(__dst, (a1 + 48), sizeof(__dst));
      [v9 handleHIDEvent:cf from:v32 transitionParameters:__dst];
      *(*(*(a1 + 40) + 8) + 24) = 1;
      CFRelease(cf);
    }

    else
    {
      if (*(*(a1 + 32) + 16))
      {
        v8 = *(*(a1 + 32) + 16);
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

      v15 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v5 = v15;
        v6 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, v5, v6, "Failed to copy kIOHIDEventTypeAmbientLightSensor event", v13, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __58__CBAODModule_copyAndHandleEventWithTransitionParameters___block_invoke_302(uint64_t a1, void *a2)
{
  result = [a2 conformsToProtocol:&unk_1F59CC038];
  if (result)
  {
    return [a2 handleHIDEvent:*(a1 + 40) from:*(a1 + 32)];
  }

  return result;
}

- (float)getFloatValueFrom:(id)a3 key:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0.0;
  v7 = [a3 objectForKey:a4];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 floatValue];
    v8 = v4;
  }

  else
  {
    oslog = self->super._logHandle;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, a4);
      _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getFloatValueFrom error - invalid value for key %@", v11, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (float)getFloatValueFrom:(id)a3 key:(id)a4 subkey:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v10 = [a3 objectForKey:a4];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v10 objectForKey:a5];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 floatValue];
      v11 = v5;
    }

    else
    {
      oslog = self->super._logHandle;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_64(v16, a4);
        _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getFloatValueFrom (subkey) error - invalid value for sub-key %@", v16, 0xCu);
      }
    }
  }

  else
  {
    logHandle = self->super._logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, a4);
      _os_log_fault_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_FAULT, "getFloatValueFrom (subkey)error - invalid value for key %@", v15, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)getIntegerValueFrom:(id)a3 key:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [a3 objectForKey:a4];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 integerValue];
  }

  else
  {
    oslog = self->super._logHandle;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v10, a4);
      _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getIntValueFrom error - invalid value for %@", v10, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)setALSServiceProperty:(void *)a3 forKey:(__CFString *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = self;
  v21 = a2;
  v20 = a3;
  key = a4;
  if (self->super._logHandle)
  {
    logHandle = v22->super._logHandle;
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v24, key, v20);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "[ALS service] Set ALS service property %@ = %@", v24, 0x16u);
  }

  v16 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v22->_alsServiceClients;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      service = 0;
      service = *(__b[1] + 8 * v8);
      v4 = IOHIDServiceClientSetProperty(service, key, v20);
      v16 = (v16 | v4) != 0;
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v16;
}

- (void)loadAODCurveFromDefaults
{
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = [(CBAODModule *)self copyArrayFromPrefsForKey:@"AOTCurve"];
  if (v17)
  {
    if ([v17 count] % 2uLL)
    {
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v19, [v17 count]);
        _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "AOD curve stored in defaults has unexpected number of coordinates (%lu).", v19, 0xCu);
      }
    }

    else
    {
      v16 = [v17 count] / 2;
      if (self->super._logHandle)
      {
        v7 = self->super._logHandle;
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

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v25, v17);
        _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "Use AOD curve from defauls %@", v25, 0xCu);
      }

      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = 0;
      for (i = 0; i < v16; ++i)
      {
        ++v13;
        [v15 addObject:{objc_msgSend(v17, "objectAtIndexedSubscript:")}];
      }

      for (j = 0; j < v16; ++j)
      {
        ++v13;
        [v14 addObject:{objc_msgSend(v17, "objectAtIndexedSubscript:")}];
      }

      v23[0] = @"lux";
      v24[0] = v15;
      v23[1] = @"nits";
      v24[1] = v14;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v21[0] = @"CurveLevelLow";
      v22[0] = v10;
      v21[1] = @"CurveLevelMed";
      v22[1] = v10;
      v21[2] = @"CurveLevelHigh";
      v22[2] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
      MEMORY[0x1E69E5928](v9);
      if (self->super._logHandle)
      {
        v5 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v4 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v4 = init_default_corebrightness_log();
        }

        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v20, v9);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "AOTCurve: %@", v20, 0xCu);
      }

      [(CBAODModule *)self setModulesProperty:v9 forKey:@"AOTCurve"];
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v14);
    }
  }

  MEMORY[0x1E69E5920](v17);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (id)copyArrayFromPrefsForKey:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v7)
  {
    [v7 synchronize];
    v6 = [v7 objectForKey:a3];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
      }
    }

    MEMORY[0x1E69E5920](v7);
  }

  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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
    __os_log_helper_16_2_3_8_32_8_64_8_64(v11, "[CBAODModule copyArrayFromPrefsForKey:]", a3, v8);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s: %@ = %@ \n", v11, 0x20u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  if (self->super._logHandle)
  {
    logHandle = v25->super._logHandle;
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
    __os_log_helper_16_2_2_8_0_8_64(v26, COERCE__INT64(v23), [CBDisplayStateUtilities stringForDisplayMode:v22]);
    _os_log_impl(&dword_1DE8E5000, v21, v20, "Schedule display mode completion timer in %f sec for %@ mode", v26, 0x16u);
  }

  v19 = (v23 * 1000000000.0);
  if (v25->_displayModeCompletionTimer)
  {
    source = v25->_displayModeCompletionTimer;
    v4 = dispatch_time(0, v19);
    dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v25->_displayModeCompletionTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v25->super._queue);
    if (v25->_displayModeCompletionTimer)
    {
      displayModeCompletionTimer = v25->_displayModeCompletionTimer;
      handler = MEMORY[0x1E69E9820];
      v12 = -1073741824;
      v13 = 0;
      v14 = __67__CBAODModule_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
      v15 = &unk_1E867BF80;
      v16 = v25;
      v17 = v22;
      v18 = v23;
      dispatch_source_set_event_handler(displayModeCompletionTimer, &handler);
      v7 = v25->_displayModeCompletionTimer;
      v6 = dispatch_time(0, v19);
      dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  dispatch_activate(v25->_displayModeCompletionTimer);
  *MEMORY[0x1E69E9840];
}

uint64_t __67__CBAODModule_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v3 = *(*(a1 + 32) + 16);
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
    __os_log_helper_16_2_2_8_64_8_0(v5, [CBDisplayStateUtilities stringForDisplayMode:*(a1 + 40)], COERCE__INT64(*(a1 + 48)));
    _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "Call %@ mode completion after %f seconds.", v5, 0x16u);
  }

  result = [*(a1 + 32) didCompleteTransitionToDisplayMode:*(a1 + 40)];
  *MEMORY[0x1E69E9840];
  return result;
}

@end