@interface CBSliderCommitTelemetry
+ (id)sliderInfoToNSDictionary:(const CBSliderCommitInfo *)a3;
- (BOOL)getUserAABParams:(CBAABParams *)a3 key:(id)a4;
- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBSliderCommitInfo)getLastFilledEntry;
- (CBSliderCommitInfo)getNextEntryAndAdvanceBufferIndex;
- (CBSliderCommitTelemetry)initWithQueue:(id)a3 andDisplayContainer:(id)a4;
- (double)timestampFromCurveDistionary:(id)a3;
- (float)getAPCE;
- (id)copyPropertyForKey:(id)a3;
- (void)cancelDelayedAPCETimer;
- (void)delayedAPCETimerHandler:(CBSliderCommitInfo *)a3;
- (void)fillEntry:(CBSliderCommitInfo *)a3 withTimestamp:(int64_t)a4 andRestoreTimeTarget:(int64_t)a5 andAABParams:(CBAABParams *)a6 andAlternativeAABParams:(CBAABParams *)a7;
- (void)fillEntry:(CBSliderCommitInfo *)a3 withTimestamp:(int64_t)a4 slider:(float)a5 apce:(float)a6 andTrackedState:(TrackedState)a7;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)logAfterUserBrightnessCommitWithTimestamp:(int64_t)a3 slider:(float)a4 apce:(float)a5 andTrackedState:(TrackedState)a6;
- (void)logAllFilledEntries;
- (void)reportCommit:(CBSliderCommitInfo *)a3;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
@end

@implementation CBSliderCommitTelemetry

- (CBSliderCommitTelemetry)initWithQueue:(id)a3 andDisplayContainer:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18.receiver = self;
  v18.super_class = CBSliderCommitTelemetry;
  v22 = [(CBModule *)&v18 initWithQueue:a3];
  if (!v22)
  {
    goto LABEL_22;
  }

  v4 = os_log_create("com.apple.CoreBrightness.SliderCommitTelemetry", "default");
  *(v22 + 2) = v4;
  v5 = os_log_create("com.apple.CoreBrightness.SliderCommitTelemetry", "LiveOn");
  *(v22 + 2920) = v5;
  if (!*(v22 + 2) || !*(v22 + 2920))
  {
    v12 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v17 = v12;
    v16 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v15, 2u);
    }
  }

  v6 = dispatch_queue_create("com.apple.CoreBrightness.SliderCommitTelemetry", 0);
  *(v22 + 6) = v6;
  *(v22 + 2922) = 0;
  *(v22 + 4) = v19;
  *(v22 + 2907) = 0;
  *(v22 + 2908) = 0;
  *(v22 + 2923) = 0;
  *(v22 + 2924) = 0;
  *(v22 + 23408) = 0;
  *(v22 + 2909) = 5;
  for (i = 0; i < 0x64; *(std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](v22 + 56, i++) + 8) = -1)
  {
    *std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](v22 + 56, i) = -1;
  }

  MainDisplay = IOMobileFramebufferGetMainDisplay();
  if (MainDisplay)
  {
    if (*(v22 + 2))
    {
      v9 = *(v22 + 2);
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

      v9 = inited;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v24, MainDisplay);
      _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "SliderCommitTelemetry Initialization | Unable to obtain IOMFB display object | ErrorCode=0x%x", v24, 8u);
    }

    MEMORY[0x1E69E5920](v22);
    v23 = 0;
  }

  else
  {
LABEL_22:
    v23 = v22;
  }

  *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v40 = self;
  v39 = a2;
  v38 = a3;
  v37 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v37 isEqualToString:@"CBFinalBrightnessCommitDelay"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40->_delayedAPCEDelay = [v38 longLongValue];
        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else if ([v37 isEqualToString:@"DisplayBrightness"])
    {
      if (v40->_initialFactorUpdateArrived && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v36 = [v38 objectForKey:@"Commit"];
        v35 = [v38 objectForKey:@"Brightness"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v36 BOOLValue])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            Current = CFAbsoluteTimeGetCurrent();
            [v35 floatValue];
            v14 = v4;
            [(CBSliderCommitTelemetry *)v40 getAPCE];
            LODWORD(v6) = v5;
            LODWORD(v7) = v14;
            LODWORD(v34) = v40->_state;
            [(CBSliderCommitTelemetry *)v40 logAfterUserBrightnessCommitWithTimestamp:Current slider:v34 apce:v7 andTrackedState:v6];
          }
        }

        v41 = 1;
      }

      else
      {
        v41 = 0;
      }
    }

    else if ([v37 isEqualToString:@"DisplayBrightnessAuto"])
    {
      v33 = [v38 BOOLValue];
      autobrightnessEnabled = v40->_state.autobrightnessEnabled;
      v40->_state.autobrightnessEnabled = v33 & 1;
      if (v40->_initialFactorUpdateArrived && (v33 & 1) != 0 && autobrightnessEnabled != (v33 & 1))
      {
        loggingQueue = v40->_loggingQueue;
        block = MEMORY[0x1E69E9820];
        v27 = -1073741824;
        v28 = 0;
        v29 = __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke;
        v30 = &unk_1E867B480;
        v31 = v40;
        dispatch_async(loggingQueue, &block);
      }

      v41 = 1;
    }

    else if ([v37 isEqualToString:@"EcoMode"])
    {
      v40->_state.ecoModeEnabled = [v38 BOOLValue];
      v41 = 1;
    }

    else if ([v37 isEqualToString:@"CBUIUserStyle"])
    {
      v40->_state.darkThemeApplied = [v38 integerValue] == 2;
      v41 = 1;
    }

    else if ([v37 isEqualToString:@"CBUIOrientation"])
    {
      v12 = 1;
      if ([v38 integerValue] != 4)
      {
        v12 = [v38 integerValue] == 3;
      }

      v40->_state.landscapeOrientation = v12;
      v41 = 1;
    }

    else if ([v37 isEqualToString:@"ALSUserPreference"])
    {
      v22[0] = 0;
      v22[1] = v22;
      v23 = 0x20000000;
      v24 = 32;
      [(CBSliderCommitTelemetry *)v40 timestampFromCurveDistionary:v38];
      v25 = v9;
      v10 = v40->_loggingQueue;
      v15 = MEMORY[0x1E69E9820];
      v16 = -1073741824;
      v17 = 0;
      v18 = __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke_2;
      v19 = &unk_1E867C080;
      v20 = v40;
      v21 = v22;
      dispatch_async(v10, &v15);
      v41 = 1;
      _Block_object_dispose(v22, 8);
    }

    else if (([v37 isEqualToString:@"DisplayBrightnessFactorWithFade"] & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"DisplayBrightnessFactorWithFade")) && v38)
    {
      v40->_initialFactorUpdateArrived = 1;
      v41 = 1;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41 & 1;
}

