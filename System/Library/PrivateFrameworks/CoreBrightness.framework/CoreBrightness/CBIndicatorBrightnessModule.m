@interface CBIndicatorBrightnessModule
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5;
- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4;
- (BOOL)isEXBrightDispatching;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBIndicatorBrightnessModule)initWithQueue:(id)a3 min:(float)a4 max:(float)a5 contrastBoostMax:(float)a6 frameInfoProvider:(id)a7 andCurrentTimeFunction:(void *)a8;
- (float)currentIndicatorBrightness;
- (id)copyPropertyForKey:(id)a3;
- (void)dealloc;
- (void)endRamp;
- (void)forceBrightnessTransaction;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)processTransaction;
- (void)rampTo:(float)a3 indicatorUpdatedOutsideOfRamp:(BOOL)a4;
- (void)sendRampFinishedNotification;
- (void)sendRampIsRunningNotification;
- (void)sendRampIsRunningNotificationActive;
- (void)setAppliedHeadroom:(float)a3;
- (void)setLux:(float)a3;
- (void)setMinimumIndicatorBrightness:(float)a3;
- (void)setRampSpeed:(float)a3;
- (void)setSDRBrightness:(float)a3;
- (void)setSilEnabled:(BOOL)a3;
- (void)setSilState:(unint64_t)a3;
- (void)startMonitoringForRTPLC;
- (void)updateMaxContrastBoostedBrightness:(float)a3;
- (void)updateMaxContrastBoostedBrightnessGated:(float)a3;
- (void)updateRamp;
@end

@implementation CBIndicatorBrightnessModule

