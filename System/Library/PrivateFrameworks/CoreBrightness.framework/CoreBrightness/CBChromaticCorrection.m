@interface CBChromaticCorrection
- (BOOL)enabled;
- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5;
- (BOOL)isInActiveRange;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBChromaticCorrection)initWithBacklightParams:(id)a3 andPolicy:(id)a4 andRamp:(id)a5;
- (float)currentStrength;
- (float)luxAdjustedByInternalPolicies:(float)a3;
- (void)dealloc;
- (void)handleAutoBrightnessStateUpdate:(BOOL)a3;
- (void)handleLuxUpdate:(float)a3;
- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4;
- (void)handleRampResult:(int)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setReferenceModeActive:(BOOL)a3;
- (void)setTrustedLux:(float)a3;
- (void)updateRamp;
@end

@implementation CBChromaticCorrection

- (void)updateRamp
{
  ramp = self->_ramp;
  (self->_currentTime)();
  [(CBChromaticCorrection *)self handleRampResult:[(CBLuxRamp *)ramp updateTimedRamp:?]];
}

- (float)currentStrength
{
  v21 = *MEMORY[0x1E69E9840];
  if (std::__math::isnan[abi:de200100](self->_nits) || (-[CBLuxRamp lux](self->_ramp, "lux"), std::__math::isnan[abi:de200100](v2)))
  {
    v19 = 0.0;
  }

  else if ([(CBChromaticCorrection *)self isInActiveRange])
  {
    policy = self->_policy;
    nits = self->_nits;
    [(CBLuxRamp *)self->_ramp lux];
    LODWORD(v4) = v3;
    *&v5 = nits;
    [(CBChromaticCorrectionPolicy *)policy strengthForNits:v5 andLux:v4];
    v17 = v6;
    context = objc_autoreleasePoolPush();
    v15 = [(CBChromaticCorrectionPolicy *)self->_policy strengthNotification];
    *&v7 = v17;
    -[CBModule sendNotificationForKey:withValue:](self, "sendNotificationForKey:withValue:", v15, [MEMORY[0x1E696AD98] numberWithFloat:v7]);
    objc_autoreleasePoolPop(context);
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
      *&v10 = self->_nits;
      [(CBLuxRamp *)self->_ramp lux];
      __os_log_helper_16_0_3_8_0_8_0_8_0(v20, v10, COERCE__INT64(v8), COERCE__INT64(v17));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Interpolation | Nits=%f Lux=%f Strength=%f", v20, 0x20u);
    }

    v19 = v17;
  }

  else
  {
    v19 = 0.0;
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)isInActiveRange
{
  policy = self->_policy;
  [(CBLuxRamp *)self->_ramp lux];
  v5 = 0;
  if (([(CBChromaticCorrectionPolicy *)policy luxIsInActiveRange:?]& 1) != 0)
  {
    *&v2 = self->_nits;
    return [(CBChromaticCorrection *)self nitsAreInActiveRange:v2];
  }

  return v5;
}

- (BOOL)enabled
{
  LOBYTE(v3) = 0;
  if (self->_isEnabled)
  {
    LOBYTE(v3) = 0;
    if (self->_autoBrightnessIsEnabled)
    {
      v3 = ![(CBChromaticCorrection *)self referenceModeActive];
    }
  }

  return v3 & 1;
}

- (CBChromaticCorrection)initWithBacklightParams:(id)a3 andPolicy:(id)a4 andRamp:(id)a5
{
  v36 = self;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31.receiver = self;
  v31.super_class = CBChromaticCorrection;
  v36 = [(CBChromaticCorrection *)&v31 init];
  if (v36)
  {
    if (v33)
    {
      v5 = os_log_create("com.apple.CoreBrightness.ChromaticCorrection", [v33 name]);
    }

    else
    {
      v5 = os_log_create("com.apple.CoreBrightness.ChromaticCorrection", "default");
    }

    v36->super._logHandle = v5;
    if (!v34)
    {
      if (v36->super._logHandle)
      {
        logHandle = v36->super._logHandle;
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

      v30 = logHandle;
      v29 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v30;
        type = v29;
        __os_log_helper_16_0_0(v28);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Initialization | Error=YES Params=nil", v28, 2u);
      }

LABEL_34:
      MEMORY[0x1E69E5920](v36);
      v36 = 0;
      return 0;
    }

    if (!v33)
    {
      if (v36->super._logHandle)
      {
        v17 = v36->super._logHandle;
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
      v26 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v14 = v27;
        v15 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&dword_1DE8E5000, v14, v15, "Initialization | Error=YES Policy=nil", v25, 2u);
      }

      goto LABEL_34;
    }

    v36->_isEnabled = 1;
    v36->_autoBrightnessIsEnabled = 1;
    [(CBChromaticCorrection *)v36 setReferenceModeActive:0];
    v6 = MEMORY[0x1E69E5928](v34);
    v36->_params = v6;
    v7 = MEMORY[0x1E69E5928](v33);
    v36->_policy = v7;
    v8 = MEMORY[0x1E69E5928](v32);
    v36->_ramp = v8;
    v36->_nits = NAN;
    v36->_trustedLux = NAN;
    v36->_currentTime = mach_time_now_in_seconds;
    v36->_aodIsOn = 0;
    v36->_aodRampHandoffPending = 0;
    if (v36->super._logHandle)
    {
      v13 = v36->super._logHandle;
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
      v10 = v24;
      v11 = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_impl(&dword_1DE8E5000, v10, v11, "Initialization | Start", v22, 2u);
    }
  }

  return v36;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_params);
  v5->_params = 0;
  MEMORY[0x1E69E5920](v5->_policy);
  v5->_policy = 0;
  *&v2 = MEMORY[0x1E69E5920](v5->_ramp).n128_u64[0];
  v5->_ramp = 0;
  v3.receiver = v5;
  v3.super_class = CBChromaticCorrection;
  [(CBModule *)&v3 dealloc];
}

