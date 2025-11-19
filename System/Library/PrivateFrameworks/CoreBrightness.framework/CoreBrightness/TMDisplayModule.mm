@interface TMDisplayModule
- (BOOL)brightnessControlProxySendSelector:(id)a3 value:(float)a4;
- (BOOL)commitBrightness;
- (BOOL)handleBrightnessControlProperty:(id)a3 forKey:(id)a4;
- (BOOL)rampRoutine:(id)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)setWhitePoint:(id)a3;
- (BOOL)updateDisplayBrightness:(float)a3 applyPolicy:(BOOL)a4;
- (TMDisplayModule)initWithBrightnessControl:(id)a3 andQueue:(id)a4;
- (id)copyPropertyForKey:(id)a3;
- (void)configureSkyLightTimeouts;
- (void)setupNextUpdate;
- (void)startRamp:(id)a3;
@end

@implementation TMDisplayModule

- (TMDisplayModule)initWithBrightnessControl:(id)a3 andQueue:(id)a4
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19.receiver = self;
  v19.super_class = TMDisplayModule;
  v23 = [(CBModule *)&v19 initWithQueue:a4];
  if (v23)
  {
    v4 = MEMORY[0x1E69E5928](v21);
    v23->_brightnessControlProxy = v4;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.CoreBrightness.TMDisplayModule", v5);
    v23->_updateQueue = v6;
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [v14 initWithFormat:@"%s.%s.%d", "com.apple.CoreBrightness", "TMDisplayModule", -[CBBrightnessProxy displayId](v23->_brightnessControlProxy, "displayId")];
    v7 = os_log_create([v18 cStringUsingEncoding:1], "default");
    v23->_logHandle = v7;
    *&v8 = MEMORY[0x1E69E5920](v18).n128_u64[0];
    if (!v23->_logHandle)
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v17 = inited;
      v16 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v17;
        type = v16;
        __os_log_helper_16_0_0(v15);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v15, 2u);
      }
    }

    [(TMDisplayModule *)v23 configureSkyLightTimeouts];
    LODWORD(v9) = 1124859904;
    [(TMDisplayModule *)v23 updateDisplayBrightness:1 applyPolicy:v9];
    v23->_currentUpdateIndex = 0;
  }

  return v23;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ([a4 isEqualToString:@"SequenceOfBrightnessUpdates"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TMDisplayModule *)self startRamp:a3];
      }
    }

    else if ([(TMDisplayModule *)self handleBrightnessControlProperty:a3 forKey:a4])
    {
      v11 = [(TMDisplayModule *)self commitBrightness];
      if (self->_logHandle)
      {
        logHandle = self->_logHandle;
      }

      else
      {
        v7 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v7;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_64_8_64_4_0(v16, a4, a3, v11);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set brightness control property [%@] = %@ (%d)", v16, 0x1Cu);
      }
    }

    if (self->_logHandle)
    {
      v6 = self->_logHandle;
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

      v6 = inited;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_64_8_64_4_0(v15, a4, a3, 0);
      _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_INFO, "key = %@ | property = %@ | result = %d", v15, 0x1Cu);
    }
  }

  else
  {
    if (self->_logHandle)
    {
      v10 = self->_logHandle;
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

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v17, 0);
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "Invalid property: %{public}@", v17, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (id)copyPropertyForKey:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if ([a3 isEqualToString:@"CBDisplayType"])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[CBBrightnessProxy displayType](self->_brightnessControlProxy, "displayType")}];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v9, a3, v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ result=%@", v9, 0x16u);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)handleBrightnessControlProperty:(id)a3 forKey:(id)a4
{
  v5 = 0;
  if (self->_brightnessControlProxy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a4 isEqualToString:@"TMSDRBrightness"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setSDRBrightness:?];
      }

      else if ([a4 isEqualToString:@"TMBrightnessLimit"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setBrightnessLimit:?];
      }

      else if ([a4 isEqualToString:@"TMHeadroom"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setHeadroom:?];
      }

      else if ([a4 isEqualToString:@"TMPotentialHeadroom"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setPotentialHeadroom:?];
      }

      else if ([a4 isEqualToString:@"TMReferenceHeadroom"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setReferenceHeadroom:?];
      }

      else if ([a4 isEqualToString:@"TMAdaptationScale"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setAdaptationScale:?];
      }

      else if ([a4 isEqualToString:@"TMAmbient"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setAmbient:?];
      }

      else if ([a4 isEqualToString:@"TMFilteredAmbient"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setFilteredAmbient:?];
      }

      else if ([a4 isEqualToString:@"TMContrastEnhancer"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setContrastEnhancer:?];
      }

      else if ([a4 isEqualToString:@"TMLowAmbientAdaptation"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setLowAmbientAdaptation:?];
      }

      else if ([a4 isEqualToString:@"TMHighAmbientAdaptation"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setHighAmbientAdaptation:?];
      }

      else if ([a4 isEqualToString:@"TMIndicatorBrightness"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setIndicatorBrightness:?];
      }

      else if ([a4 isEqualToString:@"TMIndicatorBrightnessLimit"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setIndicatorBrightnessLimit:?];
      }

      else if ([a4 isEqualToString:@"TMContrastPreservation"])
      {
        [a3 floatValue];
        return [(TMDisplayModule *)self setContrastPreservation:?];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([a4 isEqualToString:@"TMWhitePoint"])
      {
        return [(TMDisplayModule *)self setWhitePoint:a3];
      }
    }
  }

  return v5;
}