- (void)updateRamp
{
  v40 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  [(CBIndicatorBrightnessModule *)self processTransaction];
  if (v37->_forcedBrightnessUpdate)
  {
    v37->_forcedBrightnessUpdate = 0;
    if ([(CBIndicatorBrightnessModule *)v37 isRampRunning])
    {
      if (v37->_logHandle)
      {
        logHandle = v37->_logHandle;
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
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = v35;
        type = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_impl(&dword_1DE8E5000, log, type, "WARNING: Ramp was running while forced brightness transaction happened", v33, 2u);
      }
    }

    else
    {
      [(CBIndicatorBrightnessModule *)v37 sendRampFinishedNotification];
    }
  }

  if (v37->_logHandle)
  {
    v20 = v37->_logHandle;
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

  v32 = v20;
  v31 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v2 = [(CBIndicatorBrightnessModule *)v37 isRampRunning];
    v3 = "YES";
    if (!v2)
    {
      v3 = "NO";
    }

    v18 = v3;
    v4 = [+[CBSILState sharedInstance](CBSILState SILStateString];
    __os_log_helper_16_2_6_8_32_8_32_8_0_8_0_8_0_8_0(v39, v18, v4, COERCE__INT64(v37->_sdrBrightness), COERCE__INT64(v37->_currentIndicatorBrightness), COERCE__INT64(v37->_targetIndicatorBrightness), COERCE__INT64(v37->_mib));
    _os_log_debug_impl(&dword_1DE8E5000, v32, v31, "updateRamp called, isRampRunning: %s, silState: %s, currentSDRBrightness: %f, currentIB: %f, targetIB: %f, MIB: %f", v39, 0x3Eu);
  }

  if ([(CBIndicatorBrightnessModule *)v37 isRampRunning])
  {
    ramp = v37->_ramp;
    (v37->_currentTimeFunction)();
    v30 = [(CBStopsBasedBrightnessRamp *)ramp updateRampWithTimestamp:?];
    [(CBStopsBasedBrightnessRamp *)v37->_ramp currentBrightness];
    v37->_currentIndicatorBrightness = v5;
    if (v37->_sdrBrightness == 0.0)
    {
      v37->_lastAppliedDimmingFactor = 1.0;
    }

    else
    {
      [(CBIndicatorBrightnessModule *)v37 currentDigitalDimmingFactor];
      *&v6 = v6;
      v37->_lastAppliedDimmingFactor = *&v6;
    }

    if (v30 == 1)
    {
      [(CBIndicatorBrightnessModule *)v37 endRamp];
      if ([+[CBSILState SILState]== 2 sharedInstance]
      {
        [(CBIndicatorBrightnessModule *)v37 setSilState:3];
        [(CBIndicatorBrightnessModule *)v37 forceBrightnessTransaction];
      }
    }
  }

  else if ([+[CBSILState sharedInstance](CBSILState SILState]== 2 || [+[CBSILState SILState]== 3 sharedInstance]
  {
    [(CBIndicatorBrightnessModule *)v37 setSilState:4];
  }

  if (![+[CBSILState SILState] sharedInstance]
  {
    [(CBIndicatorBrightnessModule *)v37 setSilState:1];
  }

  if (v37->_logHandle)
  {
    v16 = v37->_logHandle;
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

  v29 = v16;
  v28 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(CBIndicatorBrightnessModule *)v37 isRampRunning];
    v8 = "YES";
    if (!v7)
    {
      v8 = "NO";
    }

    v14 = v8;
    v9 = [+[CBSILState sharedInstance](CBSILState SILStateString];
    __os_log_helper_16_2_6_8_32_8_32_8_0_8_0_8_0_8_0(v38, v14, v9, COERCE__INT64(v37->_sdrBrightness), COERCE__INT64(v37->_currentIndicatorBrightness), COERCE__INT64(v37->_targetIndicatorBrightness), COERCE__INT64(v37->_mib));
    _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "updateRamp finished, isRampRunning: %s, silState: %s, currentSDRBrightness: %f, currentIB: %f, targetIB: %f, MIB: %f", v38, 0x3Eu);
  }

  if ([+[CBSILState isSILActive]&& v37->_sdrBrightness > v37->_currentIndicatorBrightness sharedInstance]
  {
    if (v37->_logHandle)
    {
      v13 = v37->_logHandle;
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
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v10 = oslog;
      v11 = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_1DE8E5000, v10, v11, "SDR brightness is higher than current IB - something is probably off", v25, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)processTransaction
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self->_nextUpdate.dirty)
  {
    goto LABEL_103;
  }

  self->_maxContrastBoostedBrightness = self->_nextUpdate.maxContrastBoostedBrightness;
  self->_mib = clamp(self->_nextUpdate.minimumIndicatorBrightness * self->_mibCompensationFactor, self->_minBrightness, self->_maxBrightness);
  self->_sdrBrightness = self->_nextUpdate.sdrBrightness;
  self->_contentHeadroom = self->_nextUpdate.contentHeadroom;
  v21 = 0;
  if (self->_nextUpdate.appliedHeadroom > 1.3)
  {
    v21 = self->_contentHeadroom > 1.3;
  }

  self->_hdrContent = v21;
  self->_lux = self->_nextUpdate.lux;
  self->_rtplcApplied = self->_nextUpdate.rtplc.applied;
  self->_rtplcCap = self->_nextUpdate.rtplc.cap;
  v28 = self->_nextUpdate.sdrBrightness * self->_nextUpdate.appliedHeadroom;
  if (self->_lastReportedUIBrightness <= 0.0 || fabs((self->_lastReportedUIBrightness - v28)) / self->_lastReportedUIBrightness >= 0.05 || (HIDWORD(v2) = 1078525952, fabs((self->_lastReportedUIBrightness - v28)) >= 50.0))
  {
    [(NSMutableArray *)self->_mibServices enumerateObjectsUsingBlock:?];
    self->_lastReportedUIBrightness = v28;
  }

  mib = self->_mib;
  if (!self->_indicatorBrightnessFollowsMIB && self->_contrastIndicatorEnabled)
  {
    if (self->_hdrContent)
    {
      *&v2 = self->_lux;
      [(CBIndicatorBrightnessModule *)self calculate60JNDContrastIndicatorForSDRBrightness:COERCE_DOUBLE(LODWORD(self->_sdrBrightness)) andLux:v2];
      v26 = v3;
    }

    else
    {
      if (CBU_IsPad())
      {
        *&v4 = self->_sdrBrightness * self->_contentHeadroom;
        *&v5 = self->_lux;
        [(CBIndicatorBrightnessModule *)self calculate22JNDContrastIndicatorForSDRBrightness:v4 andLux:v5];
      }

      else
      {
        *&v4 = self->_sdrBrightness;
        *&v5 = self->_lux;
        [(CBIndicatorBrightnessModule *)self calculate20JNDContrastIndicatorForSDRBrightness:v4 andLux:v5];
      }

      v26 = v6;
    }

    v25 = fmaxf(fminf(v26, self->_maxContrastBoostedBrightness), self->_sdrBrightness);
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_4_0(v34, COERCE__INT64(v26), COERCE__INT64(v25), COERCE__INT64(self->_contentHeadroom), self->_hdrContent);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Calculated contrast IB=%f, capped=%f, contentHeadroom=%f, HDR=%d", v34, 0x26u);
    }

    mib = fmaxf(mib, fminf(v25, self->_maxBrightness));
  }

  if (self->_rtplcApplied)
  {
    v24 = self->_rtplcCap - 1.0;
    if (v24 < self->_mib)
    {
      if (self->_logHandle)
      {
        v18 = self->_logHandle;
      }

      else
      {
        v17 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v18 = v17;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v33, COERCE__INT64(v24), COERCE__INT64(self->_mib));
        _os_log_error_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_ERROR, "RTPLC Cap (%f) < MIB (%f), this should never happen!", v33, 0x16u);
      }
    }

    mib = fminf(mib, clamp(fmaxf(v24, self->_mib), self->_minBrightness, self->_maxBrightness));
  }

  if (self->_nextUpdate.silEnabled)
  {
    v16 = [+[CBSILState sharedInstance](CBSILState SILState];
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        [(CBIndicatorBrightnessModule *)self setSilState:1];
      }

      else if (v16 - 3 <= 1)
      {
        [(CBIndicatorBrightnessModule *)self setSilState:0];
      }
    }
  }

  else
  {
    v15 = [+[CBSILState sharedInstance](CBSILState SILState];
    if (v15)
    {
      if (v15 == 1)
      {
        [(CBIndicatorBrightnessModule *)self setSilState:2];
      }
    }

    else
    {
      [(CBIndicatorBrightnessModule *)self setSilState:4];
    }
  }

  self->_nextUpdate.dirty = 0;
  v14 = [+[CBSILState sharedInstance](CBSILState SILState];
  if (v14)
  {
    if (v14 != 1)
    {
      if (v14 != 2)
      {
        if (v14 - 3 <= 1)
        {
          [(CBIndicatorBrightnessModule *)self endRamp];
        }

        goto LABEL_103;
      }

      if (self->_currentIndicatorBrightness <= self->_sdrBrightness)
      {
        [(CBIndicatorBrightnessModule *)self endRamp];
        [(CBIndicatorBrightnessModule *)self forceBrightnessTransaction];
        goto LABEL_103;
      }

LABEL_98:
      *&v7 = self->_sdrBrightness;
      [(CBIndicatorBrightnessModule *)self rampTo:v7];
      goto LABEL_103;
    }

    if (self->_jumpToTarget && self->_firstMIBReceived)
    {
      if (self->_logHandle)
      {
        v13 = self->_logHandle;
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
        __os_log_helper_16_0_1_8_0(v32, COERCE__INT64(self->_mib));
        _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "Jumping to target compensated MIB (%f)", v32, 0xCu);
      }

      self->_jumpToTarget = 0;
      self->_currentIndicatorBrightness = self->_mib;
      [(CBIndicatorBrightnessModule *)self forceBrightnessTransaction];
    }

    else
    {
      if (mib <= self->_sdrBrightness && !self->_indicatorBrightnessFollowsMIB)
      {
        if (self->_contrastIndicatorEnabled)
        {
          if (self->_logHandle)
          {
            v9 = self->_logHandle;
          }

          else
          {
            v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v9 = v8;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_2_8_0_8_0(v30, COERCE__INT64(mib), COERCE__INT64(self->_sdrBrightness));
            _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "TargetIB(%f) < SDR(%f)", v30, 0x16u);
          }
        }

        if (self->_currentIndicatorBrightness <= self->_sdrBrightness)
        {
          self->_currentIndicatorBrightness = self->_sdrBrightness;
          [(CBIndicatorBrightnessModule *)self endRamp];
          goto LABEL_103;
        }

        goto LABEL_98;
      }

      v23 = 0;
      if (self->_currentIndicatorBrightness < self->_sdrBrightness && !self->_indicatorBrightnessFollowsMIB)
      {
        self->_currentIndicatorBrightness = self->_sdrBrightness;
        v23 = 1;
      }

      v22 = fminf(self->_sdrBrightness * self->_lastAppliedDimmingFactor, mib);
      if (!self->_indicatorBrightnessFollowsMIB && self->_currentIndicatorBrightness < v22)
      {
        v7 = ((v22 - self->_currentIndicatorBrightness) / self->_currentIndicatorBrightness);
        if (v7 >= 0.1)
        {
          if (self->_logHandle)
          {
            v11 = self->_logHandle;
          }

          else
          {
            v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v11 = v10;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_0_2_8_0_8_0(v31, COERCE__INT64(self->_currentIndicatorBrightness), COERCE__INT64(v22));
            _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_INFO, "Short-cutting ramp for contrast indicator %f -> %f", v31, 0x16u);
          }
        }

        self->_currentIndicatorBrightness = v22;
        v23 = 1;
      }

      *&v7 = mib;
      [(CBIndicatorBrightnessModule *)self rampTo:v23 & 1 indicatorUpdatedOutsideOfRamp:v7];
    }
  }

  else
  {
    self->_currentIndicatorBrightness = self->_sdrBrightness;
    self->_lastAppliedDimmingFactor = 1.0;
    *&v7 = mib;
    if (mib > self->_sdrBrightness || self->_indicatorBrightnessFollowsMIB)
    {
      *&v7 = mib;
      [(CBIndicatorBrightnessModule *)self rampTo:1 indicatorUpdatedOutsideOfRamp:v7];
    }

    else
    {
      if ([(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self endRamp];
      }

      [(CBIndicatorBrightnessModule *)self forceBrightnessTransaction];
    }
  }

LABEL_103:
  *MEMORY[0x1E69E9840];
}

- (void)endRamp
{
  v10 = self;
  v9 = a2;
  if (self->_ramp)
  {
    if (v10->_logHandle)
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
    v7 = 1;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_1DE8E5000, log, type, "Ending ramp", v6, 2u);
    }

    [(CBIndicatorBrightnessModule *)v10 sendRampFinishedNotification];
    MEMORY[0x1E69E5920](v10->_ramp);
    v10->_ramp = 0;
  }
}

