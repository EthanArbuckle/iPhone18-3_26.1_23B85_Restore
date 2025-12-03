@interface CBGammaContrastPreservation
- (CBGammaContrastPreservation)initWithParams:(id)params;
- (float)combinedFactor;
- (float)currentStrength;
- (void)dealloc;
- (void)handleAutoBrightnessStateUpdate:(BOOL)update;
- (void)setAODFadeFactor:(float)factor;
- (void)setEnableFactor:(float)factor;
- (void)setRampManager:(id)manager;
@end

@implementation CBGammaContrastPreservation

- (float)currentStrength
{
  selfCopy = self;
  v9 = a2;
  if (![(CBChromaticCorrection *)self enabled])
  {
    return 0.0;
  }

  v7.receiver = selfCopy;
  v7.super_class = CBGammaContrastPreservation;
  [(CBChromaticCorrection *)&v7 currentStrength];
  v8 = v2;
  v5 = v2;
  v6 = v2 - 1.0;
  [(CBGammaContrastPreservation *)selfCopy combinedFactor];
  return v5 - (v6 * (1.0 - v3));
}

- (float)combinedFactor
{
  [(CBGammaContrastPreservation *)self AODFadeFactor];
  v5 = v2;
  [(CBGammaContrastPreservation *)self enableFactor];
  return v5 * v3;
}

- (CBGammaContrastPreservation)initWithParams:(id)params
{
  selfCopy = self;
  v12 = a2;
  paramsCopy = params;
  context = objc_autoreleasePoolPush();
  selfCopy->_enableFactor = 1.0;
  *&selfCopy->_rampManager = 1.0;
  if ([paramsCopy supported])
  {
    selfCopy[1].super.super.super.isa = 0;
    v9 = [[CBGammaContrastPreservationPolicy alloc] initWithParams:paramsCopy];
    v5 = [CBLuxRamp alloc];
    LODWORD(v3) = 10.0;
    v8 = [(CBLuxRamp *)v5 initWithPolicy:v9 andLuxShape:[CBLogCurve curveWithBase:v3]];
    v7.receiver = selfCopy;
    v7.super_class = CBGammaContrastPreservation;
    v14 = [(CBChromaticCorrection *)&v7 initWithBacklightParams:paramsCopy andPolicy:v9 andRamp:v8];
  }

  else
  {
    MEMORY[0x1E69E5920](selfCopy);
    v14 = 0;
  }

  v10 = 1;
  objc_autoreleasePoolPop(context);
  return v14;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self[1].super.super.super.isa).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBGammaContrastPreservation;
  [(CBChromaticCorrection *)&v3 dealloc];
}

- (void)setAODFadeFactor:(float)factor
{
  if (std::__math::isnan[abi:de200100](factor))
  {
    factorCopy = 1.0;
  }

  else
  {
    factorCopy = factor;
  }

  self->_enableFactor = clamp(factorCopy, 0.0, 1.0);
}

- (void)setEnableFactor:(float)factor
{
  if (std::__math::isnan[abi:de200100](factor))
  {
    factorCopy = 1.0;
  }

  else
  {
    factorCopy = factor;
  }

  *&self->_rampManager = clamp(factorCopy, 0.0, 1.0);
}