- (BOOL)setWhitePoint:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v7 = [(CBBrightnessProxy *)self->_brightnessControlProxy setWhitePoint:a3 rampDuration:&v6 error:0.0];
  if ((v7 & 1) == 0)
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

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v11, v6);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "failed to set whitepoint(%@)", v11, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)startRamp:(id)a3
{
  MEMORY[0x1E69E5920](self->_updateSequence);
  self->_updateSequence = [[BrightnessSequenceQueue alloc] initWithArrayOfUpdates:a3];
  self->_rampStart = CFAbsoluteTimeGetCurrent();
  [(TMDisplayModule *)self setupNextUpdate];
}

- (void)setupNextUpdate
{
  v20 = self;
  v19 = a2;
  v18 = [(BrightnessSequenceQueue *)self->_updateSequence nextUpdate];
  if (v18)
  {
    v17 = [(BrightnessSequenceQueue *)v20->_updateSequence absoluteTimestampForUpdate:v18];
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v20->_updateQueue);
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __34__TMDisplayModule_setupNextUpdate__block_invoke;
    v12 = &unk_1E867B750;
    v13 = v20;
    v14 = v18;
    v15 = v16;
    dispatch_source_set_event_handler(v16, &handler);
    v2 = MEMORY[0x1E69E9820];
    v3 = -1073741824;
    v4 = 0;
    v5 = __34__TMDisplayModule_setupNextUpdate__block_invoke_2;
    v6 = &unk_1E867B480;
    v7 = v16;
    dispatch_source_set_cancel_handler(v16, &v2);
    dispatch_activate(v16);
  }
}

void __34__TMDisplayModule_setupNextUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) rampRoutine:*(a1 + 40)];
  if (([*(*(a1 + 32) + 80) isDone] & 1) == 0)
  {
    [*(a1 + 32) setupNextUpdate];
  }

  dispatch_source_cancel(*(a1 + 48));
}

