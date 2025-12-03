@interface CBAODModule
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)copyAndHandleEventWithTransitionLength:(float)length forceUpdate:(BOOL)update;
- (BOOL)copyAndHandleEventWithTransitionParameters:(id *)parameters;
- (BOOL)handleAABSensorOverridePropertyHandler:(id)handler;
- (BOOL)handleALSEvent:(id)event transitionParameters:(id *)parameters;
- (BOOL)handleDisplayModeUpdate:(id)update;
- (BOOL)handleDisplayModeUpdate:(int64_t)update transitionLength:(float)length;
- (BOOL)handleDisplayNitsOverridePropertyHandler:(id)handler;
- (BOOL)handleFlipBookStatePropertyHandler:(id)handler;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from transitionLength:(float)length forceUpdate:(BOOL)update;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from transitionParameters:(id *)parameters;
- (BOOL)performUpdate:(float)update forceUpdate:(BOOL)forceUpdate rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback;
- (BOOL)performUpdateWithTransitionParameters:(id *)parameters;
- (BOOL)performUpdateWithTransitionParameters:(id *)parameters rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client;
- (BOOL)setALSServiceProperty:(void *)property forKey:(__CFString *)key;
- (BOOL)setDisplayFactor:(float)factor transitionLength:(float)length;
- (BOOL)setModulesProperty:(id)property forKey:(id)key;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)updateAODState:(unint64_t)state transitionParameters:(id *)parameters brightnessFactor:(float)factor forDisplayMode:(int64_t)mode;
- (CBAODModule)initWithCBBrtControl:(id)control andContext:(id)context;
- (float)getFloatValueFrom:(id)from key:(id)key;
- (float)getFloatValueFrom:(id)from key:(id)key subkey:(id)subkey;
- (id)copyArrayFromPrefsForKey:(id)key;
- (id)copyModulesExtendedIdentifiers;
- (id)copyModulesIdentifiers;
- (id)copyModulesInfo:(BOOL)info;
- (id)copyModulesPropertyForKey:(id)key;
- (id)copyPropertyForKey:(id)key;
- (int64_t)getIntegerValueFrom:(id)from key:(id)key;
- (void)addModule:(id)module;
- (void)checkBootArgsConfiguration;
- (void)dealloc;
- (void)didCompleteTransitionToDisplayMode:(int64_t)mode;
- (void)enteringAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters;
- (void)enteringSuppressedAODRoutineWithTransitionParameters:(id *)parameters;
- (void)exitingAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)handleSystemDidWakeFromSleepPropertyHandler:(id)handler;
- (void)loadAODCurveFromDefaults;
- (void)offAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters;
- (void)onAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters;
- (void)onSuppresedAODRoutine;
- (void)prepareForEnterToAODRoutine;
- (void)releaseDisplayModeCompletionTimer;
- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)start;
- (void)updateModulesAODState:(unint64_t)state;
- (void)updateModulesAODState:(unint64_t)state context:(id)context;
- (void)updateModulesAODState:(unint64_t)state transitionParameters:(id *)parameters;
- (void)updateModulesAODState:(unint64_t)state transitionParameters:(id *)parameters context:(id)context;
@end

@implementation CBAODModule