- (BOOL)isEXBrightDispatching
{
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  [(NSMutableArray *)self->_mibServices enumerateObjectsUsingBlock:?];
  v3 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v3 & 1;
}

- (CBIndicatorBrightnessModule)initWithQueue:(id)a3 min:(float)a4 max:(float)a5 contrastBoostMax:(float)a6 frameInfoProvider:(id)a7 andCurrentTimeFunction:(void *)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20.receiver = self;
  v20.super_class = CBIndicatorBrightnessModule;
  v28 = [(CBModule *)&v20 initWithQueue:a3];
  if (v28)
  {
    v8 = os_log_create("com.apple.CoreBrightness.CBIndicatorBrightnessModule", "default");
    *(v28 + 5) = v8;
    *(v28 + 12) = v25;
    *(v28 + 13) = v24;
    *(v28 + 14) = v23;
    *(v28 + 15) = *(v28 + 12);
    *(v28 + 72) = 0;
    *(v28 + 28) = *(v28 + 12);
    *(v28 + 31) = *(v28 + 12);
    *(v28 + 29) = *(v28 + 12);
    *(v28 + 30) = 1.5;
    if (*(v28 + 5))
    {
      v19 = *(v28 + 5);
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

      v19 = inited;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v32, COERCE__INT64(*(v28 + 12)), COERCE__INT64(*(v28 + 13)), COERCE__INT64(*(v28 + 14)), COERCE__INT64(*(v28 + 30)));
      _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "IndicatorBrightnessModule Init | min: %f, max: %f, contrastBoostMax: %f, mibCompensationFactor: %f", v32, 0x2Au);
    }

    *(v28 + 33) = 1.0;
    *(v28 + 19) = *(v28 + 14);
    *(v28 + 20) = *(v28 + 12);
    *(v28 + 22) = *(v28 + 12);
    *(v28 + 21) = 1.0;
    *(v28 + 23) = 0;
    *(v28 + 25) = *(v28 + 13);
    *(v28 + 104) = 0;
    *(v28 + 24) = 1.0;
    *(v28 + 108) = 0;
    *(v28 + 109) = 0;
    *(v28 + 34) = 0.5;
    *(v28 + 19) = v21;
    *(v28 + 128) = 0;
    *(v28 + 129) = 0;
    *(v28 + 160) = 0;
    *(v28 + 41) = 0x800000;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v28 + 21) = v9;
    *(v28 + 190) = _os_feature_enabled_impl();
    if (*(v28 + 5))
    {
      v17 = *(v28 + 5);
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

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v31, *(v28 + 190) & 1);
      _os_log_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_DEFAULT, "Enforce MIB: %d", v31, 8u);
    }

    *(v28 + 191) = _os_feature_enabled_impl();
    if (*(v28 + 5))
    {
      v15 = *(v28 + 5);
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

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v30, *(v28 + 191) & 1);
      _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEFAULT, "Contrast indicator enabled: %d", v30, 8u);
    }

    *(v28 + 192) = 0;
    v10 = MEMORY[0x1E69E5928](v22);
    *(v28 + 22) = v10;
    *(v28 + 188) = 0;
    *(v28 + 46) = *(v28 + 13);
    *(v28 + 193) = 0;
    v11 = [CBIndicatorAnalyticsModule alloc];
    v12 = [(CBIndicatorAnalyticsModule *)v11 initWithQueue:*(v28 + 3) andIndicatorModule:v28];
    *(v28 + 25) = v12;
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v29;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  MEMORY[0x1E69E5920](self->_mibServices);
  MEMORY[0x1E69E5920](v4->_frameInfoProvider);
  [(CBIndicatorBrightnessModule *)v4 endRamp];
  [(CBModule *)v4 unregisterNotificationBlock];
  v2.receiver = v4;
  v2.super_class = CBIndicatorBrightnessModule;
  [(CBModule *)&v2 dealloc];
}

