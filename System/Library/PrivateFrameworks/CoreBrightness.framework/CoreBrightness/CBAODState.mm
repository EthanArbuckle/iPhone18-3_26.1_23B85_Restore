@interface CBAODState
+ (id)sharedInstance;
- (BOOL)enableAODLiveON;
- (BOOL)handleAODCurveUpdate:(id)a3;
- (BOOL)handleAODDarkerCurveUpdate:(id)a3;
- (BOOL)isAODActive;
- (BOOL)isAODSupported;
- (BOOL)isDCPBasedAODSupported;
- (BOOL)isFlipbookSupported;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBAODState)init;
- (char)AODStateString;
- (id)copyNumberFromPrefsForKey:(id)a3;
- (void)acquirePowerAssertion;
- (void)checkBootArgsConfiguration;
- (void)checkDefaultsConfiguration;
- (void)dealloc;
- (void)logAODCurve:(id *)a3 name:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)releasePowerAssertion;
@end

@implementation CBAODState

+ (id)sharedInstance
{
  v11 = a1;
  v10 = a2;
  objc_sync_enter(a1);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __28__CBAODState_sharedInstance__block_invoke;
  v8 = &unk_1E867B480;
  v9 = v11;
  v13 = &sharedInstance_onceToken_5;
  v12 = &v4;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_sync_exit(a1);
  return sharedInstance__sharedObject_4;
}

- (BOOL)isAODActive
{
  v3 = 1;
  if (self->_AODState != 1)
  {
    v3 = 1;
    if (self->_AODState != 3)
    {
      v3 = 1;
      if (self->_AODState != 2)
      {
        return self->_AODState == 4;
      }
    }
  }

  return v3;
}

- (BOOL)isDCPBasedAODSupported
{
  v10 = self;
  v9 = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __36__CBAODState_isDCPBasedAODSupported__block_invoke;
  v7 = &unk_1E867B480;
  v8 = self;
  v12 = &isDCPBasedAODSupported_once;
  v11 = &v3;
  if (isDCPBasedAODSupported_once != -1)
  {
    dispatch_once(v12, v11);
  }

  return v10->_isDCPBasedAODSupported;
}

uint64_t __28__CBAODState_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CBAODState;
  result = [objc_msgSendSuper2(&v2 alloc)];
  sharedInstance__sharedObject_4 = result;
  return result;
}

