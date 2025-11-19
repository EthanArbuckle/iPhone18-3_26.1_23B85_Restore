@interface CBColorModuleShared
- (BOOL)BLRCCTRangePropertyHandler:(id)a3;
- (BOOL)BLRCCTTargetPropertyHandler:(id)a3;
- (BOOL)BLRFactorPropertyHandler:(id)a3;
- (BOOL)CAAABSensorOverridePropertyHandler:(id)a3;
- (BOOL)CAEnabledPropertyHandler:(id)a3;
- (BOOL)CAFadesEnabledHandler:(id)a3;
- (BOOL)CAFixedStrengthPropertyHandler:(id)a3;
- (BOOL)CALabShiftPropertyHandler:(id)a3;
- (BOOL)CAModeMappingHandler:(id)a3;
- (BOOL)CAStrengthPropertyHandler:(id)a3;
- (BOOL)CAStrengthRampPeriodTweakPropertyHandler:(id)a3;
- (BOOL)CAWeakestColorAdaptationModeAnimatedPropertyHandler:(id)a3;
- (BOOL)CAWeakestColorAdaptationModePropertyHandler:(id)a3;
- (BOOL)CEEnablePropertyHandler:(id)a3 key:(id)a4;
- (BOOL)CoreBrightnessFeaturesDisabledPropertyHandler:(id)a3;
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)ammolitePropertyHandler:(id)a3;
- (BOOL)ammoliteSupported;
- (BOOL)applyAggregatedConfigPropertyHandler:(id)a3;
- (BOOL)applyPendingSamples;
- (BOOL)applySamples:(id)a3 withinTimeout:(float)a4;
- (BOOL)carryLogCommentHandler:(id)a3;
- (BOOL)carryLogEnabledHandler:(id)a3;
- (BOOL)clamshellStatePropertyHandler:(id)a3;
- (BOOL)colorFilterModeHandler:(id)a3;
- (BOOL)colorRampPeriodOverrideHandler:(id)a3;
- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3;
- (BOOL)displayPresetHarmonyHandler:(id)a3;
- (BOOL)externalDisplayModeHandler:(id)a3;
- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)hasExternalALS;
- (BOOL)hasRearALS;
- (BOOL)ignoreALSEventsInAOD;
- (BOOL)parseAdaptationModeMappingArray:(id)a3 strengths:(float *)a4 strengthNum:(int)a5;
- (BOOL)parseAdaptationModeMappingDictionary:(id)a3 strengths:(float *)a4 strengthNum:(int)a5;
- (BOOL)preStrobeDimPeriodPropertyHandler:(id)a3;
- (BOOL)preStrobePropertyHandler:(id)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)serializedAggregatedConfigPropertyHandler:(id)a3;
- (BOOL)setColorSensitivity:(float)a3 forALS:(__IOHIDServiceClient *)a4;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)setPropertyInternal:(id)a3 forKey:(id)a4;
- (BOOL)startNewTimerWithFreq:(float)a3;
- (BOOL)supportsColorRepairability;
- (BOOL)ttRestrictionHandler:(id)a3;
- (BOOL)ttRestrictionReload;
- (CBColorModuleShared)initWithBrightnessControl:(id)a3 moduleType:(unint64_t)a4 backlightConfig:(id)a5 queue:(id)a6;
- (CBColorModuleShared)initWithBrightnessControl:(id)a3 queue:(id)a4 backlightConfig:(id)a5 moduleType:(unint64_t)a6;
- (float)absoluteDifferenceForCurrentColor:(id)a3 andDeltaError:(id)a4;
- (id)copyALSSamples;
- (id)copyIdentifiers;
- (id)copyLocalAggregatedConfig;
- (id)copyPreferenceInternalForKey:(id)a3;
- (id)copyPropertyForKey:(id)a3;
- (id)copyPropertyInternalForKey:(id)a3;
- (id)getRegistryIDForHIDServiceClient:(__IOHIDServiceClient *)a3;
- (id)initDFRHarmonyWithSKL:(id)a3 queue:(id)a4;
- (id)newAdaptationModeMappingArray:(float *)a3 strengthNum:(int)a4;
- (id)newAdaptationModeMappingDictionary:(float *)a3 strengthNum:(int)a4;
- (id)newAggregatedConfigFromSerializedConfig:(id)a3;
- (id)newSerializedConfigFromAggregatedConfig:(id)a3;
- (void)BLRFactorUpdate:(float)a3 withPeriod:(float)a4 shouldForceUpdate:(BOOL)a5;
- (void)CAStrengthUpdate:(float)a3 withPeriod:(float)a4;
- (void)activateBLR;
- (void)activateColorAdaptation;
- (void)applyAggregatedConfig:(BOOL)a3;
- (void)armFirstALSSampleTimer;
- (void)cancelFirstSampleTimeout;
- (void)colorRampRoutine:(id *)a3;
- (void)commitPowerLogReport:(ColorReport *)a3;
- (void)dealloc;
- (void)displayBrightnessFactorUpdate:(float)a3;
- (void)enableCarryLog;
- (void)enableMitigations:(BOOL)a3;
- (void)filterInitialize;
- (void)firstALSSampleTimeout;
- (void)handleALSEvent:(id)a3;
- (void)handleDisplayBrightnessFactorZero:(id)a3;
- (void)handleFilterNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)handleHIDEventInternal:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)initAmmolite;
- (void)initColorStruct;
- (void)inputAmbientColorSample:(CFXColorSample *)a3 force:(BOOL)a4 trust:(BOOL)a5;
- (void)loadBacklightProperties;
- (void)reportCommitWithStop:(BOOL)a3;
- (void)reportInitialize;
- (void)reportResetTimerWithStop:(BOOL)a3;
- (void)reportToCoreAnalytics:(ColorReport *)a3;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)setLabShift;
- (void)setNativeWhitePoint;
- (void)setPreferenceInternal:(id)a3 forKey:(id)a4;
- (void)setWhitePointType;
- (void)start;
- (void)stop;
- (void)timerRoutine:(id)a3;
- (void)updateActivity;
- (void)updateAvailability;
- (void)updateColorFilterMode;
- (void)updateHarmonySupport;
- (void)updateSensorPolicy;
@end

@implementation CBColorModuleShared

- (void)updateColorFilterMode
{
  v4 = self->_colorStruct.moduleType == 1;
  v3 = self->_colorStruct.moduleType == 2;
  if (self->_colorFilterModeOverride)
  {
    colorFilterModeOverride = self->_colorFilterModeOverride;
  }

  else if (self->_clamshell)
  {
    colorFilterModeOverride = 6;
  }

  else if (self->_colorStruct.moduleType == 1 && ![(CBColorModuleShared *)self hasExternalALS]|| v4 && [(CBColorModuleShared *)self hasExternalALS]&& self->_mirror || v3 && ![(CBColorModuleShared *)self hasExternalALS]&& !self->_mirror)
  {
    if ([(CBColorModuleShared *)self hasRearALS])
    {
      colorFilterModeOverride = 6;
    }

    else
    {
      colorFilterModeOverride = 2;
    }
  }

  else if (v4 && [(CBColorModuleShared *)self hasExternalALS]&& !self->_mirror || v3)
  {
    colorFilterModeOverride = 6;
  }

  else
  {
    colorFilterModeOverride = 6;
  }

  [(CBColorFilter *)self->_colorFilter setMode:colorFilterModeOverride];
}

- (void)updateSensorPolicy
{
  v4 = self->_colorStruct.moduleType == 1;
  v3 = self->_colorStruct.moduleType == 2;
  if (self->_clamshell)
  {
    v2 = 7;
  }

  else if (self->_colorStruct.moduleType == 1 && ![(CBColorModuleShared *)self hasExternalALS]|| v4 && [(CBColorModuleShared *)self hasExternalALS]&& self->_mirror || v3 && ![(CBColorModuleShared *)self hasExternalALS]&& !self->_mirror)
  {
    if ([(CBColorModuleShared *)self hasRearALS])
    {
      v2 = 11;
    }

    else
    {
      v2 = 9;
    }
  }

  else if (v4 && [(CBColorModuleShared *)self hasExternalALS]&& !self->_mirror || v3)
  {
    v2 = 7;
  }

  else
  {
    v2 = 255;
  }

  [(CBColorFilter *)self->_colorFilter setSensorPolicy:v2];
}

- (BOOL)hasExternalALS
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v12->_alsNodes allValues];
  v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = 0;
      v10 = *(__b[1] + 8 * v5);
      if (([v10 builtIn] & 1) == 0)
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)hasRearALS
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v12->_alsNodes allValues];
  v8 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = 0;
      v10 = *(__b[1] + 8 * v5);
      if ([v10 placement] == 2 || objc_msgSend(v10, "location") == 258)
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v6)
        {
          goto LABEL_10;
        }
      }
    }

    v13 = 1;
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)cancelFirstSampleTimeout
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_timeoutTimer)
  {
    dispatch_release(self->_timeoutTimer);
    self->_timeoutTimer = 0;
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
      *&v2 = CFAbsoluteTimeGetCurrent();
      __os_log_helper_16_0_1_8_0(v6, v2);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "ts=%f Cancelling first sample timeout", v6, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __28__CBColorModuleShared_start__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) sendNotificationForKey:a2 andValue:a3];
    }
  }

  return result;
}

- (BOOL)ignoreALSEventsInAOD
{
  v4 = [+[CBAODState sharedInstance](CBAODState AODState];
  v3 = 1;
  if (v4 != 2)
  {
    v3 = 1;
    if (v4 != 3)
    {
      return v4 == 4;
    }
  }

  return v3;
}

- (void)reportInitialize
{
  if (self->_colorStruct.nightModeSupported || self->_colorStruct.harmonyHWSupported)
  {
    if (self->_colorStruct.cfx)
    {
      CFXClearReport(self->_colorStruct.cfx);
    }

    [(CBColorModuleShared *)self reportResetTimerWithStop:0];
  }
}

- (BOOL)applyPendingSamples
{
  if ([(NSMutableDictionary *)self->_pendingALSSamples count])
  {
    v2 = [(NSMutableDictionary *)self->_pendingALSSamples allValues];
    LODWORD(v3) = 1045220557;
    [(CBColorModuleShared *)self applySamples:v2 withinTimeout:v3];
    [(NSMutableDictionary *)self->_pendingALSSamples removeAllObjects];
  }

  return 0;
}

- (CBColorModuleShared)initWithBrightnessControl:(id)a3 moduleType:(unint64_t)a4 backlightConfig:(id)a5 queue:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v38 = [(CBColorModuleShared *)self initWithBrightnessControl:a3 queue:a6 backlightConfig:a5 moduleType:a4];
  if (!v38)
  {
LABEL_34:
    v39 = v38;
    goto LABEL_44;
  }

  v38->_modules = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38->_aggregatedConfig = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v32 = 0;
  moduleType = v38->_colorStruct.moduleType;
  if (moduleType == 1)
  {
    if (v38->_brightnessControlProxy)
    {
      v32 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s.%s.%u", "com.apple.CoreBrightness", "CBColorModule", -[CBBrightnessProxy displayId](v38->_brightnessControlProxy, "displayId")), "cStringUsingEncoding:", 1];
    }

    else
    {
      v32 = "com.apple.CoreBrightness.CBColorModule.Primary";
    }
  }

  else if (moduleType == 2)
  {
    v32 = "com.apple.CoreBrightness.CBColorModule.External";
  }

  else
  {
    v32 = "com.apple.CoreBrightness.CBColorModule.Undefined";
  }

  v38->super._logHandle = os_log_create(v32, "default");
  if (v38->super._logHandle)
  {
    v38->_colorEffectsEnabled = 1;
    v38->_nfcCoex = [[StockholmALSCoexHandler alloc] initWithQueue:v38->super._queue];
    v38->_reportContext.periodS = 300;
    if (v38->_brightnessControlProxy)
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

      v28 = logHandle;
      v27 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v40, [(CBBrightnessProxy *)v38->_brightnessControlProxy displayId]);
        _os_log_impl(&dword_1DE8E5000, v28, v27, "initialized color module (display #%u)", v40, 8u);
      }
    }

    else
    {
      if (v38->super._logHandle)
      {
        v14 = v38->super._logHandle;
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

      v26 = v14;
      v25 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v11 = v26;
        v12 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_impl(&dword_1DE8E5000, v11, v12, "initialized color module without control proxy", v24, 2u);
      }
    }

    goto LABEL_34;
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    v19 = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    v19 = init_default_corebrightness_log();
  }

  v31 = v19;
  v30 = 16;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    log = v31;
    type = v30;
    __os_log_helper_16_0_0(v29);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create logHandle", v29, 2u);
  }

  if (v38->super._logHandle)
  {
    v10 = v38->super._logHandle;
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

  v23 = v10;
  v22 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v7 = v23;
    v8 = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_error_impl(&dword_1DE8E5000, v7, v8, "error creating CBColorModule", v21, 2u);
  }

  [(CBColorModuleShared *)v38 stop];
  MEMORY[0x1E69E5920](v38);
  v38 = 0;
  v39 = 0;
LABEL_44:
  *MEMORY[0x1E69E9840];
  return v39;
}

- (id)initDFRHarmonyWithSKL:(id)a3 queue:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v23 = [(CBColorModuleShared *)self initWithBrightnessControl:a3 queue:a4 backlightConfig:0 moduleType:3];
  if (!v23)
  {
LABEL_11:
    v24 = v23;
    goto LABEL_21;
  }

  v23->super._logHandle = os_log_create("com.apple.CoreBrightness.CBColorModule.DFR", "default");
  if (v23->super._logHandle)
  {
    logHandle = v23->super._logHandle;
    v15 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v25, [(CBBrightnessProxy *)v23->_brightnessControlProxy displayId]);
      _os_log_impl(&dword_1DE8E5000, logHandle, v15, "initialized DFR color module (display #%u)", v25, 8u);
    }

    goto LABEL_11;
  }

  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  v19 = inited;
  v18 = 16;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
  {
    log = v19;
    type = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create logHandle", v17, 2u);
  }

  if (v23->super._logHandle)
  {
    v8 = v23->super._logHandle;
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

  v14 = v8;
  v13 = 16;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v5 = v14;
    v6 = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_error_impl(&dword_1DE8E5000, v5, v6, "error creating CBColorModule.DFR", v12, 2u);
  }

  [(CBColorModuleShared *)v23 stop];
  MEMORY[0x1E69E5920](v23);
  v23 = 0;
  v24 = 0;
LABEL_21:
  *MEMORY[0x1E69E9840];
  return v24;
}

- (CBColorModuleShared)initWithBrightnessControl:(id)a3 queue:(id)a4 backlightConfig:(id)a5 moduleType:(unint64_t)a6
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16.receiver = self;
  v16.super_class = CBColorModuleShared;
  v22 = [(CBModule *)&v16 initWithQueue:a4];
  if (v22)
  {
    if (v20)
    {
      v6 = MEMORY[0x1E69E5928](v20);
      v22->_brightnessControlProxy = v6;
    }

    if (v18)
    {
      v7 = MEMORY[0x1E69E5928](v18);
      v22->_backlightConfig = v7;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22->_alsNodes = v8;
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22->_pendingALSSamples = v9;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22->_relevantServices = v10;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22->_properties = v11;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22->_filters = v12;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22->_currentChromaticitySensitivity = v13;
    v22->_userName = @"CBUser-0";
    MEMORY[0x1E69E5928](v22->_userName);
    [(CBColorModuleShared *)v22 initColorStruct];
    v22->_colorStruct.moduleType = v17;
    v14 = [(CBColorModuleShared *)v22 ammoliteSupported];
    v22->_ammoliteSystemSupported = v14;
    v22->_displayOn = 1;
    v22->_clamshell = 0;
    v22->_mirror = 0;
    v22->_forceInitialFactorUpdate = 1;
    v22->_forceColorUpdate = 1;
    v22->_supportsAmmoliteWithoutColor = 0;
    v22->_NSamples = 0;
    v22->_preStrobeDimPeriod = -1.0;
    v22->_trustedLux = 0.0;
    v22->_firstSampleTimeoutValue = 0.25;
    [(CBColorModuleShared *)v22 loadBacklightProperties];
    [(CBColorModuleShared *)v22 filterInitialize];
  }

  return v22;
}

- (void)start
{
  v17 = self;
  v16 = a2;
  [(StockholmALSCoexHandler *)self->_nfcCoex start];
  [(CBColorModuleShared *)v17 activateBLR];
  [(CBColorModuleShared *)v17 enableCarryLog];
  [(CBFilter *)v17->_colorFilter scheduleWithDispatchQueue:v17->super._queue];
  colorFilter = v17->_colorFilter;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __28__CBColorModuleShared_start__block_invoke;
  v14 = &unk_1E867B558;
  v15 = v17;
  [(CBFilter *)colorFilter registerNotificationBlock:?];
  if ((CBU_IsR2RSupported() & 1) != 0 && v17->_colorStruct.moduleType == 1)
  {
    queue = v17->super._queue;
    block = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __28__CBColorModuleShared_start__block_invoke_2;
    v8 = &unk_1E867B480;
    v9 = v17;
    dispatch_async(queue, &block);
  }
}

uint64_t __28__CBColorModuleShared_start__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) activateColorAdaptation];
  [*(a1 + 32) updateAvailability];
  return [*(a1 + 32) reportInitialize];
}

- (void)stop
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  [+[CBAnalyticsScheduler sharedInstance](CBAnalyticsScheduler removeHandler:"removeHandler:", self->_analyticsPeriodicSender];
  [(CBColorModuleShared *)v12 reportResetTimerWithStop:1];
  [(CBColorModuleShared *)v12 cancelFirstSampleTimeout];
  if (v12->_rampTimer)
  {
    dispatch_source_cancel(v12->_rampTimer);
    dispatch_release(v12->_rampTimer);
    v12->_rampTimer = 0;
  }

  memset(__b, 0, sizeof(__b));
  obj = v12->_filters;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = 0;
      v10 = *(__b[1] + 8 * v5);
      [v10 unregisterNotificationBlock];
      [v10 unscheduleWithDispatchQueue:v12->super._queue];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  [(StockholmALSCoexHandler *)v12->_nfcCoex stop];
  *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  MEMORY[0x1E69E5920](self->_nfcCoex);
  MEMORY[0x1E69E5920](v6->_backlightConfig);
  MEMORY[0x1E69E5920](v6->_relevantServices);
  MEMORY[0x1E69E5920](v6->_properties);
  MEMORY[0x1E69E5920](v6->_userName);
  MEMORY[0x1E69E5920](v6->_aggregatedConfig);
  MEMORY[0x1E69E5920](v6->_colorFilter);
  MEMORY[0x1E69E5920](v6->_filters);
  MEMORY[0x1E69E5920](v6->_ceModule);
  MEMORY[0x1E69E5920](v6->_alsNodes);
  MEMORY[0x1E69E5920](v6->_pendingALSSamples);
  MEMORY[0x1E69E5920](v6->_modules);
  MEMORY[0x1E69E5920](v6->_confidenceEstimatorStats);
  v2 = MEMORY[0x1E69E5920](v6->_currentChromaticitySensitivity).n128_u64[0];
  if (v6->_colorStruct.cfx)
  {
    CFXRelease(v6->_colorStruct.cfx);
  }

  if (v6->_brightnessControlProxy)
  {
    v2 = MEMORY[0x1E69E5920](v6->_brightnessControlProxy).n128_u64[0];
    v6->_brightnessControlProxy = 0;
  }

  if (v6->_reportContext.logTimer)
  {
    v3 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
    dispatch_source_cancel(v6->_reportContext.logTimer);
    dispatch_release(v6->_reportContext.logTimer);
  }

  v4.receiver = v6;
  v4.super_class = CBColorModuleShared;
  [(CBModule *)&v4 dealloc:*&v2];
}