- (void)releaseDisplayModeCompletionTimer
{
  selfCopy = self;
  v9 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  if (selfCopy->_displayModeCompletionTimer)
  {
    dispatch_source_cancel(selfCopy->_displayModeCompletionTimer);
    dispatch_release(selfCopy->_displayModeCompletionTimer);
    selfCopy->_displayModeCompletionTimer = 0;
  }
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (CBAODModule)initWithCBBrtControl:(id)control andContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  controlCopy = control;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = CBAODModule;
  selfCopy = -[CBModule initWithQueue:](&v22, sel_initWithQueue_, [context displayQueue]);
  if (selfCopy)
  {
    v4 = os_log_create("com.apple.CoreBrightness.AOD.CBAODModule", "default");
    selfCopy->super._logHandle = v4;
    if (![+[CBAODState isAODSupported] sharedInstance]
    {
LABEL_25:
      MEMORY[0x1E69E5920](selfCopy);
      v27 = 0;
      goto LABEL_26;
    }

    selfCopy->_brtCtl = controlCopy;
    MEMORY[0x1E69E5928](selfCopy->_brtCtl);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy->_modules = v5;
    v18 = [CBAODThresholdModule alloc];
    v6 = -[CBAODThresholdModule initWithQueue:](v18, "initWithQueue:", [contextCopy displayQueue]);
    selfCopy->_thresholdModule = v6;
    v7 = [CBAODTransitionController alloc];
    v8 = [(CBAODTransitionController *)v7 initWithContext:contextCopy andThresholdModule:selfCopy->_thresholdModule];
    selfCopy->_transitionController = v8;
    if (!selfCopy->_transitionController)
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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
    selfCopy->_alsServiceClients = v9;
    selfCopy->_ABStateBackup = 1;
    selfCopy->_displayBrightnessBackup = 2.0;
    selfCopy->_ABLuxFilterBackup = 0;
    selfCopy->_aabSensorOverrideFilter = 0;
    selfCopy->_backupState = 0;
    selfCopy->_currentDisplayMode = 5;
    selfCopy->_suspendFeatureUpdates = 0;
    selfCopy->_displayModeCompletionTimer = 0;
    selfCopy->_aodEnabled = 1;
    selfCopy->_flipBookEnabled = 0;
    selfCopy->_dominoModeEnabled = 0;
    [(CBAODModule *)selfCopy checkBootArgsConfiguration];
    if (selfCopy->super._logHandle)
    {
      v13 = selfCopy->super._logHandle;
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
      if (selfCopy->_aodEnabled)
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

  v27 = selfCopy;
LABEL_26:
  *MEMORY[0x1E69E9840];
  return v27;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(CBAODModule *)self releaseDisplayModeCompletionTimer];
  MEMORY[0x1E69E5920](selfCopy->_modules);
  MEMORY[0x1E69E5920](selfCopy->_brtCtl);
  MEMORY[0x1E69E5920](selfCopy->_transitionController);
  MEMORY[0x1E69E5920](selfCopy->_currentALSEvent);
  MEMORY[0x1E69E5920](selfCopy->_alsServiceClients);
  v2 = MEMORY[0x1E69E5920](selfCopy->_backupState).n128_u64[0];
  if (selfCopy->_aabSensorOverrideFilter)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_aabSensorOverrideFilter).n128_u64[0];
    selfCopy->_aabSensorOverrideFilter = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBAODModule;
  [(CBModule *)&v3 dealloc];
}

- (void)checkBootArgsConfiguration
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7[1] = a2;
  bzero(__s1, 0x400uLL);
  v7[0] = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, v7, 0, 0))
  {
    v6 = strstr(__s1, "cb_enable_aod");
    if (v6)
    {
      v2 = strtol(v6 + 14, 0, 0) != 0;
      selfCopy->_aodEnabled = v2;
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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
        if (selfCopy->_aodEnabled)
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

- (id)copyPropertyForKey:(id)key
{
  if ([key isEqualToString:@"AODDisplayNits"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController currentDisplayNits];
    return [v7 initWithFloat:?];
  }

  else if ([key isEqualToString:@"AODBrightnessState"])
  {
    return [(CBAODTransitionController *)self->_transitionController copyCurrentDisplayState];
  }

  else if ([key isEqualToString:@"AODDisplayNitsCap"])
  {
    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    [+[CBAODState sharedInstance](CBAODState nitsCap];
    return [v6 initWithFloat:?];
  }

  else if ([key isEqualToString:@"AODDisplayNitsOverride"])
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController nitsOverride];
    return [v5 initWithFloat:?];
  }

  else if ([key isEqualToString:@"AODPCCStrength"])
  {
    v4 = objc_alloc(MEMORY[0x1E696AD98]);
    [(CBAODTransitionController *)self->_transitionController currentAAPFactor];
    return [v4 initWithFloat:?];
  }

  else
  {
    return [(CBAODThresholdModule *)self->_thresholdModule copyPropertyForKey:key];
  }
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  keyCopy = key;
  propertyCopy = property;
  if ([key isEqualToString:@"CPMSCurrentCap"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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
        if ([propertyCopy BOOLValue])
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

      if ([propertyCopy BOOLValue])
      {
        [(CBAODModule *)selfCopy performUpdate];
      }

      else
      {
        [(CBAODModule *)selfCopy performUpdate:0.0];
      }
    }
  }

  else if ([keyCopy isEqualToString:@"IndicatorUpdateRampAOD"])
  {
    queue = selfCopy->super._queue;
    block = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __53__CBAODModule_handleNotificationForKey_withProperty___block_invoke;
    v19 = &unk_1E867B480;
    v20 = selfCopy;
    dispatch_async(queue, &block);
  }

  else if ([keyCopy isEqualToString:@"IndicatorRampFinishedAOD"])
  {
    v6 = selfCopy->super._queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __53__CBAODModule_handleNotificationForKey_withProperty___block_invoke_2;
    v13 = &unk_1E867B480;
    v14 = selfCopy;
    dispatch_async(v6, &v9);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v61 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v51 = a2;
  propertyCopy = property;
  keyCopy = key;
  v48 = 0;
  if ([key isEqualToString:@"FlipBookState"])
  {
    v48 = [(CBAODModule *)selfCopy handleFlipBookStatePropertyHandler:propertyCopy];
  }

  else if ([keyCopy isEqualToString:@"DisplayBrightness"])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v60, keyCopy, propertyCopy);
      _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "DisplayBrightness = %@ property = %@", v60, 0x16u);
    }

    v48 = [(CBAODModule *)selfCopy performUpdate:0.0];
  }

  else if ([keyCopy isEqualToString:@"DisplayNitsKey"])
  {
    if (selfCopy->super._logHandle)
    {
      v26 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v59, keyCopy, propertyCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v45, v44, "DisplayNits = %@ property = %@", v59, 0x16u);
    }

    v48 = [(CBAODModule *)selfCopy performUpdate:0.0];
  }

  else if ([keyCopy isEqualToString:@"AODDisplayNitsOverride"])
  {
    [(CBAODModule *)selfCopy handleDisplayNitsOverridePropertyHandler:propertyCopy];
  }

  else if ([keyCopy isEqualToString:@"ForceLiveUpdates"])
  {
    if (selfCopy->super._logHandle)
    {
      v24 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v58, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v43, v42, "ForceLiveUpdates = %@ property = %@", v58, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBAODTransitionController setLiveUpdatesOverride:](selfCopy->_transitionController, "setLiveUpdatesOverride:", [propertyCopy BOOLValue]);
      -[CBAODTransitionController setLiveUpdates:](selfCopy->_transitionController, "setLiveUpdates:", [propertyCopy BOOLValue]);
    }
  }

  else if ([keyCopy isEqualToString:@"EnableDCPFlipBookUpdates"])
  {
    if (selfCopy->super._logHandle)
    {
      v22 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v57, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v41, v40, "EnableDCPFlipBookUpdates = %@ property = %@", v57, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CBAODTransitionController enableDCPFlipBookUpdates:](selfCopy->_transitionController, "enableDCPFlipBookUpdates:", [propertyCopy BOOLValue]);
    }
  }

  else if ([keyCopy isEqualToString:@"AABSensorOverride"])
  {
    if (selfCopy->super._logHandle)
    {
      v20 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v56, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v39, v38, "AABSensorOverride = %@ property = %@", v56, 0x16u);
    }

    [(CBAODModule *)selfCopy handleAABSensorOverridePropertyHandler:propertyCopy];
  }

  else if ([keyCopy isEqualToString:@"EnableAOD"])
  {
    if (selfCopy->super._logHandle)
    {
      v18 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v55, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v37, v36, "Enable AOD = %@ property = %@", v55, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_aodEnabled = [propertyCopy BOOLValue];
    }
  }

  else if ([keyCopy isEqualToString:@"AODEDRRampDurationPerStop"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transitionController = selfCopy->_transitionController;
      [propertyCopy floatValue];
      [(CBAODTransitionController *)transitionController setDurationOfEDRRamp:?];
    }
  }

  else if ([keyCopy isEqualToString:@"AODUpdateWithCopiedEvent"])
  {
    if (selfCopy->super._logHandle)
    {
      v15 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v54, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v35, v34, "%@ = %@", v54, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([propertyCopy BOOLValue])
    {
      [(CBAODModule *)selfCopy copyAndHandleEvent];
    }
  }

  else if ([keyCopy isEqualToString:@"ALSMedianHistorySize"])
  {
    if (selfCopy->super._logHandle)
    {
      v13 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_2_8_64_8_64(v53, keyCopy, propertyCopy);
      _os_log_impl(&dword_1DE8E5000, v33, v32, "%@ = %@", v53, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)selfCopy setALSServiceProperty:propertyCopy forKey:@"ALSMedianHistorySize"];
    }
  }

  else if ([keyCopy isEqualToString:@"CBSystemDidWakeFromSleep"])
  {
    [(CBAODModule *)selfCopy handleSystemDidWakeFromSleepPropertyHandler:propertyCopy];
  }

  else if ([keyCopy isEqual:{-[CBBrightnessProxy brightnessNotificationPowerOff](selfCopy->_brtCtl, "brightnessNotificationPowerOff")}])
  {
    if ([(CBAODTransitionController *)selfCopy->_transitionController displayON])
    {
      if (selfCopy->super._logHandle)
      {
        v11 = selfCopy->super._logHandle;
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

      [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:0];
      [(CBAODTransitionController *)selfCopy->_transitionController cancelTransition];
    }
  }

  else if ([keyCopy isEqualToString:@"DominoStateUpdate"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_dominoModeEnabled = [propertyCopy BOOLValue];
    }
  }

  v4 = [(CBAODThresholdModule *)selfCopy->_thresholdModule setProperty:propertyCopy forKey:keyCopy];
  v48 = v48 || v4;
  v5 = +[CBAODState sharedInstance];
  v6 = [(CBAODState *)v5 setProperty:propertyCopy forKey:keyCopy];
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
    bOOLValue = [v7 BOOLValue];
    v3 = 3;
    if ((bOOLValue & 1) == 0)
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

- (id)copyModulesPropertyForKey:(id)key
{
  selfCopy = self;
  v21 = a2;
  keyCopy = key;
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
  keyCopy2 = key;
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

- (BOOL)setModulesProperty:(id)property forKey:(id)key
{
  selfCopy = self;
  v13 = a2;
  propertyCopy = property;
  keyCopy = key;
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

- (void)addModule:(id)module
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
    __os_log_helper_16_2_1_8_64(v8, module);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Adding module to AOD modules %@", v8, 0xCu);
  }

  [(NSMutableArray *)self->_modules addObject:module];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_transitionController)
  {
    v5 = [module copyPropertyForKey:@"IndicatorModule"];
    [(CBAODTransitionController *)self->_transitionController setIndicator:v5];
    MEMORY[0x1E69E5920](v5);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleFlipBookStatePropertyHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [handler integerValue];
    if (![+[CBAODState isFlipbookSupported]&& integerValue <= 1 sharedInstance]
    {
      logHandle = self->super._logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_1_8_66(v21, [CBDisplayStateUtilities stringForFlipbookState:integerValue]);
        _os_log_fault_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_FAULT, "[Flipbook state][FAULT] Received flipbook state request (%{public}@) on a device that doesn't support flipbook modes", v21, 0xCu);
      }
    }

    if (self->_currentDisplayMode == 3 || [+[CBAODState sharedInstance](CBAODState AODState]== 4 || [+[CBAODState sharedInstance](CBAODState AODState]== 3 || [+[CBAODState AODState]== 2 sharedInstance]
    {
      v11 = self->super._logHandle;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __os_log_helper_16_2_3_8_66_8_66_8_32(v20, +[CBDisplayStateUtilities stringForFlipbookState:](CBDisplayStateUtilities, "stringForFlipbookState:", integerValue), +[CBDisplayStateUtilities stringForDisplayMode:](CBDisplayStateUtilities, "stringForDisplayMode:", self->_currentDisplayMode), [+[CBAODState AODStateString] sharedInstance];
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
      __os_log_helper_16_2_1_8_66(v19, [CBDisplayStateUtilities stringForFlipbookState:integerValue]);
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "[Flipbook state] %{public}@", v19, 0xCu);
    }

    if (integerValue)
    {
      switch(integerValue)
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
            __os_log_helper_16_0_1_8_0(v18, integerValue);
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

- (BOOL)handleDisplayNitsOverridePropertyHandler:(id)handler
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
    __os_log_helper_16_2_1_8_64(v15, handler);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "CBAODDisplayNitsOverride = %@", v15, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transitionController = self->_transitionController;
    [handler floatValue];
    [(CBAODTransitionController *)transitionController setNitsOverride:?];
    v12 = [(CBAODModule *)self performUpdate:0.0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [handler objectForKey:@"AODDisplayNitsOverrideSubKey"];
      v10 = [handler objectForKey:@"AODDisplayNitsOverrideFadePeriodSubKey"];
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

- (BOOL)handleAABSensorOverridePropertyHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  intValue = 0;
  v10 = -1.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handler floatValue];
    v10 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [handler objectForKey:@"AABSensorOverrideValue"];
      v8 = [handler objectForKey:@"AABSensorOverrideOrientation"];
      if (v9)
      {
        [v9 floatValue];
        v10 = v4;
      }

      if (v8)
      {
        intValue = [v8 intValue];
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
    __os_log_helper_16_0_2_8_0_4_0(v14, COERCE__INT64(v10), intValue);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "override ALS samples with value = %f, with orientation = %d", v14, 0x12u);
  }

  if (self->_aabSensorOverrideFilter)
  {
    MEMORY[0x1E69E5920](self->_aabSensorOverrideFilter);
    self->_aabSensorOverrideFilter = 0;
  }

  if (v10 >= 0.0)
  {
    self->_aabSensorOverrideFilter = [[CBSensorOverrideFilter alloc] initWithData:handler];
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)handleSystemDidWakeFromSleepPropertyHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v37[2] = a2;
  v37[1] = handler;
  strcpy(__s2, "aop_threshold_als");
  v37[0] = 128;
  if (!sysctlbyname("kern.wakereason", __s1, v37, 0, 0))
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
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
      if (selfCopy->super._logHandle)
      {
        v18 = selfCopy->super._logHandle;
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
        currentALSEvent = selfCopy->_currentALSEvent;
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

      v30 = [(CBAODModule *)selfCopy copyModulesPropertyForKey:@"CBAmbientLightTelemetry"];
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:__s1];
      v11 = objc_alloc(MEMORY[0x1E696AD98]);
      v12 = selfCopy->_currentALSEvent;
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
      [(CBAODThresholdModule *)selfCopy->_thresholdModule dimLuxThreshold];
      v26 = [v6 initWithFloat:?];
      v9 = objc_alloc(*(v7 + 3480));
      [*(&selfCopy->super.super.isa + v8[58]) brightenLuxThreshold];
      v25 = [v9 initWithFloat:?];
      v4 = objc_alloc(MEMORY[0x1E695DF90]);
      v10 = &v5;
      v24 = [v4 initWithObjectsAndKeys:{v29, @"WakeReason", v28, @"Lux", v26, @"DimThreshold", v25, @"BrightenThreshold", 0}];
      if (v30)
      {
        [v24 setObject:v30 forKey:@"ALSSamplesBeforeWake"];
      }

      [(CBAODModule *)selfCopy sendNotificationForKey:@"AODWakeFromALSThreshold" andValue:v24];
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
    [(CBAODModule *)selfCopy copyAndHandleEvent];
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

- (BOOL)performUpdate:(float)update forceUpdate:(BOOL)forceUpdate rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback
{
  selfCopy = self;
  v13 = a2;
  updateCopy = update;
  forceUpdateCopy = forceUpdate;
  callbackCopy = callback;
  canceledCallbackCopy = canceledCallback;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = forceUpdateCopy;
  HIBYTE(__b[0]) = updateCopy >= 0.0;
  *&__b[1] = updateCopy;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)selfCopy performUpdateWithTransitionParameters:__dst rampDoneCallback:callbackCopy rampCanceledCallback:canceledCallbackCopy];
}

- (BOOL)performUpdateWithTransitionParameters:(id *)parameters
{
  v6[7] = self;
  v6[6] = a2;
  v6[5] = parameters;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CBAODModule_performUpdateWithTransitionParameters___block_invoke;
  v6[3] = &unk_1E867B480;
  v6[4] = self;
  memcpy(__dst, parameters, sizeof(__dst));
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

- (BOOL)performUpdateWithTransitionParameters:(id *)parameters rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback
{
  selfCopy = self;
  v20 = a2;
  parametersCopy = parameters;
  callbackCopy = callback;
  canceledCallbackCopy = canceledCallback;
  v16 = 1;
  queue = self->super._queue;
  v7 = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __91__CBAODModule_performUpdateWithTransitionParameters_rampDoneCallback_rampCanceledCallback___block_invoke;
  v11 = &unk_1E867BEE0;
  selfCopy2 = self;
  memcpy(v15, parameters, sizeof(v15));
  v13 = callbackCopy;
  v14 = canceledCallbackCopy;
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

- (BOOL)handleDisplayModeUpdate:(id)update
{
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [update objectForKey:@"Value"];
    v7 = [update objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v8 intValue];
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
      return [(CBAODModule *)self handleDisplayModeUpdate:intValue transitionLength:v3];
    }
  }

  return v9;
}

- (BOOL)handleDisplayModeUpdate:(int64_t)update transitionLength:(float)length
{
  v64 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v59 = a2;
  updateCopy = update;
  lengthCopy = length;
  v56 = 0;
  context = objc_autoreleasePoolPush();
  if (!selfCopy->_aodEnabled)
  {
    goto LABEL_68;
  }

  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = 1;
  HIBYTE(__b[0]) = 1;
  *&__b[1] = lengthCopy;
  if ([+[CBAODState isDCPBasedAODSupported]&& selfCopy->_flipBookEnabled sharedInstance]
  {
    LOBYTE(__b[12]) = 1;
  }

  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
    __os_log_helper_16_2_3_8_66_8_66_8_0(v63, [CBDisplayStateUtilities stringForDisplayMode:selfCopy->_currentDisplayMode], [CBDisplayStateUtilities stringForDisplayMode:updateCopy], COERCE__INT64(lengthCopy));
    _os_log_impl(&dword_1DE8E5000, v54, v53, "[Display Mode] %{public}@ -> %{public}@ in %f seconds", v63, 0x20u);
  }

  [(CBAODTransitionController *)selfCopy->_transitionController cancelTransition];
  [(CBAODModule *)selfCopy releaseDisplayModeCompletionTimer];
  if (!updateCopy)
  {
    if (selfCopy->_currentDisplayMode == 1 || selfCopy->_currentDisplayMode == 2)
    {
      memcpy(v33, __b, sizeof(v33));
      [(CBAODModule *)selfCopy updateAODState:0 transitionParameters:v33 brightnessFactor:0.0 forDisplayMode:?];
      v56 = 1;
      goto LABEL_68;
    }

    goto LABEL_45;
  }

  if (updateCopy != 1)
  {
    if (updateCopy != 2)
    {
      if (updateCopy == 3)
      {
        [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:1];
        if (selfCopy->_currentDisplayMode == 2)
        {
          if (!selfCopy->_flipBookEnabled)
          {
            BYTE2(__b[0]) = 1;
          }

          LOBYTE(__b[4]) = 1;
          __b[5] = 0;
          memcpy(__dst, __b, 0x34uLL);
          LODWORD(v5) = 1.0;
          [(CBAODModule *)selfCopy updateAODState:0 transitionParameters:__dst brightnessFactor:3 forDisplayMode:v5];
          v56 = 1;
        }

        else if (selfCopy->_currentDisplayMode == 1)
        {
          memcpy(v51, __b, sizeof(v51));
          LODWORD(v6) = -1.0;
          [(CBAODModule *)selfCopy updateAODState:0 transitionParameters:v51 brightnessFactor:3 forDisplayMode:v6];
          v56 = 1;
        }
      }

      else if (updateCopy == 4)
      {
        [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:1];
        if (selfCopy->_currentDisplayMode == 1 || selfCopy->_currentDisplayMode == 2)
        {
          memcpy(v32, __b, sizeof(v32));
          LODWORD(v14) = 1028443341;
          [(CBAODModule *)selfCopy updateAODState:0 transitionParameters:v32 brightnessFactor:4 forDisplayMode:v14];
          currentDisplayMode = selfCopy->_currentDisplayMode;
          if (currentDisplayMode == 1)
          {
            oslog = selfCopy->super._logHandle;
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
            v28 = selfCopy->super._logHandle;
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
            v25 = selfCopy->super._logHandle;
            if (os_log_type_enabled(selfCopy->super._logHandle, OS_LOG_TYPE_FAULT))
            {
              __os_log_helper_16_2_1_8_66(v62, [CBDisplayStateUtilities stringForDisplayMode:selfCopy->_currentDisplayMode]);
              _os_log_fault_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_FAULT, "[Display Mode] Unexpected display mode transition: %{public}@ -> Active Dimmed", v62, 0xCu);
            }
          }

          v56 = 1;
        }
      }

      else
      {
        v24 = selfCopy->super._logHandle;
        if (os_log_type_enabled(selfCopy->super._logHandle, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_2_2_8_66_4_0(v61, [CBDisplayStateUtilities stringForDisplayMode:selfCopy->_currentDisplayMode], updateCopy);
          _os_log_fault_impl(&dword_1DE8E5000, v24, OS_LOG_TYPE_FAULT, "[Display Mode] Transition to unknown display mode: %{public}@ -> display mode %d", v61, 0x12u);
        }

        v56 = 0;
      }

      goto LABEL_68;
    }

    if (selfCopy->_currentDisplayMode == 3 || selfCopy->_currentDisplayMode == 4 || !selfCopy->_currentDisplayMode)
    {
      memcpy(v46, __b, sizeof(v46));
      [(CBAODModule *)selfCopy updateAODState:5 transitionParameters:v46 brightnessFactor:2 forDisplayMode:0.0];
      v56 = 1;
      goto LABEL_68;
    }

    if (selfCopy->_currentDisplayMode == 1)
    {
      LODWORD(v4) = 0;
      [(CBAODModule *)selfCopy setDisplayFactor:v4 transitionLength:?];
      *&v12 = lengthCopy;
      v40 = MEMORY[0x1E69E9820];
      v41 = -1073741824;
      v42 = 0;
      v43 = __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke;
      v44 = &unk_1E867B480;
      v45 = selfCopy;
      v34 = MEMORY[0x1E69E9820];
      v35 = -1073741824;
      v36 = 0;
      v37 = __56__CBAODModule_handleDisplayModeUpdate_transitionLength___block_invoke_197;
      v38 = &unk_1E867B480;
      v39 = selfCopy;
      [CBAODModule performUpdate:selfCopy forceUpdate:"performUpdate:forceUpdate:rampDoneCallback:rampCanceledCallback:" rampDoneCallback:1 rampCanceledCallback:v12];
      v13 = lengthCopy + 0.05;
      *&v13 = v13;
      [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:2 forDisplayMode:v13];
      v56 = 1;
      goto LABEL_68;
    }

LABEL_45:
    [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:0];
    goto LABEL_68;
  }

  [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:1];
  if (selfCopy->_currentDisplayMode == 3)
  {
    memcpy(v50, __b, sizeof(v50));
    LODWORD(v8) = -1.0;
    [(CBAODModule *)selfCopy updateAODState:1 transitionParameters:v50 brightnessFactor:v8 forDisplayMode:?];
    v56 = 1;
  }

  else if (selfCopy->_currentDisplayMode)
  {
    if (selfCopy->_currentDisplayMode == 4)
    {
      memcpy(v48, __b, sizeof(v48));
      LODWORD(v10) = 1.0;
      [(CBAODModule *)selfCopy updateAODState:1 transitionParameters:v48 brightnessFactor:v10 forDisplayMode:?];
      v56 = 1;
    }

    else if (selfCopy->_currentDisplayMode == 2)
    {
      if (!selfCopy->_flipBookEnabled)
      {
        BYTE2(__b[0]) = 1;
      }

      LODWORD(v7) = 1.0;
      [(CBAODModule *)selfCopy setDisplayFactor:v7 transitionLength:?];
      LOBYTE(__b[4]) = 1;
      __b[5] = 0;
      memcpy(v47, __b, sizeof(v47));
      [(CBAODModule *)selfCopy copyAndHandleEventWithTransitionParameters:v47];
      v11 = lengthCopy + 0.05;
      *&v11 = v11;
      [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:1 forDisplayMode:v11];
      v56 = 1;
    }
  }

  else
  {
    if (!selfCopy->_flipBookEnabled)
    {
      BYTE2(__b[0]) = 1;
    }

    LOBYTE(__b[4]) = 1;
    __b[5] = 0;
    memcpy(v49, __b, sizeof(v49));
    LODWORD(v9) = 1.0;
    [(CBAODModule *)selfCopy updateAODState:1 transitionParameters:v49 brightnessFactor:v9 forDisplayMode:?];
    v56 = 1;
  }

LABEL_68:
  objc_autoreleasePoolPop(context);
  selfCopy->_currentDisplayMode = updateCopy;
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

- (BOOL)setDisplayFactor:(float)factor transitionLength:(float)length
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  factorCopy = factor;
  lengthCopy = length;
  v15 = 0;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
    __os_log_helper_16_0_2_8_0_8_0(v20, COERCE__INT64(factorCopy), COERCE__INT64(lengthCopy));
    _os_log_impl(&dword_1DE8E5000, v14, v13, "Set brightness factor = %f fade = %f", v20, 0x16u);
  }

  *&v4 = lengthCopy;
  -[CBAODModule setModulesProperty:forKey:](selfCopy, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v4], @"DisplayBrightnessFadePeriod");
  *&v5 = factorCopy;
  v15 = -[CBAODModule setModulesProperty:forKey:](selfCopy, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v5], @"DisplayBrightnessFactorWithFade");
  *&v6 = factorCopy;
  if (factorCopy >= 1.0)
  {
    memset(__b, 0, sizeof(__b));
    __b[1] = 1;
    memcpy(__dst, __b, sizeof(__dst));
    [(CBAODModule *)selfCopy copyAndHandleEventWithTransitionParameters:__dst];
  }

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate", v6];
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)updateAODState:(unint64_t)state transitionParameters:(id *)parameters brightnessFactor:(float)factor forDisplayMode:(int64_t)mode
{
  v35 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v32 = a2;
  stateCopy = state;
  parametersCopy = parameters;
  factorCopy = factor;
  modeCopy = mode;
  v27 = 0;
  context = objc_autoreleasePoolPush();
  if (selfCopy->_aodEnabled)
  {
    if ([+[CBAODState AODStateExternal]!= stateCopy sharedInstance]
    {
      [+[CBAODState sharedInstance](CBAODState setAODStateExternal:"setAODStateExternal:", stateCopy];
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
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
        if (stateCopy)
        {
          v6 = "Entering AOD";
        }

        else
        {
          v6 = "Exiting AOD";
        }

        __os_log_helper_16_2_4_8_0_8_32_8_0_8_0(v34, stateCopy, v6, COERCE__INT64(parameters->var4), COERCE__INT64(factorCopy));
        _os_log_impl(&dword_1DE8E5000, v26, v25, "AOD State update (%lu), %s, transitionTime: %f, factor = %f", v34, 0x2Au);
      }

      if ([+[CBAODState AODStateExternal]== 1 sharedInstance]
      {
        [(CBAODModule *)selfCopy prepareForEnterToAODRoutine];
        if (factorCopy >= 0.0)
        {
          *&v7 = factorCopy;
          [(CBAODModule *)selfCopy setDisplayFactor:v7 transitionLength:0.0];
        }

        memcpy(__dst, parameters, 0x34uLL);
        [(CBAODModule *)selfCopy enteringAODRoutineForDisplayMode:modeCopy transitionParameters:__dst];
      }

      else if ([+[CBAODState AODStateExternal] sharedInstance]
      {
        if ([+[CBAODState AODStateExternal]== 5 sharedInstance]
        {
          [(CBAODModule *)selfCopy prepareForEnterToAODRoutine];
          if (factorCopy >= 0.0)
          {
            *&v9 = factorCopy;
            [(CBAODModule *)selfCopy setDisplayFactor:v9 transitionLength:0.0];
          }

          memcpy(v22, parameters, sizeof(v22));
          [(CBAODModule *)selfCopy enteringSuppressedAODRoutineWithTransitionParameters:v22];
        }
      }

      else
      {
        if (factorCopy >= 0.0)
        {
          *&v8 = factorCopy;
          [(CBAODModule *)selfCopy setDisplayFactor:v8 transitionLength:0.0];
        }

        memcpy(v23, parameters, sizeof(v23));
        [(CBAODModule *)selfCopy exitingAODRoutineForDisplayMode:modeCopy transitionParameters:v23];
      }

      v27 = 1;
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v14 = selfCopy->super._logHandle;
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
  selfCopy = self;
  v27 = a2;
  v21 = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
  [(CBAODModule *)selfCopy setALSServiceProperty:*MEMORY[0x1E695E4D0] forKey:@"AODALSMode"];
  [(CBAODModule *)selfCopy loadAODCurveFromDefaults];
  [(CBAODModule *)selfCopy updateModulesAODState:2];
  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E20 forKey:@"DisplayBrightnessFadePeriodOverride"];
  v23 = [(CBAODModule *)selfCopy copyModulesInfo:1];
  if (selfCopy->super._logHandle)
  {
    v16 = selfCopy->super._logHandle;
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

  v2 = [(CBAODModule *)selfCopy getIntegerValueFrom:v23 key:@"AutoBrightnessLuxFilter"];
  selfCopy->_ABLuxFilterBackup = v2;
  if (selfCopy->super._logHandle)
  {
    v14 = selfCopy->super._logHandle;
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
    __os_log_helper_16_0_1_8_0(v31, selfCopy->_ABLuxFilterBackup);
    _os_log_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEFAULT, "ALS lux filter backup %ld", v31, 0xCu);
  }

  [(CBAODModule *)selfCopy getFloatValueFrom:v23 key:@"PendingDisplayNits"];
  selfCopy->_displayBrightnessBackup = v3;
  if (selfCopy->super._logHandle)
  {
    v12 = selfCopy->super._logHandle;
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
    __os_log_helper_16_0_1_8_0(v30, COERCE__INT64(selfCopy->_displayBrightnessBackup));
    _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "Display brightness backup %f Nits", v30, 0xCu);
  }

  [(CBAODModule *)selfCopy setModulesProperty:MEMORY[0x1E695E110] forKey:@"CEEnable"];
  [v23 objectForKey:@"DisplayBrightnessAuto"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_msgSend(v23 objectForKey:{@"DisplayBrightnessAuto", "BOOLValue"}];
    selfCopy->_ABStateBackup = v4;
    if (!selfCopy->_ABStateBackup)
    {
      [(CBAODModule *)selfCopy getFloatValueFrom:v23 key:@"PendingDisplayNits"];
      v22 = v5;
      if (selfCopy->super._logHandle)
      {
        v10 = selfCopy->super._logHandle;
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

  if (selfCopy->_backupState)
  {
    MEMORY[0x1E69E5920](selfCopy->_backupState);
    selfCopy->_backupState = 0;
  }

  v8 = MEMORY[0x1E69E5928](v23);
  selfCopy->_backupState = v8;
  -[CBAODState setProperty:forKey:](+[CBAODState sharedInstance](CBAODState, "sharedInstance"), "setProperty:forKey:", [v23 objectForKey:?], @"AOTCurve");
  [(CBAODTransitionController *)selfCopy->_transitionController setInitialState:v23];
  MEMORY[0x1E69E5920](v23);
  objc_autoreleasePoolPop(v21);
  *MEMORY[0x1E69E9840];
}

- (void)enteringAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters
{
  v64 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v61 = a2;
  modeCopy = mode;
  parametersCopy = parameters;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E20 forKey:@"DynamicSliderEnable"];
  copyContext = [(CBAODTransitionController *)selfCopy->_transitionController copyContext];
  memcpy(__dst, parameters, sizeof(__dst));
  [(CBAODModule *)selfCopy updateModulesAODState:3 transitionParameters:__dst context:copyContext];
  *&v4 = MEMORY[0x1E69E5920](copyContext).n128_u64[0];
  if (!selfCopy->_ABStateBackup)
  {
    if (selfCopy->super._logHandle)
    {
      v18 = selfCopy->super._logHandle;
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

    [(CBAODModule *)selfCopy setModulesProperty:MEMORY[0x1E695E118] forKey:@"DisplayBrightnessAuto"];
  }

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate", v4];
  v50 = [(CBAODModule *)selfCopy copyModulesPropertyForKey:?];
  [+[CBAODState sharedInstance](CBAODState setProperty:"setProperty:forKey:" forKey:v50, @"AODDarkerCurve"];
  v49 = [(CBAODModule *)selfCopy copyModulesInfo:0, MEMORY[0x1E69E5920](v50).n128_f64[0]];
  if (selfCopy->super._logHandle)
  {
    v14 = selfCopy->super._logHandle;
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
    v12 = selfCopy;
    [objc_msgSend(v49 objectForKey:{@"TrustedLux", "floatValue"}];
    [(CBAODModule *)v12 reevaluatePThresholdsForLux:?];
  }

  v10 = selfCopy;
  v9 = MEMORY[0x1E696AD98];
  [+[CBAODState sharedInstance](CBAODState thresholdPCCLuxDelta];
  -[CBAODModule setModulesProperty:forKey:](v10, "setModulesProperty:forKey:", [v9 numberWithFloat:?], @"AAPLuxDelta");
  transitionController = selfCopy->_transitionController;
  v38 = MEMORY[0x1E69E9820];
  v39 = -1073741824;
  v40 = 0;
  v41 = __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke;
  v42 = &unk_1E867BF08;
  v43 = selfCopy;
  v44 = modeCopy;
  memcpy(v45, parameters, sizeof(v45));
  v30 = MEMORY[0x1E69E9820];
  v31 = -1073741824;
  v32 = 0;
  v33 = __69__CBAODModule_enteringAODRoutineForDisplayMode_transitionParameters___block_invoke_245;
  v34 = &unk_1E867BF08;
  v35 = selfCopy;
  v36 = modeCopy;
  memcpy(v37, parameters, sizeof(v37));
  memcpy(v29, parameters, sizeof(v29));
  if (![(CBAODTransitionController *)transitionController startTransition:v49 transitionParameters:v29 rampDoneCallback:&v38 rampCanceledCallback:&v30])
  {
    if (selfCopy->super._logHandle)
    {
      v8 = selfCopy->super._logHandle;
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

    memcpy(v25, parameters, sizeof(v25));
    [(CBAODModule *)selfCopy onAODRoutineForDisplayMode:modeCopy transitionParameters:v25];
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

- (void)onAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters
{
  selfCopy = self;
  v16 = a2;
  modeCopy = mode;
  parametersCopy = parameters;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E20 forKey:@"AutoBrightnessLuxFilter"];
  [(CBAODModule *)selfCopy updateModulesAODState:1];
  if (parameters->var15)
  {
    v4 = parameters->var4 + 0.05;
    *&v4 = v4;
    [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:modeCopy forDisplayMode:v4];
  }

  else
  {
    [(CBAODModule *)selfCopy didCompleteTransitionToDisplayMode:modeCopy];
  }

  [(CBAODModule *)selfCopy copyAndHandleEvent];
  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(context);
}

- (void)enteringSuppressedAODRoutineWithTransitionParameters:(id *)parameters
{
  v49 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v46 = a2;
  parametersCopy = parameters;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E20 forKey:@"DynamicSliderEnable"];
  memcpy(__dst, parameters, sizeof(__dst));
  [(CBAODModule *)selfCopy updateModulesAODState:3 transitionParameters:__dst];
  if (!selfCopy->_ABStateBackup)
  {
    if (selfCopy->super._logHandle)
    {
      v16 = selfCopy->super._logHandle;
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

    [(CBAODModule *)selfCopy setModulesProperty:MEMORY[0x1E695E118] forKey:@"DisplayBrightnessAuto"];
  }

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E08 forKey:@"ForceModuleUpdate"];
  v37 = [(CBAODModule *)selfCopy copyModulesInfo:0];
  if (selfCopy->super._logHandle)
  {
    v12 = selfCopy->super._logHandle;
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
    v10 = selfCopy;
    [objc_msgSend(v37 objectForKey:{@"TrustedLux", "floatValue"}];
    [(CBAODModule *)v10 reevaluatePThresholdsForLux:?];
  }

  v8 = selfCopy;
  v7 = MEMORY[0x1E696AD98];
  [+[CBAODState sharedInstance](CBAODState thresholdPCCLuxDelta];
  -[CBAODModule setModulesProperty:forKey:](v8, "setModulesProperty:forKey:", [v7 numberWithFloat:?], @"AAPLuxDelta");
  transitionController = selfCopy->_transitionController;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke;
  v33[3] = &unk_1E867B480;
  v33[4] = selfCopy;
  v27 = MEMORY[0x1E69E9820];
  v28 = -1073741824;
  v29 = 0;
  v30 = __68__CBAODModule_enteringSuppressedAODRoutineWithTransitionParameters___block_invoke_246;
  v31 = &unk_1E867B480;
  v32 = selfCopy;
  memcpy(v26, parameters, sizeof(v26));
  if (![(CBAODTransitionController *)transitionController startTransition:v37 transitionParameters:v26 rampDoneCallback:v33 rampCanceledCallback:&v27])
  {
    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
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

    [(CBAODModule *)selfCopy onSuppresedAODRoutine];
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
  selfCopy = self;
  v11 = a2;
  v7 = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E20 forKey:@"AutoBrightnessLuxFilter"];
  [(CBAODModule *)selfCopy updateModulesAODState:1];
  [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:0];
  if (selfCopy->_flipBookEnabled)
  {
    [(CBAODModule *)selfCopy didCompleteTransitionToDisplayMode:2];
  }

  else
  {
    LODWORD(v2) = 1028443341;
    [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:2 forDisplayMode:v2];
  }

  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(v7);
}

- (void)exitingAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters
{
  v68 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v64 = a2;
  modeCopy = mode;
  parametersCopy = parameters;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E08 forKey:@"DynamicSliderEnable"];
  copyContext = [(CBAODTransitionController *)selfCopy->_transitionController copyContext];
  memcpy(__dst, parameters, sizeof(__dst));
  [(CBAODModule *)selfCopy updateModulesAODState:4 transitionParameters:__dst context:copyContext];
  v4 = MEMORY[0x1E69E5920](copyContext).n128_u64[0];
  if (!selfCopy->_ABStateBackup)
  {
    if (selfCopy->super._logHandle)
    {
      v19 = selfCopy->super._logHandle;
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

    [(CBAODModule *)selfCopy setModulesProperty:MEMORY[0x1E695E110] forKey:@"DisplayBrightnessAuto"];
    if (!selfCopy->_dominoModeEnabled)
    {
      *&v4 = selfCopy->_displayBrightnessBackup;
      -[CBAODModule setModulesProperty:forKey:](selfCopy, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:*&v4], @"DisplayNitsKey");
    }
  }

  if (selfCopy->_backupState)
  {
    if (selfCopy->super._logHandle)
    {
      v15 = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_3_8_64_8_64_8_64(v67, [(NSDictionary *)selfCopy->_backupState objectForKey:@"ALSBrightenPdeltaFast"], [(NSDictionary *)selfCopy->_backupState objectForKey:@"ALSBrightenPdeltaSlow"], [(NSDictionary *)selfCopy->_backupState objectForKey:@"ALSDimPdeltaSlow"]);
      _os_log_impl(&dword_1DE8E5000, v53, v52, "AP thresholds: Recover P thresholds from backup: BrightenPdeltaFast = %@, BrightenPdeltaSlow = %@, DimPdeltaSlow = %@", v67, 0x20u);
    }

    v51 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[NSDictionary objectForKey:](selfCopy->_backupState, "objectForKey:"), @"ALSBrightenPdeltaFast", -[NSDictionary objectForKey:](selfCopy->_backupState, "objectForKey:"), @"ALSBrightenPdeltaSlow", -[NSDictionary objectForKey:](selfCopy->_backupState, "objectForKey:"), @"ALSDimPdeltaSlow", 0}];
    [(CBAODModule *)selfCopy setModulesProperty:v51 forKey:@"ALSInternalSettings"];
    [(NSDictionary *)selfCopy->_backupState objectForKey:@"AAPLuxDelta"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)selfCopy setModulesProperty:[(NSDictionary *)selfCopy->_backupState objectForKey:?] forKey:@"AAPLuxDelta"];
    }

    [(NSDictionary *)selfCopy->_backupState objectForKey:@"CEEnable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBAODModule *)selfCopy setModulesProperty:[(NSDictionary *)selfCopy->_backupState objectForKey:?] forKey:@"CEEnable"];
    }

    v4 = MEMORY[0x1E69E5920](v51).n128_u64[0];
  }

  v5 = +[CBAODState sharedInstance];
  LODWORD(v6) = -1.0;
  [(CBAODState *)v5 setNitsCap:v6];
  v50 = [(CBAODModule *)selfCopy copyModulesInfo:0];
  if (selfCopy->super._logHandle)
  {
    v13 = selfCopy->super._logHandle;
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

  transitionController = selfCopy->_transitionController;
  v39 = MEMORY[0x1E69E9820];
  v40 = -1073741824;
  v41 = 0;
  v42 = __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke;
  v43 = &unk_1E867BF08;
  v44 = selfCopy;
  v45 = modeCopy;
  memcpy(v46, parameters, sizeof(v46));
  v31 = MEMORY[0x1E69E9820];
  v32 = -1073741824;
  v33 = 0;
  v34 = __68__CBAODModule_exitingAODRoutineForDisplayMode_transitionParameters___block_invoke_259;
  v35 = &unk_1E867BF08;
  v36 = selfCopy;
  v37 = modeCopy;
  memcpy(v38, parameters, sizeof(v38));
  memcpy(v30, parameters, sizeof(v30));
  if (![(CBAODTransitionController *)transitionController startTransition:v50 transitionParameters:v30 rampDoneCallback:&v39 rampCanceledCallback:&v31])
  {
    if (selfCopy->super._logHandle)
    {
      v10 = selfCopy->super._logHandle;
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

    memcpy(v26, parameters, sizeof(v26));
    [(CBAODModule *)selfCopy offAODRoutineForDisplayMode:modeCopy transitionParameters:v26];
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

- (void)offAODRoutineForDisplayMode:(int64_t)mode transitionParameters:(id *)parameters
{
  selfCopy = self;
  v19 = a2;
  modeCopy = mode;
  parametersCopy = parameters;
  context = objc_autoreleasePoolPush();
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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

  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C9808 forKey:@"ALSInternalSettings"];
  -[CBAODModule setModulesProperty:forKey:](selfCopy, "setModulesProperty:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:selfCopy->_ABLuxFilterBackup], @"AutoBrightnessLuxFilter");
  copyContext = [(CBAODTransitionController *)selfCopy->_transitionController copyContext];
  [(CBAODModule *)selfCopy updateModulesAODState:0 context:copyContext];
  *&v4 = MEMORY[0x1E69E5920](copyContext).n128_u64[0];
  [(CBAODModule *)selfCopy setModulesProperty:&unk_1F59C8E38 forKey:@"DisplayBrightnessFadePeriodOverride", v4];
  [(CBAODModule *)selfCopy setALSServiceProperty:*MEMORY[0x1E695E4C0] forKey:@"AODALSMode"];
  if (!modeCopy || modeCopy == 2)
  {
    [(CBAODTransitionController *)selfCopy->_transitionController setDisplayON:0];
  }

  if (parameters->var15)
  {
    v6 = parameters->var4 + 0.05;
    *&v6 = v6;
    [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:modeCopy forDisplayMode:v6];
  }

  else if (selfCopy->_flipBookEnabled || modeCopy)
  {
    [(CBAODModule *)selfCopy didCompleteTransitionToDisplayMode:modeCopy];
  }

  else
  {
    LODWORD(v5) = 1028443341;
    [(CBAODModule *)selfCopy scheduleDisplayModeCompletionTimerIn:0 forDisplayMode:v5];
  }

  [+[CBAODState sharedInstance](CBAODState releasePowerAssertion];
  objc_autoreleasePoolPop(context);
}

- (void)didCompleteTransitionToDisplayMode:(int64_t)mode
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  modeCopy = mode;
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:mode];
  [(CBAODModule *)selfCopy sendNotificationForKey:@"DisplayModeChangeComplete" andValue:v15];
  MEMORY[0x1E69E5920](v15);
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
    __os_log_helper_16_2_1_8_64(v19, [CBDisplayStateUtilities stringForDisplayMode:modeCopy]);
    _os_log_impl(&dword_1DE8E5000, v14, v13, "[Display Mode] didCompleteTransitionToDisplayMode %@", v19, 0xCu);
  }

  if (modeCopy == 2)
  {
    [(CBAODModule *)selfCopy setALSServiceProperty:&unk_1F59C8E50 forKey:@"ALSMedianHistorySize"];
  }

  else if (modeCopy == 1)
  {
    [(CBAODModule *)selfCopy setALSServiceProperty:&unk_1F59C8E68 forKey:@"ALSMedianHistorySize"];
  }

  else if (modeCopy == 3 && selfCopy->_flipBookEnabled)
  {
    if (selfCopy->super._logHandle)
    {
      v7 = selfCopy->super._logHandle;
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

    [(CBAODModule *)selfCopy setProperty:&unk_1F59C8E80 forKey:@"FlipBookState"];
    [(CBAODModule *)selfCopy setProperty:&unk_1F59C8E98 forKey:v3];
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyModulesInfo:(BOOL)info
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (info)
  {
    copyModulesExtendedIdentifiers = [(CBAODModule *)self copyModulesExtendedIdentifiers];
  }

  else
  {
    copyModulesExtendedIdentifiers = [(CBAODModule *)self copyModulesIdentifiers];
  }

  [copyModulesExtendedIdentifiers enumerateObjectsUsingBlock:?];
  MEMORY[0x1E69E5920](copyModulesExtendedIdentifiers);
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
  selfCopy = self;
  v4 = a2;
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  return [v2 initWithObjects:{@"DisplayBrightness", @"DisplayAAPFactor", @"TrustedLux", @"ColorRamp", kCBBrightnessCapToCA, 0}];
}

- (id)copyModulesExtendedIdentifiers
{
  selfCopy = self;
  v4 = a2;
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  return [v2 initWithObjects:{@"DisplayBrightness", @"PendingDisplayNits", @"DisplayPanelLuminanceMin", @"DisplayPanelLuminanceMax", @"DisplayBrightnessAuto", @"DisplayAAPFactor", @"CBAODMinNits", @"TrustedLux", @"DynamicSliderEnable", @"ALSInternalSettings", @"AOTCurve", @"ALSBrightenPdeltaSlow", @"ALSBrightenPdeltaFast", @"ALSDimPdeltaSlow", @"AAPLuxDelta", @"AutoBrightnessLuxFilter", @"ColorRamp", @"CEEnable", kCBBrightnessCapToCA, 0}];
}

- (void)updateModulesAODState:(unint64_t)state
{
  selfCopy = self;
  v6 = a2;
  stateCopy = state;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __b, sizeof(__dst));
  [(CBAODModule *)selfCopy updateModulesAODState:stateCopy transitionParameters:__dst];
}

- (void)updateModulesAODState:(unint64_t)state context:(id)context
{
  selfCopy = self;
  v8 = a2;
  stateCopy = state;
  contextCopy = context;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, __b, sizeof(__dst));
  [(CBAODModule *)selfCopy updateModulesAODState:stateCopy transitionParameters:__dst context:contextCopy];
}

- (void)updateModulesAODState:(unint64_t)state transitionParameters:(id *)parameters
{
  selfCopy = self;
  v9 = a2;
  stateCopy = state;
  parametersCopy = parameters;
  memcpy(__dst, parameters, sizeof(__dst));
  [(CBAODModule *)self updateModulesAODState:state transitionParameters:__dst context:0];
}

- (void)updateModulesAODState:(unint64_t)state transitionParameters:(id *)parameters context:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v21 = a2;
  stateCopy = state;
  parametersCopy = parameters;
  contextCopy = context;
  if ([+[CBAODState AODState]!= state sharedInstance]
  {
    [+[CBAODState sharedInstance](CBAODState setAODState:"setAODState:", stateCopy];
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
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

    modules = selfCopy->_modules;
    v9 = MEMORY[0x1E69E9820];
    v10 = -1073741824;
    v11 = 0;
    v12 = __66__CBAODModule_updateModulesAODState_transitionParameters_context___block_invoke;
    v13 = &unk_1E867BF30;
    memcpy(v15, parameters, sizeof(v15));
    v14 = contextCopy;
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

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)client
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (([(__IOHIDServiceClient *)client conformsToUsagePage:65280 usage:4]& 1) != 0)
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
      __os_log_helper_16_2_1_8_64(v12, client);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Received ALS service - save it! %@", v12, 0xCu);
    }

    if (([(NSMutableArray *)self->_alsServiceClients containsObject:client]& 1) == 0)
    {
      [(NSMutableArray *)self->_alsServiceClients addObject:client];
      if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
      {
        v5 = MEMORY[0x1E695E4C0];
        [(CBAODModule *)self setALSServiceProperty:*MEMORY[0x1E695E4C0] forKey:@"CBAODSendSamplesToDCP"];
        [(CBAODModule *)self setALSServiceProperty:*v5 forKey:@"AODALSMode"];
      }
    }

    v9 = 1;
  }

  v4 = (v9 & 1 | [(CBAODThresholdModule *)self->_thresholdModule addHIDServiceClient:client]) != 0;
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)client
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if (([(NSMutableArray *)self->_alsServiceClients containsObject:client]& 1) != 0)
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
      __os_log_helper_16_2_1_8_64(v11, client);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Remove ALS service! %@", v11, 0xCu);
    }

    [(NSMutableArray *)self->_alsServiceClients removeObject:client];
    v8 = 1;
  }

  v4 = (v8 & 1 | [(CBAODThresholdModule *)self->_thresholdModule removeHIDServiceClient:client]) != 0;
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from transitionLength:(float)length forceUpdate:(BOOL)update
{
  selfCopy = self;
  v13 = a2;
  eventCopy = event;
  fromCopy = from;
  lengthCopy = length;
  updateCopy = update;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = updateCopy;
  HIBYTE(__b[0]) = lengthCopy >= 0.0;
  *&__b[1] = lengthCopy;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)selfCopy handleHIDEvent:eventCopy from:fromCopy transitionParameters:__dst];
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)event from:(__IOHIDServiceClient *)from transitionParameters:(id *)parameters
{
  selfCopy = self;
  v12 = a2;
  eventCopy = event;
  fromCopy = from;
  parametersCopy = parameters;
  if ([+[CBAODState AODState]== 1 sharedInstance]
  {
    v8 = [CBHIDEvent newEvent:eventCopy andService:fromCopy];
    if (selfCopy->_aabSensorOverrideFilter)
    {
      [(CBSensorOverrideFilter *)selfCopy->_aabSensorOverrideFilter filterEvent:v8];
    }

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memcpy(__dst, parameters, sizeof(__dst));
        [(CBAODModule *)selfCopy handleALSEvent:v8 transitionParameters:__dst];
      }
    }

    MEMORY[0x1E69E5920](v8);
  }

  return 1;
}

- (BOOL)handleALSEvent:(id)event transitionParameters:(id *)parameters
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  eventCopy = event;
  parametersCopy = parameters;
  v13 = 0;
  if (event && (-[NSMutableArray containsObject:](selfCopy->_alsServiceClients, "containsObject:", [eventCopy service]) & 1) != 0)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v18, eventCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v12, v11, "Incoming event %@", v18, 0xCu);
    }

    v10 = 0;
    if (selfCopy->_currentALSEvent)
    {
      v10 = 1;
      MEMORY[0x1E69E5920](selfCopy->_currentALSEvent);
      selfCopy->_currentALSEvent = MEMORY[0x1E69E5928](eventCopy);
    }

    else
    {
      selfCopy->_currentALSEvent = MEMORY[0x1E69E5928](eventCopy);
      v10 = 1;
    }

    [(CBALSEvent *)selfCopy->_currentALSEvent illuminance];
    *&v4 = v4;
    [(CBAODModule *)selfCopy reevaluatePThresholdsForLux:v4];
    if (!parameters->var1 && ((v10 & 1) != 0 || parameters->var0))
    {
      memcpy(__dst, parameters, 0x34uLL);
      [(CBAODModule *)selfCopy performUpdateWithTransitionParameters:__dst];
    }

    v13 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)copyAndHandleEventWithTransitionLength:(float)length forceUpdate:(BOOL)update
{
  selfCopy = self;
  v9 = a2;
  lengthCopy = length;
  updateCopy = update;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = updateCopy;
  HIBYTE(__b[0]) = lengthCopy >= 0.0;
  *&__b[1] = lengthCopy;
  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODModule *)selfCopy copyAndHandleEventWithTransitionParameters:__dst];
}