- (CBAODState)init
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = CBAODState;
  v14 = [(CBAODState *)&v12 init];
  if (v14)
  {
    v2 = os_log_create("com.apple.CoreBrightness.AOD.CBAODState", "default");
    v14->_logHandle = v2;
    v14->_AODState = 0;
    v14->_AODStateExternal = 0;
    v14->_enableAODLiveON = 0;
    v14->_AODTransitionProfile = 2;
    v14->_AODTransitionProfileEaseInOut_K = 3.0;
    v14->_AODTransitionProfileSpring_mass = 1.0;
    v14->_AODTransitionProfileSpring_damping = 3.48;
    v14->_AODTransitionProfileSpring_velocity = 2.0;
    v14->_AODTransitionProfileSpring_stiffness = 6.0;
    v14->_AODTransitionTargetAlgoOptimised_dimmingThreshold = 0.2;
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
    v14->_defaults = v3;
    [NSUserDefaults addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:v14 options:@"AODPullALSUpdatePeriod" context:?];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODWPTransitionLength" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODWPTransitionLengthLowLux" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODWPDeltaThreshold" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileType" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileEaseInOutK" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileSpringMass" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileSpringVelocity" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileSpringStiffness" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTransitionProfileSpringDamping" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODTRansitionTargetAlgoOptimisedDimThr" options:1 context:0];
    v14->_whitepointDeltaThreshold = 0.009;
    v14->_whitepointTransitionLength = 5.0;
    v14->_whitepointTransitionLengthLowLux = 5.0;
    v14->_whitepointTransitionLengthLuxThreshold = 35.0;
    v14->_pullALSUpdatePeriod = 5.0;
    v21 = xmmword_1DEAC8C94;
    v22 = 713503427;
    v19 = xmmword_1DEAC8CA8;
    v20 = -1632750650;
    if ((MGIsDeviceOneOfType() & 1) != 0 && v14->_enableAODLiveON)
    {
      v14->_pullALSUpdatePeriod = 120.0;
    }

    context = objc_autoreleasePoolPush();
    v4 = [&unk_1F59C94E0 mutableCopy];
    v14->_thresholdsLuxBuckets = v4;
    v5 = [&unk_1F59C94F8 mutableCopy];
    v14->_thresholdsDeltaPBrightenBuckets = v5;
    v6 = [&unk_1F59C9510 mutableCopy];
    v14->_thresholdsDeltaPDimBuckets = v6;
    v7 = [&unk_1F59C9528 mutableCopy];
    v14->_thresholdsAPLuxBuckets = v7;
    v8 = [&unk_1F59C9540 mutableCopy];
    v14->_thresholdsAPDeltaPBrightenBuckets = v8;
    v9 = [&unk_1F59C9558 mutableCopy];
    v14->_thresholdsAPDeltaPDimBuckets = v9;
    objc_autoreleasePoolPop(context);
    [NSUserDefaults addObserver:"addObserver:forKeyPath:options:context:" forKeyPath:v14 options:@"AODThresholdsLuxBuckets" context:?];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODThresholdsDeltaPBrightenBuckets" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODThresholdsDeltaPDimBuckets" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODAPThresholdsLuxBuckets" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODAPThresholdsDeltaPBrightenBuckets" options:1 context:0];
    [(NSUserDefaults *)v14->_defaults addObserver:v14 forKeyPath:@"AODAPThresholdsDeltaPDimBuckets" options:1 context:0];
    v14->_thresholdPCCLuxDelta = 30.0;
    v17 = xmmword_1DEAC8CBC;
    v18 = 1176256512;
    v15 = xmmword_1DEAC8CD0;
    v16 = 1140457472;
    __memcpy_chk();
    __memcpy_chk();
    v14->_curve.size = 5;
    __memcpy_chk();
    __memcpy_chk();
    v14->_darkerCurve.size = 5;
    v14->_nitsCap = -1.0;
    [(CBAODState *)v14 checkDefaultsConfiguration];
    [(CBAODState *)v14 checkBootArgsConfiguration];
  }

  *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_thresholdsLuxBuckets);
  MEMORY[0x1E69E5920](v5->_thresholdsDeltaPBrightenBuckets);
  MEMORY[0x1E69E5920](v5->_thresholdsDeltaPDimBuckets);
  MEMORY[0x1E69E5920](v5->_thresholdsAPLuxBuckets);
  MEMORY[0x1E69E5920](v5->_thresholdsAPDeltaPBrightenBuckets);
  MEMORY[0x1E69E5920](v5->_thresholdsAPDeltaPDimBuckets);
  if (v5->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  v2 = MEMORY[0x1E69E5920](v5->_defaults).n128_u64[0];
  if (v5->_systemActivityAssertion)
  {
    [(SWSystemActivityAssertion *)v5->_systemActivityAssertion invalidate];
    v2 = MEMORY[0x1E69E5920](v5->_systemActivityAssertion).n128_u64[0];
    v5->_systemActivityAssertion = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBAODState;
  [(CBAODState *)&v3 dealloc];
}

- (char)AODStateString
{
  AODState = self->_AODState;
  switch(AODState)
  {
    case 0uLL:
      return "OFF";
    case 1uLL:
      return "ON";
    case 2uLL:
      return "prepare to enter";
    case 3uLL:
      return "entering";
    case 4uLL:
      return "exiting";
  }

  return "invalid";
}

- (void)checkDefaultsConfiguration
{
  v81 = *MEMORY[0x1E69E9840];
  if (self->_defaults)
  {
    [(NSUserDefaults *)self->_defaults synchronize];
    v46 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODPullALSUpdatePeriod"];
    if (v46)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
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

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v80, @"AODPullALSUpdatePeriod", v46);
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v80, 0x16u);
        }

        [v46 floatValue];
        self->_pullALSUpdatePeriod = v2;
      }
    }

    v47 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODWPTransitionLength"];
    if (v47)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v43 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v42 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v42 = init_default_corebrightness_log();
          }

          v43 = v42;
        }

        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v79, @"AODWPTransitionLength", v47);
          _os_log_impl(&dword_1DE8E5000, v43, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v79, 0x16u);
        }

        [v47 floatValue];
        self->_whitepointTransitionLength = v3;
      }
    }

    v48 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODWPTransitionLengthLowLux"];
    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v41 = self->_logHandle;
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

        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v78, @"AODWPTransitionLengthLowLux", v48);
          _os_log_impl(&dword_1DE8E5000, v41, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v78, 0x16u);
        }

        [v48 floatValue];
        self->_whitepointTransitionLengthLowLux = v4;
      }
    }

    v49 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODWPDeltaThreshold"];
    if (v49)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v39 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v38 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v38 = init_default_corebrightness_log();
          }

          v39 = v38;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v77, @"AODWPDeltaThreshold", v49);
          _os_log_impl(&dword_1DE8E5000, v39, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v77, 0x16u);
        }

        [v49 floatValue];
        self->_whitepointDeltaThreshold = v5;
      }
    }

    v50 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODThresholdsLuxBuckets"];
    if (v50)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v37 = self->_logHandle;
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

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v76, @"AODThresholdsLuxBuckets", v50);
          _os_log_impl(&dword_1DE8E5000, v37, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v76, 0x16u);
        }

        self->_thresholdsLuxBuckets = [v50 mutableCopy];
      }
    }

    v51 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODThresholdsDeltaPBrightenBuckets"];
    if (v51)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v35 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v34 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v34 = init_default_corebrightness_log();
          }

          v35 = v34;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v75, @"AODThresholdsDeltaPBrightenBuckets", v51);
          _os_log_impl(&dword_1DE8E5000, v35, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v75, 0x16u);
        }

        self->_thresholdsDeltaPBrightenBuckets = [v51 mutableCopy];
      }
    }

    v52 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODThresholdsDeltaPDimBuckets"];
    if (v52)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v33 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v32 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v32 = init_default_corebrightness_log();
          }

          v33 = v32;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v74, @"AODThresholdsDeltaPDimBuckets", v52);
          _os_log_impl(&dword_1DE8E5000, v33, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v74, 0x16u);
        }

        self->_thresholdsDeltaPDimBuckets = [v52 mutableCopy];
      }
    }

    v53 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODAPThresholdsLuxBuckets"];
    if (v53)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v31 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v30 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v30 = init_default_corebrightness_log();
          }

          v31 = v30;
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v73, @"AODThresholdsLuxBuckets", v53);
          _os_log_impl(&dword_1DE8E5000, v31, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v73, 0x16u);
        }

        self->_thresholdsAPLuxBuckets = [v53 mutableCopy];
      }
    }

    v54 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODAPThresholdsDeltaPBrightenBuckets"];
    if (v54)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v29 = self->_logHandle;
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

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v72, @"AODAPThresholdsDeltaPBrightenBuckets", v54);
          _os_log_impl(&dword_1DE8E5000, v29, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v72, 0x16u);
        }

        self->_thresholdsAPDeltaPBrightenBuckets = [v54 mutableCopy];
      }
    }

    v55 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODAPThresholdsDeltaPDimBuckets"];
    if (v55)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_logHandle)
        {
          v27 = self->_logHandle;
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

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v71, @"AODAPThresholdsDeltaPDimBuckets", v55);
          _os_log_impl(&dword_1DE8E5000, v27, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v71, 0x16u);
        }

        self->_thresholdsAPDeltaPDimBuckets = [v55 mutableCopy];
      }
    }

    v56 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v70, @"AODTransitionProfileType", v56);
        _os_log_impl(&dword_1DE8E5000, v25, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v70, 0x16u);
      }

      self->_AODTransitionProfile = [v56 integerValue];
    }

    v57 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileEaseInOutK"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v69, @"AODTransitionProfileEaseInOutK", v57);
        _os_log_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v69, 0x16u);
      }

      [v57 floatValue];
      self->_AODTransitionProfileEaseInOut_K = v6;
    }

    v58 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileSpringMass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v68, @"AODTransitionProfileSpringMass", v58);
        _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v68, 0x16u);
      }

      [v58 floatValue];
      self->_AODTransitionProfileSpring_mass = v7;
    }

    v59 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileSpringVelocity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v67, @"AODTransitionProfileSpringVelocity", v59);
        _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v67, 0x16u);
      }

      [v59 floatValue];
      self->_AODTransitionProfileSpring_velocity = v8;
    }

    v60 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileSpringStiffness"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v66, @"AODTransitionProfileSpringStiffness", v60);
        _os_log_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v66, 0x16u);
      }

      [v60 floatValue];
      self->_AODTransitionProfileSpring_stiffness = v9;
    }

    v61 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTransitionProfileSpringDamping"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_64_8_64(v65, @"AODTransitionProfileSpringDamping", v61);
        _os_log_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v65, 0x16u);
      }

      [v61 floatValue];
      self->_AODTransitionProfileSpring_damping = v10;
    }

    v62 = [(NSUserDefaults *)self->_defaults objectForKey:@"AODTRansitionTargetAlgoOptimisedDimThr"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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
        __os_log_helper_16_2_2_8_64_8_64(v64, @"AODTRansitionTargetAlgoOptimisedDimThr", v62);
        _os_log_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEFAULT, "Defaults configuration %@ = %@", v64, 0x16u);
      }

      [v62 floatValue];
      self->_AODTransitionTargetAlgoOptimised_dimmingThreshold = v11;
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)enableAODLiveON
{
  v10 = self;
  v9 = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __29__CBAODState_enableAODLiveON__block_invoke;
  v7 = &unk_1E867B480;
  v8 = self;
  v12 = &enableAODLiveON_once;
  v11 = &v3;
  if (enableAODLiveON_once != -1)
  {
    dispatch_once(v12, v11);
  }

  return v10->_enableAODLiveON;
}