- (void)filterInitialize
{
  self->_colorFilterModeOverride = 0;
  v2 = [CBColorFilter alloc];
  if (self->_colorStruct.moduleType == 2)
  {
    v3 = @"External";
  }

  else
  {
    v3 = 0;
  }

  self->_colorFilter = [(CBColorFilter *)v2 initWithIdentifier:v3];
  [(CBColorModuleShared *)self updateColorFilterMode];
  [(CBColorModuleShared *)self updateSensorPolicy];
  [(NSMutableArray *)self->_filters addObject:self->_colorFilter];
}

- (void)loadBacklightProperties
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  if (self->_backlightConfig)
  {
    v10 = 0;
    if (([(CBPrimitiveConfigurationProvider *)v12->_backlightConfig loadUint:@"pre-strobe-dim-period" toDestination:&v10]& 1) != 0)
    {
      v12->_preStrobeDimPeriod = v10 / 1000.0;
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

      v9 = logHandle;
      v8 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v14, COERCE__INT64(v12->_preStrobeDimPeriod));
        _os_log_impl(&dword_1DE8E5000, v9, v8, "PreStrobe period = %f", v14, 0xCu);
      }
    }

    v7 = 0;
    v4 = ([(CBPrimitiveConfigurationProvider *)v12->_backlightConfig loadUint:@"aml-only-support" toDestination:&v7]& 1) != 0 && v7 != 0;
    v12->_supportsAmmoliteWithoutColor = v4;
    if (v12->super._logHandle)
    {
      v3 = v12->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v2 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v2 = init_default_corebrightness_log();
      }

      v3 = v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v13, v12->_supportsAmmoliteWithoutColor);
      _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_INFO, "Ammolite without Color ALS: %d", v13, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3
{
  v5 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a3 objectForKey:@"DisplayBrightnessFactor"];
  }

  else
  {
    v4 = a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
    [v4 floatValue];
    [(CBColorModuleShared *)self displayBrightnessFactorUpdate:?];
    [(NSMutableDictionary *)self->_properties setObject:v4 forKey:@"DisplayBrightnessFactor"];
  }

  return v5;
}

- (void)handleDisplayBrightnessFactorZero:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v6, self->_displayOn);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "FactorZero - display state = %d\n", v6, 8u);
  }

  if (!self->_displayOn && self->_colorStruct.harmonyEnabled && self->_colorStruct.moduleType == 1)
  {
    CFXResetAdaptation(self->_colorStruct.cfx, 0.1);
  }

  *MEMORY[0x1E69E9840];
}

- (void)displayBrightnessFactorUpdate:(float)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = self;
  v45 = a2;
  v44 = a3;
  if (self->super._logHandle)
  {
    logHandle = v46->super._logHandle;
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
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_8_0_4_0(v50, COERCE__INT64(v44), v46->_NSamples);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "Brightness factor update = %f, N samples = %d", v50, 0x12u);
  }

  displayOn = v46->_displayOn;
  v3 = v44;
  v46->_displayOn = v44 > 0.0;
  if (v46->_displayOn != displayOn || v46->_forceInitialFactorUpdate)
  {
    v46->_forceInitialFactorUpdate = 0;
    if (v46->_displayOn)
    {
      if (v46->_colorStruct.moduleType == 1)
      {
        [(CBColorModuleShared *)v46 reportInitialize];
      }

      if (v46->_colorStruct.moduleType == 2)
      {
        if ([(CBColorFilter *)v46->_colorFilter forceSampleUpdate])
        {
          memset(__b, 0, 0x3CuLL);
          v28 = [(CBColorFilter *)v46->_colorFilter sample];
          if (v28)
          {
            [(CBColorSample *)v28 colorSample];
          }

          else
          {
            memset(__b, 0, 0x3CuLL);
          }

          [(CBColorModuleShared *)v46 inputAmbientColorSample:__b force:1 trust:1];
        }
      }

      else
      {
        [(CBColorModuleShared *)v46 applyPendingSamples];
        if (!v46->_allALSEventsArrived && v46->_useCopyEventOnDisplayWake)
        {
          v38 = [(CBColorModuleShared *)v46 copyALSSamples];
          if ([v38 count])
          {
            LODWORD(v4) = 0.5;
            if ([(CBColorModuleShared *)v46 applySamples:v38 withinTimeout:v4])
            {
              if (v46->super._logHandle)
              {
                v27 = v46->super._logHandle;
              }

              else
              {
                v26 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                v27 = v26;
              }

              v37 = v27;
              v36 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v20 = v37;
                v21 = v36;
                *&v22 = v44;
                v23 = [v38 count];
                [objc_msgSend(v38 "objectAtIndexedSubscript:"illuminance"")];
                v24 = v5;
                v25 = [v38 objectAtIndexedSubscript:0];
                if (v25)
                {
                  [v25 colorSample];
                }

                else
                {
                  memset(&v35[15], 0, 0x3CuLL);
                }

                *&v18 = v35[18];
                v19 = [v38 objectAtIndexedSubscript:0];
                if (v19)
                {
                  [v19 colorSample];
                }

                else
                {
                  memset(v35, 0, 0x3CuLL);
                }

                __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v49, v22, v23, v24, v18, COERCE__INT64(v35[4]));
                _os_log_impl(&dword_1DE8E5000, v20, v21, "Display on (f=%f) -> Copied ALS samples (count = %lu) has been applied (Lux[0] = %f, x[0]=%f y[0]=%f).", v49, 0x34u);
              }
            }
          }

          MEMORY[0x1E69E5920](v38);
        }

        if (!v46->_allALSEventsArrived)
        {
          [(CBColorModuleShared *)v46 armFirstALSSampleTimer];
        }
      }
    }

    else
    {
      v46->_firstALSEventArrived = 0;
      v46->_allALSEventsArrived = 0;
      v46->_forceColorUpdate = 1;
      v46->_continueWithFewerALSs = 0;
      v46->_NSamples = 0;
      [(CBColorModuleShared *)v46 cancelFirstSampleTimeout];
      memset(v33, 0, sizeof(v33));
      obj = [(NSMutableDictionary *)v46->_alsNodes allValues];
      v17 = [obj countByEnumeratingWithState:v33 objects:v48 count:16];
      if (v17)
      {
        v13 = *v33[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*v33[2] != v13)
          {
            objc_enumerationMutation(obj);
          }

          v34 = 0;
          v34 = *(v33[1] + 8 * v14);
          [v34 setCurrentALSEvent:0];
          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [obj countByEnumeratingWithState:v33 objects:v48 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      [(CBColorFilter *)v46->_colorFilter resetEvents];
      memset(v31, 0, sizeof(v31));
      filters = v46->_filters;
      v11 = [(NSMutableArray *)filters countByEnumeratingWithState:v31 objects:v47 count:16];
      if (v11)
      {
        v7 = *v31[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v31[2] != v7)
          {
            objc_enumerationMutation(filters);
          }

          v32 = 0;
          v32 = *(v31[1] + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v32 resetFilter];
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [(NSMutableArray *)filters countByEnumeratingWithState:v31 objects:v47 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      if (v46->_nfcCoex)
      {
        [(StockholmALSCoexHandler *)v46->_nfcCoex reset];
      }

      if (v46->_colorStruct.moduleType == 1)
      {
        [(CBColorModuleShared *)v46 reportCommitWithStop:1];
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyALSSamples
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v14->_alsNodes allValues];
  v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = 0;
      v11 = *(__b[1] + 8 * v5);
      v9 = [v11 copyALSEvent];
      if (v9)
      {
        [v12 addObject:v9];
        MEMORY[0x1E69E5920](v9);
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)applySamples:(id)a3 withinTimeout:(float)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = 0;
  if ([a3 count])
  {
    v19 = mach_time_now_in_seconds();
    memset(__b, 0, sizeof(__b));
    obj = v22;
    v16 = [v22 countByEnumeratingWithState:__b objects:v26 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v18 = 0;
        v18 = *(__b[1] + 8 * v13);
        v10 = v19;
        [v18 timestamp];
        if (vabds_f32(v10, v4) < v21)
        {
          if (v24->super._logHandle)
          {
            logHandle = v24->super._logHandle;
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
            __os_log_helper_16_2_1_8_66(v25, v18);
            _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Apply pending/copied ALS sample %{public}@", v25, 0xCu);
          }

          v7 = v24;
          v6 = [v18 event];
          -[CBColorModuleShared handleHIDEventInternal:from:](v7, "handleHIDEventInternal:from:", v6, [v18 service]);
          v20 = 1;
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (void)armFirstALSSampleTimer
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  if (self->super._logHandle)
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

  v15 = logHandle;
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *&v2 = CFAbsoluteTimeGetCurrent();
    __os_log_helper_16_0_1_8_0(v18, v2);
    _os_log_impl(&dword_1DE8E5000, v15, v14, "ts=%f Arming first sample timeout", v18, 0xCu);
  }

  v17->_timeoutTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17->super._queue);
  if (v17->_timeoutTimer)
  {
    source = v17->_timeoutTimer;
    v3 = dispatch_time(0, (v17->_firstSampleTimeoutValue * 1000000000.0));
    dispatch_source_set_timer(source, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    timeoutTimer = v17->_timeoutTimer;
    handler = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __45__CBColorModuleShared_armFirstALSSampleTimer__block_invoke;
    v12 = &unk_1E867B480;
    v13 = v17;
    dispatch_source_set_event_handler(timeoutTimer, &handler);
    dispatch_resume(v17->_timeoutTimer);
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __45__CBColorModuleShared_armFirstALSSampleTimer__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) firstALSSampleTimeout];
  return objc_sync_exit(obj);
}

- (void)firstALSSampleTimeout
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  v14 = a2;
  if (self->_firstALSEventArrived)
  {
    v15->_potentiallyBustedALS = 1;
  }

  v15->_continueWithFewerALSs = 1;
  if (v15->super._logHandle)
  {
    logHandle = v15->super._logHandle;
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
    __os_log_helper_16_0_1_4_0(v16, v15->_potentiallyBustedALS);
    _os_log_impl(&dword_1DE8E5000, v13, v12, "First ALS sample TIMEOUT! Busted ALS = %i", v16, 8u);
  }

  if (v15->_timeoutTimer)
  {
    if (!v15->_NSamples && v15->_colorStruct.harmonyEnabled && v15->_colorStruct.moduleType == 1)
    {
      memset(__b, 0, 0x3CuLL);
      [(CBColorModuleShared *)v15 inputAmbientColorSample:__b force:0 trust:1];
    }

    dispatch_release(v15->_timeoutTimer);
    v15->_timeoutTimer = 0;
  }

  else
  {
    if (v15->super._logHandle)
    {
      v5 = v15->super._logHandle;
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

    v10 = v5;
    v9 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v10;
      v3 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "Timer is invalid", v8, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)BLRFactorPropertyHandler:(id)a3
{
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    [(CBColorModuleShared *)self BLRFactorUpdate:?];
    v9 = 1;
    [(CBColorModuleShared *)self updateAggregatedConfigWithObject:a3 forKey:@"BlueLightReductionFactor"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      v7 = [a3 objectForKey:@"BlueLightReductionFactorValue"];
      v6 = [a3 objectForKey:@"BlueLightReductionFactorFadePeriod"];
      v5 = [a3 objectForKey:@"ForceUpdate"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = ([v5 BOOLValue] & 1) != 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 floatValue];
        }

        [v7 floatValue];
        [v4 BLRFactorUpdate:v8 withPeriod:? shouldForceUpdate:?];
        v9 = 1;
        [(CBColorModuleShared *)self updateAggregatedConfigWithObject:v7 forKey:@"BlueLightReductionFactor"];
      }
    }
  }

  return v9;
}

- (void)BLRFactorUpdate:(float)a3 withPeriod:(float)a4 shouldForceUpdate:(BOOL)a5
{
  self->_colorStruct.blueReductionEnabled = a3 > 0.0;
  self->_colorStruct.blueReductionFactor = a3;
  if (self->_colorStruct.enforceSlowRamps)
  {
    a4 = -1.0;
    self->_colorStruct.enforceSlowRamps = 0;
  }

  if (self->_colorStruct.blueReductionEnabled)
  {
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    v5 = MEMORY[0x1E695E110];
  }

  [(CBColorModuleShared *)self sendNotificationForKey:@"BlueReductionEnabled" andValue:v5];
  if (!self->_aggregatedConfigApplied)
  {
    CFXEnableBlueLightReduction(self->_colorStruct.cfx, a5, a3, a4);
  }
}

- (BOOL)BLRCCTTargetPropertyHandler:(id)a3
{
  v13 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a3 objectForKey:@"BlueLightReductionCCTTargetValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      v11 = v3;
      v10 = -1.0;
      v7 = [a3 objectForKey:@"BlueLightReductionCCTTargetPeriod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 floatValue];
        v10 = v4;
      }

      v8 = [a3 objectForKey:@"BlueLightReductionCCTTargetCommit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 BOOLValue];
        if (v10 == -1.0)
        {
          v5 = -1.0;
          if ((v9 & 1) == 0)
          {
            v5 = 0.0;
          }

          v10 = v5;
        }

        if (!self->_aggregatedConfigApplied)
        {
          self->_colorStruct.forceSnapping = 1;
          CFXSetBlueLightReductionTargetCCT(self->_colorStruct.cfx, 0, v11, v10, ((v9 ^ 1) & 1));
        }

        v13 = 1;
        if (v9)
        {
          [(CBColorModuleShared *)self setPreferenceInternal:v12 forKey:@"CBBlueLightReductionCCTTargetRaw"];
        }
      }
    }
  }

  return v13;
}

- (BOOL)BLRCCTRangePropertyHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 count] == 3)
  {
    v10 = 0xBF800000BF800000;
    v11 = -1.0;
    for (i = 0; i < 3; ++i)
    {
      [objc_msgSend(a3 objectAtIndexedSubscript:{i), "floatValue"}];
      *(&v10 + i) = v3;
    }

    if (*&v10 != -1.0 && *(&v10 + 1) != -1.0 && v11 != -1.0)
    {
      *&v4 = CFXOverrideBlueLightReductionCCTRange(self->_colorStruct.cfx, v11, *&v10, *(&v10 + 1));
      [(CBColorModuleShared *)self setPreferenceInternal:a3 forKey:@"CBBlueLightReductionCCTRange", v4];
      v7 = 1;
    }
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)CALabShiftPropertyHandler:(id)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v7 = [v10 objectForKey:@"a"];
    v6 = [v10 objectForKey:@"b"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 floatValue];
        LODWORD(v8) = v3;
        [v6 floatValue];
        HIDWORD(v8) = v4;
        CFXSetABShift(v12->_colorStruct.cfx, &v8);
        return 1;
      }
    }
  }

  return v9;
}

- (BOOL)CAEnabledPropertyHandler:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a3 BOOLValue];
    if (self->_colorStruct.harmonyHWSupported)
    {
      if (self->_colorStruct.cfx)
      {
        self->_colorStruct.harmonyEnabled = v9 & 1;
        v10 = 1;
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
          if (self->_colorStruct.harmonyEnabled)
          {
            v3 = "ON";
          }

          else
          {
            v3 = "OFF";
          }

          __os_log_helper_16_2_1_8_34(v13, v3);
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "harmony turned %{public}s", v13, 0xCu);
        }

        [(CBColorModuleShared *)self updateActivity];
        if (![(CBColorModuleShared *)self isDFR])
        {
          v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v9 & 1];
          if (v8)
          {
            [(CBColorModuleShared *)self setPreferenceInternal:v8 forKey:@"CBColorAdaptationEnabled"];
            MEMORY[0x1E69E5920](v8);
          }

          [CBAnalytics harmonyEnabled:self->_colorStruct.harmonyEnabled byUser:1];
          if (self->_colorStruct.harmonyEnabled)
          {
            v4 = MEMORY[0x1E695E118];
          }

          else
          {
            v4 = MEMORY[0x1E695E110];
          }

          [(CBColorModuleShared *)self sendNotificationForKey:@"ColorAdaptationEnabled" andValue:v4];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)CAStrengthPropertyHandler:(id)a3
{
  v11 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a3 objectForKey:@"ColorAdaptationStrengthSub"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      v8 = fminf(fmaxf(v3, 0.0), 1.0);
      v7 = 0;
      v10 = [a3 objectForKey:@"ColorAdaptationStrengthPeriod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 floatValue];
        v7 = LODWORD(v4);
      }

      *&v4 = v8;
      LODWORD(v5) = v7;
      [(CBColorModuleShared *)self CAStrengthUpdate:v4 withPeriod:v5, v10];
      return 1;
    }
  }

  return v11;
}

- (BOOL)CAFixedStrengthPropertyHandler:(id)a3
{
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    v5 = v3;
    if (v3 >= 0.0)
    {
      v5 = fminf(fmaxf(v3, 0.0), 1.0);
    }

    [(CBColorModuleShared *)self setPreferenceInternal:a3 forKey:@"CBFixedAdaptationStrength"];
    self->_colorStruct.harmonyFixedStrength = v5;
    if (self->_colorStruct.harmonyFixedStrength < 0.0)
    {
      CFXSetAmbientAdaptationStrength(self->_colorStruct.cfx, self->_colorStruct.harmonyStrength, 0.0);
    }

    else
    {
      CFXSetAmbientAdaptationStrength(self->_colorStruct.cfx, self->_colorStruct.harmonyFixedStrength, 0.0);
    }

    return 1;
  }

  return v6;
}

- (BOOL)CAStrengthRampPeriodTweakPropertyHandler:(id)a3
{
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    if (self->_colorStruct.harmonyHWSupported && self->_colorStruct.cfx && v3 >= 0.0)
    {
      *&v4 = CFXSetStrengthRampTweakFactor(self->_colorStruct.cfx, v3);
      [(CBColorModuleShared *)self setPreferenceInternal:a3 forKey:@"CBStrengthRampPeriodTweak", v4];
      return 1;
    }
  }

  return v6;
}

- (void)CAStrengthUpdate:(float)a3 withPeriod:(float)a4
{
  if (self->_colorStruct.harmonyHWSupported && self->_colorStruct.cfx && self->_colorStruct.harmonyFixedStrength < 0.0)
  {
    self->_colorStruct.harmonyStrength = a3;
    CFXSetAmbientAdaptationStrength(self->_colorStruct.cfx, self->_colorStruct.harmonyStrength, a4);
  }
}

- (BOOL)CAWeakestColorAdaptationModePropertyHandler:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v33 = self;
  v32 = a2;
  v31 = a3;
  v30 = 0;
  v17 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v31 objectForKey:@"ColorAdaptationModesTargetSub"];
    v16 = v29;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [v29 count];
      if (v28)
      {
        v27 = v11;
        v15 = v11 - ((4 * v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = v28;
        for (i = 0; i < v28; ++i)
        {
          v24 = [v29 objectAtIndex:i];
          v14 = v24;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v3 = [v24 intValue];
            *(v15 + 4 * i) = v3;
          }
        }

        v23 = [v31 objectForKey:@"ColorAdaptationStrengthPeriod"];
        v13 = v23;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v23 floatValue];
          v22 = v4;
          if (v33->_colorStruct.harmonyHWSupported && v33->_colorStruct.cfx && v33->_colorStruct.harmonyFixedStrength < 0.0)
          {
            v30 = 1;
            v12 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
            CFXSetWeakestAmbientAdaptationMode(v33->_colorStruct.cfx, v15, v28, v22);
            v21 = 0.0;
            v20 = CFXGetAmbientAdaptationMode(*(&v33->super.super.isa + v12[661]), &v21);
            v5 = objc_alloc(MEMORY[0x1E696AD98]);
            v19 = [v5 initWithInt:v20];
            if (v19)
            {
              [(NSMutableDictionary *)v33->_properties setObject:v19 forKey:@"ColorAdaptationMode"];
            }

            v33->_colorStruct.harmonyStrength = v21;
            v6 = objc_alloc(MEMORY[0x1E696AD98]);
            *&v7 = v21;
            v19 = [v6 initWithFloat:v7];
            if (v19)
            {
              v8 = objc_alloc(MEMORY[0x1E695DF20]);
              v18 = [v8 initWithObjectsAndKeys:{v19, @"ColorAdaptationStrengthSub", v23, @"ColorAdaptationStrengthPeriod", 0}];

              if (v18)
              {
                [(NSMutableDictionary *)v33->_properties setObject:v18 forKey:@"ColorAdaptationStrength"];
              }
            }
          }
        }
      }
    }
  }

  v11[3] = v30 & 1;
  v9 = __OFSUB__(*MEMORY[0x1E69E9840], v34);
  return v30 & 1;
}