uint64_t __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke(uint64_t a1)
{
  v7 = a1;
  v6 = a1;
  [*(a1 + 32) getUserAABParams:? alternativeAABParams:?];
  v3 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
  [*(a1 + 32) fillEntry:v3 withTimestamp:CFAbsoluteTimeGetCurrent() andAABParams:v5 andAlternativeAABParams:v4];
  return [*(a1 + 32) reportCommit:v3];
}

void __46__CBSliderCommitTelemetry_setProperty_forKey___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = [*(*(a1 + 32) + 32) copyPropertyForKey:@"DisplayBrightnessFactor"];
  if (*(*(a1 + 32) + 23408))
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue] & 1) == 0 && *(*(a1 + 32) + 23264))
      {
        if (*(*(a1 + 32) + 16))
        {
          v4 = *(*(a1 + 32) + 16);
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

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v8, *(*(*(a1 + 40) + 8) + 24));
          _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Set ALSUserPreference: AAB reset after in-app adjustment (restore time = %f)", v8, 0xCu);
        }

        [*(a1 + 32) getUserAABParams:*(a1 + 32) + 23280 alternativeAABParams:{*(a1 + 32) + 23320, &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets, &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets}];
        v6 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
        [*(a1 + 32) fillEntry:v6 withTimestamp:CFAbsoluteTimeGetCurrent() andRestoreTimeTarget:*(*(*(a1 + 40) + 8) + 24) andAABParams:*(a1 + 32) + *(v1 + 488) andAlternativeAABParams:*(a1 + 32) + *(v2 + 492)];
        [*(a1 + 32) reportCommit:v6];
      }
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
}