void __29__CBAODState_enableAODLiveON__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) copyNumberFromPrefsForKey:@"CBSupportsAlwaysOnOverride"];
  if (v5)
  {
    *(*(a1 + 32) + 32) = [v5 BOOLValue];
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
      if (*(*(a1 + 32) + 32))
      {
        v1 = "enabled";
      }

      else
      {
        v1 = "disabled";
      }

      __os_log_helper_16_2_1_8_32(v6, v1);
      _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEFAULT, "AOD live-on %s by defaults config.", v6, 0xCu);
    }

    MEMORY[0x1E69E5920](v5);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)isAODSupported
{
  v10 = self;
  v9 = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __28__CBAODState_isAODSupported__block_invoke;
  v7 = &unk_1E867B480;
  v8 = self;
  v12 = &isAODSupported_once;
  v11 = &v3;
  if (isAODSupported_once != -1)
  {
    dispatch_once(v12, v11);
  }

  return v10->_isAODSupported;
}

uint64_t __28__CBAODState_isAODSupported__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 33) = 0;
  result = MGGetBoolAnswer();
  if (result)
  {
    *(*(a1 + 32) + 33) = 1;
  }

  else
  {
    result = [+[CBAODState sharedInstance](CBAODState enableAODLiveON];
    *(*(a1 + 32) + 33) = result;
  }

  return result;
}