- (BOOL)CAWeakestColorAdaptationModeAnimatedPropertyHandler:(id)a3
{
  v30 = self;
  v29 = a2;
  v28 = a3;
  v27 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = 0;
    v24 = 0;
    v26 = [v28 objectForKey:@"ColorAdaptationModesTargetSub"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0;
      v25 = [v26 count];
      if (v25 > 0)
      {
        v24 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
        for (i = 0; i < v25; ++i)
        {
          v21 = [v26 objectAtIndex:i];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24[i] = [v21 intValue];
            ++v23;
          }
        }
      }

      if (v23 < v25)
      {
        v25 = 0;
        if (v24)
        {
          free(v24);
        }

        v24 = 0;
      }
    }

    if (v25 > 0)
    {
      v20 = 0;
      v19 = 0;
      v26 = [v28 objectForKey:@"ColorAdaptationModesInitialSub"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = 0;
        v20 = [v26 count];
        if (v20 > 0)
        {
          v19 = malloc_type_malloc(4 * v20, 0x100004052888210uLL);
          for (j = 0; j < v20; ++j)
          {
            v16 = [v26 objectAtIndex:j];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19[j] = [v16 intValue];
              ++v18;
            }
          }
        }

        if (v18 < v20)
        {
          v20 = 0;
          if (v19)
          {
            free(v19);
          }

          v19 = 0;
        }
      }

      v15 = 0.0;
      v14 = 0.0;
      v26 = [v28 objectForKey:@"ProgressRatio"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 floatValue];
        v15 = v3;
      }

      v26 = [v28 objectForKey:@"ColorAdaptationStrengthPeriod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 floatValue];
        v14 = v4;
      }

      if (v30->_colorStruct.harmonyHWSupported && v30->_colorStruct.cfx && v30->_colorStruct.harmonyFixedStrength < 0.0)
      {
        v13 = 0.0;
        CFXAnimateAmbientAdaptationModes(v30->_colorStruct.cfx, v19, v20, v24, v25, &v13, v15, v14);
        v12 = 0;
        v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{CFXGetAmbientAdaptationMode(v30->_colorStruct.cfx, &v12)}];
        if (v10)
        {
          [(NSMutableDictionary *)v30->_properties setObject:v10 forKey:@"ColorAdaptationMode"];
          MEMORY[0x1E69E5920](v10);
        }

        v30->_colorStruct.harmonyStrength = v13;
        v5 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v6 = v13;
        v11 = [v5 initWithFloat:v6];
        if (v11)
        {
          v7 = objc_alloc(MEMORY[0x1E695DF20]);
          v9 = [v7 initWithObjectsAndKeys:{v11, @"ColorAdaptationStrengthSub", v26, @"ColorAdaptationStrengthPeriod", 0}];
          if (v9)
          {
            [(NSMutableDictionary *)v30->_properties setObject:v9 forKey:@"ColorAdaptationStrength"];
            MEMORY[0x1E69E5920](v9);
          }

          MEMORY[0x1E69E5920](v11);
        }
      }

      if (v24)
      {
        free(v24);
      }

      if (v19)
      {
        free(v19);
      }
    }
  }

  return v27 & 1;
}

- (BOOL)CAModeMappingHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(CBColorModuleShared *)self parseAdaptationModeMappingDictionary:a3 strengths:v9 strengthNum:6])
  {
    CFXSetAdaptationModesMapping(self->_colorStruct.cfx, v9, 6);
    v6 = [(CBColorModuleShared *)self newAdaptationModeMappingDictionary:v9 strengthNum:6];
    if (v6)
    {
      [(NSMutableDictionary *)self->_properties setObject:v6 forKey:@"ColorAdaptationModeMapping"];
      MEMORY[0x1E69E5920](v6);
    }

    v5 = [(CBColorModuleShared *)self newAdaptationModeMappingArray:v9 strengthNum:6];
    if (v5)
    {
      if ([(CBColorModuleShared *)self isDFR])
      {
        v3 = @"CBAdaptationModeMapping2";
      }

      else
      {
        v3 = @"CBDFRAdaptationModeMapping2";
      }

      [(CBColorModuleShared *)self setPreferenceInternal:v5 forKey:v3];
      MEMORY[0x1E69E5920](v5);
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)CAFadesEnabledHandler:(id)a3
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    CFXEnableFades(self->_colorStruct.cfx, [a3 BOOLValue] & 1);
    return 1;
  }

  return v4;
}

- (BOOL)CAAABSensorOverridePropertyHandler:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = self;
  v28 = a2;
  v27 = a3;
  v26 = 1;
  v25 = 0;
  v24 = -1.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v27 floatValue];
    v24 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v27 objectForKey:@"AABSensorOverrideValue"];
      v22 = [v27 objectForKey:@"AABSensorOverrideOrientation"];
      if (v23)
      {
        [v23 floatValue];
        v24 = v4;
      }

      if (v22)
      {
        v25 = [v22 intValue];
      }
    }
  }

  if (v29->super._logHandle)
  {
    logHandle = v29->super._logHandle;
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
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_8_0_4_0(v31, COERCE__INT64(v24), v25);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "override ALS samples with value = %f, with orientation = %d", v31, 0x12u);
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(__b, 0, sizeof(__b));
  obj = v29->_filters;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v30 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v18 = 0;
      v18 = *(__b[1] + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v25 || (v5 = [v18 orientation], v5 == v25) || !objc_msgSend(v18, "orientation"))
        {
          [v19 addObject:v18];
        }
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  [(NSMutableArray *)v29->_filters removeObjectsInArray:v19];
  MEMORY[0x1E69E5920](v19);
  if (v24 >= 0.0)
  {
    v6 = [CBSensorOverrideFilter alloc];
    v16 = [(CBSensorOverrideFilter *)v6 initWithData:v27];
    [(NSMutableArray *)v29->_filters insertObject:v16 atIndex:0];
    MEMORY[0x1E69E5920](v16);
  }

  *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (BOOL)carryLogEnabledHandler:(id)a3
{
  v9 = self;
  v8 = a2;
  cf = a3;
  v6 = 0;
  if (a3)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(cf))
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
      CFXEnableLog(v9->_colorStruct.cfx, valuePtr != 0);
      if (CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]))
      {
        CFPreferencesSetAppValue(@"CBCarryLogEnabled", cf, *MEMORY[0x1E695E8A8]);
      }

      return 1;
    }
  }

  return v6;
}

- (BOOL)carryLogCommentHandler:(id)a3
{
  v5 = 0;
  if (a3)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      CFXStoreComment(self->_colorStruct.cfx, a3);
      return 1;
    }
  }

  return v5;
}

- (BOOL)colorRampPeriodOverrideHandler:(id)a3
{
  v5 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    CFXOverrideRampPeriod(self->_colorStruct.cfx, v3);
    return 1;
  }

  return v5;
}

- (BOOL)ammolitePropertyHandler:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  v25 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v25;
    if ([v25 BOOLValue])
    {
      if (v27->super._logHandle)
      {
        logHandle = v27->super._logHandle;
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
        v10 = v21;
        v11 = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&dword_1DE8E5000, v10, v11, "Enabling/restarting Ammolite", v19, 2u);
      }

      if (v27->_colorEffectsEnabled)
      {
        [(CBColorModuleShared *)v27 initAmmolite];
        v4 = CFXAmmoliteEnabled(v27->_colorStruct.cfx);
        v27->_ammoliteEnabledStatus = v4;
      }

      else
      {
        v27->_ammoliteEnabledStatus = 1;
      }
    }

    else
    {
      if (v27->super._logHandle)
      {
        v9 = v27->super._logHandle;
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

      v18 = v9;
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v18;
        v7 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_1DE8E5000, v6, v7, "Disabling Ammolite", v16, 2u);
      }

      CFXAmmoliteDisable(v27->_colorStruct.cfx);
      v27->_ammoliteEnabledStatus = 0;
    }

    v28 = 1;
  }

  else
  {
    if (v27->super._logHandle)
    {
      v15 = v27->super._logHandle;
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

    v24 = v15;
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v3 = objc_opt_class();
      __os_log_helper_16_2_2_8_66_8_64(v29, v3, v25);
      _os_log_error_impl(&dword_1DE8E5000, v24, v23, "Wrong value for Ammolite property handler: (%{public}@) %@", v29, 0x16u);
    }

    v28 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v28 & 1;
}

- (void)initAmmolite
{
  v71 = *MEMORY[0x1E69E9840];
  v67 = self;
  v66 = a2;
  if (self->_backlightConfig)
  {
    v65 = 0;
    v64 = 0;
    v63 = 0.0;
    v62 = 0.0;
    v61 = 0.0;
    v60 = 0;
    v59 = [(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadUint:@"pab-scaler-index" toDestination:&v65];
    if (v59)
    {
      v33 = -[CBPrimitiveConfigurationProvider loadUint:toDestination:](v67->_backlightConfig, "loadUint:toDestination:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-table-factor", v65], &v64);
    }

    else
    {
      v33 = 0;
    }

    v58 = v33 != 0;
    if (v33)
    {
      v32 = 0;
    }

    else
    {
      v32 = [(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadUint:@"aml-table-factor" toDestination:&v64];
    }

    v57 = v32 != 0;
    if (v59)
    {
      if (v67->super._logHandle)
      {
        logHandle = v67->super._logHandle;
      }

      else
      {
        v30 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v30;
      }

      v56 = logHandle;
      v55 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v70, v65);
        _os_log_debug_impl(&dword_1DE8E5000, v56, v55, "Display vendor index is %d", v70, 8u);
      }
    }

    if (v58 || v57)
    {
      if (v67->super._logHandle)
      {
        v25 = v67->super._logHandle;
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

        v25 = inited;
      }

      v51 = v25;
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v69, v64);
        _os_log_impl(&dword_1DE8E5000, v51, v50, "Ammolite factor: %d", v69, 8u);
      }
    }

    else
    {
      if (v67->super._logHandle)
      {
        v29 = v67->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v28 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v28 = init_default_corebrightness_log();
        }

        v29 = v28;
      }

      v54 = v29;
      v53 = 16;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v26 = v54;
        v27 = v53;
        __os_log_helper_16_0_0(v52);
        _os_log_error_impl(&dword_1DE8E5000, v26, v27, "Unable to read Ammolite table factor from device tree; Ammolite is not supported on this device", v52, 2u);
      }
    }

    if (v58)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-abs-lux-thresh", v65];
    }

    else
    {
      v23 = @"aml-abs-lux-thresh";
    }

    v49 = v23;
    if (v58)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-rel-lux-thresh", v65];
    }

    else
    {
      v22 = @"aml-rel-lux-thresh";
    }

    v48 = v22;
    if (v58)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-period", v65];
    }

    else
    {
      v21 = @"aml-period";
    }

    v47 = v21;
    if (v58)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-table", v65];
    }

    else
    {
      v20 = @"aml-table";
    }

    v46 = v20;
    if (v49 && ([(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadFixedFloat:v49 toDestination:&v63]& 1) != 0)
    {
      if (v48 && ([(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadFixedFloat:v48 toDestination:&v62]& 1) != 0)
      {
        if (v47 && ([(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadFixedFloat:v47 toDestination:&v61]& 1) != 0)
        {
          if (v46 && ([(CBPrimitiveConfigurationProvider *)v67->_backlightConfig loadData:v46 toDestination:&v60]& 1) != 0)
          {
            if (v67->super._logHandle)
            {
              v3 = v67->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v2 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v2 = init_default_corebrightness_log();
              }

              v3 = v2;
            }

            if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_3_8_0_8_0_8_0(v68, COERCE__INT64(v63), COERCE__INT64(v62), COERCE__INT64(v61));
              _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "Ammolite: absLux = %f relLux = %f period = %f", v68, 0x20u);
            }

            CFXInitAmmoliteFromData(v67->_colorStruct.cfx, v64, v60, v63, v62, v61);
            if (v60)
            {
              CFRelease(v60);
            }
          }

          else
          {
            if (v67->super._logHandle)
            {
              v7 = v67->super._logHandle;
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

            v36 = v7;
            v35 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              v4 = v36;
              v5 = v35;
              __os_log_helper_16_0_0(v34);
              _os_log_error_impl(&dword_1DE8E5000, v4, v5, "Unable to read Ammolite table data from device tree", v34, 2u);
            }
          }
        }

        else
        {
          if (v67->super._logHandle)
          {
            v11 = v67->super._logHandle;
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
          v38 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v8 = oslog;
            v9 = v38;
            __os_log_helper_16_0_0(v37);
            _os_log_error_impl(&dword_1DE8E5000, v8, v9, "Unable to read Ammolite period from device tree", v37, 2u);
          }
        }
      }

      else
      {
        if (v67->super._logHandle)
        {
          v15 = v67->super._logHandle;
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

        v42 = v15;
        v41 = 16;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v12 = v42;
          v13 = v41;
          __os_log_helper_16_0_0(v40);
          _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Unable to read Ammolite relative threshold from device tree", v40, 2u);
        }
      }
    }

    else
    {
      if (v67->super._logHandle)
      {
        v19 = v67->super._logHandle;
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

      v45 = v19;
      v44 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = v45;
        v17 = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_1DE8E5000, v16, v17, "Unable to read Ammolite absolute threshold from device tree", v43, 2u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)ammoliteSupported
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = self;
  v9 = a2;
  v8 = 0;
  if (self->_backlightConfig)
  {
    v7 = 0;
    v6 = 0;
    if (([(CBPrimitiveConfigurationProvider *)v10->_backlightConfig loadUint:@"pab-scaler-index" toDestination:&v7]& 1) == 0)
    {
      v8 = -[CBPrimitiveConfigurationProvider loadUint:toDestination:](v10->_backlightConfig, "loadUint:toDestination:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%d", "aml-table-factor", v7], &v6);
    }

    if ((v8 & 1) == 0)
    {
      v8 = [(CBPrimitiveConfigurationProvider *)v10->_backlightConfig loadUint:@"aml-table-factor" toDestination:&v6];
    }
  }

  if (v10->super._logHandle)
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v2 = "";
    }

    else
    {
      v2 = " not";
    }

    __os_log_helper_16_2_1_8_32(v11, v2);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Ammolite%s supported", v11, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)preStrobePropertyHandler:(id)a3
{
  v9 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->_colorStruct.cfx)
  {
    v3 = [a3 intValue] != 0;
    v8 = v3;
    if (v3)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = fmaxf(0.0, self->_preStrobeDimPeriod);
    }

    if (self->_colorStruct.harmonyActive)
    {
      cfx = self->_colorStruct.cfx;
      if (v3)
      {
        CFXSetAmbientAdaptationStrength(cfx, 0.0, v7);
      }

      else
      {
        CFXSetAmbientAdaptationStrength(cfx, self->_colorStruct.harmonyStrength, v7);
      }
    }

    if (self->_colorStruct.nightModeSupported)
    {
      if (v8)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      CFXSetBlueReductionFactorOverride(self->_colorStruct.cfx, v4, v7);
    }

    return 1;
  }

  return v9;
}

- (BOOL)preStrobeDimPeriodPropertyHandler:(id)a3
{
  v5 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 floatValue];
    self->_preStrobeDimPeriod = v3;
    return 1;
  }

  return v5;
}

- (BOOL)CoreBrightnessFeaturesDisabledPropertyHandler:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  if (self->super._logHandle)
  {
    logHandle = v34->super._logHandle;
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

  v31 = logHandle;
  v30 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v35, v32);
    _os_log_debug_impl(&dword_1DE8E5000, v31, v30, "CoreBrightnessFeaturesDisabled handler called with dict %@", v35, 0xCu);
  }

  v29 = 0;
  v28 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v32 objectForKey:@"DisableWPShift"];
  }

  else
  {
    v28 = MEMORY[0x1E695E110];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34->_colorEffectsEnabled = ([v28 BOOLValue] ^ 1) & 1;
    [objc_msgSend(v32 objectForKey:{@"ReenablementRampPeriod", "floatValue"}];
    v27 = v3;
    [objc_msgSend(v32 objectForKey:{@"DisablementRampPeriod", "floatValue"}];
    v26 = v4;
    if (v34->_colorStruct.harmonyActive)
    {
      if (v34->_colorEffectsEnabled)
      {
        if (v34->super._logHandle)
        {
          v17 = v34->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v16 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v16 = init_default_corebrightness_log();
          }

          v17 = v16;
        }

        v25 = v17;
        v24 = 2;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v14 = v25;
          v15 = v24;
          __os_log_helper_16_0_0(v23);
          _os_log_debug_impl(&dword_1DE8E5000, v14, v15, "Suspend harmony: OFF", v23, 2u);
        }

        CFXSuspendHarmony(v34->_colorStruct.cfx, 0, v27);
      }

      else
      {
        if (v34->super._logHandle)
        {
          v13 = v34->super._logHandle;
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

        v22 = v13;
        v21 = 2;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v10 = v22;
          v11 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_debug_impl(&dword_1DE8E5000, v10, v11, "Suspend harmony: ON", v20, 2u);
        }

        CFXSuspendHarmony(v34->_colorStruct.cfx, 1, v26);
      }
    }

    if (v34->_colorStruct.nightModeSupported)
    {
      cfx = v34->_colorStruct.cfx;
      if (!v34->_colorEffectsEnabled)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v9 = v5;
      if (v34->_colorEffectsEnabled)
      {
        CFXSetBlueReductionFactorOverride(cfx, v9, v27);
      }

      else
      {
        CFXSetBlueReductionFactorOverride(cfx, v9, v26);
      }
    }

    if (v34->_ammoliteEnabledStatus)
    {
      if (v34->_colorEffectsEnabled)
      {
        [(CBColorModuleShared *)v34 initAmmolite];
        v6 = CFXAmmoliteEnabled(v34->_colorStruct.cfx);
        v34->_ammoliteEnabledStatus = v6;
      }

      else
      {
        v34->_ammoliteEnabledStatus = 1;
        CFXAmmoliteDisable(v34->_colorStruct.cfx);
      }
    }

    else
    {
      CFXAmmoliteDisable(v34->_colorStruct.cfx);
      v34->_ammoliteEnabledStatus = 0;
    }

    v29 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v29 & 1;
}

- (BOOL)serializedAggregatedConfigPropertyHandler:(id)a3
{
  v5 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(CBColorModuleShared *)self newAggregatedConfigFromSerializedConfig:a3];
    if (v4)
    {
      [(NSMutableDictionary *)self->_properties setObject:v4 forKey:@"CBAggregatedConfig"];
      MEMORY[0x1E69E5920](v4);
    }

    if (self->_aggregatedConfigApplied)
    {
      [(CBColorModuleShared *)self applyAggregatedConfig:1];
    }

    return 1;
  }

  return v5;
}