- (id)copyPropertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"CBFinalBrightnessCommitDelay"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:self->_delayedAPCEDelay];
  }

  if ([a3 isEqualToString:@"CBSupportsFinalCommit"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  }

  return 0;
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  if ([a3 isEqualToString:@"DisplayOn"])
  {
    if ([v24 BOOLValue])
    {
      if (v27->_displayOffTimestamp > 0.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v16 = Current - v27->_displayOffTimestamp;
        if (v16 > v27->_longestInactivityLength)
        {
          v27->_longestInactivityLength = v16;
          v27->_inactivityStartTimestamp = v27->_displayOffTimestamp;
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

          oslog = logHandle;
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_2_8_0_8_0(v28, *&v27->_longestInactivityLength, *&v27->_inactivityStartTimestamp);
            _os_log_impl(&dword_1DE8E5000, oslog, type, "Display turns on: Longest inactivity length is %f seconds with start timestamp = %f", v28, 0x16u);
          }
        }
      }

      loggingQueue = v27->_loggingQueue;
      v8 = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke_71;
      v12 = &unk_1E867B480;
      v13 = v27;
      dispatch_async(loggingQueue, &v8);
    }

    else
    {
      v27->_displayOffTimestamp = CFAbsoluteTimeGetCurrent();
      v4 = v27->_loggingQueue;
      block = MEMORY[0x1E69E9820];
      v19 = -1073741824;
      v20 = 0;
      v21 = __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke;
      v22 = &unk_1E867B480;
      v23 = v27;
      dispatch_async(v4, &block);
    }
  }

  *MEMORY[0x1E69E9840];
}

void __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (!*(*(a1 + 32) + 23376))
  {
    goto LABEL_21;
  }

  if (*(*(a1 + 32) + 16))
  {
    v8 = *(*(a1 + 32) + 16);
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

  v16 = v8;
  v15 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, "Canceling delayed APCE timer due to display off", v14, 2u);
  }

  [*(a1 + 32) cancelDelayedAPCETimer];
  v13 = [*(a1 + 32) getLastFilledEntry];
  if (v13)
  {
    *(v13 + 48) = 2;
    [*(a1 + 32) reportCommit:v13];
LABEL_21:
    [*(a1 + 32) getUserAABParams:*(a1 + 32) + 23280 alternativeAABParams:*(a1 + 32) + 23320];
    return;
  }

  if (*(*(a1 + 32) + 16))
  {
    v4 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v3 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v3 = init_default_corebrightness_log();
    }

    v4 = v3;
  }

  v12 = v4;
  v11 = 16;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v1 = v12;
    v2 = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_error_impl(&dword_1DE8E5000, v1, v2, "Last entry == nil when canceling delayed APCE timer due to display off", v10, 2u);
  }
}

uint64_t __65__CBSliderCommitTelemetry_handleNotificationForKey_withProperty___block_invoke_71(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  result = [*(a1 + 32) getUserAABParams:&v12 alternativeAABParams:&v11];
  if (result)
  {
    if (aabParamsDiffer(&v12, (*(a1 + 32) + 23280)) || (result = aabParamsDiffer(&v11, (*(a1 + 32) + 23320)), (result & 1) != 0))
    {
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

      oslog = v5;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v3 = type;
        __os_log_helper_16_0_0(v8);
        _os_log_impl(&dword_1DE8E5000, log, v3, "Different AAB params on unlock detected", v8, 2u);
      }

      v7 = [*(a1 + 32) getNextEntryAndAdvanceBufferIndex];
      [*(a1 + 32) fillEntry:v7 withTimestamp:CFAbsoluteTimeGetCurrent() andAABParams:&v12 andAlternativeAABParams:&v11];
      return [*(a1 + 32) reportCommit:v7];
    }
  }

  return result;
}

- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  if (a3 == 2)
  {
    loggingQueue = v17->_loggingQueue;
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __71__CBSliderCommitTelemetry_handleAODStateUpdate_transitionTime_context___block_invoke;
    v11 = &unk_1E867B480;
    v12 = v17;
    dispatch_async(loggingQueue, &v7);
  }

  return 1;
}

