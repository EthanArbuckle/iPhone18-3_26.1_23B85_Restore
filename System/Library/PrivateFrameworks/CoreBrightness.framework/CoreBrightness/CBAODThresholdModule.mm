@interface CBAODThresholdModule
- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)thresholdsCrossedForLux:(float)a3;
- (CBAODThresholdModule)initWithQueue:(id)a3;
- (id)copyPdeltaThresholdsForLux:(float)a3;
- (id)copyPropertyForKey:(id)a3;
- (void)checkBootArgsConfiguration;
- (void)dealloc;
- (void)reevaluateALSThresholds;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)updateALSThresholdsWithBrightness:(float)a3 brightnessLimit:(float)a4 lux:(float)a5;
@end

@implementation CBAODThresholdModule

- (CBAODThresholdModule)initWithQueue:(id)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  if (!a3)
  {
    __assert_rtn("[CBAODThresholdModule initWithQueue:]", "CBAODThresholdModule.m", 54, "queue");
  }

  v7.receiver = v10;
  v7.super_class = CBAODThresholdModule;
  v10 = [(CBModule *)&v7 initWithQueue:v8];
  if (v10)
  {
    v3 = os_log_create("com.apple.CoreBrightness.AOD.ThresholdModule", "default");
    v10->super._logHandle = v3;
    v10->_Pthreshold_dim = 0.25;
    v10->_Pthreshold_dim_lowLux = 0.2;
    v10->_Pthreshold_brighten = 0.1;
    v10->_Pthreshold_brighten_lowLux = 0.15;
    v10->_AP_Pthreshold_dim = 0.2;
    v10->_AP_Pthreshold_brighten = 0.1;
    v10->_minNits = 2.0;
    v10->_maxNits = 1060.0;
    v10->_currentLux = -1.0;
    v10->_currentBrightness = -1.0;
    v10->_currentBrightnessLimit = -1.0;
    v10->_brightenLuxThreshold = -1.0;
    v10->_dimLuxThreshold = -1.0;
    v10->_brightenLuxThresholdOverriden = 0;
    v10->_dimLuxThresholdOverriden = 0;
    v4 = !CBU_IsWatch();
    v10->_useDynamicThresholds = v4;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_alsServiceClients = v5;
    [(CBAODThresholdModule *)v10 checkBootArgsConfiguration];
  }

  return v10;
}