- (float)luxAdjustedByInternalPolicies:(float)a3
{
  if ([(CBChromaticCorrection *)self enabled])
  {
    return a3;
  }

  [(CBChromaticCorrectionPolicy *)self->_policy rampTargetLuxCap];
  return v3;
}

- (void)handleRampResult:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == 3 || a3 == 2)
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
      v9 = [CBLuxRamp luxRampStateToString:a3];
      [(CBLuxRamp *)self->_ramp lux];
      *&v10 = v3;
      [(CBLuxRamp *)self->_ramp startLux];
      *&v11 = v4;
      [(CBLuxRamp *)self->_ramp targetLux];
      __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(v16, v9, v10, v11, COERCE__INT64(v5));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Lux | RampState=%@ Lux=%f StartLux=%f TargetLux=%f", v16, 0x2Au);
    }
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(CBModule *)self sendNotificationForKey:@"ExternalRampIsRunning" withValue:[(CBChromaticCorrectionPolicy *)self->_policy rampIdentifier]];
      if (!self->_aodIsOn)
      {
        v8 = MEMORY[0x1E696AD98];
        [(CBChromaticCorectionParamsProtocol *)self->_params rampUpdateRate];
        *&v7 = 1.0 / v6;
        -[CBModule sendNotificationForKey:withValue:](self, "sendNotificationForKey:withValue:", @"DisplayDisplayStartFade", [v8 numberWithFloat:v7]);
      }
    }

    else if (a3 == 3)
    {
      [(CBModule *)self sendNotificationForKey:@"ExternalRampHasFinished" withValue:[(CBChromaticCorrectionPolicy *)self->_policy rampIdentifier]];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)handleLuxUpdate:(float)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (!std::__math::isnan[abi:de200100](a3))
  {
    *&v3 = a3;
    [(CBChromaticCorrection *)self luxAdjustedByInternalPolicies:v3];
    v26 = v4;
    [(CBLuxRamp *)self->_ramp lux];
    if (std::__math::isnan[abi:de200100](v5))
    {
      ramp = self->_ramp;
      [(CBChromaticCorrectionPolicy *)self->_policy rampTargetLuxCap];
      [(CBLuxRamp *)ramp forceLux:?];
    }

    LODWORD(v6) = v26;
    if ([(CBChromaticCorrection *)self shouldRampForIncomingLux:v6])
    {
      v7 = [(CBLuxRamp *)self->_ramp lux];
      v24 = LODWORD(v8);
      if (self->_isExternallyClocked)
      {
        LODWORD(v9) = v26;
        [(CBChromaticCorrection *)self handleRampResult:[(CBLuxRamp *)self->_ramp rampFromLux:v8 toLux:v9]];
      }

      else
      {
        v10 = (self->_currentTime)(v7);
        v23 = LODWORD(v10);
        LODWORD(v10) = v24;
        LODWORD(v11) = v26;
        LODWORD(v12) = v23;
        [(CBChromaticCorrection *)self handleRampResult:[(CBLuxRamp *)self->_ramp rampTimedFromLux:v10 toLux:v11 atTime:v12]];
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
        [(CBLuxRamp *)self->_ramp startTime];
        *&v17 = v13;
        [(CBLuxRamp *)self->_ramp duration];
        *&v18 = v14;
        [(CBLuxRamp *)self->_ramp startLux];
        *&v19 = v15;
        [(CBLuxRamp *)self->_ramp targetLux];
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v28, v17, v18, v19, COERCE__INT64(v16));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Lux | Ramp=YES StartTime=%f Duration=%f StartLux=%f TargetLux=%f", v28, 0x2Au);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)handleAODStateUpdate:(unint64_t)a3 transitionTime:(float)a4 context:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = 0;
  if (a3)
  {
    if (a3 == 3)
    {
      self->_aodIsOn = 1;
      self->_isExternallyClocked = 1;
      if ([(CBLuxRamp *)self->_ramp rampIsRunning])
      {
        ramp = self->_ramp;
        [(CBLuxRamp *)ramp lux];
        v32 = v5;
        [(CBLuxRamp *)self->_ramp targetLux];
        LODWORD(v7) = v6;
        LODWORD(v8) = v32;
        [(CBChromaticCorrection *)self handleRampResult:[(CBLuxRamp *)ramp rampFromLux:1 toLux:v8 forceRamp:v7]];
        self->_aodRampHandoffPending = 1;
        v33 = 1;
      }
    }
  }

  else
  {
    self->_aodIsOn = 0;
    self->_isExternallyClocked = 0;
    if ([(CBLuxRamp *)self->_ramp rampIsRunning])
    {
      v28 = self->_ramp;
      [(CBLuxRamp *)v28 lux];
      v30 = v9;
      v10 = [(CBLuxRamp *)self->_ramp targetLux];
      v29 = v11;
      v12 = (self->_currentTime)(v10);
      LODWORD(v13) = v29;
      LODWORD(v14) = LODWORD(v12);
      LODWORD(v12) = v30;
      [(CBChromaticCorrection *)self handleRampResult:[(CBLuxRamp *)v28 rampTimedFromLux:1 toLux:v12 atTime:v13 forceRamp:v14]];
      v33 = 1;
    }
  }

  if (v33)
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      v26 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v26;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "YES";
      if (!self->_aodIsOn)
      {
        v15 = "NO";
      }

      v22 = v15;
      [(CBLuxRamp *)self->_ramp startTime];
      *&v23 = v16;
      [*(&self->super.super.isa + *(v21 + 2992)) duration];
      *&v24 = v17;
      [*(&self->super.super.isa + *(v21 + 2992)) startLux];
      *&v25 = v18;
      [*(&self->super.super.isa + *(v21 + 2992)) targetLux];
      __os_log_helper_16_2_5_8_32_8_0_8_0_8_0_8_0(v35, v22, v23, v24, v25, COERCE__INT64(v19));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Lux | RampHandoff=YES AOD.IsOn=%s StartTime=%f Duration=%f StartLux=%f TargetLux=%f", v35, 0x34u);
    }
  }

  *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([a4 isEqualToString:@"DisplayBrightnessAuto"])
  {
    -[CBChromaticCorrection handleAutoBrightnessStateUpdate:](self, "handleAutoBrightnessStateUpdate:", [a3 BOOLValue]);
    return 1;
  }

  else if ([a4 isEqualToString:{-[CBChromaticCorrectionPolicy isEnabledPropertyKey](self->_policy, "isEnabledPropertyKey")}])
  {
    -[CBChromaticCorrection setEnabled:](self, "setEnabled:", [a3 BOOLValue] & 1);
    return 1;
  }

  else
  {
    return 0;
  }
}