- (BOOL)isFlipbookSupported
{
  v10 = self;
  v9 = a2;
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __33__CBAODState_isFlipbookSupported__block_invoke;
  v7 = &unk_1E867B480;
  v8 = self;
  v12 = &isFlipbookSupported_once;
  v11 = &v3;
  if (isFlipbookSupported_once != -1)
  {
    dispatch_once(v12, v11);
  }

  return v10->_isFlipbookSupported;
}

uint64_t __33__CBAODState_isFlipbookSupported__block_invoke(uint64_t a1)
{
  v1 = MGGetBoolAnswer();
  result = a1;
  *(*(a1 + 32) + 34) = v1 & 1;
  return result;
}

BOOL __36__CBAODState_isDCPBasedAODSupported__block_invoke(uint64_t a1)
{
  result = CBU_IsWatch();
  *(*(a1 + 32) + 35) = result;
  return result;
}

- (id)copyNumberFromPrefsForKey:(id)a3
{
  v5 = 0;
  if (self->_defaults)
  {
    [(NSUserDefaults *)self->_defaults synchronize];
    v4 = [(NSUserDefaults *)self->_defaults objectForKey:a3];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return MEMORY[0x1E69E5928](v4);
      }
    }
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
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
    __os_log_helper_16_2_2_8_64_8_64(v11, a3, a5);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Changed property %@ to value %@", v11, 0x16u);
  }

  [(CBAODState *)self checkDefaultsConfiguration];
  *MEMORY[0x1E69E9840];
}