- (float)currentIndicatorBrightness
{
  if (self->_enforceMIB)
  {
    return self->_currentIndicatorBrightness;
  }

  else
  {
    return self->_sdrBrightness;
  }
}

- (void)setSDRBrightness:(float)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0)
  {
    v6 = clamp(a3, self->_minBrightness, self->_maxBrightness);
    if (v6 != self->_nextUpdate.sdrBrightness)
    {
      self->_nextUpdate.sdrBrightness = v6;
      self->_nextUpdate.dirty = 1;
      if (![(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self processTransaction];
      }
    }
  }

  else
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(a3));
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Negative SDR brightness %f, ignoring", v8, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAppliedHeadroom:(float)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 >= 1.0)
  {
    if (a3 != self->_nextUpdate.appliedHeadroom)
    {
      self->_nextUpdate.appliedHeadroom = a3;
      self->_nextUpdate.dirty = 1;
      if (![(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self processTransaction];
      }
    }
  }

  else
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(a3));
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Applied headroom is lower than 1 (%f), ignoring", v7, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

void __52__CBIndicatorBrightnessModule_isEXBrightDispatching__block_invoke(uint64_t a1, __IOHIDServiceClient *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  cf = IOHIDServiceClientCopyProperty(a2, @"EXBrightSILEnabledTrusted");
  if (cf)
  {
    *(*(*(a1 + 40) + 8) + 24) = (*(*(*(a1 + 40) + 8) + 24) & 1 | [cf BOOLValue]) != 0;
    CFRelease(cf);
  }

  else
  {
    if (*(*(a1 + 32) + 40))
    {
      v4 = *(*(a1 + 32) + 40);
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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_0(v8, "EXBrightSILEnabledTrusted", a3);
      _os_log_error_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_ERROR, "Failed to copy property %s from MIB service (%lu)", v8, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v42 = self;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  if ([a4 isEqualToString:@"MinimumIndicatorBrightnessEnforce"])
  {
    v42->_enforceMIB = [v40 BOOLValue];
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

    v38 = logHandle;
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v47, v42->_enforceMIB);
      _os_log_impl(&dword_1DE8E5000, v38, v37, "Enforce MIB: %d", v47, 8u);
    }

    v43 = 1;
  }

  else if ([v39 isEqualToString:@"IndicatorContrastEnabled"])
  {
    v42->_contrastIndicatorEnabled = [v40 BOOLValue];
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

    v36 = v19;
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v46, v42->_contrastIndicatorEnabled);
      _os_log_impl(&dword_1DE8E5000, v36, v35, "Contrast indicator enabled: %d", v46, 8u);
    }

    v43 = 1;
  }

  else if ([v39 isEqualToString:@"SecureIndicatorBrightnessRampSpeed"])
  {
    [v40 floatValue];
    v34 = LODWORD(v4);
    [(CBIndicatorBrightnessModule *)v42 setRampSpeed:v4];
    v43 = 1;
  }

  else if ([v39 isEqualToString:@"SecureIndicatorLightEnabled"])
  {
    v33 = [v40 BOOLValue];
    [(CBIndicatorBrightnessModule *)v42 setSilEnabled:v33 & 1];
    v43 = 1;
  }

  else if ([v39 isEqualToString:@"SecureIndicatorActiveCount"])
  {
    v32 = [v40 unsignedIntValue];
    [(CBIndicatorBrightnessModule *)v42 setSilEnabled:v32 != 0];
    v43 = 1;
  }

  else if ([v39 isEqualToString:@"MinimumIndicatorBrightness"])
  {
    [v40 floatValue];
    v31 = LODWORD(v5);
    [(CBIndicatorBrightnessModule *)v42 setMinimumIndicatorBrightness:v5];
    v43 = 1;
  }

  else if ([v39 isEqualToString:@"IndicatorBrightnessFollowsMIB"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v40 objectForKeyedSubscript:@"IndicatorBrightnessFollowsMIBEnable"];
      v29 = [v40 objectForKeyedSubscript:@"IndicatorBrightnessFollowsMIBValue"];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v42->_indicatorBrightnessFollowsMIB = [v30 BOOLValue];
        [v29 floatValue];
        v28 = *&v6;
        if (v42->_indicatorBrightnessFollowsMIB)
        {
          *&v6 = v28;
          [(CBIndicatorBrightnessModule *)v42 setMinimumIndicatorBrightness:v6];
        }

        if (v42->_logHandle)
        {
          v17 = v42->_logHandle;
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

        v27 = v17;
        v26 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          if (v42->_indicatorBrightnessFollowsMIB)
          {
            v7 = "Enabling";
          }

          else
          {
            v7 = "Disabling";
          }

          __os_log_helper_16_2_2_8_32_8_0(v45, v7, COERCE__INT64(v28));
          _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "%s IB = MIB (%f)", v45, 0x16u);
        }

        v43 = 1;
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    if ([v39 isEqualToString:@"DisplayPowerOff"])
    {
      [(CBIndicatorBrightnessModule *)v42 shortcutRamp];
    }

    else if ([v39 isEqualToString:@"FlipBookState"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v40 integerValue];
        if (!v25 && [+[CBSILState isSILActive] sharedInstance]
        {
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

          v24 = v15;
          v23 = 16;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v12 = v24;
            v13 = v23;
            __os_log_helper_16_0_0(v22);
            _os_log_error_impl(&dword_1DE8E5000, v12, v13, "Transitioning to flipbook with SIL state still ON, shortcutting...", v22, 2u);
          }

          [(CBIndicatorBrightnessModule *)v42 shortcutRamp];
        }
      }
    }

    else if ([v39 isEqualToString:@"MinimumIndicatorBrightnessCompensationFactor"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v40 floatValue];
        v42->_mibCompensationFactor = v8;
        v42->_nextUpdate.dirty = 1;
        if (![(CBIndicatorBrightnessModule *)v42 isRampRunning])
        {
          [(CBIndicatorBrightnessModule *)v42 processTransaction];
        }

        if (v42->_logHandle)
        {
          v11 = v42->_logHandle;
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

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_8_0(v44, COERCE__INT64(v42->_mibCompensationFactor));
          _os_log_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_INFO, "Updating MIB compensation factor: %f", v44, 0xCu);
        }
      }
    }

    v43 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v43 & 1;
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 isEqualToString:@"TrustedLux"])
    {
      [(CBIndicatorAnalyticsModule *)self->_mibAnalytics handleNotificationForKey:a3 withProperty:a4];
    }

    else if ([a3 isEqualToString:@"DisplayOn"] & 1) != 0 && (objc_msgSend(a4, "BOOLValue"))
    {
      self->_mib = self->_minBrightness;
    }
  }
}