- (BOOL)commitBrightness
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = self;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v6 = [(CBBrightnessProxy *)self->_brightnessControlProxy commitBrightness:&v5];
  if ((v6 & 1) == 0 || v5)
  {
    if (v8->_logHandle)
    {
      logHandle = v8->_logHandle;
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
      __os_log_helper_16_2_1_8_64(v9, v5);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "failed to commit brightness update (%@)", v9, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](v5);
  *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)rampRoutine:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
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
    __os_log_helper_16_2_2_8_0_8_64(v9, COERCE__INT64(Current - self->_rampStart), a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "current timeoffset: %f : %@", v9, 0x16u);
  }

  if ([a3 sdr])
  {
    [objc_msgSend(a3 "sdr")];
    [(TMDisplayModule *)self setSDRBrightness:?];
  }

  if ([a3 headroom])
  {
    [objc_msgSend(a3 "headroom")];
    [(TMDisplayModule *)self setHeadroom:?];
  }

  if ([a3 limit])
  {
    [objc_msgSend(a3 "limit")];
    [(TMDisplayModule *)self setBrightnessLimit:?];
  }

  if ([a3 potentialHeadroom])
  {
    [objc_msgSend(a3 "potentialHeadroom")];
    [(TMDisplayModule *)self setPotentialHeadroom:?];
  }

  if ([a3 referenceHeadroom])
  {
    [objc_msgSend(a3 "referenceHeadroom")];
    [(TMDisplayModule *)self setReferenceHeadroom:?];
  }

  if ([a3 adaptationScale])
  {
    [objc_msgSend(a3 "adaptationScale")];
    [(TMDisplayModule *)self setAdaptationScale:?];
  }

  if ([a3 ambient])
  {
    [objc_msgSend(a3 "ambient")];
    [(TMDisplayModule *)self setAmbient:?];
  }

  if ([a3 filteredAmbient])
  {
    [objc_msgSend(a3 "filteredAmbient")];
    [(TMDisplayModule *)self setFilteredAmbient:?];
  }

  if ([a3 contrastEnhancer])
  {
    [objc_msgSend(a3 "contrastEnhancer")];
    [(TMDisplayModule *)self setContrastEnhancer:?];
  }

  if ([a3 lowAmbientAdaptation])
  {
    [objc_msgSend(a3 "lowAmbientAdaptation")];
    [(TMDisplayModule *)self setLowAmbientAdaptation:?];
  }

  if ([a3 highAmbientAdaptation])
  {
    [objc_msgSend(a3 "highAmbientAdaptation")];
    [(TMDisplayModule *)self setHighAmbientAdaptation:?];
  }

  if ([a3 indicatorBrightness])
  {
    [objc_msgSend(a3 "indicatorBrightness")];
    [(TMDisplayModule *)self setIndicatorBrightness:?];
  }

  if ([a3 indicatorBrightnessLimit])
  {
    [objc_msgSend(a3 "indicatorBrightnessLimit")];
    [(TMDisplayModule *)self setIndicatorBrightnessLimit:?];
  }

  if ([a3 whitePoint])
  {
    -[TMDisplayModule setWhitePoint:](self, "setWhitePoint:", [a3 whitePoint]);
  }

  [(TMDisplayModule *)self commitBrightness];
  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)brightnessControlProxySendSelector:(id)a3 value:(float)a4
{
  v8 = MEMORY[0x1E69E5918];
  v15 = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(a3);
  brightnessControlProxy = self->_brightnessControlProxy;
  if (objc_opt_respondsToSelector())
  {
    v8(self->_brightnessControlProxy, v9, a4);
    v10 = 1;
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
      __os_log_helper_16_2_1_8_64(v14, a3);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Brightness control does not respond to %@", v14, 0xCu);
    }

    v10 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)updateDisplayBrightness:(float)a3 applyPolicy:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_brightnessControlProxy && ([(CBBrightnessProxy *)self->_brightnessControlProxy brightnessAvailable]& 1) != 0)
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
      __os_log_helper_16_0_2_8_0_4_0(v14, COERCE__INT64(a3), a4);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting %f Nits (applyPolicy=%d)", v14, 0x12u);
    }

    *&v4 = a3;
    [(CBBrightnessProxy *)self->_brightnessControlProxy setSDRBrightness:v4];
    if (a4)
    {
      [(CBBrightnessProxy *)self->_brightnessControlProxy setApplyPolicy];
    }

    [(TMDisplayModule *)self commitBrightness];
  }

  else
  {
    if (self->_logHandle)
    {
      v7 = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v6 = init_default_corebrightness_log();
      }

      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_2_8_0_4_0(v13, COERCE__INT64(a3), [(CBBrightnessProxy *)self->_brightnessControlProxy brightnessAvailable]);
      _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "Setting %f Nits failed. Brightness available = %d", v13, 0x12u);
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)configureSkyLightTimeouts
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = self;
  v13 = a2;
  if (([(CBBrightnessProxy *)self->_brightnessControlProxy conformsToProtocol:&unk_1F59DEAF0]& 1) != 0)
  {
    brightnessControlProxy = v14->_brightnessControlProxy;
    [(CBBrightnessProxy *)brightnessControlProxy setShieldingTimeout:?];
    [(CBBrightnessProxy *)brightnessControlProxy setDimMessagingTimeout:2.0];
    [(CBBrightnessProxy *)brightnessControlProxy setSleepMessagingTimeout:2.0];
    v11 = 0;
    if (([(CBBrightnessProxy *)brightnessControlProxy commitBrightnessTimeouts:&v11]& 1) != 0)
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

      v10 = logHandle;
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = v10;
        type = v9;
        __os_log_helper_16_0_0(v8);
        _os_log_impl(&dword_1DE8E5000, log, type, "configured SkyLight display state transition timeouts", v8, 2u);
      }
    }

    else
    {
      if (v14->_logHandle)
      {
        v3 = v14->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v2 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v2 = init_default_corebrightness_log();
        }

        v3 = v2;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v15, v11);
        _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "error: failed to configure SkyLight display state transition timeouts (%@)", v15, 0xCu);
      }
    }

    MEMORY[0x1E69E5920](v11);
  }

  *MEMORY[0x1E69E9840];
}

@end