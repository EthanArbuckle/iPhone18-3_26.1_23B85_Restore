@interface CBABCurve
- ($599F175E452E455E49EC8439362DB023)provideDefaultPreferencesWithConfiguration:(SEL)configuration;
- (BOOL)setLux:(float)lux;
- (CBABCurve)initWithConfiguration:(id)configuration;
- (CBABCurve)initWithUUID:(id)d vendorID:(id)iD andProductID:(id)productID;
- (id)copyUserPrefState;
- (id)description;
- (void)dealloc;
- (void)resetToDefaultState;
- (void)setSavedPrefences:(id)prefences;
- (void)updateALSParametersForDisplayBrightness:(float)brightness;
@end

@implementation CBABCurve

- (CBABCurve)initWithUUID:(id)d vendorID:(id)iD andProductID:(id)productID
{
  context = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(CBABCurveConfiguration);
  [(CBABCurveConfiguration *)v8 setVendorID:iD];
  [(CBABCurveConfiguration *)v8 setProductID:productID];
  [(CBABCurveConfiguration *)v8 setUuid:d];
  v7 = [(CBABCurve *)self initWithConfiguration:v8];
  objc_autoreleasePoolPop(context);
  return v7;
}

- (CBABCurve)initWithConfiguration:(id)configuration
{
  v66 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v55 = a2;
  configurationCopy = configuration;
  self->_logHandle = os_log_create("com.apple.CoreBrightness.CBABCurve", "default");
  v53.receiver = selfCopy;
  v53.super_class = CBABCurve;
  selfCopy = [(CBABCurve *)&v53 init];
  if (selfCopy)
  {
    selfCopy->maximumBrightness = 1.0;
    selfCopy->minimumBrightness = 0.001;
    v3 = MEMORY[0x1E69E5928](configurationCopy);
    selfCopy->config = v3;
    selfCopy->currentLux = 300.0;
    selfCopy->_scaleFactor = 1.0;
    [objc_msgSend(configurationCopy "minBrightness")];
    v52 = v4;
    selfCopy->shouldClampLowLux = float_equal(v4, 1.0);
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
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
      if (selfCopy->shouldClampLowLux)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_2_8_0_8_32(v65, COERCE__INT64(v52), v5);
      _os_log_impl(&dword_1DE8E5000, oslog, type, "Panel min brightness from curve configuration: %f; should clamp low lux: %s", v65, 0x16u);
    }

    v49 = 1;
    v48 = [CBPreferencesHandler copyPreferenceForAllUsersForKey:@"DisplayPreferences"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v48 objectForKey:{objc_msgSend(configurationCopy, "uuid")}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v47 objectForKey:@"AutoBrightnessCurve"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = [v46 objectForKey:@"Version"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedIntValue = [v45 unsignedIntValue];
            selfCopy->_version = unsignedIntValue;
            if (unsignedIntValue == 1)
            {
              if (selfCopy->_logHandle)
              {
                v27 = selfCopy->_logHandle;
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

              v44 = v27;
              v43 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                __os_log_helper_16_0_1_8_0(v64, selfCopy->_version);
                _os_log_impl(&dword_1DE8E5000, v44, v43, "upgrading curve from version %lu", v64, 0xCu);
              }

              if ([configurationCopy isBuiltin] & 1) != 0 && (objc_msgSend(configurationCopy, "isEnergySaving"))
              {
                v49 = 0;
              }

              else
              {
                selfCopy->_version = 2;
              }
            }

            else if (unsignedIntValue != 2)
            {
              if (selfCopy->_logHandle)
              {
                v25 = selfCopy->_logHandle;
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
              v41 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v22 = v42;
                v23 = v41;
                __os_log_helper_16_0_0(v40);
                _os_log_error_impl(&dword_1DE8E5000, v22, v23, "curve version mismatch", v40, 2u);
              }

              v49 = 0;
            }
          }

          else
          {
            v49 = 0;
          }

          v45 = [v46 objectForKey:@"Lux1"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 floatValue];
            selfCopy->pref.e1 = v6;
          }

          else
          {
            v49 = 0;
          }

          v45 = [v46 objectForKey:@"Lux2"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 floatValue];
            selfCopy->pref.e2 = v7;
          }

          else
          {
            v49 = 0;
          }

          v45 = [v46 objectForKey:@"Backlight1"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 floatValue];
            selfCopy->pref.bl1 = v8;
          }

          else
          {
            v49 = 0;
          }

          v45 = [v46 objectForKey:@"Backlight2"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 floatValue];
            selfCopy->pref.bl2 = v9;
          }

          else
          {
            v49 = 0;
          }

          v45 = [v46 objectForKey:@"LuxThreshold"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v45 floatValue];
            selfCopy->pref.eThresh = v10;
          }

          else
          {
            v49 = 0;
          }
        }

        else
        {
          if (selfCopy->_logHandle)
          {
            v21 = selfCopy->_logHandle;
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

          v39 = v21;
          v38 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_66(v63, [configurationCopy productID]);
            _os_log_impl(&dword_1DE8E5000, v39, v38, "no curve preferences for the display %{public}@", v63, 0xCu);
          }

          v49 = 0;
        }
      }

      else
      {
        if (selfCopy->_logHandle)
        {
          v19 = selfCopy->_logHandle;
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

        v37 = v19;
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_66(v62, [configurationCopy productID]);
          _os_log_impl(&dword_1DE8E5000, v37, v36, "no preferences for the display %{public}@", v62, 0xCu);
        }

        v49 = 0;
      }
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v17 = selfCopy->_logHandle;
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

      v35 = v17;
      v34 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v35;
        v15 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_impl(&dword_1DE8E5000, v14, v15, "no display preferences", v33, 2u);
      }

      v49 = 0;
    }

    *&v11 = MEMORY[0x1E69E5920](v48).n128_u64[0];
    if (v49)
    {
      e1 = selfCopy->pref.e1;
      e2 = selfCopy->pref.e2;
      bl1 = selfCopy->pref.bl1;
      bl2 = selfCopy->pref.bl2;
      eThresh = selfCopy->pref.eThresh;
    }

    else
    {
      selfCopy->_version = 2;
      v13 = selfCopy;
      if (selfCopy)
      {
        [(CBABCurve *)selfCopy provideDefaultPreferencesWithConfiguration:configurationCopy, v11];
      }

      else
      {
        v31 = 0uLL;
        v32 = 0.0;
      }

      *&v13->pref.bl1 = v31;
      v13->pref.eThresh = v32;
    }
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  *&v2 = MEMORY[0x1E69E5920](self->config).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBABCurve;
  [(CBABCurve *)&v3 dealloc];
}