void __71__CBSliderCommitTelemetry_handleAODStateUpdate_transitionTime_context___block_invoke(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (*(*(a1 + 32) + 23376))
  {
    if (*(*(a1 + 32) + 16))
    {
      v8 = *(*(a1 + 32) + 16);
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

    v16 = v8;
    v15 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_1DE8E5000, log, type, "Canceling delayed APCE timer due to transitioning to AOD", v14, 2u);
    }

    [*(a1 + 32) cancelDelayedAPCETimer];
    v13 = [*(a1 + 32) getLastFilledEntry];
    if (v13)
    {
      *(v13 + 48) = 3;
      [*(a1 + 32) reportCommit:v13];
    }

    else
    {
      if (*(*(a1 + 32) + 16))
      {
        v4 = *(*(a1 + 32) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      v12 = v4;
      v11 = 16;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v1 = v12;
        v2 = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_error_impl(&dword_1DE8E5000, v1, v2, "Last entry == nil when canceling delayed APCE timer due to transitioning to AOD", v10, 2u);
      }
    }
  }
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  if (self->super._notificationBlock)
  {
    v13 = _Block_copy(v17->super._notificationBlock);
    if (v13)
    {
      MEMORY[0x1E69E5928](v14);
      MEMORY[0x1E69E5928](v15);
      queue = v17->super._queue;
      v5 = MEMORY[0x1E69E9820];
      v6 = -1073741824;
      v7 = 0;
      v8 = __60__CBSliderCommitTelemetry_sendNotificationForKey_withValue___block_invoke;
      v9 = &unk_1E867C0A8;
      v12 = v13;
      v10 = v15;
      v11 = v14;
      dispatch_async(queue, &v5);
    }
  }
}

double __60__CBSliderCommitTelemetry_sendNotificationForKey_withValue___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  _Block_release(*(a1 + 48));
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

