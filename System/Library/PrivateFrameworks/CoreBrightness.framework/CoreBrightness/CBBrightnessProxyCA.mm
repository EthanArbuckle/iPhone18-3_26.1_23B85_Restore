@interface CBBrightnessProxyCA
- (BOOL)commitBrightness:(id *)brightness;
- (BOOL)commitBrightness:(id *)brightness withBlock:(id)block;
- (BOOL)forceCommitBrightness:(id *)brightness withBlock:(id)block;
- (BOOL)setWhitePoint:(id)point rampDuration:(double)duration error:(id *)error;
- (CBBrightnessProxyCA)initWithCABrightnessControl:(id)control;
- (void)dealloc;
- (void)setAmbient:(float)ambient;
- (void)setBrightnessControlDisabled:(BOOL)disabled;
- (void)setBrightnessLimit:(float)limit;
- (void)setContrastPreservation:(float)preservation;
- (void)setFilteredAmbient:(float)ambient;
- (void)setHeadroom:(float)headroom;
- (void)setHighAmbientAdaptation:(float)adaptation;
- (void)setIndicatorBrightness:(float)brightness;
- (void)setIndicatorBrightnessLimit:(float)limit;
- (void)setLowAmbientAdaptation:(float)adaptation;
- (void)setPotentialHeadroom:(float)headroom;
- (void)setSDRBrightness:(float)brightness;
@end

@implementation CBBrightnessProxyCA

- (CBBrightnessProxyCA)initWithCABrightnessControl:(id)control
{
  selfCopy = self;
  v8 = a2;
  controlCopy = control;
  v6.receiver = self;
  v6.super_class = CBBrightnessProxyCA;
  selfCopy = [(CBBrightnessProxyCA *)&v6 init];
  if (selfCopy)
  {
    selfCopy->_brightnessNotificationRequestEDR = *MEMORY[0x1E69795F0];
    selfCopy->_brightnessRequestEDRHeadroom = *MEMORY[0x1E6979618];
    selfCopy->_brightnessRequestRampDuration = *MEMORY[0x1E6979620];
    selfCopy->_brightnessSecureIndicatorType = *MEMORY[0x1E6979610];
    selfCopy->_brightnessSecureIndicatorActiveCount = *MEMORY[0x1E69795F8];
    selfCopy->_brightnessNotificationSecureIndicatorOn = *MEMORY[0x1E6979608];
    selfCopy->_brightnessNotificationSecureIndicatorOff = *MEMORY[0x1E6979600];
    selfCopy->_brightnessNotificationPowerOn = *MEMORY[0x1E69795E8];
    selfCopy->_brightnessNotificationPowerOff = *MEMORY[0x1E69795E0];
    selfCopy->_CBDispTypeIntegrated = 0;
    selfCopy->_CBDispTypeExternal = 1;
    selfCopy->_CBDispTypeWireless = 2;
    selfCopy->_CBDispTypeVirtual = 3;
    selfCopy->_CBDispTypeDFR = 4;
    v3 = os_log_create("com.apple.CoreBrightness.CBBrightnessProxyCA", "default");
    selfCopy->_logHandle = v3;
    v4 = MEMORY[0x1E69E5928](controlCopy);
    selfCopy->_brightnessControl = v4;
    selfCopy->_allowUpdates = 1;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_brightnessControl).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBBrightnessProxyCA;
  [(CBBrightnessProxyCA *)&v3 dealloc];
}

- (BOOL)setWhitePoint:(id)point rampDuration:(double)duration error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  pointCopy = point;
  durationCopy = duration;
  errorCopy = error;
  v13 = 0;
  memset(__b, 0, sizeof(__b));
  for (i = 0; i < [pointCopy count]; ++i)
  {
    [objc_msgSend(pointCopy objectAtIndexedSubscript:{i), "floatValue"}];
    __b[i] = v5;
  }

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

  if (os_signpost_enabled(logHandle))
  {
    __os_log_helper_16_0_9_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, COERCE__INT64(__b[0]), COERCE__INT64(__b[1]), COERCE__INT64(__b[2]), COERCE__INT64(__b[3]), COERCE__INT64(__b[4]), COERCE__INT64(__b[5]), COERCE__INT64(__b[6]), COERCE__INT64(__b[7]), COERCE__INT64(__b[8]));
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, logHandle, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "setWhitePoint", "[(%f;%f;%f),(%f;%f;%f),(%f;%f;%f)]", v20, 0x5Cu);
  }

  if ([(CBBrightnessProxyCA *)selfCopy allowUpdates])
  {
    v13 = [(CABrightnessControl *)selfCopy->_brightnessControl setWhitePoint:__b rampDuration:errorCopy error:durationCopy];
  }

  if (selfCopy->_logHandle)
  {
    v8 = selfCopy->_logHandle;
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

- (void)setSDRBrightness:(float)brightness
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = brightness;
    [(CABrightnessControl *)self->_brightnessControl setSDRBrightness:v3];
  }
}

