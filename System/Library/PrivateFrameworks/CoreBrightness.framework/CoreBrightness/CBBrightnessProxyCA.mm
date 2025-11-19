@interface CBBrightnessProxyCA
- (BOOL)commitBrightness:(id *)a3;
- (BOOL)commitBrightness:(id *)a3 withBlock:(id)a4;
- (BOOL)forceCommitBrightness:(id *)a3 withBlock:(id)a4;
- (BOOL)setWhitePoint:(id)a3 rampDuration:(double)a4 error:(id *)a5;
- (CBBrightnessProxyCA)initWithCABrightnessControl:(id)a3;
- (void)dealloc;
- (void)setAmbient:(float)a3;
- (void)setBrightnessControlDisabled:(BOOL)a3;
- (void)setBrightnessLimit:(float)a3;
- (void)setContrastPreservation:(float)a3;
- (void)setFilteredAmbient:(float)a3;
- (void)setHeadroom:(float)a3;
- (void)setHighAmbientAdaptation:(float)a3;
- (void)setIndicatorBrightness:(float)a3;
- (void)setIndicatorBrightnessLimit:(float)a3;
- (void)setLowAmbientAdaptation:(float)a3;
- (void)setPotentialHeadroom:(float)a3;
- (void)setSDRBrightness:(float)a3;
@end

@implementation CBBrightnessProxyCA

- (CBBrightnessProxyCA)initWithCABrightnessControl:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = CBBrightnessProxyCA;
  v9 = [(CBBrightnessProxyCA *)&v6 init];
  if (v9)
  {
    v9->_brightnessNotificationRequestEDR = *MEMORY[0x1E69795F0];
    v9->_brightnessRequestEDRHeadroom = *MEMORY[0x1E6979618];
    v9->_brightnessRequestRampDuration = *MEMORY[0x1E6979620];
    v9->_brightnessSecureIndicatorType = *MEMORY[0x1E6979610];
    v9->_brightnessSecureIndicatorActiveCount = *MEMORY[0x1E69795F8];
    v9->_brightnessNotificationSecureIndicatorOn = *MEMORY[0x1E6979608];
    v9->_brightnessNotificationSecureIndicatorOff = *MEMORY[0x1E6979600];
    v9->_brightnessNotificationPowerOn = *MEMORY[0x1E69795E8];
    v9->_brightnessNotificationPowerOff = *MEMORY[0x1E69795E0];
    v9->_CBDispTypeIntegrated = 0;
    v9->_CBDispTypeExternal = 1;
    v9->_CBDispTypeWireless = 2;
    v9->_CBDispTypeVirtual = 3;
    v9->_CBDispTypeDFR = 4;
    v3 = os_log_create("com.apple.CoreBrightness.CBBrightnessProxyCA", "default");
    v9->_logHandle = v3;
    v4 = MEMORY[0x1E69E5928](v7);
    v9->_brightnessControl = v4;
    v9->_allowUpdates = 1;
  }

  return v9;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_brightnessControl).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBBrightnessProxyCA;
  [(CBBrightnessProxyCA *)&v3 dealloc];
}

- (BOOL)setWhitePoint:(id)a3 rampDuration:(double)a4 error:(id *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = 0;
  memset(__b, 0, sizeof(__b));
  for (i = 0; i < [v16 count]; ++i)
  {
    [objc_msgSend(v16 objectAtIndexedSubscript:{i), "floatValue"}];
    __b[i] = v5;
  }

  if (v18->_logHandle)
  {
    logHandle = v18->_logHandle;
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

  if (os_signpost_enabled(logHandle))
  {
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, COERCE__INT64(__b[0]), COERCE__INT64(__b[1]), COERCE__INT64(__b[2]), COERCE__INT64(__b[3]), COERCE__INT64(__b[4]), COERCE__INT64(__b[5]), COERCE__INT64(__b[6]), COERCE__INT64(__b[7]), COERCE__INT64(__b[8]));
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, logHandle, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setWhitePoint", "[(%f;%f;%f),(%f;%f;%f),(%f;%f;%f)]", v20, 0x5Cu);
  }

  if ([(CBBrightnessProxyCA *)v18 allowUpdates])
  {
    v13 = [(CABrightnessControl *)v18->_brightnessControl setWhitePoint:__b rampDuration:v14 error:v15];
  }

  if (v18->_logHandle)
  {
    v8 = v18->_logHandle;
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

  if (os_signpost_enabled(v8))
  {
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v19, COERCE__INT64(__b[0]), COERCE__INT64(__b[1]), COERCE__INT64(__b[2]), COERCE__INT64(__b[3]), COERCE__INT64(__b[4]), COERCE__INT64(__b[5]), COERCE__INT64(__b[6]), COERCE__INT64(__b[7]), COERCE__INT64(__b[8]));
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "setWhitePoint", "[(%f;%f;%f),(%f;%f;%f),(%f;%f;%f)]", v19, 0x5Cu);
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)setSDRBrightness:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setSDRBrightness:v3];
  }
}

- (void)setHeadroom:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setHeadroom:v3];
  }
}

- (void)setPotentialHeadroom:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setPotentialHeadroom:v3];
  }
}