- (BOOL)copyAndHandleEventWithTransitionParameters:(id *)parameters
{
  selfCopy = self;
  v39 = a2;
  parametersCopy = parameters;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
  alsServiceClients = selfCopy->_alsServiceClients;
  v21 = MEMORY[0x1E69E9820];
  v22 = -1073741824;
  v23 = 0;
  v24 = __58__CBAODModule_copyAndHandleEventWithTransitionParameters___block_invoke;
  v25 = &unk_1E867BF58;
  v26 = selfCopy;
  memcpy(v28, parameters, sizeof(v28));
  v27 = &v29;
  [(NSMutableArray *)alsServiceClients enumerateObjectsUsingBlock:&v21];
  if (selfCopy->super._logHandle)
  {
    v9 = selfCopy->super._logHandle;
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

- (float)getFloatValueFrom:(id)from key:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0.0;
  v7 = [from objectForKey:key];
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
      __os_log_helper_16_2_1_8_64(v11, key);
      _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getFloatValueFrom error - invalid value for key %@", v11, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (float)getFloatValueFrom:(id)from key:(id)key subkey:(id)subkey
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0.0;
  v10 = [from objectForKey:key];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v10 objectForKey:subkey];
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
        __os_log_helper_16_2_1_8_64(v16, key);
        _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getFloatValueFrom (subkey) error - invalid value for sub-key %@", v16, 0xCu);
      }
    }
  }

  else
  {
    logHandle = self->super._logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v15, key);
      _os_log_fault_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_FAULT, "getFloatValueFrom (subkey)error - invalid value for key %@", v15, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)getIntegerValueFrom:(id)from key:(id)key
{
  v11 = *MEMORY[0x1E69E9840];
  integerValue = 0;
  v6 = [from objectForKey:key];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    oslog = self->super._logHandle;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_64(v10, key);
      _os_log_fault_impl(&dword_1DE8E5000, oslog, OS_LOG_TYPE_FAULT, "getIntValueFrom error - invalid value for %@", v10, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return integerValue;
}

- (BOOL)setALSServiceProperty:(void *)property forKey:(__CFString *)key
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v21 = a2;
  propertyCopy = property;
  key = key;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v24, key, propertyCopy);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "[ALS service] Set ALS service property %@ = %@", v24, 0x16u);
  }

  v16 = 0;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_alsServiceClients;
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
      v4 = IOHIDServiceClientSetProperty(service, key, propertyCopy);
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