+ (id)sliderInfoToNSDictionary:(const CBSliderCommitInfo *)a3
{
  v38[50] = *MEMORY[0x1E69E9840];
  v37[0] = @"timestamp";
  v38[0] = [MEMORY[0x1E696AD98] numberWithLongLong:a3->timestamp];
  v37[1] = @"localTimestamp";
  v38[1] = [MEMORY[0x1E696AD98] numberWithLongLong:a3->localTimestamp];
  v37[2] = @"trustedLux";
  v38[2] = [MEMORY[0x1E696AD98] numberWithInt:a3->trustedLux];
  v37[3] = @"frontLux";
  *&v3 = a3->frontLux;
  v38[3] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v37[4] = @"rearLux";
  *&v4 = a3->rearLux;
  v38[4] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v37[5] = @"rearLuxInUse";
  v38[5] = [MEMORY[0x1E696AD98] numberWithBool:a3->rearLuxInUse];
  v37[6] = @"nits";
  *&v5 = a3->nits;
  v38[6] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v37[7] = @"slider";
  *&v6 = a3->slider;
  v38[7] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v37[8] = @"apce";
  *&v7 = a3->apce;
  v38[8] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v37[9] = @"delayedAPCE";
  *&v8 = a3->delayedAPCE;
  v38[9] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v37[10] = @"delayedAPCEStatus";
  v38[10] = [MEMORY[0x1E696AD98] numberWithInt:a3->delayedAPCEStatus];
  v37[11] = @"autobrightnessEnabled";
  v38[11] = [MEMORY[0x1E696AD98] numberWithBool:a3->autobrightnessEnabled];
  v37[12] = @"ecoModeEnabled";
  v38[12] = [MEMORY[0x1E696AD98] numberWithBool:a3->ecoModeEnabled];
  v37[13] = @"ecoModeFactor";
  *&v9 = a3->ecoModeFactor;
  v38[13] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v37[14] = @"e0a";
  *&v10 = a3->aabParams.e0a;
  v38[14] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v37[15] = @"e0b";
  *&v11 = a3->aabParams.e0b;
  v38[15] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v37[16] = @"e1";
  *&v12 = a3->aabParams.e1;
  v38[16] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v37[17] = @"e2";
  *&v13 = a3->aabParams.e2;
  v38[17] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v37[18] = @"l0a";
  *&v14 = a3->aabParams.l0a;
  v38[18] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v37[19] = @"l0b";
  *&v15 = a3->aabParams.l0b;
  v38[19] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v37[20] = @"l1";
  *&v16 = a3->aabParams.l1;
  v38[20] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v37[21] = @"l2";
  *&v17 = a3->aabParams.l2;
  v38[21] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v37[22] = @"thirdSlope";
  *&v18 = a3->aabParams.thirdSlope;
  v38[22] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v37[23] = @"curveType";
  v38[23] = [MEMORY[0x1E696AD98] numberWithInt:a3->aabParams.curveType];
  v37[24] = @"alternativeE0a";
  *&v19 = a3->aabAlternativeParams.e0a;
  v38[24] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v37[25] = @"alternativeE0b";
  *&v20 = a3->aabAlternativeParams.e0b;
  v38[25] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  v37[26] = @"alternativeE1";
  *&v21 = a3->aabAlternativeParams.e1;
  v38[26] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v37[27] = @"alternativeE2";
  *&v22 = a3->aabAlternativeParams.e2;
  v38[27] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v37[28] = @"alternativeL0a";
  *&v23 = a3->aabAlternativeParams.l0a;
  v38[28] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
  v37[29] = @"alternativeL0b";
  *&v24 = a3->aabAlternativeParams.l0b;
  v38[29] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v37[30] = @"alternativeL1";
  *&v25 = a3->aabAlternativeParams.l1;
  v38[30] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
  v37[31] = @"alternativeL2";
  *&v26 = a3->aabAlternativeParams.l2;
  v38[31] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v37[32] = @"alternativeThirdSlope";
  *&v27 = a3->aabAlternativeParams.thirdSlope;
  v38[32] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v37[33] = @"alternativeCurveType";
  v38[33] = [MEMORY[0x1E696AD98] numberWithInt:a3->aabAlternativeParams.curveType];
  v37[34] = @"aabParamsUpdateOnly";
  v38[34] = [MEMORY[0x1E696AD98] numberWithBool:a3->aabParamsUpdateOnly];
  v37[35] = @"aabParamsUpdateReason";
  v38[35] = [MEMORY[0x1E696AD98] numberWithInt:a3->aabParamsUpdateReason];
  v37[36] = @"nitsDelta";
  *&v28 = a3->nitsDelta;
  v38[36] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v37[37] = @"nitsDeltaAlternative";
  *&v29 = a3->nitsDeltaAlternative;
  v38[37] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v37[38] = @"restoreTimeTarget";
  v38[38] = [MEMORY[0x1E696AD98] numberWithLongLong:a3->restoreTimeTarget];
  v37[39] = @"inactiveLength";
  *&v30 = a3->inactiveLength;
  v38[39] = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v37[40] = @"inactiveStart";
  v38[40] = [MEMORY[0x1E696AD98] numberWithLongLong:a3->inactiveStart];
  v37[41] = @"cpmsMitigationLimitingBrightness";
  v38[41] = [MEMORY[0x1E696AD98] numberWithBool:a3->cpmsMitigationLimitingBrightness];
  v37[42] = @"touchMitigationTriggered";
  v38[42] = [MEMORY[0x1E696AD98] numberWithBool:a3->touchMitigationTriggered];
  v37[43] = @"proxMitigationTriggered";
  v38[43] = [MEMORY[0x1E696AD98] numberWithBool:a3->proxMitigationTriggered];
  v37[44] = @"auroraFactor";
  *&v31 = a3->auroraFactor;
  v38[44] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  v37[45] = @"edrHeadroom";
  *&v32 = a3->edrHeadroom;
  v38[45] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v37[46] = @"colorAdaptationStrength";
  *&v33 = a3->colorAdaptationStrength;
  v38[46] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
  v37[47] = @"colorAdaptationMode";
  v38[47] = [MEMORY[0x1E696AD98] numberWithInt:a3->colorAdaptationMode];
  v37[48] = @"darkThemeApplied";
  v38[48] = [MEMORY[0x1E696AD98] numberWithBool:a3->darkThemeApplied];
  v37[49] = @"landscapeOrientation";
  v38[49] = [MEMORY[0x1E696AD98] numberWithBool:a3->landscapeOrientation];
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:50];
  *MEMORY[0x1E69E9840];
  return v35;
}

- (float)getAPCE
{
  iomfb = self->_iomfb;
  IOMobileFramebufferGetBlock();
  return 0.0;
}