- (void)setHeadroom:(float)headroom
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = headroom;
    [(CABrightnessControl *)self->_brightnessControl setHeadroom:v3];
  }
}

- (void)setPotentialHeadroom:(float)headroom
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = headroom;
    [(CABrightnessControl *)self->_brightnessControl setPotentialHeadroom:v3];
  }
}

- (void)setAmbient:(float)ambient
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = ambient;
    [(CABrightnessControl *)self->_brightnessControl setAmbient:v3];
  }
}

- (void)setFilteredAmbient:(float)ambient
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = ambient;
    [(CABrightnessControl *)self->_brightnessControl setFilteredAmbient:v3];
  }
}

- (void)setBrightnessLimit:(float)limit
{
  if ([(CBBrightnessProxyCA *)self allowUpdates])
  {
    *&v3 = limit;
    [(CABrightnessControl *)self->_brightnessControl setBrightnessLimit:v3];
  }
}

- (BOOL)commitBrightness:(id *)brightness
{
  selfCopy = self;
  v24 = a2;
  brightnessCopy = brightness;
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
  if ([(CBBrightnessProxyCA *)selfCopy allowUpdates])
  {
    v18 = [(CABrightnessControl *)selfCopy->_brightnessControl commitBrightness:brightnessCopy];
  }

  if (selfCopy->_logHandle)
  {
    v8 = selfCopy->_logHandle;
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

- (BOOL)commitBrightness:(id *)brightness withBlock:(id)block
{
  selfCopy = self;
  v26 = a2;
  brightnessCopy = brightness;
  blockCopy = block;
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
  if ([(CBBrightnessProxyCA *)selfCopy allowUpdates])
  {
    v19 = [(CABrightnessControl *)selfCopy->_brightnessControl commitBrightness:brightnessCopy withBlock:blockCopy];
  }

  if (selfCopy->_logHandle)
  {
    v9 = selfCopy->_logHandle;
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

- (BOOL)forceCommitBrightness:(id *)brightness withBlock:(id)block
{
  selfCopy = self;
  v34 = a2;
  brightnessCopy = brightness;
  blockCopy = block;
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
  if ([(CBBrightnessProxyCA *)selfCopy allowUpdates])
  {
    brightnessControl = selfCopy->_brightnessControl;
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CABrightnessControl *)selfCopy->_brightnessControl forceCommitBrightness:brightnessCopy withBlock:blockCopy];
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v14 = selfCopy->_logHandle;
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

      v27 = [(CABrightnessControl *)selfCopy->_brightnessControl commitBrightness:brightnessCopy withBlock:blockCopy];
    }
  }

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

- (void)setBrightnessControlDisabled:(BOOL)disabled
{
  v9 = *MEMORY[0x1E69E9840];
  [(CABrightnessControl *)self->_brightnessControl setBrightnessControlDisabled:disabled];
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
    if (disabled)
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

- (void)setLowAmbientAdaptation:(float)adaptation
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = adaptation;
    [(CABrightnessControl *)self->_brightnessControl setLowAmbientAdaptation:v4];
  }
}

- (void)setHighAmbientAdaptation:(float)adaptation
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = adaptation;
    [(CABrightnessControl *)self->_brightnessControl setHighAmbientAdaptation:v4];
  }
}

- (void)setContrastPreservation:(float)preservation
{
  v4 = MEMORY[0x1E69E5918];
  v5 = NSSelectorFromString(&cfstr_Setcontrastpre.isa);
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    v4(self->_brightnessControl, v5, preservation);
  }
}

- (void)setIndicatorBrightness:(float)brightness
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = brightness;
    [(CABrightnessControl *)self->_brightnessControl setIndicatorBrightness:v4];
  }
}

- (void)setIndicatorBrightnessLimit:(float)limit
{
  brightnessControl = self->_brightnessControl;
  if (objc_opt_respondsToSelector())
  {
    *&v4 = limit;
    [(CABrightnessControl *)self->_brightnessControl setIndicatorBrightnessLimit:v4];
  }
}

@end