- (id)copyPropertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"SecureIndicatorBrightnessRampSpeed"])
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v4 = self->_rampSpeed;
    return [v3 initWithFloat:v4];
  }

  else if ([a3 isEqualToString:@"SecureIndicatorLightEnabled"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[CBSILState isSILActive](+[CBSILState sharedInstance](CBSILState, "sharedInstance"), "isSILActive")}];
  }

  else if ([a3 isEqualToString:@"MinimumIndicatorBrightness"])
  {
    [(CBIndicatorBrightnessModule *)self processTransaction];
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v6 = self->_mib;
    return [v5 initWithFloat:v6];
  }

  else if ([a3 isEqualToString:@"MinimumIndicatorBrightnessCompensationFactor"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v8 = self->_mibCompensationFactor;
    return [v7 initWithFloat:v8];
  }

  else if ([a3 isEqualToString:@"MinimumIndicatorBrightnessEnforce"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_enforceMIB];
  }

  else if ([a3 isEqualToString:@"SecureIndicatorState"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[CBSILState SILState](+[CBSILState sharedInstance](CBSILState, "sharedInstance"), "SILState")}];
  }

  else if ([a3 isEqualToString:@"IndicatorContrastEnabled"])
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_contrastIndicatorEnabled];
  }

  else
  {
    return 0;
  }
}

- (void)updateMaxContrastBoostedBrightness:(float)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->super._queue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __66__CBIndicatorBrightnessModule_updateMaxContrastBoostedBrightness___block_invoke;
  v8 = &unk_1E867C6F0;
  v9 = v13;
  v10 = a3;
  dispatch_async(queue, &v4);
}