- (BOOL)applyAggregatedConfigPropertyHandler:(id)a3
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CBColorModuleShared applyAggregatedConfig:](self, "applyAggregatedConfig:", [a3 BOOLValue] & 1);
    return 1;
  }

  return v4;
}

- (id)copyLocalAggregatedConfig
{
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (v6)
  {
    v3 = [(NSMutableDictionary *)self->_properties objectForKey:@"BlueLightReductionCCTTargetKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v3 objectForKey:@"BlueLightReductionCCTTargetValue"];
    }

    if (v3)
    {
      [v6 setObject:v3 forKey:@"BlueLightReductionCCTTargetKey"];
    }

    v4 = [(NSMutableDictionary *)self->_properties objectForKey:@"ColorAdaptationActive"];
    if (v4)
    {
      [v6 setObject:v4 forKey:@"ColorAdaptationActive"];
    }

    v5 = [(NSMutableDictionary *)self->_properties objectForKey:@"BlueLightReductionFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v5 objectForKey:@"BlueLightReductionFactorValue"];
    }

    if (v5)
    {
      [v6 setObject:v5 forKey:@"BlueLightReductionFactor"];
    }
  }

  return v6;
}

- (void)applyAggregatedConfig:(BOOL)a3
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  self->_aggregatedConfigApplied = 0;
  if (a3)
  {
    v13 = [(NSMutableDictionary *)self->_properties objectForKey:@"CBAggregatedConfig"];
    MEMORY[0x1E69E5928](v13);
  }

  else
  {
    v13 = [(CBColorModuleShared *)self copyLocalAggregatedConfig];
    self->_aggregatedConfigApplied = a3;
  }

  if (v13)
  {
    v10 = [v13 objectForKey:@"BlueLightReductionFactor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v10;
    }

    v11 = [v13 objectForKey:@"BlueLightReductionCCTTargetKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v11;
    }

    v12 = [v13 objectForKey:@"ColorAdaptationActive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
    }
  }

  if (v15)
  {
    cfx = self->_colorStruct.cfx;
    [v15 floatValue];
    CFXSetBlueLightReductionTargetCCT(cfx, 0, v4, -1.0, 0.0);
  }

  if (v16)
  {
    [v16 floatValue];
    v8 = LODWORD(v5);
  }

  else
  {
    HIDWORD(v5) = 0;
    v8 = 0;
  }

  LODWORD(v5) = v8;
  LODWORD(v3) = -1.0;
  [(CBColorModuleShared *)self BLRFactorUpdate:1 withPeriod:v5 shouldForceUpdate:v3];
  v7 = self->_colorStruct.cfx;
  if (v14)
  {
    v6 = [v14 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  CFXEnableAmbientAdaptation(v7, v6 != 0);
  MEMORY[0x1E69E5920](v13);
  self->_aggregatedConfigApplied = a3;
}

- (void)enableMitigations:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  if (self->_enableMitigations != a3)
  {
    if (v15)
    {
      v17->_ceModule = [[CBCEModule alloc] initWithQueue:v17->super._queue ceModelID:v17->_ceModelID];
      ceModule = v17->_ceModule;
      v9 = MEMORY[0x1E69E9820];
      v10 = -1073741824;
      v11 = 0;
      v12 = __41__CBColorModuleShared_enableMitigations___block_invoke;
      v13 = &unk_1E867B558;
      v14 = v17;
      [(CBModule *)ceModule registerNotificationBlock:?];
      [(NSMutableArray *)v17->_modules addObject:v17->_ceModule];
      v4 = [CBColorPolicyFilter alloc];
      v8 = [(CBColorPolicyFilter *)v4 initWithID:v17->_ceModelID];
      [(CBColorPolicyFilter *)v8 setModuleObject:v17->_ceModule];
      *&v5 = v17->_ceConfidenceThreshold;
      -[CBColorPolicyFilter setProperty:forKey:](v8, "setProperty:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v5], @"CEConfidenceThreshold");
      [(NSMutableArray *)v17->_filters addObject:v8];
      MEMORY[0x1E69E5920](v8);
      v17->_enableMitigations = 1;
      CFXEnableMitigations(v17->_colorStruct.cfx, v15);
      if (!v17->_confidenceEstimatorStats)
      {
        v6 = [ConfidenceEstimatorStats alloc];
        v7 = [(ConfidenceEstimatorStats *)v6 initWithModelID:v17->_ceModelID];
        v17->_confidenceEstimatorStats = v7;
      }
    }

    v17->_enableMitigations = v15;
  }
}

uint64_t __41__CBColorModuleShared_enableMitigations___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
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

- (BOOL)ttRestrictionReload
{
  v63 = *MEMORY[0x1E69E9840];
  v57 = self;
  v56 = a2;
  v55 = 0;
  v54 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v54)
  {
    [v54 synchronize];
    v53 = [v54 objectForKey:@"TTRestrictionEnable"];
    if (v53)
    {
      v55 = [v53 intValue] != 0;
      if (v57->super._logHandle)
      {
        logHandle = v57->super._logHandle;
      }

      else
      {
        v32 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v32;
      }

      oslog = logHandle;
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v62, v55);
        _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Enable TT restriction = %d\n", v62, 8u);
      }
    }

    if (v55)
    {
      v49 = 0;
      v50 = 0;
      v48 = [v54 objectForKey:@"TTRestriction_th_E"];
      v47 = [v54 objectForKey:@"TTRestriction_th_L"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v48 count];
          if (v31 == [v47 count])
          {
            if ([v48 count])
            {
              if (v57->super._logHandle)
              {
                v30 = v57->super._logHandle;
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

                v30 = inited;
              }

              v46 = v30;
              v45 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                __os_log_helper_16_0_1_8_0(v61, [v48 count]);
                _os_log_impl(&dword_1DE8E5000, v46, v45, "TT restriction: th_E and th_L sizes = %ld\n", v61, 0xCu);
              }

              LOBYTE(v49) = 1;
              v44 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v48, @"TTRestriction_th_E", v47, @"TTRestriction_th_E", 0}];
              memset(__b, 0, sizeof(__b));
              obj = v57->_filters;
              v28 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v60 count:16];
              if (v28)
              {
                v24 = *__b[2];
                v25 = 0;
                v26 = v28;
                while (1)
                {
                  v23 = v25;
                  if (*__b[2] != v24)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v43 = 0;
                  v43 = *(__b[1] + 8 * v25);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v43 setProperty:v44 forKey:@"MitigationBoundaryOverride"];
                  }

                  ++v25;
                  if (v23 + 1 >= v26)
                  {
                    v25 = 0;
                    v26 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v60 count:16];
                    if (!v26)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x1E69E5920](v44);
            }
          }
        }
      }

      v41 = [v54 objectForKey:@"TTRestriction_fade_periods"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 count] == 3)
      {
        if (v57->super._logHandle)
        {
          v22 = v57->super._logHandle;
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

        v40 = v22;
        v39 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [objc_msgSend(v41 objectAtIndexedSubscript:{0), "floatValue"}];
          *&v19 = v2;
          [objc_msgSend(v41 objectAtIndexedSubscript:{1), "floatValue"}];
          *&v20 = v3;
          [objc_msgSend(v41 objectAtIndexedSubscript:{2), "floatValue"}];
          __os_log_helper_16_0_3_8_0_8_0_8_0(v59, v19, v20, COERCE__INT64(v4));
          _os_log_debug_impl(&dword_1DE8E5000, v40, v39, "TT restriction: fade periods = %f %f %f\n", v59, 0x20u);
        }

        [objc_msgSend(v41 objectAtIndexedSubscript:{0), "floatValue"}];
        HIDWORD(v49) = v5;
        [objc_msgSend(v41 objectAtIndexedSubscript:{1), "floatValue"}];
        LODWORD(v50) = v6;
        [objc_msgSend(v41 objectAtIndexedSubscript:{2), "floatValue"}];
        HIDWORD(v50) = v7;
        BYTE1(v49) = 1;
      }

      CFXEnableOverrides(v57->_colorStruct.cfx, &v49);
    }

    else if (v53)
    {
      if (v57->super._logHandle)
      {
        v18 = v57->super._logHandle;
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

      v38 = v18;
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v38;
        v16 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_impl(&dword_1DE8E5000, v15, v16, "TT restriction: Resetting defaults\n", v36, 2u);
      }

      memset(v34, 0, sizeof(v34));
      filters = v57->_filters;
      v14 = [(NSMutableArray *)filters countByEnumeratingWithState:v34 objects:v58 count:16];
      if (v14)
      {
        v10 = *v34[2];
        v11 = 0;
        v12 = v14;
        while (1)
        {
          v9 = v11;
          if (*v34[2] != v10)
          {
            objc_enumerationMutation(filters);
          }

          v35 = 0;
          v35 = *(v34[1] + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v35 resetMitigationBoundaryOverride];
          }

          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [(NSMutableArray *)filters countByEnumeratingWithState:v34 objects:v58 count:16];
            if (!v12)
            {
              break;
            }
          }
        }
      }

      CFXEnableOverrides(v57->_colorStruct.cfx, 0);
    }

    MEMORY[0x1E69E5920](v54);
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)ttRestrictionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a3 intValue] != 0;
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v5;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v11, v8);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Setting TT restriction = %d\n", v11, 8u);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
  if (v7)
  {
    [v7 setObject:a3 forKey:@"TTRestrictionEnable"];
    [v7 synchronize];
    MEMORY[0x1E69E5920](v7);
  }

  v4 = [(CBColorModuleShared *)self ttRestrictionReload];
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)CEEnablePropertyHandler:(id)a3 key:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v17->_filters;
  v10 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = 0;
      v12 = *(__b[1] + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 setProperty:v15 forKey:v14];
        v13 = 1;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)colorFilterModeHandler:(id)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 1;
    v16->_colorFilterModeOverride = [v14 unsignedIntegerValue];
    [(CBColorModuleShared *)v16 updateColorFilterMode];
    memset(__b, 0, 0x3CuLL);
    v8 = [(CBColorFilter *)v16->_colorFilter sample];
    if (v8)
    {
      [(CBColorSample *)v8 colorSample];
    }

    else
    {
      memset(__b, 0, 0x3CuLL);
    }

    [(CBColorModuleShared *)v16 inputAmbientColorSample:__b force:0 trust:1];
  }

  else
  {
    if (v16->super._logHandle)
    {
      logHandle = v16->super._logHandle;
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
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v5 = type;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, log, v5, "unsupported data format", v9, 2u);
    }
  }

  return v13 & 1;
}

- (BOOL)externalDisplayModeHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 BOOLValue];
    if (self->_mirror != (v7 & 1))
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
        if (v7)
        {
          v3 = "";
        }

        else
        {
          v3 = "not ";
        }

        __os_log_helper_16_2_1_8_32(v11, v3);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "External display is %sin mirror mode", v11, 0xCu);
      }
    }

    self->_mirror = v7 & 1;
    [(CBColorModuleShared *)self updateSensorPolicy];
    [(CBColorModuleShared *)self updateColorFilterMode];
    [(CBColorModuleShared *)self updateAvailability];
    v8 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

- (BOOL)displayPresetHarmonyHandler:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_colorStruct.presetDisableHarmony = [a3 BOOLValue];
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
      __os_log_helper_16_0_1_4_0(v9, self->_colorStruct.presetDisableHarmony);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Harmony preset state changed to %d", v9, 8u);
    }

    if (self->_colorStruct.harmonyHWSupported && self->_colorStruct.cfx)
    {
      [(CBColorModuleShared *)self updateAvailability];
    }

    [(CBColorModuleShared *)self sendNotificationForKey:@"CBDisplayPresetDisableHarmony" andValue:a3];
    v6 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)handleHIDEventInternal:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v73 = *MEMORY[0x1E69E9840];
  v66 = self;
  v65 = a2;
  v64 = a3;
  v63 = a4;
  if (self->_colorStruct.moduleType == 3 && IOHIDEventGetType() == 38)
  {
    IOHIDEventGetFloatValue();
    *&v4 = v4;
    v62 = *&v4;
    IOHIDEventGetFloatValue();
    *&v5 = v5;
    v61 = *&v5;
    v60 = IOHIDEventGetIntegerValue() / 1000000.0;
    harmonyStrength = v66->_colorStruct.harmonyStrength;
    v58 = 0;
    if (v61 >= 0.0 && v61 <= 1.0)
    {
      v57 = 1035489772;
      v6 = 0.27 - (0.09 * v61);
      harmonyStrength = v6;
      v58 = 1;
    }

    if ((v58 & 1) != 0 && v66->_colorStruct.harmonyHWSupported && v66->_colorStruct.cfx)
    {
      v66->_colorStruct.harmonyStrength = harmonyStrength;
      if (v66->_colorStruct.harmonyFixedStrength < 0.0)
      {
        CFXSetAmbientAdaptationStrength(v66->_colorStruct.cfx, v66->_colorStruct.harmonyStrength, v60);
      }

      if (v66->super._logHandle)
      {
        logHandle = v66->super._logHandle;
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
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v72, COERCE__INT64(v62), COERCE__INT64(v61), COERCE__INT64(v60), COERCE__INT64(v66->_colorStruct.harmonyStrength));
        _os_log_impl(&dword_1DE8E5000, oslog, type, "Keyboard brightness event: current = %f, target = %f, period = %f -> DFR strength = %f", v72, 0x2Au);
      }
    }

    goto LABEL_93;
  }

  v54 = [CBHIDEvent newEvent:v64 andService:v63];
  if (!v54)
  {
    goto LABEL_93;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_92:
    MEMORY[0x1E69E5920](v54);
    goto LABEL_93;
  }

  if (!v66->_displayOn)
  {
    [(NSMutableDictionary *)v66->_pendingALSSamples setObject:v54 forKey:[(CBColorModuleShared *)v66 getRegistryIDForHIDServiceClient:v63]];
    if (v66->super._logHandle)
    {
      v34 = v66->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v33 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v33 = init_default_corebrightness_log();
      }

      v34 = v33;
    }

    v53 = v34;
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v71, v54);
      _os_log_impl(&dword_1DE8E5000, v53, v52, "ALS event arrived when display OFF %{public}@", v71, 0xCu);
    }

    MEMORY[0x1E69E5920](v54);
    goto LABEL_93;
  }

  if (!v66->_firstALSEventArrived || !v66->_nfcCoex || ![(StockholmALSCoexHandler *)v66->_nfcCoex dropALSColorSamples])
  {
    memset(__b, 0, sizeof(__b));
    obj = [(NSMutableDictionary *)v66->_alsNodes allValues];
    v30 = [obj countByEnumeratingWithState:__b objects:v69 count:16];
    if (v30)
    {
      v26 = *__b[2];
      v27 = 0;
      v28 = v30;
      while (1)
      {
        v25 = v27;
        if (*__b[2] != v26)
        {
          objc_enumerationMutation(obj);
        }

        v49 = 0;
        v49 = *(__b[1] + 8 * v27);
        if ([v49 handleALSEvent:v54])
        {
          break;
        }

        ++v27;
        if (v25 + 1 >= v28)
        {
          v27 = 0;
          v28 = [obj countByEnumeratingWithState:__b objects:v69 count:16];
          if (!v28)
          {
            break;
          }
        }
      }
    }

    [(CBColorFilter *)v66->_colorFilter acknowledgeHIDEvent:v64 from:v63];
    if (!v66->_firstALSEventArrived)
    {
      v66->_firstALSEventArrived = 1;
      if (v66->super._logHandle)
      {
        v24 = v66->super._logHandle;
      }

      else
      {
        v23 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v24 = v23;
      }

      v47 = v24;
      v46 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v68, v54);
        _os_log_impl(&dword_1DE8E5000, v47, v46, "First ALS event arrived %{public}@", v68, 0xCu);
      }
    }

    if (!v66->_allALSEventsArrived)
    {
      v7 = [(CBColorFilter *)v66->_colorFilter allValidALSEventsArrived];
      v66->_allALSEventsArrived = v7;
      if (v66->_allALSEventsArrived)
      {
        v66->_forceColorUpdate = 1;
        v66->_potentiallyBustedALS = 0;
        if (v66->super._logHandle)
        {
          v22 = v66->super._logHandle;
        }

        else
        {
          v21 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v22 = v21;
        }

        v45 = v22;
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v45;
          v20 = v44;
          __os_log_helper_16_0_0(v43);
          _os_log_impl(&dword_1DE8E5000, v19, v20, "All ALS events arrived.", v43, 2u);
        }
      }
    }

    if (v66->_allALSEventsArrived || v66->_potentiallyBustedALS || v66->_continueWithFewerALSs)
    {
      [(CBColorModuleShared *)v66 cancelFirstSampleTimeout];
    }

    memset(v41, 0, sizeof(v41));
    filters = v66->_filters;
    v18 = [(NSMutableArray *)filters countByEnumeratingWithState:v41 objects:v67 count:16];
    if (v18)
    {
      v14 = *v41[2];
      v15 = 0;
      v16 = v18;
      while (1)
      {
        v13 = v15;
        if (*v41[2] != v14)
        {
          objc_enumerationMutation(filters);
        }

        v42 = 0;
        v42 = *(v41[1] + 8 * v15);
        v40 = [v42 filterEvent:v54];
        MEMORY[0x1E69E5928](v40);
        *&v8 = MEMORY[0x1E69E5920](v54).n128_u64[0];
        v54 = v40;
        if (!v40)
        {
          break;
        }

        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [(NSMutableArray *)filters countByEnumeratingWithState:v41 objects:v67 count:16, v8];
          if (!v16)
          {
            goto LABEL_90;
          }
        }
      }

      if (v66->super._logHandle)
      {
        v12 = v66->super._logHandle;
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

      v39 = v12;
      v38 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v39;
        v10 = v38;
        __os_log_helper_16_0_0(v37);
        _os_log_impl(&dword_1DE8E5000, v9, v10, "ALS event discarded.", v37, 2u);
      }
    }

LABEL_90:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBColorModuleShared *)v66 handleALSEvent:v54];
      [(CBColorModuleShared *)v66 updateSensorSensitivity:v63 forValue:v64];
    }

    goto LABEL_92;
  }

  if (v66->super._logHandle)
  {
    v32 = v66->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v31 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v31 = init_default_corebrightness_log();
    }

    v32 = v31;
  }

  v51 = v32;
  v50 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_66(v70, v54);
    _os_log_impl(&dword_1DE8E5000, v51, v50, "Dropping ALS event %{public}@ [Stockholm (NFC) CoEx enabled]", v70, 0xCu);
  }

  MEMORY[0x1E69E5920](v54);
LABEL_93:
  *MEMORY[0x1E69E9840];
}