- (id)description
{
  selfCopy = self;
  v3 = a2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"\nCurrent Lux: %f\nPreferences\ne1: %f, e2: %f \nbl1: %f, bl2: %f\nminBrightness: %f\nmaxBrightness: %f scaler: %f", self->currentLux, self->pref.e1, self->pref.e2, self->pref.bl1, self->pref.bl2, self->minimumBrightness, self->maximumBrightness, self->_scaleFactor, a2, self];
}

- ($599F175E452E455E49EC8439362DB023)provideDefaultPreferencesWithConfiguration:(SEL)configuration
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  configurationCopy = configuration;
  v24 = a4;
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  retstr->var2 = 0.0;
  retstr->var3 = 262.5;
  retstr->var4 = 78.5;
  if ([v24 isBuiltin] & 1) != 0 && (objc_msgSend(v24, "isEnergySaving"))
  {
    [objc_msgSend(v24 "maxBrightness")];
    *&v23 = v4;
    v5 = 0.107505 * (500.0 / v4);
    retstr->var0 = v5;
    *&v4 = 0.341785 * (500.0 / *&v23);
    retstr->var1 = *&v4;
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
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
    result = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __os_log_helper_16_0_1_8_0(v28, v23);
      _os_log_impl(&dword_1DE8E5000, v22, v21, "using default curve based on max brighness %f", v28, 0xCu);
    }
  }

  else if ([objc_msgSend(v24 "vendorID")] == 1552 && (objc_msgSend(objc_msgSend(v24, "productID"), "unsignedIntegerValue") == 44606 || objc_msgSend(objc_msgSend(v24, "productID"), "unsignedIntegerValue") == 44602))
  {
    if (selfCopy->_logHandle)
    {
      v12 = selfCopy->_logHandle;
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

    v20 = v12;
    v19 = OS_LOG_TYPE_DEFAULT;
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      __os_log_helper_16_2_2_8_64_8_64(v27, [v24 productID], objc_msgSend(v24, "vendorID"));
      _os_log_impl(&dword_1DE8E5000, v20, v19, "using default curve configuration (productID=%@ | vendorID=%@)", v27, 0x16u);
    }

    retstr->var0 = 0.0654;
    retstr->var1 = 0.55;
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v10 = selfCopy->_logHandle;
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
    v17 = OS_LOG_TYPE_DEFAULT;
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v7 = oslog;
      v8 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_impl(&dword_1DE8E5000, v7, v8, "using default curve configuration", v16, 2u);
    }

    retstr->var0 = 0.1;
    retstr->var1 = 0.625;
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)setLux:(float)lux
{
  v25 = *MEMORY[0x1E69E9840];
  luxCopy = lux;
  if (lux >= 0.0)
  {
    if (lux <= 5000.0)
    {
      if (self->shouldClampLowLux && lux < 1.0)
      {
        luxCopy = 1.0;
        if (self->_logHandle)
        {
          logHandle = self->_logHandle;
        }

        else
        {
          v12 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          logHandle = v12;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v22, 0x3FF0000000000000);
          _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Cap lux on %f (lower bound)\n", v22, 0xCu);
        }
      }
    }

    else
    {
      luxCopy = 5000.0;
      if (self->_logHandle)
      {
        v15 = self->_logHandle;
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

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v23, 5000);
        _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "Cap lux on %d\n", v23, 8u);
      }
    }

    self->currentLux = luxCopy;
    [(CBABCurve *)self getScaledBL2];
    v9 = v3;
    [(CBABCurve *)self getScaledBL1];
    v11 = (v9 - v4) / (self->pref.e2 - self->pref.e1);
    currentLux = self->currentLux;
    [(CBABCurve *)self getScaledBL1];
    self->mappedBrightness = v5 + (v11 * currentLux);
    self->mappedBrightness = fmaxf(self->mappedBrightness, self->minimumBrightness);
    self->mappedBrightness = fminf(self->mappedBrightness, self->maximumBrightness);
    if (self->_logHandle)
    {
      v8 = self->_logHandle;
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v21, COERCE__INT64(self->currentLux), COERCE__INT64(self->mappedBrightness), COERCE__INT64(self->_scaleFactor));
      _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "setLux=%f, mappedBrightness=%f, scaler=%f", v21, 0x20u);
    }

    v20 = 1;
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
      __os_log_helper_16_0_1_8_0(v24, COERCE__INT64(luxCopy));
      _os_log_error_impl(&dword_1DE8E5000, v17, OS_LOG_TYPE_ERROR, "lux value (%f) is < 0", v24, 0xCu);
    }

    v20 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v20 & 1;
}