- (void)handleAutoBrightnessStateUpdate:(BOOL)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_autoBrightnessIsEnabled != a3)
  {
    self->_autoBrightnessIsEnabled = a3;
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
      if (self->_autoBrightnessIsEnabled)
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v10, v4);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "AutoBrightness | Enabled=%s", v10, 0xCu);
    }

    if (self->_aodIsOn)
    {
      [(CBLuxRamp *)self->_ramp lux];
      if (std::__math::isnan[abi:de200100](v5))
      {
        ramp = self->_ramp;
        [(CBChromaticCorrectionPolicy *)self->_policy rampTargetLuxCap];
        [(CBLuxRamp *)ramp forceLux:?];
      }
    }

    else
    {
      *&v3 = self->_trustedLux;
      [(CBChromaticCorrection *)self handleLuxUpdate:v3];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setEnabled:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isEnabled != a3)
  {
    self->_isEnabled = a3;
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
      if (self->_isEnabled)
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v4);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "State | Enabled=%s", v8, 0xCu);
    }

    if (!self->_aodIsOn)
    {
      *&v3 = self->_trustedLux;
      [(CBChromaticCorrection *)self handleLuxUpdate:v3];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setTrustedLux:(float)a3
{
  self->_trustedLux = a3;
  if ([(CBChromaticCorrection *)self enabled]&& !self->_aodIsOn)
  {
    *&v3 = self->_trustedLux;
    [(CBChromaticCorrection *)self handleLuxUpdate:v3];
  }
}

- (void)handleNotificationForKey:(id)a3 withProperty:(id)a4
{
  if (a3 && a4 && ([a3 isEqualToString:@"TrustedLux"] & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a4 floatValue];
      [(CBChromaticCorrection *)self setTrustedLux:?];
    }
  }
}

- (void)setReferenceModeActive:(BOOL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3 != self->_referenceModeActive)
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
      __os_log_helper_16_0_1_4_0(v7, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "reference_mode: %d", v7, 8u);
    }

    self->_referenceModeActive = a3;
  }

  *MEMORY[0x1E69E9840];
}

@end