- (void)updateMaxContrastBoostedBrightnessGated:(float)a3
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[updateMaxContrastBoostedBrightness] maxContrastBoostedBrightness=%f", v7, 0xCu);
  }

  self->_nextUpdate.maxContrastBoostedBrightness = a3;
  self->_nextUpdate.dirty = 1;
  if (![(CBIndicatorBrightnessModule *)self isRampRunning])
  {
    [(CBIndicatorBrightnessModule *)self processTransaction];
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleHIDEvent:(__IOHIDEvent *)a3 from:(__IOHIDServiceClient *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_indicatorBrightnessFollowsMIB)
  {
    v17 = 0;
  }

  else if (a3 && ([(NSMutableArray *)self->_mibServices containsObject:a4]& 1) != 0)
  {
    if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 98)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      DataValue = IOHIDEventGetDataValue();
      if (IOHIDEventGetIntegerValue() == 16)
      {
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

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v18, TimeStamp, COERCE__INT64(*DataValue / 1000000.0), COERCE__INT64(*(DataValue + 8)), COERCE__INT64(*(DataValue + 12)));
          _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "[New Event] eventTimestamp=%llu MIBData.(ts=%fs mib=%f aggregatedLux=%f)\n", v18, 0x2Au);
        }

        LODWORD(v5) = *(DataValue + 8);
        [(CBIndicatorBrightnessModule *)self setMinimumIndicatorBrightness:v5];
        LODWORD(v6) = *(DataValue + 12);
        [(CBIndicatorBrightnessModule *)self setLux:v6];
        v17 = 1;
      }

      else
      {
        if (self->_logHandle)
        {
          v11 = self->_logHandle;
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

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v19, TimeStamp);
          _os_log_error_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_ERROR, "[New Event] eventTimestamp=%llu (unknown payload)", v19, 0xCu);
        }

        v17 = 0;
      }
    }

    else
    {
      if (self->_logHandle)
      {
        v13 = self->_logHandle;
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

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        Type = IOHIDEventGetType();
        __os_log_helper_16_0_1_4_0(v20, Type);
        _os_log_error_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_ERROR, "[New Event] unknown event type %u", v20, 8u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v17 & 1;
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (!a3 || !IOHIDServiceClientConformsTo(v11, 0xFF00u, 0x62u))
  {
    return 0;
  }

  [(NSMutableArray *)v13->_mibServices addObject:v11];
  if ([(CBIndicatorBrightnessModule *)v13 isEXBrightDispatching])
  {
    if (v13->_logHandle)
    {
      logHandle = v13->_logHandle;
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
      _os_log_impl(&dword_1DE8E5000, log, type, "Enabling SIL after restart!", v8, 2u);
    }

    v13->_jumpToTarget = 1;
    v13->_nextUpdate.silEnabled = 1;
    [(CBIndicatorBrightnessModule *)v13 setSilState:1, log];
  }

  return 1;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  if (([(NSMutableArray *)self->_mibServices containsObject:a3]& 1) == 0)
  {
    return 0;
  }

  [(NSMutableArray *)self->_mibServices removeObject:a3];
  return 1;
}

- (void)setMinimumIndicatorBrightness:(float)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 > 0.0)
  {
    if (!self->_firstMIBReceived)
    {
      self->_firstMIBReceived = 1;
    }

    v6 = clamp(a3, self->_minBrightness, self->_maxBrightness);
    if (v6 != self->_nextUpdate.minimumIndicatorBrightness)
    {
      self->_nextUpdate.minimumIndicatorBrightness = v6;
      self->_nextUpdate.dirty = 1;
      if (![(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self processTransaction];
      }
    }
  }

  else
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(a3));
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Negative MIB %f, ignoring", v8, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setLux:(float)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0)
  {
    if (a3 != self->_nextUpdate.lux)
    {
      self->_nextUpdate.lux = a3;
      self->_nextUpdate.dirty = 1;
      if (![(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self processTransaction];
      }
    }
  }

  else
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(a3));
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Negative lux %f, ignoring", v7, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setRampSpeed:(float)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  v12 = a3;
  if (a3 >= 0.0)
  {
    if (v12 == 0.0)
    {
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

      v11 = logHandle;
      v10 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v11;
        type = v10;
        __os_log_helper_16_0_0(v9);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "MIB ramp speed can't be 0 seconds/stop, using default ramp speed", v9, 2u);
      }

      v14->_rampSpeed = 0.5;
    }

    else
    {
      v14->_rampSpeed = v12;
    }
  }

  else
  {
    v14->_rampSpeed = 0.5;
  }

  if (v14->_logHandle)
  {
    v4 = v14->_logHandle;
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(v14->_rampSpeed));
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "MIB ramp speed overriden to %f seconds/stop", v15, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setSilEnabled:(BOOL)a3
{
  if (self->_nextUpdate.silEnabled != a3)
  {
    self->_nextUpdate.silEnabled = a3;
    self->_nextUpdate.dirty = 1;
    [(NSMutableArray *)self->_mibServices enumerateObjectsUsingBlock:?];
    if (![(CBIndicatorBrightnessModule *)self isRampRunning])
    {
      [(CBIndicatorBrightnessModule *)self processTransaction];
    }
  }
}