- (void)checkBootArgsConfiguration
{
  v21 = *MEMORY[0x1E69E9840];
  if (get_float_from_bootarg("cb_aod_threshold_dim", &self->_Pthreshold_dim))
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v12;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v20, COERCE__INT64(self->_Pthreshold_dim));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "AOD dim threshold overrided to %f", v20, 0xCu);
    }
  }

  if (get_float_from_bootarg("cb_aod_threshold_dim_lowlux", &self->_Pthreshold_dim_lowLux))
  {
    if (self->super._logHandle)
    {
      v11 = self->super._logHandle;
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v11 = v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v19, COERCE__INT64(self->_Pthreshold_dim_lowLux));
      _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "AOD dim threshold in low lux overrided to %f", v19, 0xCu);
    }
  }

  if (get_float_from_bootarg("cb_aod_threshold_brighten", &self->_Pthreshold_brighten))
  {
    if (self->super._logHandle)
    {
      v9 = self->super._logHandle;
    }

    else
    {
      v8 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v18, COERCE__INT64(self->_Pthreshold_brighten));
      _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "AOD brighten threshold overrided to %f", v18, 0xCu);
    }
  }

  if (get_float_from_bootarg("cb_aod_threshold_brighten_lowlux", &self->_Pthreshold_brighten_lowLux))
  {
    if (self->super._logHandle)
    {
      v7 = self->super._logHandle;
    }

    else
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v17, COERCE__INT64(self->_Pthreshold_brighten_lowLux));
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "AOD brighten threshold in low lux overrided to %f", v17, 0xCu);
    }
  }

  if (get_float_from_bootarg("cb_aod_threshold_brighten_lux", &self->_brightenLuxThreshold))
  {
    self->_brightenLuxThresholdOverriden = 1;
    if (self->super._logHandle)
    {
      v5 = self->super._logHandle;
    }

    else
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v5 = v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v16, COERCE__INT64(self->_brightenLuxThreshold));
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "AOD brighten lux threshold overrided to %f", v16, 0xCu);
    }
  }

  if (get_float_from_bootarg("cb_aod_threshold_dim_lux", &self->_dimLuxThreshold))
  {
    self->_dimLuxThresholdOverriden = 1;
    if (self->super._logHandle)
    {
      v3 = self->super._logHandle;
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(self->_dimLuxThreshold));
      _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "AOD dim lux threshold overrided to %f", v15, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->_alsServiceClients).n128_u64[0];
  v5->_alsServiceClients = 0;
  v3.receiver = v5;
  v3.super_class = CBAODThresholdModule;
  [(CBModule *)&v3 dealloc];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if ([a4 isEqualToString:@"AODPerceptualBrightenThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_Pthreshold_brighten = fmaxf(fminf(v4, 1.0), 0.0);
      [(CBAODThresholdModule *)self reevaluateALSThresholds];
      v15 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODPerceptualBrightenLowLuxThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_Pthreshold_brighten_lowLux = fmaxf(fminf(v5, 1.0), 0.0);
      [(CBAODThresholdModule *)self reevaluateALSThresholds];
      v15 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODPerceptualDimThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_Pthreshold_dim = fmaxf(fminf(v6, 1.0), 0.0);
      [(CBAODThresholdModule *)self reevaluateALSThresholds];
      v15 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODPerceptualDimLowLuxThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_Pthreshold_dim_lowLux = fmaxf(fminf(v7, 1.0), 0.0);
      [(CBAODThresholdModule *)self reevaluateALSThresholds];
      v15 = 1;
    }
  }

  else if ([a4 isEqualToString:@"ALSLuxBrightenThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      if (v8 >= 0.0)
      {
        [a3 floatValue];
        self->_brightenLuxThreshold = v9;
        self->_brightenLuxThresholdOverriden = 1;
        [(CBAODThresholdModule *)self reevaluateALSThresholds];
      }

      else
      {
        self->_brightenLuxThresholdOverriden = 0;
      }

      v15 = 1;
    }
  }

  else if ([a4 isEqualToString:@"ALSLuxDimThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      if (v10 >= 0.0)
      {
        [a3 floatValue];
        self->_dimLuxThreshold = v11;
        self->_dimLuxThresholdOverriden = 1;
        [(CBAODThresholdModule *)self reevaluateALSThresholds];
      }

      else
      {
        self->_dimLuxThresholdOverriden = 0;
      }

      v15 = 1;
    }
  }

  if (v15)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_64_8_64(v19, a4, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "key = %@ property = %@", v19, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (id)copyPropertyForKey:(id)a3
{
  if ([a3 isEqualToString:@"ALSLuxBrightenThreshold"])
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v4 = self->_brightenLuxThreshold;
    return [v3 initWithFloat:v4];
  }

  else if ([a3 isEqualToString:@"ALSLuxDimThreshold"])
  {
    v5 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v6 = self->_dimLuxThreshold;
    return [v5 initWithFloat:v6];
  }

  else
  {
    return 0;
  }
}

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (BOOL)addHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v9, a3);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Get ALS service - save it! %@", v9, 0xCu);
    }

    if (([(NSMutableArray *)self->_alsServiceClients containsObject:a3]& 1) == 0)
    {
      [(NSMutableArray *)self->_alsServiceClients addObject:a3];
    }

    v7 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)removeHIDServiceClient:(__IOHIDServiceClient *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v9, a3);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Remove ALS service! %@", v9, 0xCu);
    }

    [(NSMutableArray *)self->_alsServiceClients removeObject:a3];
    v7 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)reevaluateALSThresholds
{
  if (self->_currentLux >= 0.0 && self->_currentBrightness >= 0.0 || self->_brightenLuxThresholdOverriden || self->_dimLuxThresholdOverriden)
  {
    *&v2 = self->_currentBrightness;
    *&v3 = self->_currentBrightnessLimit;
    *&v4 = self->_currentLux;
    [(CBAODThresholdModule *)self updateALSThresholdsWithBrightness:v2 brightnessLimit:v3 lux:v4];
  }
}