- (id)copyArrayFromPrefsForKey:(id)key
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v7)
  {
    [v7 synchronize];
    v6 = [v7 objectForKey:key];
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
    __os_log_helper_16_2_3_8_32_8_64_8_64(v11, "[CBAODModule copyArrayFromPrefsForKey:]", key, v8);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s: %@ = %@ \n", v11, 0x20u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v24 = a2;
  inCopy = in;
  modeCopy = mode;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
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
    __os_log_helper_16_2_2_8_0_8_64(v26, COERCE__INT64(inCopy), [CBDisplayStateUtilities stringForDisplayMode:modeCopy]);
    _os_log_impl(&dword_1DE8E5000, v21, v20, "Schedule display mode completion timer in %f sec for %@ mode", v26, 0x16u);
  }

  v19 = (inCopy * 1000000000.0);
  if (selfCopy->_displayModeCompletionTimer)
  {
    source = selfCopy->_displayModeCompletionTimer;
    v4 = dispatch_time(0, v19);
    dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    selfCopy->_displayModeCompletionTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    if (selfCopy->_displayModeCompletionTimer)
    {
      displayModeCompletionTimer = selfCopy->_displayModeCompletionTimer;
      handler = MEMORY[0x1E69E9820];
      v12 = -1073741824;
      v13 = 0;
      v14 = __67__CBAODModule_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
      v15 = &unk_1E867BF80;
      v16 = selfCopy;
      v17 = modeCopy;
      v18 = inCopy;
      dispatch_source_set_event_handler(displayModeCompletionTimer, &handler);
      v7 = selfCopy->_displayModeCompletionTimer;
      v6 = dispatch_time(0, v19);
      dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  dispatch_activate(selfCopy->_displayModeCompletionTimer);
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