- (void)handleALSEvent:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  if (self->super._logHandle)
  {
    logHandle = v34->super._logHandle;
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

  v31 = logHandle;
  v30 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v38, [v32 orientation]);
    _os_log_debug_impl(&dword_1DE8E5000, v31, v30, "ALS event with orientation = %d", v38, 8u);
  }

  if ([(CBColorModuleShared *)v34 ignoreALSEventsInAOD])
  {
    if (v34->super._logHandle)
    {
      v17 = v34->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v16 = init_default_corebrightness_log();
      }

      v17 = v16;
    }

    v29 = v17;
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v37, v32);
      _os_log_impl(&dword_1DE8E5000, v29, v28, "AOD is on -> ignore this ALS event %@", v37, 0xCu);
    }
  }

  else if (v32)
  {
    ++v34->_NSamples;
    if (v34->_allALSEventsArrived || v34->_potentiallyBustedALS || v34->_continueWithFewerALSs)
    {
      v27 = 0;
      if (v34->_forceColorUpdate)
      {
        v27 = 1;
        v34->_forceColorUpdate = 0;
      }

      memset(__b, 0, sizeof(__b));
      obj = v34->_filters;
      v15 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v36 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(obj);
          }

          v26 = 0;
          v26 = *(__b[1] + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v32 colorMitigationTriggered];
            [v26 filteredStrength];
            v23 = v3;
            [v32 strength];
            v22 = v4;
            [v32 confidence];
            v21 = v5;
            CFXTriggerMitigation(v34->_colorStruct.cfx, v24 & 1);
            CFXSetFadeDuration(v34->_colorStruct.cfx, v24 & 1);
            CFXSetSampleStrength(v34->_colorStruct.cfx, v23);
            if (v22 != 0.0 && v21 != 0.0 && v34->_confidenceEstimatorStats)
            {
              *&v6 = v22;
              *&v7 = v21;
              [(ConfidenceEstimatorStats *)v34->_confidenceEstimatorStats collectStrength:v6 andConfidence:v7];
            }
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v36 count:16];
            if (!v13)
            {
              break;
            }
          }
        }
      }

      memset(v20, 0, sizeof(v20));
      if (v32)
      {
        [v32 colorSample];
      }

      else
      {
        memset(v20, 0, sizeof(v20));
      }

      [(CBColorModuleShared *)v34 inputAmbientColorSample:v20 force:v27 & 1 trust:1];
      if (v34->super._logHandle)
      {
        v9 = v34->super._logHandle;
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_66(v35, v32);
        _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Set ambient color sample %{public}@", v35, 0xCu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)getRegistryIDForHIDServiceClient:(__IOHIDServiceClient *)a3
{
  cf = IOHIDServiceClientGetRegistryID(a3);
  v5 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      return cf;
    }
  }

  return v5;
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = 0;
  if (a3 && v15)
  {
    CFRetain(v16);
    CFRetain(v15);
    queue = v18->super._queue;
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __43__CBColorModuleShared_handleHIDEvent_from___block_invoke;
    v10 = &unk_1E867B5A0;
    v11 = v18;
    v12 = v15;
    v13 = v16;
    dispatch_async(queue, &v6);
    return 1;
  }

  return v14;
}

void __43__CBColorModuleShared_handleHIDEvent_from___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getRegistryIDForHIDServiceClient:*(a1 + 40)];
  if (v2 && [*(*(a1 + 32) + 56) objectForKey:v2] || (objc_msgSend(*(*(a1 + 32) + 48), "containsObject:", *(a1 + 40)) & 1) != 0)
  {
    [*(a1 + 32) handleHIDEventInternal:*(a1 + 48) from:*(a1 + 40)];
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 40));
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v120 = *MEMORY[0x1E69E9840];
  v113 = self;
  v112 = a2;
  v111 = a3;
  v110 = 0;
  if (a3)
  {
    if (v113->super._logHandle)
    {
      logHandle = v113->super._logHandle;
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

    v106 = logHandle;
    v105 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v38 = v106;
      v39 = v105;
      __os_log_helper_16_0_0(v104);
      _os_log_debug_impl(&dword_1DE8E5000, v38, v39, "Check if the service is ALS", v104, 2u);
    }

    if (IOHIDServiceClientConformsTo(v111, 0x20u, 0x41u) || IOHIDServiceClientConformsTo(v111, 0xFF00u, 4u))
    {
      v103 = [[CBALSNode alloc] initWithALSServiceClient:v111];
      v102 = [(CBColorModuleShared *)v113 getRegistryIDForHIDServiceClient:v111];
      if (v113->_colorStruct.moduleType == 2)
      {
        if ([(CBALSNode *)v103 colorSupport])
        {
          [(CBColorFilter *)v113->_colorFilter addHIDServiceClient:v111];
          [(NSMutableDictionary *)v113->_alsNodes setObject:v103 forKey:v102];
          [(CBColorModuleShared *)v113 activateColorAdaptation];
          v113->_colorStruct.harmonyAvailable = 1;
          [(NSMutableDictionary *)v113->_properties setObject:MEMORY[0x1E695E118] forKey:@"ColorAdaptationAvailable"];
          [(CBColorModuleShared *)v113 sendNotificationForKey:@"ColorAdaptationAvailable" andValue:MEMORY[0x1E695E118]];
          [(CBColorModuleShared *)v113 updateColorFilterMode];
          [(CBColorModuleShared *)v113 updateSensorPolicy];
          [(CBColorModuleShared *)v113 updateActivity];
          if (v113->super._logHandle)
          {
            v37 = v113->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v36 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v36 = init_default_corebrightness_log();
            }

            v37 = v36;
          }

          v101 = v37;
          v100 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v101;
            v35 = v100;
            __os_log_helper_16_0_0(v99);
            _os_log_impl(&dword_1DE8E5000, v34, v35, "Found a Color ALS", v99, 2u);
          }

          v110 = 1;
        }
      }

      else if (v113->_colorStruct.moduleType == 1)
      {
        memset(__b, 0, sizeof(__b));
        obj = v113->_filters;
        v33 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v119 count:16];
        if (v33)
        {
          v29 = *__b[2];
          v30 = 0;
          v31 = v33;
          while (1)
          {
            v28 = v30;
            if (*__b[2] != v29)
            {
              objc_enumerationMutation(obj);
            }

            v98 = 0;
            v98 = *(__b[1] + 8 * v30);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v98 setIsActive:{(objc_msgSend(v98, "isActive") & -[CBALSNode useProxForOcclusion](v103, "useProxForOcclusion")) != 0}];
            }

            ++v30;
            if (v28 + 1 >= v31)
            {
              v30 = 0;
              v31 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v119 count:16];
              if (!v31)
              {
                break;
              }
            }
          }
        }

        v96 = [(CBALSNode *)v103 colorSupport];
        if (v113->super._logHandle)
        {
          v27 = v113->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v26 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v26 = init_default_corebrightness_log();
          }

          v27 = v26;
        }

        v95 = v27;
        v94 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_4_0(v118, v96);
          _os_log_debug_impl(&dword_1DE8E5000, v95, v94, "Color support %d", v118, 8u);
        }

        if (v96 || v113->_supportsAmmoliteWithoutColor || (CBU_IsR2RSupported() & 1) != 0)
        {
          [(CBColorFilter *)v113->_colorFilter addHIDServiceClient:v111];
          if ([(CBALSNode *)v103 colorMitigation])
          {
            v113->_ceModelID = [(CBALSNode *)v103 ceModel];
            [(CBALSNode *)v103 ceThreshold];
            v113->_ceConfidenceThreshold = v3;
            if (v113->super._logHandle)
            {
              v25 = v113->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v24 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v24 = init_default_corebrightness_log();
              }

              v25 = v24;
            }

            v93 = v25;
            v92 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_4_0(v117, v113->_ceModelID);
              _os_log_impl(&dword_1DE8E5000, v93, v92, "CE Model being used:%d", v117, 8u);
            }

            if (v113->super._logHandle)
            {
              v23 = v113->super._logHandle;
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                v22 = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                v22 = init_default_corebrightness_log();
              }

              v23 = v22;
            }

            v91 = v23;
            v90 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              __os_log_helper_16_0_1_8_0(v116, COERCE__INT64(v113->_ceConfidenceThreshold));
              _os_log_impl(&dword_1DE8E5000, v91, v90, "CE Confidence threshold:%f", v116, 0xCu);
            }
          }

          if (v103 && v102)
          {
            [(NSMutableDictionary *)v113->_alsNodes setObject:v103 forKey:v102];
            v113->_useCopyEventOnDisplayWake = (v113->_useCopyEventOnDisplayWake | [(CBALSNode *)v103 useCopyEventOnDisplayWake]) != 0;
            v89 = [[CBDigitizerFilter alloc] initWithALSNode:v103 andLogCategory:"color"];
            [(CBFilter *)v89 scheduleWithDispatchQueue:v113->super._queue];
            v83[0] = 0;
            v83[1] = v83;
            v84 = 1375731712;
            v85 = 48;
            v86 = __Block_byref_object_copy__22;
            v87 = __Block_byref_object_dispose__22;
            v88 = v113;
            v77 = MEMORY[0x1E69E9820];
            v78 = -1073741824;
            v79 = 0;
            v80 = __43__CBColorModuleShared_addHIDServiceClient___block_invoke;
            v81 = &unk_1E867BC08;
            v82 = v83;
            [(CBFilter *)v89 registerNotificationBlock:?];
            [(NSMutableArray *)v113->_filters insertObject:v89 atIndex:0];
            _Block_object_dispose(v83, 8);
          }

          [(CBColorModuleShared *)v113 activateColorAdaptation];
          [(CBColorModuleShared *)v113 updateColorFilterMode];
          [(CBColorModuleShared *)v113 updateSensorPolicy];
          [(CBColorModuleShared *)v113 updateAvailability];
          v110 = 1;
          v76 = [(CBALSNode *)v103 copyEvent];
          if (v76)
          {
            [(CBColorModuleShared *)v113 handleHIDEvent:v76 from:v111];
            CFRelease(v76);
          }
        }
      }

      MEMORY[0x1E69E5920](v103);
    }

    else if (IOHIDServiceClientConformsTo(v111, 0xFF00u, 8u))
    {
      if (v113->super._logHandle)
      {
        v21 = v113->super._logHandle;
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

      v75 = v21;
      v74 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v18 = v75;
        v19 = v74;
        __os_log_helper_16_0_0(v73);
        _os_log_impl(&dword_1DE8E5000, v18, v19, "Incoming proximity sensor service", v73, 2u);
      }

      [(NSMutableArray *)v113->_relevantServices addObject:v111];
      v72 = objc_alloc_init(CBProxFilter);
      [(CBFilter *)v72 scheduleWithDispatchQueue:v113->super._queue];
      alsNodes = v113->_alsNodes;
      v66 = MEMORY[0x1E69E9820];
      v67 = -1073741824;
      v68 = 0;
      v69 = __43__CBColorModuleShared_addHIDServiceClient___block_invoke_214;
      v70 = &unk_1E867D340;
      v71 = v72;
      [(NSMutableDictionary *)alsNodes enumerateKeysAndObjectsUsingBlock:?];
      v60[0] = 0;
      v60[1] = v60;
      v61 = 1375731712;
      v62 = 48;
      v63 = __Block_byref_object_copy__22;
      v64 = __Block_byref_object_dispose__22;
      v65 = v113;
      v54 = MEMORY[0x1E69E9820];
      v55 = -1073741824;
      v56 = 0;
      v57 = __43__CBColorModuleShared_addHIDServiceClient___block_invoke_2;
      v58 = &unk_1E867BC08;
      v59 = v60;
      [(CBFilter *)v72 registerNotificationBlock:?];
      [(NSMutableArray *)v113->_filters insertObject:v72 atIndex:0];
      v110 = 1;
      _Block_object_dispose(v60, 8);
    }

    else if (IOHIDServiceClientConformsTo(v111, 0xDu, 4u) || IOHIDServiceClientConformsTo(v111, 0xDu, 0xCu))
    {
      if (v113->super._logHandle)
      {
        v17 = v113->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v16 = init_default_corebrightness_log();
        }

        v17 = v16;
      }

      oslog = v17;
      v52 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v14 = oslog;
        v15 = v52;
        __os_log_helper_16_0_0(v51);
        _os_log_impl(&dword_1DE8E5000, v14, v15, "Incoming multiple point digitizer service", v51, 2u);
      }

      [(NSMutableArray *)v113->_relevantServices addObject:v111];
      v110 = 1;
    }

    else if (v113->_colorStruct.moduleType == 3 && IOHIDServiceClientConformsTo(v111, 0xFF00u, 0xFu))
    {
      [(NSMutableArray *)v113->_relevantServices addObject:v111];
      v110 = 1;
    }

    else if (v113->_colorStruct.moduleType == 3 && IOHIDServiceClientConformsTo(v111, 0xFF12u, 1u))
    {
      v50 = 0;
      cf = IOHIDServiceClientCopyProperty(v111, @"DFRWhitepointSupport");
      if (cf)
      {
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(cf))
        {
          v50 = cf == *MEMORY[0x1E695E4D0];
        }

        else
        {
          v12 = CFNumberGetTypeID();
          if (v12 == CFGetTypeID(cf))
          {
            v50 = [cf BOOLValue];
          }
        }

        CFRelease(cf);
      }

      if (v50)
      {
        v113->_dfr = v111;
        CFRetain(v113->_dfr);
        v110 = 1;
        if (v113->super._logHandle)
        {
          v11 = v113->super._logHandle;
        }

        else
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v11 = v10;
        }

        v48 = v11;
        v47 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v8 = v48;
          v9 = v47;
          __os_log_helper_16_0_0(v46);
          _os_log_impl(&dword_1DE8E5000, v8, v9, "acquired DFR service for whitepoint", v46, 2u);
        }
      }
    }

    if (v113->super._logHandle)
    {
      v7 = v113->super._logHandle;
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_0_4_0_8_64(v115, v111, v110 & 1, v113->_relevantServices);
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "service: %p relevant:%d services-> %@", v115, 0x1Cu);
    }

    v114 = v110 & 1;
  }

  else
  {
    if (v113->super._logHandle)
    {
      v45 = v113->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v44 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v44 = init_default_corebrightness_log();
      }

      v45 = v44;
    }

    v109 = v45;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      log = v109;
      v43 = type;
      __os_log_helper_16_0_0(v107);
      _os_log_error_impl(&dword_1DE8E5000, log, v43, "HID service client pointer is NULL", v107, 2u);
    }

    v114 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v114 & 1;
}

uint64_t __43__CBColorModuleShared_addHIDServiceClient___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(*(*(result + 32) + 8) + 40) + 16))
    {
      v4 = *(*(*(*(result + 32) + 8) + 40) + 16);
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

    result = [*(*(*(v5 + 32) + 8) + 40) handleFilterNotificationForKey:a2 withProperty:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __43__CBColorModuleShared_addHIDServiceClient___block_invoke_214(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    return [*(a1 + 32) setIsActive:{(objc_msgSend(*(a1 + 32), "isActive") & objc_msgSend(a3, "useProxForOcclusion")) != 0}];
  }

  return result;
}

uint64_t __43__CBColorModuleShared_addHIDServiceClient___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    if (*(*(*(*(result + 32) + 8) + 40) + 16))
    {
      v4 = *(*(*(*(result + 32) + 8) + 40) + 16);
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

    result = [*(*(*(v5 + 32) + 8) + 40) handleFilterNotificationForKey:a2 withProperty:a3];
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(CBColorModuleShared *)self getRegistryIDForHIDServiceClient:a3];
  [(CBColorFilter *)self->_colorFilter removeHIDServiceClient:a3];
  if (v4)
  {
    if ([(NSMutableDictionary *)self->_alsNodes objectForKey:v4])
    {
      [(NSMutableDictionary *)self->_alsNodes removeObjectForKey:v4];
      [(CBColorModuleShared *)self updateAvailability];
      [(CBColorModuleShared *)self updateActivity];
    }

    [(NSMutableDictionary *)self->_currentChromaticitySensitivity removeObjectForKey:v4];
  }

  if (([(NSMutableArray *)self->_relevantServices containsObject:a3]& 1) != 0)
  {
    [(NSMutableArray *)self->_relevantServices removeObject:a3];
  }

  [(CBColorModuleShared *)self updateColorFilterMode];
  [(CBColorModuleShared *)self updateSensorPolicy];
  if (a3 == self->_dfr)
  {
    CFRelease(self->_dfr);
    self->_dfr = 0;
  }

  return 1;
}

- (void)updateHarmonySupport
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  harmonySystemSupported = self->_colorStruct.harmonySystemSupported;
  v25->_colorStruct.harmonySystemSupported = -[NSMutableArray count](self->_relevantServices, "count") || [-[NSMutableDictionary allKeys](v25->_alsNodes "allKeys")] || -[CBColorModuleShared supportsColorRepairability](v25, "supportsColorRepairability");
  if (harmonySystemSupported != v25->_colorStruct.harmonySystemSupported)
  {
    if (v25->super._logHandle)
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

    v22 = logHandle;
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v28, v25->_colorStruct.harmonySystemSupported);
      _os_log_impl(&dword_1DE8E5000, v22, v21, "supported = %d", v28, 8u);
    }

    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = MEMORY[0x1E695E110];
    if (v25->_colorStruct.harmonySystemSupported)
    {
      v4 = MEMORY[0x1E695E118];
    }

    else
    {
      v4 = MEMORY[0x1E695E110];
    }

    if (v25->_colorStruct.nightModeSupported)
    {
      v3 = MEMORY[0x1E695E118];
    }

    v20 = [v2 initWithObjectsAndKeys:{v4, @"SupportsAmbientColorAdaptation", v3, @"SupportsNightMode", 0}];
    if (v20)
    {
      [(NSMutableDictionary *)v25->_properties setObject:v20 forKey:?];
      [(CBColorModuleShared *)v25 sendNotificationForKey:@"SupportedColorFX" andValue:v20];
    }

    MEMORY[0x1E69E5920](v20);
  }

  v19 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v25->_alsNodes allValues];
  v13 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v18 = 0;
      v18 = *(__b[1] + 8 * v10);
      if ([v18 builtIn])
      {
        v19 = 1;
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  if ((v19 & 1) != v25->_colorStruct.harmonyNativeSupported)
  {
    if (v25->super._logHandle)
    {
      v7 = v25->super._logHandle;
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
      __os_log_helper_16_0_1_4_0(v26, v25->_colorStruct.harmonyNativeSupported);
      _os_log_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEFAULT, "supported native = %d", v26, 8u);
    }

    v25->_colorStruct.harmonyNativeSupported = v19 & 1;
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    v16 = [v5 initWithBool:v25->_colorStruct.harmonyNativeSupported];
    if (v16)
    {
      [(NSMutableDictionary *)v25->_properties setObject:v16 forKey:?];
      [(CBColorModuleShared *)v25 sendNotificationForKey:@"ColorAdaptationIntegratedSupport " andValue:v16];
    }

    MEMORY[0x1E69E5920](v16);
  }

  *MEMORY[0x1E69E9840];
}

- (void)updateAvailability
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  harmonyAvailable = self->_colorStruct.harmonyAvailable;
  v24 = 0;
  v23 = 0;
  v18 = 1;
  if (!self->_clamshell)
  {
    mirror = 0;
    if (v27->_colorStruct.moduleType == 2)
    {
      mirror = v27->_mirror;
    }

    v18 = mirror;
  }

  v22 = v18 & 1;
  if (v18)
  {
    if ([(CBColorModuleShared *)v27 hasExternalALS])
    {
      v27->_colorStruct.harmonyAvailable = 1;
      v23 = 1;
    }

    else
    {
      v27->_colorStruct.harmonyAvailable = 0;
    }
  }

  else if ([(CBColorModuleShared *)v27 supportsColorRepairability])
  {
    v27->_colorStruct.harmonyAvailable = 1;
    v24 = 1;
  }

  else
  {
    v27->_colorStruct.harmonyAvailable = 0;
    memset(__b, 0, sizeof(__b));
    obj = [(NSMutableDictionary *)v27->_alsNodes allValues];
    v16 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v21 = 0;
        v21 = *(__b[1] + 8 * v13);
        if ([v21 colorSupport])
        {
          break;
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v14)
          {
            goto LABEL_19;
          }
        }
      }

      v27->_colorStruct.harmonyAvailable = 1;
      v23 = 1;
    }
  }