- (void)updateALSThresholdsWithBrightness:(float)a3 brightnessLimit:(float)a4 lux:(float)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v70 = self;
  v69 = a2;
  v68 = a3;
  v67 = a4;
  v66 = a5;
  self->_currentLux = a5;
  v70->_currentBrightness = v68;
  v70->_currentBrightnessLimit = v67;
  if (v70->_useDynamicThresholds)
  {
    maxNits = v70->_maxNits;
    [+[CBAODState sharedInstance](CBAODState maxAODNits];
    v65 = fminf(maxNits, v5);
    minNits = v70->_minNits;
    [+[CBAODState sharedInstance](CBAODState minAODNits];
    v64 = fmaxf(minNits, *&v6);
    v63 = v65;
    *&v6 = v67;
    if (v67 > 0.0)
    {
      *&v6 = fminf(v63, v67);
      v63 = *&v6;
    }

    [+[CBAODState nitsCap:v6]];
    if (v7 > 0.0)
    {
      [+[CBAODState sharedInstance](CBAODState nitsCap];
      v63 = fminf(v63, v8);
    }

    v63 = fmaxf(v63, v64);
    v62 = BULuminanceToPerceptual(v68, v64, v65);
    Pthreshold_brighten = v70->_Pthreshold_brighten;
    Pthreshold_dim = v70->_Pthreshold_dim;
    v36 = -[NSMutableArray count]([+[CBAODState sharedInstance](CBAODState thresholdsLuxBuckets], "count");
    if (v36 == -[NSMutableArray count](-[CBAODState thresholdsDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState, "sharedInstance"), "thresholdsDeltaPBrightenBuckets"), "count") && (v35 = -[NSMutableArray count]([+[CBAODState sharedInstance](CBAODState thresholdsDeltaPBrightenBuckets], "count"), v35 == [(NSMutableArray *)[+[CBAODState sharedInstance](CBAODState thresholdsDeltaPDimBuckets] count])
    {
      [-[NSMutableArray lastObject](-[CBAODState thresholdsLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
      v9 = *&v10;
      *&v10 = v66;
      if (v66 <= v9)
      {
        for (i = 0; i < ([(NSMutableArray *)[+[CBAODState thresholdsLuxBuckets:v10]] count]- 1); ++i)
        {
          [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
          v14 = *&v10;
          *&v10 = v66;
          if (v66 >= v14)
          {
            [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
            v15 = *&v10;
            *&v10 = v66;
            if (v66 < v15)
            {
              [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState sharedInstance];
              Pthreshold_brighten = v16;
              [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsDeltaPDimBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
              Pthreshold_dim = v17;
              if (v70->super._logHandle)
              {
                logHandle = v70->super._logHandle;
              }

              else
              {
                v31 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                logHandle = v31;
              }

              v56 = logHandle;
              v55 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_0_4_8_0_4_0_8_0_8_0(v74, COERCE__INT64(v66), i, COERCE__INT64(Pthreshold_brighten), COERCE__INT64(Pthreshold_dim));
                _os_log_impl(&dword_1DE8E5000, v56, v55, "AOP thresholds: lux %f - bucket[%d] => AOP P delta thresholds: Brighten = %f; Dim = %f", v74, 0x26u);
              }
            }
          }
        }
      }

      else
      {
        [-[NSMutableArray lastObject](-[CBAODState thresholdsDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState sharedInstance];
        Pthreshold_brighten = v11;
        [-[NSMutableArray lastObject](-[CBAODState thresholdsDeltaPDimBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
        Pthreshold_dim = v12;
        if (v70->super._logHandle)
        {
          v34 = v70->super._logHandle;
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

          v34 = inited;
        }

        oslog = v34;
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          [-[NSMutableArray lastObject](-[CBAODState thresholdsLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
          __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v75, COERCE__INT64(v66), COERCE__INT64(v13), COERCE__INT64(Pthreshold_brighten), COERCE__INT64(Pthreshold_dim));
          _os_log_impl(&dword_1DE8E5000, oslog, type, "AOP thresholds: lux %f > %f => AOP P delta thresholds: Brighten = %f; Dim = %f", v75, 0x2Au);
        }
      }
    }

    else
    {
      if (v70->super._logHandle)
      {
        v30 = v70->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v29 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v29 = init_default_corebrightness_log();
        }

        v30 = v29;
      }

      v54 = v30;
      v53 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v73, COERCE__INT64(Pthreshold_brighten), COERCE__INT64(Pthreshold_dim));
        _os_log_error_impl(&dword_1DE8E5000, v54, v53, "AOP thresholds: buckets have different sizes -> use defaults delta P thresholds: Brighten = %f; Dim = %f.", v73, 0x16u);
      }
    }

    v52 = fminf(1.0, v62 + Pthreshold_brighten);
    v51 = fmaxf(0.0, v62 - Pthreshold_dim);
    v50 = BUPerceptualToLuminance(v52, v64, v65);
    v49 = BUPerceptualToLuminance(v51, v64, v65);
    v50 = fminf(v50, v63);
    v28 = +[CBAODState sharedInstance];
    if (v28)
    {
      [(CBAODState *)v28 darkerCurve];
    }

    else
    {
      memset(__b, 0, sizeof(__b));
    }

    v48 = BULuminanceToIlluminance(__b, v50);
    v26 = v49;
    v27 = +[CBAODState sharedInstance];
    if (v27)
    {
      [(CBAODState *)v27 darkerCurve];
    }

    else
    {
      memset(v45, 0, sizeof(v45));
    }

    v46 = BULuminanceToIlluminance(v45, v26);
    if (v50 >= v63)
    {
      v48 = 150000.0;
    }

    if (v49 <= v64)
    {
      v46 = 0.0;
    }

    v44 = v66 * 1.15;
    v43 = v66 * 0.85;
    v48 = fminf(150000.0, fmaxf(v48, v66 * 1.15));
    v46 = fmaxf(0.0, fminf(v46, v66 * 0.85));
    if (!v70->_brightenLuxThresholdOverriden)
    {
      v70->_brightenLuxThreshold = v48;
    }

    if (!v70->_dimLuxThresholdOverriden)
    {
      v70->_dimLuxThreshold = v46;
    }

    if (v70->super._logHandle)
    {
      v25 = v70->super._logHandle;
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

    v42 = v25;
    v41 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v72, COERCE__INT64(v70->_brightenLuxThreshold), COERCE__INT64(v70->_dimLuxThreshold), COERCE__INT64(v50), COERCE__INT64(v49), COERCE__INT64(v66), COERCE__INT64(v68), COERCE__INT64(v63), COERCE__INT64(v67));
      _os_log_debug_impl(&dword_1DE8E5000, v42, v41, "AOP thresholds: lux brighten = %f, dim = %f; nits brighten = %f, dim = %f; Current lux = %f, current nits = %f; Nits cap = %f, brt limit = %f", v72, 0x52u);
    }

    memset(v39, 0, sizeof(v39));
    obj = v70->_alsServiceClients;
    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:v39 objects:v71 count:16];
    if (v23)
    {
      v19 = *v39[2];
      v20 = 0;
      v21 = v23;
      while (1)
      {
        v18 = v20;
        if (*v39[2] != v19)
        {
          objc_enumerationMutation(obj);
        }

        v40 = 0;
        v40 = *(v39[1] + 8 * v20);
        [v40 setProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", (v70->_brightenLuxThreshold * 4294967300.0)), @"ALSLuxBrightenThreshold"}];
        [v40 setProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", (v70->_dimLuxThreshold * 4294967300.0)), @"ALSLuxDimThreshold"}];
        ++v20;
        if (v18 + 1 >= v21)
        {
          v20 = 0;
          v21 = [(NSMutableArray *)obj countByEnumeratingWithState:v39 objects:v71 count:16];
          if (!v21)
          {
            break;
          }
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyPdeltaThresholdsForLux:(float)a3
{
  v36 = *MEMORY[0x1E69E9840];
  self->_currentLux = a3;
  AP_Pthreshold_brighten = self->_AP_Pthreshold_brighten;
  AP_Pthreshold_dim = self->_AP_Pthreshold_dim;
  if (self->_useDynamicThresholds)
  {
    v24 = -[NSMutableArray count]([+[CBAODState sharedInstance](CBAODState thresholdsAPLuxBuckets], "count");
    if (v24 == -[NSMutableArray count](-[CBAODState thresholdsAPDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState, "sharedInstance"), "thresholdsAPDeltaPBrightenBuckets"), "count") && (v23 = -[NSMutableArray count]([+[CBAODState sharedInstance](CBAODState thresholdsAPDeltaPBrightenBuckets], "count"), v23 == [(NSMutableArray *)[+[CBAODState sharedInstance](CBAODState thresholdsAPDeltaPDimBuckets] count])
    {
      [-[NSMutableArray lastObject](-[CBAODState thresholdsAPLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
      v3 = *&v4;
      *&v4 = a3;
      if (a3 <= v3)
      {
        for (i = 0; i < ([(NSMutableArray *)[+[CBAODState thresholdsAPLuxBuckets:v4]] count]- 1); ++i)
        {
          [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsAPLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
          v8 = *&v4;
          *&v4 = a3;
          if (a3 >= v8)
          {
            [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsAPLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
            v9 = *&v4;
            *&v4 = a3;
            if (a3 < v9)
            {
              [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsAPDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState sharedInstance];
              AP_Pthreshold_brighten = v10;
              [-[NSMutableArray objectAtIndexedSubscript:](-[CBAODState thresholdsAPDeltaPDimBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
              AP_Pthreshold_dim = v11;
              if (self->super._logHandle)
              {
                logHandle = self->super._logHandle;
              }

              else
              {
                v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
                logHandle = v19;
              }

              if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
              {
                __os_log_helper_16_0_4_8_0_4_0_8_0_8_0(v34, COERCE__INT64(a3), i, COERCE__INT64(AP_Pthreshold_brighten), COERCE__INT64(AP_Pthreshold_dim));
                _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "AP thresholds: lux %f - bucket[%d] => CoreBrightness-AP side P delta thresholds: Brighten = %f; Dim = %f", v34, 0x26u);
              }
            }
          }
        }
      }

      else
      {
        [-[NSMutableArray lastObject](-[CBAODState thresholdsAPDeltaPBrightenBuckets](+[CBAODState sharedInstance](CBAODState sharedInstance];
        AP_Pthreshold_brighten = v5;
        [-[NSMutableArray lastObject](-[CBAODState thresholdsAPDeltaPDimBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
        AP_Pthreshold_dim = v6;
        if (self->super._logHandle)
        {
          v22 = self->super._logHandle;
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

          v22 = inited;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [-[NSMutableArray lastObject](-[CBAODState thresholdsAPLuxBuckets](+[CBAODState sharedInstance](CBAODState "sharedInstance")];
          __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v35, COERCE__INT64(a3), COERCE__INT64(v7), COERCE__INT64(AP_Pthreshold_brighten), COERCE__INT64(AP_Pthreshold_dim));
          _os_log_debug_impl(&dword_1DE8E5000, v22, OS_LOG_TYPE_DEBUG, "AP thresholds: lux %f > %f => CoreBrightness-AP side P delta thresholds: Brighten = %f; Dim = %f", v35, 0x2Au);
        }
      }
    }

    else
    {
      if (self->super._logHandle)
      {
        v18 = self->super._logHandle;
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

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_2_8_0_8_0(v33, COERCE__INT64(AP_Pthreshold_brighten), COERCE__INT64(AP_Pthreshold_dim));
        _os_log_error_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_ERROR, "AP thresholds: buckets have different sizes -> use defaults delta P thresholds: Brighten = %f; Dim = %f.", v33, 0x16u);
      }
    }
  }

  v12 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v13 = AP_Pthreshold_brighten;
  v27 = [v12 initWithFloat:v13];
  v14 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v15 = AP_Pthreshold_dim;
  v26 = [v14 initWithFloat:v15];
  v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v27, @"ALSBrightenPdeltaSlow", v26, @"ALSDimPdeltaSlow", 0}];
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v26);
  *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)thresholdsCrossedForLux:(float)a3
{
  if (self->_dimLuxThreshold < 0.0 || self->_brightenLuxThreshold < 0.0)
  {
    return 1;
  }

  v4 = a3 <= self->_dimLuxThreshold;
  if (a3 >= self->_brightenLuxThreshold)
  {
    return 1;
  }

  return v4;
}

@end