- (void)checkBootArgsConfiguration
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = self;
  v6[1] = a2;
  bzero(__s1, 0x400uLL);
  v6[0] = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, v6, 0, 0))
  {
    v5 = strstr(__s1, "cb_aod_enable_liveon");
    if (v5)
    {
      v2 = strtol(v5 + 21, 0, 0) != 0;
      v7->_enableAODLiveON = v2;
      v4 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        if (v7->_enableAODLiveON)
        {
          v3 = "Enable";
        }

        else
        {
          v3 = "Disable";
        }

        __os_log_helper_16_2_1_8_32(v8, v3);
        _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Boot arg override: %s AOD live-on.", v8, 0xCu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if ([a4 isEqualToString:@"AOTCurve"])
  {
    v11 = [(CBAODState *)self handleAODCurveUpdate:a3];
  }

  else if ([a4 isEqualToString:@"AODDarkerCurve"])
  {
    v11 = [(CBAODState *)self handleAODDarkerCurveUpdate:a3];
  }

  else if ([a4 isEqualToString:@"AODPullALSUpdatePeriod"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_pullALSUpdatePeriod = v4;
      v11 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODWPTransitionLength"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_whitepointTransitionLength = v5;
      v11 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODWPTransitionLengthLowLux"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_whitepointTransitionLengthLowLux = v6;
      v11 = 1;
    }
  }

  else if ([a4 isEqualToString:@"AODWPDeltaThreshold"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 floatValue];
      self->_whitepointDeltaThreshold = v7;
      v11 = 1;
    }
  }

  if (v11)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v15, a4, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set property %@ = %@", v15, 0x16u);
    }
  }

  *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)handleAODCurveUpdate:(id)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v10 objectForKey:@"CurveLevelMed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 valueForKey:@"lux"];
      v6 = [v8 valueForKey:@"nits"];
      v5 = [v7 count];
      dword_1ECDDDF48 = v5;
      [v7 enumerateObjectsUsingBlock:&__block_literal_global_5];
      [v6 enumerateObjectsUsingBlock:&__block_literal_global_137];
      memcpy(&v12->_curve, &handleAODCurveUpdate__newCurve, sizeof(v12->_curve));
      v9 = 1;
    }

    memcpy(__dst, &v12->_curve, 0xA4uLL);
    [(CBAODState *)v12 logAODCurve:__dst name:@"Curve"];
  }

  return v9 & 1;
}

uint64_t __35__CBAODState_handleAODCurveUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 floatValue];
  handleAODCurveUpdate__newCurve[a3] = v4;
  return result;
}