- (BOOL)getUserAABParams:(CBAABParams *)a3 key:(id)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  context = objc_autoreleasePoolPush();
  v23 = [(CBDisplayContaineriOS *)v27->_displayContainer copyPropertyForKey:v24];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v23 objectForKey:{@"E0a", "floatValue"}];
    v25->e0a = v4;
    [objc_msgSend(v23 objectForKey:{@"E0b", "floatValue"}];
    v25->e0b = v5;
    [objc_msgSend(v23 objectForKey:{@"E1", "floatValue"}];
    v25->e1 = v6;
    [objc_msgSend(v23 objectForKey:{@"E2", "floatValue"}];
    v25->e2 = v7;
    [objc_msgSend(v23 objectForKey:{@"L0a", "floatValue"}];
    v25->l0a = v8;
    [objc_msgSend(v23 objectForKey:{@"L0b", "floatValue"}];
    v25->l0b = v9;
    [objc_msgSend(v23 objectForKey:{@"L1", "floatValue"}];
    v25->l1 = v10;
    [objc_msgSend(v23 objectForKey:{@"L2", "floatValue"}];
    v25->l2 = v11;
    [objc_msgSend(objc_msgSend(v23 "objectForKey:{"objectForKey:", @"thirdSlope", "floatValue"}")];
    v25->thirdSlope = v12;
    v25->curveType = [objc_msgSend(objc_msgSend(v23 objectForKey:{@"Prefs", "objectForKey:", @"curveType", "intValue"}];
    v19 = 0;
  }

  else
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

    v22 = logHandle;
    v21 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to obtain ALS Curve info", v20, 2u);
    }

    v28 = 0;
    v19 = 1;
  }

  objc_autoreleasePoolPop(context);
  if (!v19)
  {
    v28 = 1;
  }

  return v28 & 1;
}

- (CBSliderCommitInfo)getNextEntryAndAdvanceBufferIndex
{
  v7 = self;
  v6 = a2;
  v5 = std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](&self->_entryBuffer, self->_bufferIndex);
  v7->_bufferIndex = nextBufferIndex(v7->_bufferIndex, 1);
  v4 = v7->_bufferEntriesFilled + 1;
  v2 = std::min[abi:de200100]<unsigned long>(&v4, &kCBSliderCommitTelemetryEntryBufferSize);
  v7->_bufferEntriesFilled = *v2;
  return v5;
}

- (CBSliderCommitInfo)getLastFilledEntry
{
  if (!self->_bufferEntriesFilled)
  {
    return 0;
  }

  v2 = previousBufferIndex(self->_bufferIndex);
  return std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](&self->_entryBuffer, v2);
}

- (void)logAllFilledEntries
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  if (self->_bufferLogHandle)
  {
    bufferLogHandle = v25->_bufferLogHandle;
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

    bufferLogHandle = inited;
  }

  v23 = bufferLogHandle;
  v22 = 1;
  if (os_log_type_enabled(bufferLogHandle, OS_LOG_TYPE_INFO))
  {
    log = v23;
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_impl(&dword_1DE8E5000, log, type, "======================= Brightness commit =======================", v21, 2u);
  }

  for (i = 100 - v25->_bufferEntriesFilled; i < 0x64; ++i)
  {
    p_entryBuffer = &v25->_entryBuffer;
    BufferIndex = nextBufferIndex(v25->_bufferIndex, i);
    v19 = std::array<CBSliderCommitInfo,100ul>::operator[][abi:de200100](p_entryBuffer, BufferIndex);
    if (v25->_bufferLogHandle)
    {
      v8 = v25->_bufferLogHandle;
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
    v17 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_0_8_64(v26, *(v19 + 8), [CBSliderCommitTelemetry sliderInfoToNSDictionary:v19]);
      _os_log_impl(&dword_1DE8E5000, v18, v17, "%lld: %@", v26, 0x16u);
    }
  }

  if (v25->_bufferLogHandle)
  {
    v6 = v25->_bufferLogHandle;
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

  v16 = v6;
  v15 = 1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v3 = v16;
    v4 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, v3, v4, "=================================================================", v14, 2u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)cancelDelayedAPCETimer
{
  dispatch_source_cancel(self->_delayedAPCETimer);
  dispatch_release(self->_delayedAPCETimer);
  self->_delayedAPCETimer = 0;
}

- (void)reportCommit:(CBSliderCommitInfo *)a3
{
  self->_longestInactivityLength = 0.0;
  [(CBSliderCommitTelemetry *)self logAllFilledEntries];
  [CBAnalytics userSliderCommit:a3];
  [(CBSliderCommitTelemetry *)self sendNotificationForKey:@"CBFinalBrightnessCommit" withValue:[CBSliderCommitTelemetry sliderInfoToNSDictionary:a3]];
}

- (void)delayedAPCETimerHandler:(CBSliderCommitInfo *)a3
{
  [(CBSliderCommitTelemetry *)self getAPCE];
  a3->delayedAPCE = v3;
  a3->delayedAPCEStatus = 0;
  [(CBSliderCommitTelemetry *)self cancelDelayedAPCETimer];
  [(CBSliderCommitTelemetry *)self reportCommit:a3];
}

- (void)fillEntry:(CBSliderCommitInfo *)a3 withTimestamp:(int64_t)a4 slider:(float)a5 apce:(float)a6 andTrackedState:(TrackedState)a7
{
  context = objc_autoreleasePoolPush();
  a3->timestamp = a4;
  a3->localTimestamp = localizeTimestamp(a4);
  a3->trustedLux = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"TrustedLux", "intValue"}];
  v26 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"RLuxStats"];
  [objc_msgSend(v26 objectForKey:{@"frontLux", "floatValue"}];
  a3->frontLux = v7;
  [objc_msgSend(v26 objectForKey:{@"rearLux", "floatValue"}];
  a3->rearLux = v8;
  a3->rearLuxInUse = [objc_msgSend(v26 objectForKey:{@"rearLuxInUse", "BOOLValue"}];
  v25 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"DisplayBrightness"];
  [objc_msgSend(v25 objectForKey:{@"NitsPhysical", "floatValue"}];
  a3->nits = v9;
  a3->slider = a5;
  [objc_msgSend(v25 objectForKey:{@"AuroraFactor", "floatValue"}];
  a3->auroraFactor = v10;
  [objc_msgSend(v25 objectForKey:{@"EDRHeadroom", "floatValue"}];
  a3->edrHeadroom = v11;
  [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ColorAdaptationStrength", "floatValue"}];
  a3->colorAdaptationStrength = v12;
  a3->colorAdaptationMode = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ColorAdaptationMode", "intValue"}];
  a3->cpmsMitigationLimitingBrightness = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ThermalMitigationLimitingBrightness", "BOOLValue"}];
  [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"EcoModeFactor", "floatValue"}];
  a3->ecoModeFactor = v13;
  a3->touchMitigationTriggered = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"TouchMitigationTriggered", "BOOLValue"}];
  a3->proxMitigationTriggered = [-[CBDisplayContaineriOS copyPropertyForKey:](self->_displayContainer copyPropertyForKey:{@"ProxMitigationTriggered", "BOOLValue"}];
  [(CBSliderCommitTelemetry *)self getUserAABParams:&a3->aabParams alternativeAABParams:&a3->aabAlternativeParams];
  a3->aabParamsUpdateOnly = 0;
  a3->aabParamsUpdateReason = -1;
  v24 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateReason"];
  if (v24)
  {
    a3->aabParamsUpdateReason = [v24 intValue];
  }

  v23 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateNitsDelta", &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets];
  v22 = [*(&self->super.super.isa + *(v19 + 448)) copyPropertyForKey:@"AABCurveUpdateNitsDeltaAlternative"];
  if (v23)
  {
    [v23 floatValue];
    a3->nitsDelta = a3->nitsDelta + v14;
  }

  if (v22)
  {
    [v22 floatValue];
    a3->nitsDeltaAlternative = a3->nitsDeltaAlternative + v15;
  }

  a3->apce = a6;
  a3->delayedAPCE = -1.0;
  a3->delayedAPCEStatus = 1;
  a3->autobrightnessEnabled = a7.autobrightnessEnabled;
  a3->ecoModeEnabled = a7.ecoModeEnabled;
  a3->darkThemeApplied = a7.darkThemeApplied;
  a3->landscapeOrientation = a7.landscapeOrientation;
  MEMORY[0x1E69E5920](a3->trialExperimentId);
  v21 = [+[CBTrialSettingsProvider copyExperimentIdentifiers:MEMORY[0x1E69E5920](a3->trialTreatmentId).n128_f64[0]]];
  if (v21)
  {
    v16 = [v21 experimentId];
    a3->trialExperimentId = MEMORY[0x1E69E5928](v16);
    a3->trialDeploymentId = [v21 deploymentId];
    v17 = [v21 treatmentId];
    a3->trialTreatmentId = MEMORY[0x1E69E5928](v17);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    a3->trialExperimentId = 0;
    a3->trialDeploymentId = 0;
    a3->trialTreatmentId = 0;
  }

  v18 = round(self->_longestInactivityLength * 10.0 / 3600.0) / 10.0;
  a3->inactiveLength = v18;
  a3->inactiveStart = self->_inactivityStartTimestamp;
  objc_autoreleasePoolPop(context);
}

- (void)fillEntry:(CBSliderCommitInfo *)a3 withTimestamp:(int64_t)a4 andRestoreTimeTarget:(int64_t)a5 andAABParams:(CBAABParams *)a6 andAlternativeAABParams:(CBAABParams *)a7
{
  a3->timestamp = a4;
  a3->localTimestamp = localizeTimestamp(a4);
  memcpy(&a3->aabParams, a6, sizeof(a3->aabParams));
  memcpy(&a3->aabAlternativeParams, a7, sizeof(a3->aabAlternativeParams));
  a3->aabParamsUpdateOnly = 1;
  a3->autobrightnessEnabled = self->_state.autobrightnessEnabled;
  a3->aabParamsUpdateReason = -1;
  v12 = [(CBDisplayContaineriOS *)self->_displayContainer copyPropertyForKey:@"AABCurveUpdateReason"];
  if (v12)
  {
    a3->aabParamsUpdateReason = [v12 intValue];
  }

  a3->restoreTimeTarget = a5;
  v11 = [+[CBTrialSettingsProvider sharedInstance](CBTrialSettingsProvider copyExperimentIdentifiers];
  MEMORY[0x1E69E5920](a3->trialExperimentId);
  *&v7 = MEMORY[0x1E69E5920](a3->trialTreatmentId).n128_u64[0];
  if (v11)
  {
    v8 = [v11 experimentId];
    a3->trialExperimentId = MEMORY[0x1E69E5928](v8);
    a3->trialDeploymentId = [v11 deploymentId];
    v9 = [v11 treatmentId];
    a3->trialTreatmentId = MEMORY[0x1E69E5928](v9);
    MEMORY[0x1E69E5920](v11);
  }

  else
  {
    a3->trialExperimentId = 0;
    a3->trialDeploymentId = 0;
    a3->trialTreatmentId = 0;
  }

  v10 = round(self->_longestInactivityLength * 10.0 / 3600.0) / 10.0;
  a3->inactiveLength = v10;
  a3->inactiveStart = self->_inactivityStartTimestamp;
}

- (void)logAfterUserBrightnessCommitWithTimestamp:(int64_t)a3 slider:(float)a4 apce:(float)a5 andTrackedState:(TrackedState)a6
{
  v22 = a6;
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  loggingQueue = self->_loggingQueue;
  block = MEMORY[0x1E69E9820];
  v8 = -1073741824;
  v9 = 0;
  v10 = __97__CBSliderCommitTelemetry_logAfterUserBrightnessCommitWithTimestamp_slider_apce_andTrackedState___block_invoke;
  v11 = &unk_1E867C0D0;
  v12 = v21;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  dispatch_async(loggingQueue, &block);
}

uint64_t __97__CBSliderCommitTelemetry_logAfterUserBrightnessCommitWithTimestamp_slider_apce_andTrackedState___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  LODWORD(v4) = *(a1 + 56);
  return [*(a1 + 32) addOrUpdateEntryWithTimestamp:*(a1 + 40) slider:v4 apce:a2 andTrackedState:{a3, v4}];
}

- (double)timestampFromCurveDistionary:(id)a3
{
  v7 = 0.0;
  v6 = [a3 objectForKey:@"Prefs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 objectForKey:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      return v3;
    }
  }

  return v7;
}

@end