uint64_t __45__CBIndicatorBrightnessModule_setSilEnabled___block_invoke(uint64_t a1, __IOHIDServiceClient *a2)
{
  if (*(a1 + 32))
  {
    return IOHIDServiceClientSetProperty(a2, @"EXBrightSILEnabled", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    return IOHIDServiceClientSetProperty(a2, @"EXBrightSILEnabled", *MEMORY[0x1E695E4C0]);
  }
}

- (void)startMonitoringForRTPLC
{
  if (!self->_rtplcMonitoring)
  {
    self->_rtplcApplied = 0;
    self->_rtplcCap = self->_maxBrightness;
    self->_nextUpdate.rtplc.applied = 0;
    self->_nextUpdate.rtplc.cap = self->_maxBrightness;
    [(CBFrameInfoProvider *)self->_frameInfoProvider registerObserver:self withCallback:?];
    self->_rtplcMonitoring = 1;
  }
}

void __54__CBIndicatorBrightnessModule_startMonitoringForRTPLC__block_invoke(uint64_t a1, _OWORD *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = a1;
  v13[0] = 0;
  v13[1] = v13;
  v14 = 1375731712;
  v15 = 48;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__CBIndicatorBrightnessModule_startMonitoringForRTPLC__block_invoke_68;
  v8 = &unk_1E867B5C8;
  v11 = *a2;
  v12 = a2[1];
  v10 = v13;
  v9 = *(a1 + 32);
  dispatch_async(v3, &block);
  _Block_object_dispose(v13, 8);
}

uint64_t __54__CBIndicatorBrightnessModule_startMonitoringForRTPLC__block_invoke_68(uint64_t result)
{
  v2 = result;
  v5 = 0;
  v4 = *(result + 61) & 1;
  v3 = *(result + 68);
  if ((*(*(*(*(result + 40) + 8) + 40) + 188) & 1) == 0 && (*(result + 61) & 1) != 0 || (*(*(*(*(result + 40) + 8) + 40) + 188) & 1) != 0 && (v1 = *(result + 68), *(*(*(*(result + 40) + 8) + 40) + 184) > v3))
  {
    *(*(*(*(result + 40) + 8) + 40) + 104) = *(result + 61) & 1;
    *(*(*(*(result + 40) + 8) + 40) + 100) = v3;
    *(*(*(*(result + 40) + 8) + 40) + 109) = 1;
    v5 = 1;
  }

  if (*(*(*(*(result + 40) + 8) + 40) + 96) != *(result + 64))
  {
    *(*(*(*(result + 40) + 8) + 40) + 96) = *(result + 64);
    *(*(*(*(result + 40) + 8) + 40) + 109) = 1;
    v5 = 1;
  }

  if (v5)
  {
    result = [*(result + 32) isRampRunning];
    if (!result)
    {
      return [*(*(*(v2 + 40) + 8) + 40) processTransaction];
    }
  }

  return result;
}

- (void)setSilState:(unint64_t)a3
{
  if (a3 != [+[CBSILState SILState] sharedInstance]
  {
    [+[CBSILState sharedInstance](CBSILState setSILState:"setSILState:", a3];
    if (a3 <= 2)
    {
      [(CBIndicatorBrightnessModule *)self startMonitoringForRTPLC];
    }

    else if (a3 - 3 <= 1)
    {
      [(CBIndicatorBrightnessModule *)self stopMonitoringForRTPLC];
      self->_lastAppliedDimmingFactor = 1.0;
    }

    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a3, self->_mibAnalytics}];
    [v4 setProperty:v3 forKey:?];
    -[CBModule sendNotificationForKey:withValue:](self, "sendNotificationForKey:withValue:", @"SecureIndicatorState", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3]);
  }
}

- (void)forceBrightnessTransaction
{
  v10 = self;
  v9 = a2;
  if (!self->_forcedBrightnessUpdate)
  {
    v10->_forcedBrightnessUpdate = 1;
    [(CBIndicatorBrightnessModule *)v10 sendRampIsRunningNotification];
    if (v10->_logHandle)
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
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "Forced brightness transaction", v6, 2u);
    }
  }
}

double __49__CBIndicatorBrightnessModule_processTransaction__block_invoke(uint64_t a1, __IOHIDServiceClient *a2)
{
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v3 = *(*(a1 + 32) + 80) * *(*(a1 + 32) + 84);
  property = [v2 initWithFloat:v3];
  IOHIDServiceClientSetProperty(a2, @"EXBrightUIBrightness", property);
  *&result = MEMORY[0x1E69E5920](property).n128_u64[0];
  return result;
}