LABEL_19:
  if (v27->_colorStruct.presetDisableHarmony)
  {
    v27->_colorStruct.harmonyAvailable = 0;
    if (v27->super._logHandle)
    {
      logHandle = v27->super._logHandle;
    }

    else
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v9;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v29, v27->_colorStruct.harmonyAvailable);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "harmony available: %d (preset overrides availability)", v29, 8u);
    }
  }

  if (v27->super._logHandle)
  {
    v8 = v27->super._logHandle;
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

    v8 = inited;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (v23)
    {
      v2 = "available";
    }

    else
    {
      v2 = "unavailable";
    }

    __os_log_helper_16_2_4_4_0_4_0_8_32_4_0(v28, v27->_colorStruct.harmonyAvailable, v27->_clamshell, v2, v24 & 1);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "harmony available: %d (clamshell: %d | color ALS %s | overriden: %d)", v28, 0x1Eu);
  }

  if (v27->_colorStruct.harmonyAvailable)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  [(NSMutableDictionary *)v27->_properties setObject:v3 forKey:@"ColorAdaptationAvailable", &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets];
  if (harmonyAvailable != (*(&v27->_brightnessControlProxy + *(v6 + 2644) + 6) & 1))
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    v19 = [v5 initWithBool:v27->_colorStruct.harmonyAvailable];
    if (v19)
    {
      [(CBColorModuleShared *)v27 sendNotificationForKey:@"ColorAdaptationAvailable" andValue:v19];
    }

    *&v4 = MEMORY[0x1E69E5920](v19).n128_u64[0];
  }

  [(CBColorModuleShared *)v27 updateHarmonySupport];
  [(CBColorModuleShared *)v27 updateActivity];
  *MEMORY[0x1E69E9840];
}

- (BOOL)supportsColorRepairability
{
  v3 = 0;
  if (CBU_IsR2RSupported())
  {
    return self->_colorStruct.moduleType == 1;
  }

  return v3;
}

- (void)updateActivity
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  harmonyActive = self->_colorStruct.harmonyActive;
  harmonyAvailable = 0;
  if (self->_colorStruct.harmonyEnabled)
  {
    harmonyAvailable = v34->_colorStruct.harmonyAvailable;
  }

  v34->_colorStruct.harmonyActive = harmonyAvailable;
  v18 = 0;
  if (v34->_colorStruct.harmonyActive)
  {
    v18 = !v34->_colorStruct.presetDisableHarmony;
  }

  v34->_colorStruct.harmonyActive = v18;
  if (harmonyActive != v34->_colorStruct.harmonyActive)
  {
    if (v34->super._logHandle)
    {
      logHandle = v34->super._logHandle;
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

    v31 = logHandle;
    v30 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_3_4_0_4_0_4_0(v36, v34->_colorStruct.harmonyActive, v34->_colorStruct.harmonyEnabled, v34->_colorStruct.harmonyAvailable);
      _os_log_impl(&dword_1DE8E5000, v31, v30, "harmony active: %d (enabled=%d available=%d)", v36, 0x14u);
    }

    if (v34->_colorStruct.harmonyActive)
    {
      alsNodes = v34->_alsNodes;
      v24 = MEMORY[0x1E69E9820];
      v25 = -1073741824;
      v26 = 0;
      v27 = __37__CBColorModuleShared_updateActivity__block_invoke;
      v28 = &unk_1E867D340;
      v29 = v34;
      [(NSMutableDictionary *)alsNodes enumerateKeysAndObjectsUsingBlock:?];
      if (v34->_colorStruct.moduleType == 2)
      {
        if ([(CBColorFilter *)v34->_colorFilter forceSampleUpdate])
        {
          memset(__b, 0, sizeof(__b));
          v15 = [(CBColorFilter *)v34->_colorFilter sample];
          if (v15)
          {
            [(CBColorSample *)v15 colorSample];
          }

          else
          {
            memset(__b, 0, sizeof(__b));
          }

          [(CBColorModuleShared *)v34 inputAmbientColorSample:__b force:1 trust:1];
        }

        else
        {
          if (v34->super._logHandle)
          {
            v14 = v34->super._logHandle;
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

          v22 = v14;
          v21 = 16;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v11 = v22;
            v12 = v21;
            __os_log_helper_16_0_0(v20);
            _os_log_error_impl(&dword_1DE8E5000, v11, v12, "EXTERNAL: failed to retrieve event", v20, 2u);
          }
        }
      }
    }

    else
    {
      [(NSMutableDictionary *)v34->_alsNodes enumerateKeysAndObjectsUsingBlock:?];
    }

    if (!v34->_aggregatedConfigApplied)
    {
      if (v34->super._logHandle)
      {
        v10 = v34->super._logHandle;
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_3_4_0_4_0_4_0(v35, v34->_colorStruct.harmonyActive, v34->_colorStruct.harmonyEnabled, v34->_colorStruct.harmonyAvailable);
        _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_INFO, "harmony active: %d (enabled=%d available=%d)", v35, 0x14u);
      }

      CFXEnableAmbientAdaptation(v34->_colorStruct.cfx, v34->_colorStruct.harmonyActive);
    }

    v7 = MEMORY[0x1E695E110];
    v8 = MEMORY[0x1E695E118];
    if (v34->_colorStruct.harmonyActive)
    {
      v3 = MEMORY[0x1E695E118];
    }

    else
    {
      v3 = MEMORY[0x1E695E110];
    }

    [(NSMutableDictionary *)v34->_properties setObject:v3 forKey:&OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets];
    if (*(&v34->_brightnessControlProxy + *(v6 + 2644) + 5))
    {
      v4 = v8;
    }

    else
    {
      v4 = v7;
    }

    [(CBColorModuleShared *)v34 sendNotificationForKey:@"ColorAdaptationActive" andValue:v4];
    if (*(&v34->_brightnessControlProxy + *(v6 + 2644) + 5))
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }

    [(CBColorModuleShared *)v34 updateAggregatedConfigWithObject:v5 forKey:@"ColorAdaptationActive"];
  }

  *MEMORY[0x1E69E9840];
}

void __37__CBColorModuleShared_updateActivity__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a1;
  v12 = [a3 copyEvent];
  if (v12)
  {
    [*(a1 + 32) handleHIDEventInternal:v12 from:{objc_msgSend(v15, "alsService")}];
    CFRelease(v12);
  }

  else
  {
    if (*(*(a1 + 32) + 16))
    {
      v7 = *(*(a1 + 32) + 16);
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

    v11 = v7;
    v10 = 16;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to retrieve event", v9, 2u);
    }
  }
}

- (void)colorRampRoutine:(id *)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v79 = self;
  v78 = a2;
  v77 = a3;
  if (a3)
  {
    var0 = v77->var0;
    v75 = 0;
    v74 = 0;
    CFXGetWPFromMatrix(v79->_colorStruct.cfx, v77->var1, &v75, &v74);
    context = objc_autoreleasePoolPush();
    v51 = objc_alloc(MEMORY[0x1E695DF20]);
    v48 = 0x1E696A000uLL;
    LODWORD(v3) = v75;
    v50 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
    LODWORD(v4) = HIDWORD(v75);
    v49 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    LODWORD(v5) = v74;
    v73 = [v51 initWithObjectsAndKeys:{v50, @"xWP", v49, @"yWP", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v5), @"YWP", 0}];
    objc_autoreleasePoolPop(context);
    [(CBColorModuleShared *)v79 sendNotificationForKey:@"CBTargetWhitePoint" andValue:v73];
    *&v6 = MEMORY[0x1E69E5920](v73).n128_u64[0];
    v72 = 0;
    var5 = v77->var5;
    if (var5)
    {
      switch(var5)
      {
        case 1:
          v72 = @"ColorRampBLR";
          break;
        case 2:
          v72 = @"ColorRampHarmony";
          break;
        case 3:
          v72 = @"ColorRampAmmolite";
          break;
        default:
          if (v79->super._logHandle)
          {
            logHandle = v79->super._logHandle;
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

          v71 = logHandle;
          v70 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            log = v71;
            *type = v70;
            v7 = v77->var5;
            buf = v83;
            __os_log_helper_16_0_1_4_0(v83, v7);
            _os_log_error_impl(&dword_1DE8E5000, v71, v70, "Unknown ramp type: %d. Reporting as kCBColorRamp", v83, 8u);
          }

          v72 = @"ColorRamp";
          break;
      }
    }

    else
    {
      v72 = @"ColorRamp";
    }

    if (v79->_brightnessControlProxy && ([(__CFString *)v72 isEqual:@"ColorRamp", v6]& 1) != 0)
    {
      v42 = objc_autoreleasePoolPush();
      for (i = 0; i < 9; ++i)
      {
        *&v8 = v77->var1[i];
        v82[i] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
      }

      if (v79->super._logHandle)
      {
        v41 = v79->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v40 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v40 = init_default_corebrightness_log();
        }

        v41 = v40;
      }

      v68 = v41;
      v67 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v37 = v68;
        *v38 = v67;
        *&v9 = v77->var4.var0;
        *&v10 = v77->var4.var1;
        v39 = v81;
        __os_log_helper_16_0_3_8_0_8_0_8_0(v81, v9, v10, COERCE__INT64(var0));
        _os_log_impl(&dword_1DE8E5000, v68, v67, "Calling brightness control with whitepoint(%f | %f) and period: %f", v81, 0x20u);
      }

      if (![+[CBAODState isAODActive] sharedInstance]
      {
        v35 = &v66;
        v66 = 0;
        brightnessControlProxy = v79->_brightnessControlProxy;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:9];
        if (([(CBBrightnessProxy *)brightnessControlProxy setWhitePoint:v11 rampDuration:&v66 error:var0]& 1) == 0)
        {
          if (v79->super._logHandle)
          {
            v34 = v79->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v33 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v33 = init_default_corebrightness_log();
            }

            v34 = v33;
          }

          oslog = v34;
          v64 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v30 = oslog;
            *v31 = v64;
            v32 = v80;
            __os_log_helper_16_2_1_8_64(v80, v66);
            _os_log_error_impl(&dword_1DE8E5000, oslog, v64, "failed to set whitepoint(%@)", v80, 0xCu);
          }

          MEMORY[0x1E69E5920](v66);
        }
      }

      objc_autoreleasePoolPop(v42);
    }

    v12 = objc_alloc(MEMORY[0x1E695DF70]);
    v63 = [v12 initWithCapacity:v77->var2];
    if (v63)
    {
      for (j = 0; j < v77->var2; ++j)
      {
        v13 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v14 = v77->var1[j];
        v61 = [v13 initWithFloat:v14];
        if (v61)
        {
          [v63 addObject:v61];
          MEMORY[0x1E69E5920](v61);
        }
      }

      v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      if (v60)
      {
        v15 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v16 = v77->var4.var0;
        v59 = [v15 initWithFloat:v16];
        if (v59)
        {
          [v60 addObject:v59];
          MEMORY[0x1E69E5920](v59);
        }

        v17 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v18 = v77->var4.var1;
        v59 = [v17 initWithFloat:v18];
        if (v59)
        {
          [v60 addObject:v59];
          MEMORY[0x1E69E5920](v59);
        }

        v29 = 0x1E696A000uLL;
        v19 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v20 = var0;
        v58 = [v19 initWithFloat:v20];
        v21 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v22 = v77->var3;
        v57 = [v21 initWithFloat:v22];
        v23 = objc_alloc(MEMORY[0x1E695DF00]);
        v56 = [v23 initWithTimeIntervalSinceReferenceDate:v77->var6];
        if (v58)
        {
          if (v57)
          {
            if (v56)
            {
              v24 = objc_alloc(MEMORY[0x1E695DF20]);
              v28 = v26;
              v55 = [v24 initWithObjectsAndKeys:{v63, @"ColorRampTarget", v58, @"ColorRampPeriod", v57, @"ColorScaler", v60, @"ColorRampWhitePointTarget", v56, @"ColorRampTimestamp", 0}];
              if (v55)
              {
                [(CBColorModuleShared *)v79 sendNotificationForKey:v72 andValue:v55];
                [(NSMutableDictionary *)v79->_properties setObject:v55 forKey:v72];
                MEMORY[0x1E69E5920](v55);
              }
            }
          }
        }

        MEMORY[0x1E69E5920](v58);
        MEMORY[0x1E69E5920](v57);
        MEMORY[0x1E69E5920](v56);
        MEMORY[0x1E69E5920](v60);
      }

      MEMORY[0x1E69E5920](v63);
    }

    v79->_colorStruct.fadeInProgress = 0;
  }

  else
  {
    v27 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
    v79->_colorStruct.fadeInProgress = 1;
    Current = CFAbsoluteTimeGetCurrent();
    if (*(&v79->super.super.isa + v27[661]))
    {
      if (v79->_colorStruct.fadeInProgress)
      {
        v26[10] = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
        v79->_colorStruct.fadeInProgress = CFXUpdateColorFade(v79->_colorStruct.cfx, Current);
        if (v79->_colorStruct.fadeInProgress)
        {
          LODWORD(v25) = 1114636288;
          [(CBColorModuleShared *)v79 startNewTimerWithFreq:v25];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)initColorStruct
{
  self->_colorStruct.harmonyFixedStrength = -1.0;
  self->_colorStruct.enforceSlowRamps = 1;
  self->_colorStruct.harmonyHWSupported = 0;
  self->_colorStruct.harmonySystemSupported = 0;
  self->_colorStruct.enablementTs = 0.0;
  self->_colorStruct.forceSnapping = 0;
  self->_colorStruct.whitePointEnabled = 0;
  self->_colorStruct.presetDisableHarmony = 0;
  self->_colorStruct.harmonyAvailable = 0;
  self->_colorStruct.harmonyActive = 0;
  self->_colorStruct.nightModeSupported = CBU_IsNightShiftSupported();
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  if (self->_colorStruct.nightModeSupported)
  {
    v3 = MEMORY[0x1E695E118];
  }

  else
  {
    v3 = MEMORY[0x1E695E110];
  }

  v4 = [v2 initWithObjectsAndKeys:{@"SupportsAmbientColorAdaptation", v3, @"SupportsNightMode", 0}];
  if (v4)
  {
    [(NSMutableDictionary *)self->_properties setObject:v4 forKey:@"SupportedColorFX"];
    MEMORY[0x1E69E5920](v4);
  }

  self->_colorStruct.cfx = CFXCreate();
  if (self->_colorStruct.cfx)
  {
    CFXInstallCallback(self->_colorStruct.cfx, ColorRampCallback_0, self);
    [(CBColorModuleShared *)self setWhitePointType];
  }
}

- (void)setWhitePointType
{
  v11 = self;
  v10 = a2;
  if (self->_backlightConfig)
  {
    v9 = 0;
    if (([(CBPrimitiveConfigurationProvider *)v11->_backlightConfig loadUint:@"default-whitepoint-type" toDestination:&v9]& 1) != 0)
    {
      if (v11->super._logHandle)
      {
        logHandle = v11->super._logHandle;
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
        _os_log_impl(&dword_1DE8E5000, log, type, "Set whitepoint from the device tree", v6, 2u);
      }

      CFXSetWhitePointType(v11->_colorStruct.cfx, v9);
    }
  }
}

- (void)activateBLR
{
  v38 = *MEMORY[0x1E69E9840];
  v30 = self;
  v29 = a2;
  if (self->_colorStruct.cfx)
  {
    if (v30->_colorStruct.nightModeSupported)
    {
      v28 = CFXInitializeBlueLightReduction(v30->_colorStruct.cfx);
      if (v28)
      {
        v27 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
        v24 = 0.0;
        CFXGetBlueLightReductionCCTRange(v30->_colorStruct.cfx, &v25, &v27, &v26);
        v24 = v26;
        if (v30->_backlightConfig)
        {
          v23 = 0;
          if (([(CBPrimitiveConfigurationProvider *)v30->_backlightConfig loadUint:@"blr-cct-warning" toDestination:&v23]& 1) != 0)
          {
            v24 = v23;
          }
        }

        v2 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v3 = v24;
        v22 = [v2 initWithFloat:v3];
        if (v22)
        {
          [(NSMutableDictionary *)v30->_properties setObject:v22 forKey:@"BlueLightReductionCCTWarningKey"];
          MEMORY[0x1E69E5920](v22);
        }

        v21 = [(CBColorModuleShared *)v30 copyPreferenceInternalForKey:@"CBBlueLightReductionCCTRange"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count] == 3)
        {
          v36 = 0xBF800000BF800000;
          v37 = -1.0;
          for (i = 0; i < 3; ++i)
          {
            [v21 objectAtIndexedSubscript:i];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [objc_msgSend(v21 objectAtIndexedSubscript:{i), "floatValue"}];
              *(&v36 + i) = v4;
            }
          }

          if (*&v36 != -1.0 && *(&v36 + 1) != -1.0 && v37 != -1.0)
          {
            v26 = *(&v36 + 1);
            v27 = *&v36;
            v25 = v37;
          }
        }

        MEMORY[0x1E69E5920](v21);
        CFXOverrideBlueLightReductionCCTRange(v30->_colorStruct.cfx, v25, v27, v26);
        v5 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v6 = v27;
        v33 = [v5 initWithFloat:v6];
        v7 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v8 = v26;
        v34 = [v7 initWithFloat:v8];
        v9 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v10 = v25;
        v35 = [v9 initWithFloat:v10];
        if (v33)
        {
          if (v34)
          {
            if (v35)
            {
              v11 = objc_alloc(MEMORY[0x1E695DEC8]);
              v19 = [v11 initWithObjects:{v33, v34, v35, 0}];
              if (v19)
              {
                [(NSMutableDictionary *)v30->_properties setObject:v19 forKey:@"BlueLightReductionCCTRange"];
                MEMORY[0x1E69E5920](v19);
              }
            }
          }
        }

        MEMORY[0x1E69E5920](v33);
        MEMORY[0x1E69E5920](v34);
        *&v12 = MEMORY[0x1E69E5920](v35).n128_u64[0];
        v18 = [(CBColorModuleShared *)v30 copyPreferenceInternalForKey:@"CBBlueLightReductionCCTTargetRaw", v12];
        v17 = CFXGetBlueLightReductionTargetCCT(v30->_colorStruct.cfx);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 floatValue];
          v17 = fminf(fmaxf(v13, v27), v25);
          CFXSetBlueLightReductionTargetCCT(v30->_colorStruct.cfx, 0, v17, 0.0, 0.0);
        }

        MEMORY[0x1E69E5920](v18);
        v32 = 0x1F599EB70;
        v14 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v15 = v17;
        v31 = [v14 initWithFloat:v15];
        if (v31)
        {
          v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:&v31 forKeys:&v32 count:1];
          if (v16)
          {
            [(NSMutableDictionary *)v30->_properties setObject:v16 forKey:@"BlueLightReductionCCTTargetKey"];
            MEMORY[0x1E69E5920](v16);
          }
        }

        MEMORY[0x1E69E5920](v31);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)enableCarryLog
{
  v6 = self;
  v5 = a2;
  if (CFPreferencesAppSynchronize(*MEMORY[0x1E695E8A8]))
  {
    cf = CFPreferencesCopyAppValue(@"CBCarryLogEnabled", *MEMORY[0x1E695E8A8]);
    valuePtr = 0;
    if (!cf)
    {
      cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    }

    if (cf)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
        CFXEnableLog(v6->_colorStruct.cfx, valuePtr != 0);
        [(NSMutableDictionary *)v6->_properties setObject:cf forKey:@"CarryLogEnabled"];
      }

      CFRelease(cf);
    }
  }
}

- (BOOL)parseAdaptationModeMappingDictionary:(id)a3 strengths:(float *)a4 strengthNum:(int)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  if (a4 && v11 >= 6)
  {
    CFXGetAdaptationModesMapping(v15->_colorStruct.cfx, v12, 6);
    [v13 enumerateKeysAndObjectsUsingBlock:?];
    v16 = v7[3] & 1;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v16 & 1;
}

