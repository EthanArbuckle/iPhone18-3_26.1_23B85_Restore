@interface CBGammaContrastPreservation
- (CBGammaContrastPreservation)initWithParams:(id)a3;
- (float)combinedFactor;
- (float)currentStrength;
- (void)dealloc;
- (void)handleAutoBrightnessStateUpdate:(BOOL)a3;
- (void)setAODFadeFactor:(float)a3;
- (void)setEnableFactor:(float)a3;
- (void)setRampManager:(id)a3;
@end

@implementation CBGammaContrastPreservation

- (float)currentStrength
{
  v10 = self;
  v9 = a2;
  if (![(CBChromaticCorrection *)self enabled])
  {
    return 0.0;
  }

  v7.receiver = v10;
  v7.super_class = CBGammaContrastPreservation;
  [(CBChromaticCorrection *)&v7 currentStrength];
  v8 = v2;
  v5 = v2;
  v6 = v2 - 1.0;
  [(CBGammaContrastPreservation *)v10 combinedFactor];
  return v5 - (v6 * (1.0 - v3));
}

- (float)combinedFactor
{
  [(CBGammaContrastPreservation *)self AODFadeFactor];
  v5 = v2;
  [(CBGammaContrastPreservation *)self enableFactor];
  return v5 * v3;
}

- (CBGammaContrastPreservation)initWithParams:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  context = objc_autoreleasePoolPush();
  v13->_enableFactor = 1.0;
  *&v13->_rampManager = 1.0;
  if ([v11 supported])
  {
    v13[1].super.super.super.isa = 0;
    v9 = [[CBGammaContrastPreservationPolicy alloc] initWithParams:v11];
    v5 = [CBLuxRamp alloc];
    LODWORD(v3) = 10.0;
    v8 = [(CBLuxRamp *)v5 initWithPolicy:v9 andLuxShape:[CBLogCurve curveWithBase:v3]];
    v7.receiver = v13;
    v7.super_class = CBGammaContrastPreservation;
    v14 = [(CBChromaticCorrection *)&v7 initWithBacklightParams:v11 andPolicy:v9 andRamp:v8];
  }

  else
  {
    MEMORY[0x1E69E5920](v13);
    v14 = 0;
  }

  v10 = 1;
  objc_autoreleasePoolPop(context);
  return v14;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self[1].super.super.super.isa).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBGammaContrastPreservation;
  [(CBChromaticCorrection *)&v3 dealloc];
}

- (void)setAODFadeFactor:(float)a3
{
  if (std::__math::isnan[abi:de200100](a3))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = a3;
  }

  self->_enableFactor = clamp(v3, 0.0, 1.0);
}

- (void)setEnableFactor:(float)a3
{
  if (std::__math::isnan[abi:de200100](a3))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = a3;
  }

  *&self->_rampManager = clamp(v3, 0.0, 1.0);
}

- (void)setRampManager:(id)a3
{
  if (a3 != self[1].super.super.super.isa)
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

    if (a3)
    {
      self[1].super.super.super.isa = MEMORY[0x1E69E5928](a3);
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

- (void)handleAutoBrightnessStateUpdate:(BOOL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = self;
  v36 = a2;
  v35 = a3;
  v3 = 1.0;
  if (!a3)
  {
    v3 = 0.0;
  }

  v34 = v3;
  if (v37->super._aodIsOn)
  {
    if (v37->super.super._logHandle)
    {
      logHandle = v37->super.super._logHandle;
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

  else if (v37[1].super.super.super.isa)
  {
    v30 = [(objc_class *)v37[1].super.super.super.isa rampForIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
    if (v30)
    {
      [v30 targetValue];
    }

    else
    {
      [(CBGammaContrastPreservation *)v37 enableFactor];
    }

    v29 = !float_equal(v5, v34);
    [(CBGammaContrastPreservation *)v37 enableFactor];
    v28 = v6;
    if (v30 && v29 && float_equal(v6, v34))
    {
      if (v37->super.super._logHandle)
      {
        v19 = v37->super.super._logHandle;
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

      [(objc_class *)v37[1].super.super.super.isa removeRampWithIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
      v37->super._autoBrightnessIsEnabled = v35;
    }

    else if (v29)
    {
      [(objc_class *)v37[1].super.super.super.isa removeRampWithIdentifier:GCP_ENABLE_FACTOR_FADE_RAMP];
      v27 = gcpRampLength(v28, v34);
      if (v37->super.super._logHandle)
      {
        v16 = v37->super.super._logHandle;
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
        if (v35)
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
      if (v35)
      {
        v37->super._autoBrightnessIsEnabled = v35;
      }

      else
      {
        [(CBRamp *)v26 setRampFinishedCallback:?];
      }

      [(objc_class *)v37[1].super.super.super.isa insertRamp:v26];
      MEMORY[0x1E69E5920](v26);
    }
  }

  else
  {
    if (v37->super.super._logHandle)
    {
      v21 = v37->super.super._logHandle;
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
      __os_log_helper_16_0_1_4_0(v40, v35);
      _os_log_impl(&dword_1DE8E5000, v21, OS_LOG_TYPE_DEFAULT, "Toggling AAB, no ramp manager available, snapping to %d", v40, 8u);
    }

    v37->super._autoBrightnessIsEnabled = v35;
    *&v4 = v35;
    [(CBGammaContrastPreservation *)v37 setEnableFactor:v4];
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