- (void)updateALSParametersForDisplayBrightness:(float)brightness
{
  v47 = *MEMORY[0x1E69E9840];
  if (self->currentLux <= 5000.0)
  {
    if (self->shouldClampLowLux && self->currentLux < 1.0)
    {
      self->currentLux = 1.0;
      if (self->_logHandle)
      {
        logHandle = self->_logHandle;
      }

      else
      {
        v27 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v27;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v45, 0x3FF0000000000000);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Cap lux on %f (lower bound)\n", v45, 0xCu);
      }
    }
  }

  else
  {
    self->currentLux = 5000.0;
    if (self->_logHandle)
    {
      v30 = self->_logHandle;
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

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v46, 5000);
      _os_log_debug_impl(&dword_1DE8E5000, v30, OS_LOG_TYPE_DEBUG, "Cap lux on %d\n", v46, 8u);
    }
  }

  if (self->currentLux == 0.0)
  {
    v3 = self->currentLux + 0.01;
    self->currentLux = v3;
  }

  v4 = (brightness * 500.0) * 72.0 / (500.0 - (self->currentLux - 72.0 * self->currentLux));
  v33 = v4;
  v5 = (brightness * 500.0) * 3.0 / (500.0 - (self->currentLux - 3.0 * self->currentLux));
  v32 = v5;
  v6 = (brightness * 500.0) / (500.0 - (self->currentLux - 3.0 * self->currentLux));
  v31 = v6;
  v7 = (brightness * 500.0) / (500.0 - (self->currentLux - 72.0 * self->currentLux));
  v36 = (v33 - v7) / 500.0;
  v34 = (v32 - v31) / 500.0;
  if (self->_logHandle)
  {
    v26 = self->_logHandle;
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

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v44, COERCE__INT64(v36), COERCE__INT64(v34), 0x3F6A16D3F97A4B02, 0x3F3730BC6BFAED56);
    _os_log_debug_impl(&dword_1DE8E5000, v26, OS_LOG_TYPE_DEBUG, "slope_min: %f slope_max: %f definemax: %f definemin: %f\n", v44, 0x2Au);
  }

  v35 = fmaxf(v34, 0.00035386);
  v37 = fmaxf(v36, 0.0031847);
  if (self->currentLux <= self->pref.eThresh)
  {
    [(CBABCurve *)self getScaledBL2];
    v39 = fmaxf(fminf((v13 - brightness) / (self->pref.e2 - self->currentLux), v37), v35);
    *&v14 = brightness + (v39 * (self->pref.e1 - self->currentLux));
    [(CBABCurve *)self setScaledBL1:v14];
    *&v15 = brightness + (v39 * (self->pref.e2 - self->currentLux));
    [(CBABCurve *)self setScaledBL2:v15];
    if (self->_logHandle)
    {
      v20 = self->_logHandle;
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

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      [(CBABCurve *)self getScaledBL1];
      *&v18 = v16;
      [(CBABCurve *)self getScaledBL2];
      __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v42, v18, COERCE__INT64(v17), COERCE__INT64(self->_scaleFactor), COERCE__INT64(v39), COERCE__INT64(brightness), COERCE__INT64(self->currentLux));
      _os_log_impl(&dword_1DE8E5000, v20, OS_LOG_TYPE_INFO, "BELOW Bl1: %f BL2: %f (scaler=%f) slope: %f linBT: %f lux: %f\n", v42, 0x3Eu);
    }
  }

  else
  {
    [(CBABCurve *)self getScaledBL1];
    v38 = fmaxf(fminf((brightness - *&v8) / (self->currentLux - self->pref.e1), v37), v35);
    if (self->currentLux < 150.0)
    {
      self->pref.e2 = 150.0;
      *&v8 = brightness + (v38 * (self->pref.e2 - self->currentLux));
    }

    else
    {
      self->pref.e2 = self->currentLux;
      *&v8 = brightness;
    }

    [(CBABCurve *)self setScaledBL2:v8];
    v24 = self->pref.e1 - self->pref.e2;
    [(CBABCurve *)self getScaledBL2];
    *&v10 = v9 + (v38 * v24);
    [(CBABCurve *)self setScaledBL1:v10];
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
      [(CBABCurve *)self getScaledBL1];
      *&v21 = v11;
      [(CBABCurve *)self getScaledBL2];
      __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v43, v21, COERCE__INT64(v12), COERCE__INT64(v38), COERCE__INT64(brightness), COERCE__INT64(self->currentLux));
      _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "ABOVE Bl1: %f BL2: %f slope: %f linBT: %f lux: %f\n", v43, 0x34u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)resetToDefaultState
{
  selfCopy = self;
  v12 = a2;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
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
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_impl(&dword_1DE8E5000, log, type, "Curve reset to default state", v9, 2u);
  }

  v2 = selfCopy;
  if (selfCopy)
  {
    [(CBABCurve *)selfCopy provideDefaultPreferencesWithConfiguration:selfCopy->config];
  }

  else
  {
    v7 = 0uLL;
    v8 = 0.0;
  }

  *&v2->pref.bl1 = v7;
  v2->pref.eThresh = v8;
}