- (void)setAmbient:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setAmbient:v3];
  }
}

- (void)setFilteredAmbient:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setFilteredAmbient:v3];
  }
}

- (void)setBrightnessLimit:(float)a3
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = a3;
    [(CABrightnessControl *)self->_brightnessControl setBrightnessLimit:v3];
  }
}

- (BOOL)commitBrightness:(id *)a3
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  if (self->_logHandle)
  {
    logHandle = v25->_logHandle;
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
  v21 = 1;
  v20 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(logHandle))
  {
    log = v22;
    type = v21;
    spid = v20;
    __os_log_helper_16_0_0(v19);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "commitBrightness", &unk_1DEAD656F, v19, 2u);
  }

  v18 = 0;
  if ([(CBBrightnessProxyCA *)v25 allowUpdates])
  {
    v18 = [(CABrightnessControl *)v25->_brightnessControl commitBrightness:v23];
  }

  if (v25->_logHandle)
  {
    v8 = v25->_logHandle;
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

  v17 = v8;
  v16 = 2;
  v15 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v8))
  {
    v4 = v17;
    v5 = v16;
    v6 = v15;
    __os_log_helper_16_0_0(v14);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v4, v5, v6, "commitBrightness", &unk_1DEAD656F, v14, 2u);
  }

  return v18 & 1;
}

- (BOOL)commitBrightness:(id *)a3 withBlock:(id)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  if (self->_logHandle)
  {
    logHandle = v27->_logHandle;
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

  v23 = logHandle;
  v22 = 1;
  v21 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(logHandle))
  {
    log = v23;
    type = v22;
    spid = v21;
    __os_log_helper_16_0_0(v20);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "commitBrightness withBlock", &unk_1DEAD656F, v20, 2u);
  }

  v19 = 0;
  if ([(CBBrightnessProxyCA *)v27 allowUpdates])
  {
    v19 = [(CABrightnessControl *)v27->_brightnessControl commitBrightness:v25 withBlock:v24];
  }

  if (v27->_logHandle)
  {
    v9 = v27->_logHandle;
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
  v17 = 2;
  v16 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v9))
  {
    v5 = v18;
    v6 = v17;
    v7 = v16;
    __os_log_helper_16_0_0(v15);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v5, v6, v7, "commitBrightness withBlock", &unk_1DEAD656F, v15, 2u);
  }

  return v19 & 1;
}

- (BOOL)forceCommitBrightness:(id *)a3 withBlock:(id)a4
{
  v35 = self;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  if (self->_logHandle)
  {
    logHandle = v35->_logHandle;
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
  v30 = 1;
  v29 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(logHandle))
  {
    log = v31;
    type = v30;
    spid = v29;
    __os_log_helper_16_0_0(v28);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "forceCommitBrightness", &unk_1DEAD656F, v28, 2u);
  }

  v27 = 0;
  if ([(CBBrightnessProxyCA *)v35 allowUpdates])
  {
    brightnessControl = v35->_brightnessControl;
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CABrightnessControl *)v35->_brightnessControl forceCommitBrightness:v33 withBlock:v32];
    }

    else
    {
      if (v35->_logHandle)
      {
        v14 = v35->_logHandle;
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
      v25 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v11 = v26;
        v12 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_error_impl(&dword_1DE8E5000, v11, v12, "CABrightnessControl forceCommitBrightness SPI does not exist -> use normal commitBrightness.", v24, 2u);
      }

      v27 = [(CABrightnessControl *)v35->_brightnessControl commitBrightness:v33 withBlock:v32];
    }
  }

  if (v35->_logHandle)
  {
    v10 = v35->_logHandle;
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
  v22 = 2;
  v21 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v10))
  {
    v6 = v23;
    v7 = v22;
    v8 = v21;
    __os_log_helper_16_0_0(v20);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v6, v7, v8, "forceCommitBrightness", &unk_1DEAD656F, v20, 2u);
  }

  return v27 & 1;
}

- (void)setBrightnessControlDisabled:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  [(CABrightnessControl *)self->_brightnessControl setBrightnessControlDisabled:a3];
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
    if (a3)
    {
      v3 = "Disabled";
    }

    else
    {
      v3 = "Enabled";
    }

    __os_log_helper_16_2_1_8_32(v8, v3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s brightness control updates.", v8, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setLowAmbientAdaptation:(float)a3
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [(CABrightnessControl *)self->_brightnessControl setLowAmbientAdaptation:v4];
  }
}

- (void)setHighAmbientAdaptation:(float)a3
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [(CABrightnessControl *)self->_brightnessControl setHighAmbientAdaptation:v4];
  }
}

- (void)setContrastPreservation:(float)a3
{
  v4 = MEMORY[0x1E69E5918];
  v5 = NSSelectorFromString(&cfstr_Setcontrastpre.isa);
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    v4(self->_brightnessControl, v5, a3);
  }
}

- (void)setIndicatorBrightness:(float)a3
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [(CABrightnessControl *)self->_brightnessControl setIndicatorBrightness:v4];
  }
}

- (void)setIndicatorBrightnessLimit:(float)a3
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = a3;
    [(CABrightnessControl *)self->_brightnessControl setIndicatorBrightnessLimit:v4];
  }
}

@end