float __82__CBColorModuleShared_parseAdaptationModeMappingDictionary_strengths_strengthNum___block_invoke(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a2 integerValue];
      if ((v5 & 0x8000000000000000) == 0 && v5 < 6)
      {
        [a3 floatValue];
        if (result >= 0.0 && result <= 1.0)
        {
          *(*(a1 + 40) + 4 * v5) = result;
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }
      }
    }
  }

  return result;
}

- (BOOL)parseAdaptationModeMappingArray:(id)a3 strengths:(float *)a4 strengthNum:(int)a5
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v6 = 0;
  v7 = &v6;
  v8 = 0x20000000;
  v9 = 32;
  v10 = 0;
  if (a4 && v11 >= 6)
  {
    if ([v13 count] && objc_msgSend(v13, "count") <= 6)
    {
      CFXGetAdaptationModesMapping(v15->_colorStruct.cfx, v12, 6);
      [v13 enumerateObjectsUsingBlock:?];
    }

    v16 = v7[3] & 1;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v16 & 1;
}

float __77__CBColorModuleShared_parseAdaptationModeMappingArray_strengths_strengthNum___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a2 floatValue];
    if (result >= 0.0 && result <= 1.0)
    {
      *(*(a1 + 40) + 4 * a3) = result;
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

- (id)newAdaptationModeMappingArray:(float *)a3 strengthNum:(int)a4
{
  v9 = 0;
  if (a3 && a4 == 6)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
    for (i = 0; i < 6; ++i)
    {
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = a3[i];
      v7 = [v4 initWithFloat:v5];
      if (!v7)
      {
        MEMORY[0x1E69E5920](v9);
        return 0;
      }

      [v9 addObject:v7];
      MEMORY[0x1E69E5920](v7);
    }
  }

  return v9;
}

- (id)newAdaptationModeMappingDictionary:(float *)a3 strengthNum:(int)a4
{
  v10 = 0;
  if (a3 && a4 == 6)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
    for (i = 0; i < 6; ++i)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:i];
      v4 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v5 = a3[i];
      v7 = [v4 initWithFloat:v5];
      if (!v8 || !v7)
      {
        MEMORY[0x1E69E5920](v8);
        MEMORY[0x1E69E5920](v7);
        MEMORY[0x1E69E5920](v10);
        return 0;
      }

      [v10 setObject:v7 forKey:v8];
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v7);
    }
  }

  return v10;
}

- (void)activateColorAdaptation
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = self;
  v49 = a2;
  if (self->_colorStruct.cfx)
  {
    if (!v50->_colorStruct.harmonyHWSupported)
    {
      v50->_colorStruct.harmonyHWSupported = CFXInitializeAmbientAdaptation(v50->_colorStruct.cfx);
      if (v50->super._logHandle)
      {
        logHandle = v50->super._logHandle;
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

      v48 = logHandle;
      v47 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_1_4_0(v53, v50->_colorStruct.harmonyHWSupported);
        _os_log_impl(&dword_1DE8E5000, v48, v47, "Harmony supported?? %d", v53, 8u);
      }

      if (v50->_colorStruct.harmonyHWSupported)
      {
        if (v50->_colorEffectsEnabled)
        {
          [(CBColorModuleShared *)v50 initAmmolite];
          v50->_ammoliteEnabledStatus = CFXAmmoliteEnabled(v50->_colorStruct.cfx);
        }

        else
        {
          v50->_ammoliteEnabledStatus = 1;
        }

        v46 = 0;
        v45 = 0;
        v44 = 0;
        if (v50->_backlightConfig && ([(CBPrimitiveConfigurationProvider *)v50->_backlightConfig loadUint:@"truetone-shift-a" toDestination:&v45]& 1) != 0 && ([(CBPrimitiveConfigurationProvider *)v50->_backlightConfig loadUint:@"truetone-shift-b" toDestination:&v44]& 1) != 0)
        {
          v2 = v45 / 65536.0;
          *&v46 = v2;
          v3 = v44 / 65536.0;
          *(&v46 + 1) = v3;
          if (v50->super._logHandle)
          {
            v25 = v50->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v24 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v24 = init_default_corebrightness_log();
            }

            v25 = v24;
          }

          v43 = v25;
          v42 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_2_8_0_8_0(v52, COERCE__INT64(*&v46), COERCE__INT64(*(&v46 + 1)));
            _os_log_impl(&dword_1DE8E5000, v43, v42, "TrueTone: shift-a = %f, shift-b = %f", v52, 0x16u);
          }

          CFXSetABShift(v50->_colorStruct.cfx, &v46);
        }

        v41 = [(NSMutableDictionary *)v50->_properties objectForKey:@"SupportedColorFX"];
        if (v41)
        {
          [v41 setObject:MEMORY[0x1E695E118] forKey:@"SupportsAmbientColorAdaptation"];
        }

        v50->_colorStruct.harmonyEnabled = 1;
        v40 = 0;
        CFXGetAdaptationModesMapping(v50->_colorStruct.cfx, v51, 6);
        if (v50->_backlightConfig)
        {
          v39 = [(CBPrimitiveConfigurationProvider *)v50->_backlightConfig copyTrueToneStrength];
          if (v39)
          {
            for (i = 0; i < 6; ++i)
            {
              [objc_msgSend(v39 objectAtIndexedSubscript:{i), "floatValue"}];
              v51[i] = v4;
            }

            v40 = 1;
            MEMORY[0x1E69E5920](v39);
          }
        }

        v37 = [(CBColorModuleShared *)v50 copyPreferenceInternalForKey:@"CBAdaptationModeMapping2"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [(CBColorModuleShared *)v50 parseAdaptationModeMappingArray:v37 strengths:v51 strengthNum:6])
        {
          v40 = 1;
        }

        *&v5 = MEMORY[0x1E69E5920](v37).n128_u64[0];
        if (v40)
        {
          CFXSetAdaptationModesMapping(v50->_colorStruct.cfx, v51, 6);
        }

        v36 = [(CBColorModuleShared *)v50 newAdaptationModeMappingDictionary:v51 strengthNum:6, v5];
        if (v36)
        {
          [(NSMutableDictionary *)v50->_properties setValue:v36 forKey:@"ColorAdaptationModeMapping"];
          MEMORY[0x1E69E5920](v36);
        }

        v35 = 1;
        CFXSetWeakestAmbientAdaptationMode(v50->_colorStruct.cfx, &v35, 1, 0.0);
        v35 = CFXGetAmbientAdaptationMode(v50->_colorStruct.cfx, &v50->_colorStruct.harmonyStrength);
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v7 = v50->_colorStruct.harmonyStrength;
        v34 = [v6 initWithFloat:v7];
        if (v34)
        {
          v33 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v34, @"ColorAdaptationStrengthSub", 0}];
          if (v33)
          {
            [(NSMutableDictionary *)v50->_properties setValue:v33 forKey:@"ColorAdaptationStrength"];
            MEMORY[0x1E69E5920](v33);
          }

          MEMORY[0x1E69E5920](v34);
        }

        v8 = objc_alloc(MEMORY[0x1E696AD98]);
        v34 = [v8 initWithInt:v35];
        if (v34)
        {
          [(NSMutableDictionary *)v50->_properties setValue:v34 forKey:@"ColorAdaptationMode"];
          MEMORY[0x1E69E5920](v34);
        }

        v37 = [(CBColorModuleShared *)v50 copyPreferenceInternalForKey:@"CBFixedAdaptationStrength"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37 floatValue];
          v32 = v9;
          v50->_colorStruct.harmonyFixedStrength = v9;
          [(NSMutableDictionary *)v50->_properties setValue:v37 forKey:@"FixedColorAdaptationStrength"];
        }

        *&v10 = MEMORY[0x1E69E5920](v37).n128_u64[0];
        [(CBColorModuleShared *)v50 setLabShift];
        if (v50->_colorStruct.harmonyFixedStrength >= 0.0)
        {
          CFXSetAmbientAdaptationStrength(v50->_colorStruct.cfx, v50->_colorStruct.harmonyFixedStrength, 0.0);
        }

        v37 = [(CBColorModuleShared *)v50 copyPreferenceInternalForKey:@"CBColorAdaptationEnabled"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v37 BOOLValue];
          v50->_colorStruct.harmonyEnabled = v11;
        }

        *&v12 = MEMORY[0x1E69E5920](v37).n128_u64[0];
        v22 = MEMORY[0x1E695E110];
        v23 = MEMORY[0x1E695E118];
        if (v50->_colorStruct.harmonyEnabled)
        {
          v13 = MEMORY[0x1E695E118];
        }

        else
        {
          v13 = MEMORY[0x1E695E110];
        }

        [(NSMutableDictionary *)v50->_properties setValue:v13 forKey:v12];
        [(CBColorModuleShared *)v50 updateActivity];
        [CBAnalytics harmonyEnabled:v50->_colorStruct.harmonyEnabled byUser:0];
        if (v50->_colorStruct.harmonyEnabled)
        {
          v14 = v23;
        }

        else
        {
          v14 = v22;
        }

        [(CBColorModuleShared *)v50 sendNotificationForKey:@"ColorAdaptationEnabled" andValue:v14];
        v31 = CFXGetStrengthRampTweakFactor(v50->_colorStruct.cfx);
        v37 = [(CBColorModuleShared *)v50 copyPreferenceInternalForKey:@"CBStrengthRampPeriodTweak"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v37 floatValue];
          v31 = v15;
        }

        MEMORY[0x1E69E5920](v37);
        if (v31 < 0.0)
        {
          v31 = 0.0;
        }

        CFXSetStrengthRampTweakFactor(v50->_colorStruct.cfx, v31);
        v16 = objc_alloc(MEMORY[0x1E696AD98]);
        *&v17 = v31;
        v34 = [v16 initWithFloat:v17];
        if (v34)
        {
          [(NSMutableDictionary *)v50->_properties setValue:v34 forKey:@"StrengthRampPeriodTweak"];
          MEMORY[0x1E69E5920](v34);
        }

        if (v50->_colorStruct.moduleType == 1)
        {
          [(CBColorModuleShared *)v50 ttRestrictionReload];
        }
      }
    }
  }

  else
  {
    if (v50->super._logHandle)
    {
      v21 = v50->super._logHandle;
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

    oslog = v21;
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v18 = oslog;
      v19 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_impl(&dword_1DE8E5000, v18, v19, "CFX was not initialized", v28, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)inputAmbientColorSample:(CFXColorSample *)a3 force:(BOOL)a4 trust:(BOOL)a5
{
  v14 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v13, COERCE__INT64(a3->xy.x), COERCE__INT64(a3->xy.y));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "input ambient color sample: xy = (%f;%f)", v13, 0x16u);
  }

  v8 = a4;
  if (a5)
  {
    v8 = a4 | 4;
  }

  if (self->_colorStruct.cfx)
  {
    if (self->_supportsAmmoliteWithoutColor)
    {
      v5 = self->_trustedLux / 3.14159265;
      a3->XYZ[1] = v5;
    }

    CFXInputAmbientColor(self->_colorStruct.cfx, a3->XYZ, v8);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setNativeWhitePoint
{
  v9 = MEMORY[0x1E69E5918];
  v19 = self;
  v18 = a2;
  v17 = 0;
  [(CBBrightnessProxy *)self->_brightnessControlProxy nativeWhitePoint];
  v17 = __PAIR64__(v3, v2);
  v16 = 0;
  v15 = @"whitePointD50XYZ";
  v14 = NSSelectorFromString(&cfstr_Whitepointd50x.isa);
  brightnessControlProxy = v19->_brightnessControlProxy;
  if (objc_opt_respondsToSelector())
  {
    v13[1] = v9;
    v16 = v9(v19->_brightnessControlProxy, v14);
  }

  if (v19->_colorStruct.cfx)
  {
    if (*&v17 > 0.0 && *(&v17 + 1) > 0.0)
    {
      v13[0] = v17;
      CFXSetNativeWhitePoint(v19->_colorStruct.cfx, v13);
    }

    if (v16)
    {
      CFXSetOutputFormat(v19->_colorStruct.cfx, 1, 1, 0);
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

      oslog = logHandle;
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v6 = type;
        __os_log_helper_16_0_0(v10);
        _os_log_impl(&dword_1DE8E5000, log, v6, "Setting matrix format to D50 XYZ", v10, 2u);
      }
    }
  }
}

- (void)setLabShift
{
  v13 = self;
  v12 = a2;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  CFXGetABShift(self->_colorStruct.cfx, &v9);
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  LODWORD(v3) = v9;
  v8 = [v2 initWithFloat:v3];
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  LODWORD(v5) = HIDWORD(v9);
  v7 = [v4 initWithFloat:v5];
  if (v8 && v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"a", v7, @"b", 0}];
  }

  MEMORY[0x1E69E5920](v8);
  *&v6 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  if (v11)
  {
    [(NSMutableDictionary *)v13->_properties setValue:v10 forKey:@"LabShift", v6];
  }

  MEMORY[0x1E69E5920](v10);
}

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  if (self->super._logHandle)
  {
    logHandle = v24->super._logHandle;
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

  v20 = logHandle;
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, v22, v21);
    _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "send notification for key = %@ value = %@", v25, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v22;
      v17 = v21;
      if ([v22 isEqualToString:@"ColorAdaptationEnabled"])
      {
        v16 = [objc_alloc(MEMORY[0x1E698EBB0]) initWithStarting:v17];
        [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(BiomeLibrary() "Device")];
        MEMORY[0x1E69E5920](v16);
      }
    }
  }

  if (v24->super._notificationBlock)
  {
    v15 = _Block_copy(v24->super._notificationBlock);
    if (v15)
    {
      MEMORY[0x1E69E5928](v21);
      MEMORY[0x1E69E5928](v22);
      queue = v24->super._queue;
      block = MEMORY[0x1E69E9820];
      v8 = -1073741824;
      v9 = 0;
      v10 = __55__CBColorModuleShared_sendNotificationForKey_andValue___block_invoke;
      v11 = &unk_1E867D1D0;
      v12 = v22;
      v14 = v15;
      v13 = v21;
      dispatch_async(queue, &block);
    }
  }

  *MEMORY[0x1E69E9840];
}

double __55__CBColorModuleShared_sendNotificationForKey_andValue___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    _Block_release(*(a1 + 48));
  }

  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

- (void)handleFilterNotificationForKey:(id)a3 withProperty:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v34 = a4;
  if ([a3 isEqualToString:@"TouchStateChanged"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v34 objectForKey:@"TouchOrientation"];
      v32 = [v34 objectForKey:@"TouchIsObstucted"];
      if (v37->super._logHandle)
      {
        logHandle = v37->super._logHandle;
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

      v31 = logHandle;
      v30 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_66_8_66(v39, v32, v33);
        _os_log_impl(&dword_1DE8E5000, v31, v30, "Touch state changed = %{public}@, orientation = %{public}@", v39, 0x16u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v32 BOOLValue])
      {
        v29 = 1;
        memset(__b, 0, sizeof(__b));
        obj = v37->_filters;
        v17 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v38 count:16];
        if (v17)
        {
          v13 = *__b[2];
          v14 = 0;
          v15 = v17;
          while (1)
          {
            v12 = v14;
            if (*__b[2] != v13)
            {
              objc_enumerationMutation(obj);
            }

            v28 = 0;
            v28 = *(__b[1] + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v28 isObstructed] & 1) == 0)
            {
              break;
            }

            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v38 count:16];
              if (!v15)
              {
                goto LABEL_22;
              }
            }
          }

          v29 = 0;
        }

LABEL_22:
        if (v29)
        {
          CFXCancelColorFade(v37->_colorStruct.cfx);
          if (v37->super._logHandle)
          {
            v11 = v37->super._logHandle;
          }

          else
          {
            v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v11 = v10;
          }

          oslog = v11;
          v25 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v8 = oslog;
            v9 = v25;
            __os_log_helper_16_0_0(v24);
            _os_log_impl(&dword_1DE8E5000, v8, v9, "MITIGATION: Cancel color ramp on touch mitigation", v24, 2u);
          }
        }
      }
    }
  }

  if ([v35 isEqualToString:@"ProxStateChanged"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v34 BOOLValue];
      if (v23)
      {
        CFXCancelColorFade(v37->_colorStruct.cfx);
        if (v37->super._logHandle)
        {
          v7 = v37->super._logHandle;
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

        v22 = v7;
        v21 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v4 = v22;
          v5 = v21;
          __os_log_helper_16_0_0(v20);
          _os_log_impl(&dword_1DE8E5000, v4, v5, "MITIGATION: Cancel color ramp on prox mitigation", v20, 2u);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  if ([a3 isEqual:@"DisplayBrightnessFactorZero"])
  {
    [(CBColorModuleShared *)self handleDisplayBrightnessFactorZero:a4];
  }

  else if ([a3 isEqualToString:@"TwilightStrength"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a4 floatValue];
      v9 = v4;
      v5 = CFXGetTwilightStrength(self->_colorStruct.cfx);
      if (!float_equal(v5, v9))
      {
        CFXSetTwilightStrength(self->_colorStruct.cfx, v9);
        if (!self->_colorStruct.fadeInProgress)
        {
          cfx = self->_colorStruct.cfx;
          Current = CFAbsoluteTimeGetCurrent();
          CFXUpdateColorFade(cfx, Current);
        }
      }
    }
  }

  else if (([a3 isEqualToString:@"TrustedLux"] & 1) != 0 && self->_supportsAmmoliteWithoutColor)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a4 floatValue];
      self->_trustedLux = v7;
    }
  }
}

- (id)newSerializedConfigFromAggregatedConfig:(id)a3
{
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:0];
  MEMORY[0x1E69E5928](v4);
  return v4;
}

- (id)newAggregatedConfigFromSerializedConfig:(id)a3
{
  v6[3] = self;
  v6[2] = a2;
  v6[1] = a3;
  v6[0] = 0;
  v5 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:v6 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return MEMORY[0x1E69E5928](v4);
  }

  return v5;
}

- (id)copyIdentifiers
{
  v4 = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"ColorAdaptationAvailable", @"ColorAdaptationEnabled", @"ColorAdaptationActive", @"ColorAdaptationMode", @"ColorAdaptationStrength", @"ColorAdaptationModeMapping", @"LabShift", @"BlueLightReductionCCTTargetKey", @"ColorRamp", @"ColorRampBLR", @"ColorRampHarmony", @"ColorRampAmmolite", @"SupportedColorFX", @"BlueLightReductionCCTWarningKey", @"BlueLightReductionCCTRange", @"PowerLogReport", @"CBAggregatedConfig", @"CBSerializedAggregatedConfig", @"ColorFadesEnabled", @"CBAmmoliteEnabled", 0}];
}

- (id)copyPropertyForKey:(id)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 1375731712;
  v11 = 48;
  v12 = __Block_byref_object_copy__22;
  v13 = __Block_byref_object_dispose__22;
  v14 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v15 getKeyCategory];
    if (v7 == v17->_colorStruct.moduleType)
    {
      v3 = -[CBColorModuleShared copyPropertyInternalForKey:](v17, "copyPropertyInternalForKey:", [v15 getKeyString]);
      v9[5] = v3;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v15 isEqualToString:@"CEOutput"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"CEInput"))
      {
        [(NSMutableArray *)v17->_modules enumerateObjectsUsingBlock:?];
      }

      else
      {
        v4 = [(CBColorModuleShared *)v17 copyPropertyInternalForKey:v15];
        v9[5] = v4;
      }
    }
  }

  v6 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v6;
}