- (void)rampTo:(float)a3 indicatorUpdatedOutsideOfRamp:(BOOL)a4
{
  v41 = *MEMORY[0x1E69E9840];
  if ([+[CBSILState SILState]== 4 sharedInstance]
  {
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v40, COERCE__INT64(a3));
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Can't ramp MIB target %f when SIL is off", v40, 0xCu);
    }
  }

  else if ([+[CBSILState SILState]!= 2 || (*&v4 = a3 sharedInstance]
  {
    if ([(CBIndicatorBrightnessModule *)self isRampRunning]|| self->_currentIndicatorBrightness != a3)
    {
      if (![(CBIndicatorBrightnessModule *)self isRampRunning]&& self->_aodOn && SLODWORD(self->_currentIndicatorBrightness) == SLODWORD(a3))
      {
        if (self->_logHandle)
        {
          v21 = self->_logHandle;
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

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v37, COERCE__INT64(a3));
          _os_log_debug_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEBUG, "[AOD] Already at correct brightness %f with ramp not running", v37, 0xCu);
        }
      }

      else if ([(CBIndicatorBrightnessModule *)self isRampRunning]&& self->_targetIndicatorBrightness == a3 && !a4)
      {
        if (self->_logHandle)
        {
          v19 = self->_logHandle;
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

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v36, COERCE__INT64(a3));
          _os_log_debug_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEBUG, "Already running ramp with the same target %f", v36, 0xCu);
        }
      }

      else
      {
        self->_targetIndicatorBrightness = a3;
        v29 = [(CBIndicatorBrightnessModule *)self isRampRunning];
        v28 = (self->_currentTimeFunction)();
        if (v29)
        {
          [(CBStopsBasedBrightnessRamp *)self->_ramp timeOfLastUpdate];
          v28 = v5;
        }

        MEMORY[0x1E69E5920](self->_ramp);
        self->_ramp = 0;
        if (self->_currentIndicatorBrightness == a3)
        {
          [(CBIndicatorBrightnessModule *)self sendRampFinishedNotification];
        }

        else
        {
          v6 = [CBStopsBasedBrightnessRamp alloc];
          *&v7 = self->_currentIndicatorBrightness;
          *&v8 = a3;
          *&v9 = self->_rampSpeed;
          *&v10 = v28;
          self->_ramp = [(CBStopsBasedBrightnessRamp *)v6 initWithStartingBrightness:v7 targetBrightness:v8 rampSpeed:v9 andCurrentTime:v10];
          if (self->_ramp)
          {
            if (v29)
            {
              if (self->_logHandle)
              {
                v15 = self->_logHandle;
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

              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_0_3_8_0_8_0_8_0(v34, COERCE__INT64(self->_currentIndicatorBrightness), COERCE__INT64(a3), COERCE__INT64(self->_rampSpeed));
                _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_INFO, "Updated ramp %f -> %f @ %f", v34, 0x20u);
              }
            }

            else
            {
              if (self->_logHandle)
              {
                v13 = self->_logHandle;
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

              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                v11 = v13;
                __os_log_helper_16_0_3_8_0_8_0_8_0(v33, COERCE__INT64(self->_currentIndicatorBrightness), COERCE__INT64(a3), COERCE__INT64(self->_rampSpeed));
                _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_INFO, "Created ramp %f -> %f @ %f", v33, 0x20u);
              }

              if (self->_forcedBrightnessUpdate)
              {
                self->_forcedBrightnessUpdate = 0;
              }

              [(CBIndicatorBrightnessModule *)self sendRampIsRunningNotification];
            }
          }

          else
          {
            if (self->_logHandle)
            {
              v17 = self->_logHandle;
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

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_3_8_0_8_0_8_0(v35, COERCE__INT64(self->_currentIndicatorBrightness), COERCE__INT64(a3), COERCE__INT64(self->_rampSpeed));
              _os_log_error_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_ERROR, "Failed to create ramp %f -> %f @ %f", v35, 0x20u);
            }

            if (v29)
            {
              [(CBIndicatorBrightnessModule *)self sendRampFinishedNotification];
            }
          }
        }
      }
    }

    else
    {
      if (self->_logHandle)
      {
        v23 = self->_logHandle;
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

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v38, COERCE__INT64(a3));
        _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "Already at correct brightness %f with ramp not running", v38, 0xCu);
      }
    }
  }

  else
  {
    if (self->_logHandle)
    {
      v25 = self->_logHandle;
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

    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v39, COERCE__INT64(a3), COERCE__INT64(self->_sdrBrightness));
      _os_log_fault_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_FAULT, "Ignoring IB target (%f) that is different than current SDR brightness (%f)", v39, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendRampIsRunningNotification
{
  if (self->_aodOn)
  {
    [(CBIndicatorBrightnessModule *)self sendRampIsRunningNotificationAOD];
  }

  else
  {
    [(CBIndicatorBrightnessModule *)self sendRampIsRunningNotificationActive];
  }
}

- (void)sendRampFinishedNotification
{
  if (self->_aodOn)
  {
    [(CBIndicatorBrightnessModule *)self sendRampFinishedNotificationAOD];
  }

  else
  {
    [(CBIndicatorBrightnessModule *)self sendRampFinishedNotificationActive];
  }
}

- (void)sendRampIsRunningNotificationActive
{
  v13 = self;
  v12 = a2;
  [(CBModule *)self sendNotificationForKey:@"ExternalRampIsRunning" withValue:@"IndicatorBrightness"];
  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  LODWORD(v3) = 1015580809;
  v11 = [v2 initWithFloat:v3];
  if (!v11)
  {
    if (v13->_logHandle)
    {
      logHandle = v13->_logHandle;
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
    v9 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create frequency NSNumber, display might not ramp", v8, 2u);
    }
  }

  [(CBModule *)v13 sendNotificationForKey:@"DisplayDisplayStartFade" withValue:v11, log];
  MEMORY[0x1E69E5920](v11);
}

- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5
{
  if (a3)
  {
    if (a3 == 3)
    {
      self->_aodOn = 1;
      if ([(CBIndicatorBrightnessModule *)self isRampRunning])
      {
        [(CBIndicatorBrightnessModule *)self sendRampFinishedNotificationActive];
        [(CBIndicatorBrightnessModule *)self sendRampIsRunningNotificationAOD];
      }
    }
  }

  else
  {
    self->_aodOn = 0;
    if ([(CBIndicatorBrightnessModule *)self isRampRunning])
    {
      [(CBIndicatorBrightnessModule *)self sendRampFinishedNotificationAOD];
      [(CBIndicatorBrightnessModule *)self sendRampIsRunningNotificationActive];
    }
  }

  return 1;
}

@end