- (void)setRampManager:(id)manager
{
  if (manager != self[1].super.super.super.isa)
  {
    v4 = 0;
    if (self[1].super.super.super.isa)
    {
      v3 = [(objc_class *)self[1].super.super.super.isa rampForIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
      v4 = MEMORY[0x1E69E5928](v3);
      if (v4)
      {
        -[objc_class removeRampWithIdentifier:](self[1].super.super.super.isa, "removeRampWithIdentifier:", [v4 identifier]);
      }

      MEMORY[0x1E69E5920](self[1].super.super.super.isa);
      self[1].super.super.super.isa = 0;
    }

    if (manager)
    {
      self[1].super.super.super.isa = MEMORY[0x1E69E5928](manager);
      if (v4)
      {
        if (([v4 isFinished] & 1) == 0)
        {
          [(objc_class *)self[1].super.super.super.isa insertRamp:v4];
        }
      }
    }

    MEMORY[0x1E69E5920](v4);
  }
}

- (void)handleAutoBrightnessStateUpdate:(BOOL)update
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v36 = a2;
  updateCopy = update;
  v3 = 1.0;
  if (!update)
  {
    v3 = 0.0;
  }

  v34 = v3;
  if (selfCopy->super._aodIsOn)
  {
    if (selfCopy->super.super._logHandle)
    {
      logHandle = selfCopy->super.super._logHandle;
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

    v33 = logHandle;
    v32 = 1;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      log = v33;
      type = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_impl(&dword_1DE8E5000, log, type, "Ignoring AAB toggle because in AOD", v31, 2u);
    }
  }

  else if (selfCopy[1].super.super.super.isa)
  {
    v30 = [(objc_class *)selfCopy[1].super.super.super.isa rampForIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
    if (v30)
    {
      [v30 targetValue];
    }

    else
    {
      [(CBGammaContrastPreservation *)selfCopy enableFactor];
    }

    v29 = !float_equal(v5, v34);
    [(CBGammaContrastPreservation *)selfCopy enableFactor];
    v28 = v6;
    if (v30 && v29 && float_equal(v6, v34))
    {
      if (selfCopy->super.super._logHandle)
      {
        v19 = selfCopy->super.super._logHandle;
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
        [v30 originalValue];
        *&v17 = v7;
        [v30 targetValue];
        __os_log_helper_16_0_2_8_0_8_0(v39, v17, COERCE__INT64(v8));
        _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_DEFAULT, "Removing ramp (%f -> %f) which did not start yet", v39, 0x16u);
      }

      [(objc_class *)selfCopy[1].super.super.super.isa removeRampWithIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
      selfCopy->super._autoBrightnessIsEnabled = updateCopy;
    }

    else if (v29)
    {
      [(objc_class *)selfCopy[1].super.super.super.isa removeRampWithIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
      v27 = gcpRampLength(v28, v34);
      if (selfCopy->super.super._logHandle)
      {
        v16 = selfCopy->super.super._logHandle;
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
        if (updateCopy)
        {
          v9 = "enable";
        }

        else
        {
          v9 = "disable";
        }

        __os_log_helper_16_2_4_8_32_8_0_8_0_8_0(v38, v9, COERCE__INT64(v28), COERCE__INT64(v34), COERCE__INT64(v27));
        _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "Toggling AAB (%s) with ramp from %f -> %f (%fs)", v38, 0x2Au);
      }

      v10 = [CBRamp alloc];
      *&v11 = v28;
      *&v12 = v34;
      *&v13 = v27;
      LODWORD(v14) = 1114636288;
      v26 = [(CBRamp *)v10 initWithOrigin:GCP_ENABLE_FACTOR_FADE_RAMP target:v11 length:v12 frequency:v13 identifier:v14];
      [(CBRamp *)v26 setRampProgressCallback:?];
      if (updateCopy)
      {
        selfCopy->super._autoBrightnessIsEnabled = updateCopy;
      }

      else
      {
        [(CBRamp *)v26 setRampFinishedCallback:?];
      }

      [(objc_class *)selfCopy[1].super.super.super.isa insertRamp:v26];
      MEMORY[0x1E69E5920](v26);
    }
  }

  else
  {
    if (selfCopy->super.super._logHandle)
    {
      v21 = selfCopy->super.super._logHandle;
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
      __os_log_helper_16_0_1_4_0(v40, updateCopy);
      _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "Toggling AAB, no ramp manager available, snapping to %d", v40, 8u);
    }

    selfCopy->super._autoBrightnessIsEnabled = updateCopy;
    *&v4 = updateCopy;
    [(CBGammaContrastPreservation *)selfCopy setEnableFactor:v4];
  }

  *MEMORY[0x1E69E9840];
}

float __63__CBGammaContrastPreservation_handleAutoBrightnessStateUpdate___block_invoke(uint64_t a1, float a2)
{
  v2 = +[CBLinearCurve sharedInstance];
  *&v3 = a2;
  LODWORD(v4) = *(a1 + 40);
  LODWORD(v5) = *(a1 + 44);
  [(CBLinearCurve *)v2 interpolateProgress:v3 from:v4 toEnd:v5];
  v9 = *&v6;
  [*(a1 + 32) setEnableFactor:v6];
  return v9;
}

@end