uint64_t __42__CBColorModuleShared_copyPropertyForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:&unk_1F59CBED8];
  if (result)
  {
    result = [a2 copyPropertyForKey:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 40) = result;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a4 = 1;
    }
  }

  return result;
}

- (id)copyPropertyInternalForKey:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  if ([a3 isEqualToString:@"ColorAdaptationAvailable"])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v24->_colorStruct.harmonyAvailable];
  }

  else if ([v22 isEqualToString:@"ColorAdaptationEnabled"])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v24->_colorStruct.harmonyEnabled];
  }

  else if ([v22 isEqualToString:@"StatusInfo"])
  {
    v20 = [CBStatusInfoHelper copyStatusInfoFor:v24];
    if (v20)
    {
      v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v20, @"ColorModule", 0}];
    }

    MEMORY[0x1E69E5920](v20);
  }

  else if ([v22 isEqualToString:@"CBDisplayPresetDisableHarmony"])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v24->_colorStruct.presetDisableHarmony];
  }

  else if ([v22 isEqualToString:@"CBAmmoliteEnabled"])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:CFXAmmoliteEnabled(v24->_colorStruct.cfx)];
  }

  else if ([v22 isEqualToString:@"CBAmmoliteSupported"])
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v24->_ammoliteSystemSupported];
  }

  else if ([v22 isEqualToString:@"HarmonyMagic"])
  {
    if (CFXGetMagicCoeff(v24->_colorStruct.cfx, v27))
    {
      v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:6];
      for (i = 0; i < 6; ++i)
      {
        v3 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v4) = v27[i];
        [v19 addObject:{objc_msgSend(v3, "initWithFloat:", v4)}];
      }

      v21 = v19;
    }
  }

  else if ([v22 isEqualToString:@"ColorAdaptationStrength"])
  {
    v15 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v5 = CFXGetAdaptationStrength(v24->_colorStruct.cfx);
    v21 = [v15 initWithFloat:v5];
  }

  else
  {
    v21 = [-[NSMutableDictionary objectForKey:](v24->_properties objectForKey:{v22), "copy"}];
  }

  if (!v21)
  {
    memset(__b, 0, sizeof(__b));
    obj = v24->_filters;
    v14 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0;
        v17 = *(__b[1] + 8 * v11);
        v21 = [v17 copyPropertyForKey:v22];
        if (v21)
        {
          break;
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }
  }

  if (v24->super._logHandle)
  {
    logHandle = v24->super._logHandle;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v25, v22, v21);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ result=%@", v25, 0x16u);
  }

  *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a4 getKeyCategory] == self->_colorStruct.moduleType)
    {
      v5 = [a4 getKeyString];
      if (v5)
      {
        return [(CBColorModuleShared *)self setPropertyInternal:a3 forKey:v5];
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(CBColorModuleShared *)self setPropertyInternal:a3 forKey:a4];
    }
  }

  return v6;
}

- (BOOL)setPropertyInternal:(id)a3 forKey:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = 0;
  if (([a4 isEqualToString:@"BlueLightReductionFactor"] & 1) != 0 && !-[CBColorModuleShared isDFR](v25, "isDFR"))
  {
    v21 = [(CBColorModuleShared *)v25 BLRFactorPropertyHandler:v23];
LABEL_88:
    if (v21)
    {
      [(NSMutableDictionary *)v25->_properties setObject:v23 forKey:v22];
    }

    memset(__b, 0, sizeof(__b));
    obj = v25->_filters;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0;
        v17 = *(__b[1] + 8 * v10);
        [v17 setProperty:v23 forKey:v22];
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    if (v25->super._logHandle)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_3_8_64_8_64_4_0(v27, v22, v23, v21);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ result=%d", v27, 0x1Cu);
    }

    v26 = v21;
    goto LABEL_105;
  }

  if (([v22 isEqualToString:@"BlueLightReductionCCTTargetKey"] & 1) != 0 && !-[CBColorModuleShared isDFR](v25, "isDFR"))
  {
    v21 = [(CBColorModuleShared *)v25 BLRCCTTargetPropertyHandler:v23];
    goto LABEL_88;
  }

  if (([v22 isEqualToString:@"BlueLightReductionCCTRange"] & 1) != 0 && !-[CBColorModuleShared isDFR](v25, "isDFR"))
  {
    v21 = [(CBColorModuleShared *)v25 BLRCCTRangePropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"LabShift"])
  {
    v21 = [(CBColorModuleShared *)v25 CALabShiftPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorAdaptationEnabled"])
  {
    v21 = [(CBColorModuleShared *)v25 CAEnabledPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorAdaptationStrength"])
  {
    v21 = [(CBColorModuleShared *)v25 CAStrengthPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"FixedColorAdaptationStrength"])
  {
    v21 = [(CBColorModuleShared *)v25 CAFixedStrengthPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"WeakestColorAdaptationMode"])
  {
    v21 = [(CBColorModuleShared *)v25 CAWeakestColorAdaptationModePropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"WeakestColorAdaptationModeAnimated"])
  {
    v21 = [(CBColorModuleShared *)v25 CAWeakestColorAdaptationModeAnimatedPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorAdaptationModeMapping"])
  {
    v21 = [(CBColorModuleShared *)v25 CAModeMappingHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"StrengthRampPeriodTweak"])
  {
    v21 = [(CBColorModuleShared *)v25 CAStrengthRampPeriodTweakPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorFadesEnabled"])
  {
    v21 = [(CBColorModuleShared *)v25 CAFadesEnabledHandler:v23];
    goto LABEL_88;
  }

  if (([v22 isEqualToString:@"CBDisplayPresetDisableHarmony"] & 1) != 0 && !-[CBColorModuleShared isDFR](v25, "isDFR"))
  {
    v21 = [(CBColorModuleShared *)v25 displayPresetHarmonyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CoreBrightnessFeaturesDisabled"])
  {
    v21 = [(CBColorModuleShared *)v25 CoreBrightnessFeaturesDisabledPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"DisplayBrightnessFactorWithFade"))
  {
    v21 = [(CBColorModuleShared *)v25 displayBrightnessFactorPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"AABSensorOverride"])
  {
    v21 = [(CBColorModuleShared *)v25 CAAABSensorOverridePropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CEOverride"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"CEOverrideEnabled"))
  {
    v21 = [(CBColorModuleShared *)v25 CEOverridePropertyHandler:v23 key:v22];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CEEnable"])
  {
    v21 = [(CBColorModuleShared *)v25 CEEnablePropertyHandler:v23 key:v22];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"PreStrobe"])
  {
    v21 = [(CBColorModuleShared *)v25 preStrobePropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"PreStrobeDimPeriod"])
  {
    v21 = [(CBColorModuleShared *)v25 preStrobeDimPeriodPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CBAmmoliteEnabled"])
  {
    v21 = [(CBColorModuleShared *)v25 ammolitePropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"DisplayBrightnessAuto"])
  {
    v21 = [(CBColorModuleShared *)v25 autoBrightnessPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorFilterMode"])
  {
    v21 = [(CBColorModuleShared *)v25 colorFilterModeHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CBSerializedAggregatedConfig"])
  {
    v21 = [(CBColorModuleShared *)v25 serializedAggregatedConfigPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CBApplyAggregatedConfig"])
  {
    v21 = [(CBColorModuleShared *)v25 applyAggregatedConfigPropertyHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorRampEnableLogging"])
  {
    if (v25->super._logHandle)
    {
      v15 = v25->super._logHandle;
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

    oslog = v15;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ([v23 isEqual:MEMORY[0x1E695E118]])
      {
        v4 = "on";
      }

      else
      {
        v4 = "off";
      }

      __os_log_helper_16_2_1_8_32(v29, v4);
      _os_log_impl(&dword_1DE8E5000, oslog, type, "Turning color ramp logging: %s", v29, 0xCu);
    }

    CFXColorRampEnableLogging(v25->_colorStruct.cfx, [v23 isEqual:MEMORY[0x1E695E118]]);
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CBExternalDisplayIsMirroring"])
  {
    v21 = [(CBColorModuleShared *)v25 externalDisplayModeHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CarryLogEnabled"])
  {
    v21 = [(CBColorModuleShared *)v25 carryLogEnabledHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CarryLogComment"])
  {
    v21 = [(CBColorModuleShared *)v25 carryLogCommentHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CarryLogCommit"])
  {
    v21 = [(CBColorModuleShared *)v25 carryLogCommitHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"ColorRampPeriodOverride"])
  {
    v21 = [(CBColorModuleShared *)v25 colorRampPeriodOverrideHandler:v23];
    goto LABEL_88;
  }

  if ([v22 isEqualToString:@"CBTTRestriction"])
  {
    v21 = [(CBColorModuleShared *)v25 ttRestrictionHandler:v23];
    goto LABEL_88;
  }

  if (([v22 isEqualToString:@"TwilightParameters"] & 1) == 0)
  {
    goto LABEL_88;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v25->_colorStruct.nightModeSupported)
  {
    v18 = v23;
    if ([v23 nightShiftAdaptation])
    {
      CFXInitializeTwilightNightShiftAdaptation(v25->_colorStruct.cfx, [objc_msgSend(objc_msgSend(v18 "nightShiftAdaptation")], objc_msgSend(objc_msgSend(objc_msgSend(v18, "nightShiftAdaptation"), "cctTable"), "count"), objc_msgSend(objc_msgSend(objc_msgSend(v18, "nightShiftAdaptation"), "twilightStrengthTable"), "dataCopy"), objc_msgSend(objc_msgSend(objc_msgSend(v18, "nightShiftAdaptation"), "twilightStrengthTable"), "count"), objc_msgSend(objc_msgSend(objc_msgSend(v18, "nightShiftAdaptation"), "cctDeltaTable"), "dataCopy"));
    }
  }

  v26 = 1;
LABEL_105:
  *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (BOOL)clamshellStatePropertyHandler:(id)a3
{
  v4 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[CBColorModuleShared updateClamshellState:](self, "updateClamshellState:", [a3 BOOLValue]);
    return 1;
  }

  return v4;
}

- (void)setPreferenceInternal:(id)a3 forKey:(id)a4
{
  v4 = MEMORY[0x1E695E8B8];
  v5 = MEMORY[0x1E695E8B0];
  CFPreferencesSetValue(a4, a3, @"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *v4, *v5);
}

- (id)copyPreferenceInternalForKey:(id)a3
{
  v4 = MEMORY[0x1E695E8B8];
  v5 = MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(@"com.apple.CoreBrightness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  return CFPreferencesCopyValue(a3, @"com.apple.CoreBrightness", *v4, *v5);
}

- (void)timerRoutine:(id)a3
{
  v4 = 1;
  Current = CFAbsoluteTimeGetCurrent();
  if (self->_colorStruct.cfx && self->_colorStruct.fadeInProgress)
  {
    self->_colorStruct.fadeInProgress = CFXUpdateColorFade(self->_colorStruct.cfx, Current);
    v4 = !self->_colorStruct.fadeInProgress;
  }

  if (v4)
  {
    if (a3)
    {
      dispatch_source_cancel(a3);
    }
  }
}

- (BOOL)startNewTimerWithFreq:(float)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = 1000000000.0 / a3;
  if ((1000000000.0 / a3) < 16.7)
  {
    v13 = 16.7;
  }

  if (v17->_rampTimer)
  {
    dispatch_source_cancel(v17->_rampTimer);
    dispatch_release(v17->_rampTimer);
    v17->_rampTimer = 0;
  }

  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17->super._queue);
  if (v12)
  {
    dispatch_source_set_timer(v12, 0, v13, 0);
    block = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __45__CBColorModuleShared_startNewTimerWithFreq___block_invoke;
    v8 = &unk_1E867BB90;
    v9 = v17;
    v10 = v12;
    v11 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
    if (v11)
    {
      dispatch_source_set_event_handler(v12, v11);
      _Block_release(v11);
    }

    v17->_rampTimer = v12;
    dispatch_resume(v12);
    v14 = 1;
  }

  return v14 & 1;
}

- (void)reportResetTimerWithStop:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (a3)
  {
    if (v13->_reportContext.logTimer)
    {
      dispatch_source_cancel(v13->_reportContext.logTimer);
      dispatch_release(v13->_reportContext.logTimer);
      v13->_reportContext.logTimer = 0;
    }
  }

  else if (!v13->_reportContext.logTimer)
  {
    v13->_reportContext.logTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13->super._queue);
    if (v13->_reportContext.logTimer)
    {
      v10 = 1000000000 * v13->_reportContext.periodS;
      dispatch_source_set_timer(v13->_reportContext.logTimer, 0, v10, 0);
      logTimer = v13->_reportContext.logTimer;
      handler = MEMORY[0x1E69E9820];
      v5 = -1073741824;
      v6 = 0;
      v7 = __48__CBColorModuleShared_reportResetTimerWithStop___block_invoke;
      v8 = &unk_1E867B480;
      v9 = v13;
      dispatch_source_set_event_handler(logTimer, &handler);
      dispatch_resume(v13->_reportContext.logTimer);
      v13->_reportContext.firstTimerFire = 1;
    }
  }
}

uint64_t __48__CBColorModuleShared_reportResetTimerWithStop___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 72))
  {
    *(*(result + 32) + 72) = 0;
  }

  else if (*(*(result + 32) + 200) == 1)
  {
    return [*(result + 32) reportCommitWithStop:0];
  }

  return result;
}

- (void)reportCommitWithStop:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (self->_colorStruct.nightModeSupported || (*(v7 + 177) & 1) != 0)
  {
    if (v5)
    {
      [v7 reportResetTimerWithStop:1];
    }

    if (v7[18])
    {
      bzero(v4, 0x200uLL);
      v3 = CFXGetReport(v7[18], v4);
      [v7 reportToCoreAnalytics:{v4, v3}];
      [v7 commitPowerLogReport:v4];
    }
  }
}

- (void)commitPowerLogReport:(ColorReport *)a3
{
  if (a3)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v13)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3->var3.var0];
      if (v10)
      {
        [v13 setObject:v10 forKey:@"BlueLightReductionOnTime"];
        MEMORY[0x1E69E5920](v10);
      }

      v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3->var3.var1];
      if (v11)
      {
        [v13 setObject:v11 forKey:@"BlueLightReductionOffTime"];
        MEMORY[0x1E69E5920](v11);
      }

      v4 = [MEMORY[0x1E695DEC8] newArrayFromDoubles:a3 size:17];
      if (v4)
      {
        [v13 setObject:v4 forKey:@"AmbientColorBins"];
        MEMORY[0x1E69E5920](v4);
      }

      v5 = [MEMORY[0x1E695DEC8] newArrayFromDoubles:&a3->var2 size:46];
      if (v5)
      {
        [v13 setObject:v5 forKey:@"AmbientColorBinsAnsi"];
        MEMORY[0x1E69E5920](v5);
      }

      v6 = [MEMORY[0x1E695DEC8] newArrayFromDoubles:&a3->var4 size:10];
      if (v6)
      {
        [v13 setObject:v6 forKey:@"AdaptationStrengthBins"];
        MEMORY[0x1E69E5920](v6);
      }

      v7 = [MEMORY[0x1E695DEC8] newArrayFromIntegers:a3->var0.var1 size:17];
      if (v7)
      {
        [v13 setObject:v7 forKey:@"AmbientColorTransitionBins"];
        MEMORY[0x1E69E5920](v7);
      }

      v8 = [MEMORY[0x1E695DEC8] newArrayFromIntegers:a3->var1.var1 size:17];
      if (v8)
      {
        [v13 setObject:v8 forKey:@"DisplayColorTransitionBins"];
        MEMORY[0x1E69E5920](v8);
      }

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:a3->var6];
      if (v12)
      {
        [v13 setObject:v12 forKey:@"DisplayColorNumberOfUpdates"];
        MEMORY[0x1E69E5920](v12);
      }

      v9 = [MEMORY[0x1E695DEC8] newArrayFromDoubles:&a3->var1 size:17];
      if (v9)
      {
        [v13 setObject:v9 forKey:@"DisplayColorBins"];
        MEMORY[0x1E69E5920](v9);
      }

      [(NSMutableDictionary *)self->_properties setObject:v13 forKey:@"PowerLogReport"];
      [(CBColorModuleShared *)self sendNotificationForKey:v3 andValue:v13];
      MEMORY[0x1E69E5920](v13);
    }
  }
}

- (void)reportToCoreAnalytics:(ColorReport *)a3
{
  if (a3)
  {
    if (self->_colorStruct.harmonyHWSupported)
    {
      [CBAnalytics harmonyColor:a3];
    }

    [CBAnalytics nightShiftCCT:a3->var3.var4];
  }
}

- (BOOL)setColorSensitivity:(float)a3 forALS:(__IOHIDServiceClient *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = self;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = 0;
  v30 = [(CBColorModuleShared *)self getRegistryIDForHIDServiceClient:a4];
  if (v30)
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](v35->_currentChromaticitySensitivity objectForKeyedSubscript:{v30), "floatValue"}];
    v29 = v4;
    v28 = vabds_f32(v4, v33);
    if (v35->super._logHandle)
    {
      logHandle = v35->super._logHandle;
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

    v27 = logHandle;
    v26 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v38, [v30 unsignedIntegerValue], COERCE__INT64(v29), COERCE__INT64(v33), COERCE__INT64(v28));
      _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "sensor 0x%lX | current %f | new %f | diff %f", v38, 0x2Au);
    }

    if ((v33 <= v29 || v28 <= 0.0002) && (v33 >= v29 || v28 <= 0.001))
    {
      if (v35->super._logHandle)
      {
        v13 = v35->super._logHandle;
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

      oslog = v13;
      v21 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v36, COERCE__INT64(v28));
        _os_log_debug_impl(&dword_1DE8E5000, oslog, v21, "difference in sensitivity too small (%f)", v36, 0xCu);
      }
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696AD98]);
      *&v6 = v33;
      v25 = [v5 initWithFloat:v6];
      if (v25)
      {
        v31 = IOHIDServiceClientSetProperty(v32, @"SensorAbsoluteColorSensitivity", v25) != 0;
        if (v31)
        {
          [(NSMutableDictionary *)v35->_currentChromaticitySensitivity setObject:v25 forKeyedSubscript:v30];
          if (v35->super._logHandle)
          {
            v15 = v35->super._logHandle;
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

          v24 = v15;
          v23 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_66(v37, v25);
            _os_log_impl(&dword_1DE8E5000, v24, v23, "updating sensor sensitivity to %{public}@", v37, 0xCu);
          }
        }

        [(CBColorModuleShared *)v35 sendNotificationForKey:@"SensorAbsoluteColorSensitivity" andValue:v25];
      }

      MEMORY[0x1E69E5920](v25);
    }
  }

  else
  {
    if (v35->super._logHandle)
    {
      v11 = v35->super._logHandle;
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

    v20 = v11;
    v19 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v8 = v20;
      v9 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_1DE8E5000, v8, v9, "invalid registry ID", v18, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v31;
}

- (float)absoluteDifferenceForCurrentColor:(id)a3 andDeltaError:(id)a4
{
  var1 = a3.var1;
  v6 = a4.var1;
  v5 = powf(a3.var0 - a4.var0, 2.0);
  return sqrtf(v5 + powf(var1 - v6, 2.0));
}

- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_4_0(v10, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "AOD state update = %d", v10, 8u);
  }

  if (a3)
  {
    if (a3 == 2)
    {
      CFXCancelColorFade(self->_colorStruct.cfx);
      CFXOverrideRampPeriod(self->_colorStruct.cfx, 0.0);
    }
  }

  else
  {
    CFXOverrideRampPeriod(self->_colorStruct.cfx, -1.0);
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

@end