uint64_t __35__CBAODState_handleAODCurveUpdate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 floatValue];
  handleAODCurveUpdate__newCurve[a3 + 20] = v4;
  return result;
}

- (BOOL)handleAODDarkerCurveUpdate:(id)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 valueForKey:@"lux"];
    v6 = [v9 valueForKey:@"nits"];
    v5 = [v7 count];
    dword_1ECDDDFEC = v5;
    [v7 enumerateObjectsUsingBlock:&__block_literal_global_142];
    [v6 enumerateObjectsUsingBlock:&__block_literal_global_144];
    memcpy(&v11->_darkerCurve, &handleAODDarkerCurveUpdate__newCurve, sizeof(v11->_darkerCurve));
    v8 = 1;
    memcpy(__dst, &v11->_darkerCurve, 0xA4uLL);
    [(CBAODState *)v11 logAODCurve:__dst name:@"DarkerCurve"];
  }

  return v8 & 1;
}

uint64_t __41__CBAODState_handleAODDarkerCurveUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 floatValue];
  handleAODDarkerCurveUpdate__newCurve[a3] = v4;
  return result;
}

uint64_t __41__CBAODState_handleAODDarkerCurveUpdate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 floatValue];
  handleAODDarkerCurveUpdate__newCurve[a3 + 20] = v4;
  return result;
}

- (void)logAODCurve:(id *)a3 name:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  for (i = 0; i < a3->var2; ++i)
  {
    if (a4)
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_4_8_64_4_0_8_0_8_0(v13, a4, i, COERCE__INT64(a3->var0[i]), COERCE__INT64(a3->var1[i]));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%@[%d] = lux=%f ; nits=%f]", v13, 0x26u);
      }
    }

    else
    {
      if (self->_logHandle)
      {
        v5 = self->_logHandle;
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
        __os_log_helper_16_0_3_4_0_8_0_8_0(v12, i, COERCE__INT64(a3->var0[i]), COERCE__INT64(a3->var1[i]));
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Curve[%d] = lux=%f ; nits=%f]", v12, 0x1Cu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)acquirePowerAssertion
{
  v11 = self;
  v10 = a2;
  objc_sync_enter(self);
  if (v11->_systemActivityAssertion)
  {
    [(SWSystemActivityAssertion *)v11->_systemActivityAssertion invalidate];
    MEMORY[0x1E69E5920](v11->_systemActivityAssertion);
    v11->_systemActivityAssertion = 0;
  }

  v11->_systemActivityAssertion = [objc_alloc(MEMORY[0x1E69D54B0]) initWithIdentifier:@"CoreBrightness AOD transitions in progress."];
  systemActivityAssertion = v11->_systemActivityAssertion;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __35__CBAODState_acquirePowerAssertion__block_invoke;
  v8 = &unk_1E867BDD0;
  v9 = v11;
  [(SWSystemActivityAssertion *)systemActivityAssertion acquireWithTimeout:10.0 handler:?];
  objc_sync_exit(self);
}

void __35__CBAODState_acquirePowerAssertion__block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_4_0_8_66_8_66_8_0(v10, a2 & 1, a4, a3, *(*(a1 + 32) + 24));
    _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "[Power Assertion] Acquired=%d (details:%{public}@ error:%{public}@ assertionObj=%p)", v10, 0x26u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)releasePowerAssertion
{
  v9 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  systemActivityAssertion = self->_systemActivityAssertion;
  v5 = 0;
  if (systemActivityAssertion)
  {
    [(SWSystemActivityAssertion *)self->_systemActivityAssertion invalidate];
    MEMORY[0x1E69E5920](self->_systemActivityAssertion);
    self->_systemActivityAssertion = 0;
    v5 = 1;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_4_0_8_0(v8, v5 & 1, systemActivityAssertion);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "[Power Assertion] Released=%d (assertionObj=0x%lx)", v8, 0x12u);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

@end