- (id)copyUserPrefState
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *&v2 = self->pref.bl1;
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"Backlight1"}];
  *&v3 = self->pref.bl2;
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v3), @"Backlight2"}];
  *&v4 = self->pref.e1;
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v4), @"Lux1"}];
  *&v5 = self->pref.e2;
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v5), @"Lux2"}];
  *&v6 = self->pref.eThresh;
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v6), @"LuxThreshold"}];
  [v8 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_version), @"Version"}];
  return v8;
}

- (void)setSavedPrefences:(id)prefences
{
  if (prefences)
  {
    [objc_msgSend(prefences objectForKeyedSubscript:{@"Lux1", "floatValue"}];
    self->pref.e1 = v3;
    [objc_msgSend(prefences objectForKeyedSubscript:{@"Lux2", "floatValue"}];
    self->pref.e2 = v4;
    [objc_msgSend(prefences objectForKeyedSubscript:{@"Backlight1", "floatValue"}];
    self->pref.bl1 = v5;
    [objc_msgSend(prefences objectForKeyedSubscript:{@"Backlight2", "floatValue"}];
    self->pref.bl2 = v6;
    [objc_msgSend(prefences objectForKeyedSubscript:{@"LuxThreshold", "floatValue"}];
    self->pref.eThresh = v7;
  }
}

@end