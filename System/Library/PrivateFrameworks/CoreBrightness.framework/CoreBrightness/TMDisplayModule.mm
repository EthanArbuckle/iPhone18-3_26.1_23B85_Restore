@interface TMDisplayModule
- (BOOL)brightnessControlProxySendSelector:(id)selector value:(float)value;
- (BOOL)commitBrightness;
- (BOOL)handleBrightnessControlProperty:(id)property forKey:(id)key;
- (BOOL)rampRoutine:(id)routine;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)setWhitePoint:(id)point;
- (BOOL)updateDisplayBrightness:(float)brightness applyPolicy:(BOOL)policy;
- (TMDisplayModule)initWithBrightnessControl:(id)control andQueue:(id)queue;
- (id)copyPropertyForKey:(id)key;
- (void)configureSkyLightTimeouts;
- (void)setupNextUpdate;
- (void)startRamp:(id)ramp;
@end

@implementation TMDisplayModule

- (TMDisplayModule)initWithBrightnessControl:(id)control andQueue:(id)queue
{
  selfCopy = self;
  v22 = a2;
  controlCopy = control;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = TMDisplayModule;
  selfCopy = [(CBModule *)&v19 initWithQueue:queue];
  if (selfCopy)
  {
    v4 = MEMORY[0x1E69E5928](controlCopy);
    selfCopy->_brightnessControlProxy = v4;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.CoreBrightness.TMDisplayModule", v5);
    selfCopy->_updateQueue = v6;
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [v14 initWithFormat:@"%s.%s.%d", "com.apple.CoreBrightness", "TMDisplayModule", -[CBBrightnessProxy displayId](selfCopy->_brightnessControlProxy, "displayId")];
    v7 = os_log_create([v18 cStringUsingEncoding:1], "default");
    selfCopy->_logHandle = v7;
    *&v8 = MEMORY[0x1E69E5920](v18).n128_u64[0];
    if (!selfCopy->_logHandle)
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

    [(TMDisplayModule *)selfCopy configureSkyLightTimeouts];
    LODWORD(v9) = 1124859904;
    [(TMDisplayModule *)selfCopy updateDisplayBrightness:1 applyPolicy:v9];
    selfCopy->_currentUpdateIndex = 0;
  }

  return selfCopy;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  if (property)
  {
    if ([key isEqualToString:@"SequenceOfBrightnessUpdates"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TMDisplayModule *)self startRamp:property];
      }
    }

    else if ([(TMDisplayModule *)self handleBrightnessControlProperty:property forKey:key])
    {
      commitBrightness = [(TMDisplayModule *)self commitBrightness];
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
        __os_log_helper_16_2_3_8_64_8_64_4_0(v16, key, property, commitBrightness);
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
      __os_log_helper_16_2_3_8_64_8_64_4_0(v15, key, property, 0);
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

- (id)copyPropertyForKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if ([key isEqualToString:@"CBDisplayType"])
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
    __os_log_helper_16_2_2_8_64_8_64(v9, key, v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ result=%@", v9, 0x16u);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)handleBrightnessControlProperty:(id)property forKey:(id)key
{
  v5 = 0;
  if (self->_brightnessControlProxy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([key isEqualToString:@"TMSDRBrightness"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setSDRBrightness:?];
      }

      else if ([key isEqualToString:@"TMBrightnessLimit"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setBrightnessLimit:?];
      }

      else if ([key isEqualToString:@"TMHeadroom"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setHeadroom:?];
      }

      else if ([key isEqualToString:@"TMPotentialHeadroom"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setPotentialHeadroom:?];
      }

      else if ([key isEqualToString:@"TMReferenceHeadroom"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setReferenceHeadroom:?];
      }

      else if ([key isEqualToString:@"TMAdaptationScale"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setAdaptationScale:?];
      }

      else if ([key isEqualToString:@"TMAmbient"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setAmbient:?];
      }

      else if ([key isEqualToString:@"TMFilteredAmbient"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setFilteredAmbient:?];
      }

      else if ([key isEqualToString:@"TMContrastEnhancer"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setContrastEnhancer:?];
      }

      else if ([key isEqualToString:@"TMLowAmbientAdaptation"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setLowAmbientAdaptation:?];
      }

      else if ([key isEqualToString:@"TMHighAmbientAdaptation"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setHighAmbientAdaptation:?];
      }

      else if ([key isEqualToString:@"TMIndicatorBrightness"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setIndicatorBrightness:?];
      }

      else if ([key isEqualToString:@"TMIndicatorBrightnessLimit"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setIndicatorBrightnessLimit:?];
      }

      else if ([key isEqualToString:@"TMContrastPreservation"])
      {
        [property floatValue];
        return [(TMDisplayModule *)self setContrastPreservation:?];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([key isEqualToString:@"TMWhitePoint"])
      {
        return [(TMDisplayModule *)self setWhitePoint:property];
      }
    }
  }

  return v5;
}

- (BOOL)setWhitePoint:(id)point
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v9 = a2;
  pointCopy = point;
  v7 = 0;
  v6 = 0;
  v7 = [(CBBrightnessProxy *)self->_brightnessControlProxy setWhitePoint:point rampDuration:&v6 error:0.0];
  if ((v7 & 1) == 0)
  {
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

- (void)startRamp:(id)ramp
{
  MEMORY[0x1E69E5920](self->_updateSequence);
  self->_updateSequence = [[BrightnessSequenceQueue alloc] initWithArrayOfUpdates:ramp];
  self->_rampStart = CFAbsoluteTimeGetCurrent();
  [(TMDisplayModule *)self setupNextUpdate];
}

- (void)setupNextUpdate
{
  selfCopy = self;
  v19 = a2;
  nextUpdate = [(BrightnessSequenceQueue *)self->_updateSequence nextUpdate];
  if (nextUpdate)
  {
    v17 = [(BrightnessSequenceQueue *)selfCopy->_updateSequence absoluteTimestampForUpdate:nextUpdate];
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_updateQueue);
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __34__TMDisplayModule_setupNextUpdate__block_invoke;
    v12 = &unk_1E867B750;
    v13 = selfCopy;
    v14 = nextUpdate;
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
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  v5 = 0;
  v6 = [(CBBrightnessProxy *)self->_brightnessControlProxy commitBrightness:&v5];
  if ((v6 & 1) == 0 || v5)
  {
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

- (BOOL)rampRoutine:(id)routine
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
    __os_log_helper_16_2_2_8_0_8_64(v9, COERCE__INT64(Current - self->_rampStart), routine);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "current timeoffset: %f : %@", v9, 0x16u);
  }

  if ([routine sdr])
  {
    [objc_msgSend(routine "sdr")];
    [(TMDisplayModule *)self setSDRBrightness:?];
  }

  if ([routine headroom])
  {
    [objc_msgSend(routine "headroom")];
    [(TMDisplayModule *)self setHeadroom:?];
  }

  if ([routine limit])
  {
    [objc_msgSend(routine "limit")];
    [(TMDisplayModule *)self setBrightnessLimit:?];
  }

  if ([routine potentialHeadroom])
  {
    [objc_msgSend(routine "potentialHeadroom")];
    [(TMDisplayModule *)self setPotentialHeadroom:?];
  }

  if ([routine referenceHeadroom])
  {
    [objc_msgSend(routine "referenceHeadroom")];
    [(TMDisplayModule *)self setReferenceHeadroom:?];
  }

  if ([routine adaptationScale])
  {
    [objc_msgSend(routine "adaptationScale")];
    [(TMDisplayModule *)self setAdaptationScale:?];
  }

  if ([routine ambient])
  {
    [objc_msgSend(routine "ambient")];
    [(TMDisplayModule *)self setAmbient:?];
  }

  if ([routine filteredAmbient])
  {
    [objc_msgSend(routine "filteredAmbient")];
    [(TMDisplayModule *)self setFilteredAmbient:?];
  }

  if ([routine contrastEnhancer])
  {
    [objc_msgSend(routine "contrastEnhancer")];
    [(TMDisplayModule *)self setContrastEnhancer:?];
  }

  if ([routine lowAmbientAdaptation])
  {
    [objc_msgSend(routine "lowAmbientAdaptation")];
    [(TMDisplayModule *)self setLowAmbientAdaptation:?];
  }

  if ([routine highAmbientAdaptation])
  {
    [objc_msgSend(routine "highAmbientAdaptation")];
    [(TMDisplayModule *)self setHighAmbientAdaptation:?];
  }

  if ([routine indicatorBrightness])
  {
    [objc_msgSend(routine "indicatorBrightness")];
    [(TMDisplayModule *)self setIndicatorBrightness:?];
  }

  if ([routine indicatorBrightnessLimit])
  {
    [objc_msgSend(routine "indicatorBrightnessLimit")];
    [(TMDisplayModule *)self setIndicatorBrightnessLimit:?];
  }

  if ([routine whitePoint])
  {
    -[TMDisplayModule setWhitePoint:](self, "setWhitePoint:", [routine whitePoint]);
  }

  [(TMDisplayModule *)self commitBrightness];
  *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)brightnessControlProxySendSelector:(id)selector value:(float)value
{
  v8 = MEMORY[0x1E69E5918];
  v15 = *MEMORY[0x1E69E9840];
  v9 = NSSelectorFromString(selector);
  brightnessControlProxy = self->_brightnessControlProxy;
  if (objc_opt_respondsToSelector())
  {
    v8(self->_brightnessControlProxy, v9, value);
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
      __os_log_helper_16_2_1_8_64(v14, selector);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "Brightness control does not respond to %@", v14, 0xCu);
    }

    v10 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (BOOL)updateDisplayBrightness:(float)brightness applyPolicy:(BOOL)policy
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
      __os_log_helper_16_0_2_8_0_4_0(v14, COERCE__INT64(brightness), policy);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Setting %f Nits (applyPolicy=%d)", v14, 0x12u);
    }

    *&v4 = brightness;
    [(CBBrightnessProxy *)self->_brightnessControlProxy setSDRBrightness:v4];
    if (policy)
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
      __os_log_helper_16_0_2_8_0_4_0(v13, COERCE__INT64(brightness), [(CBBrightnessProxy *)self->_brightnessControlProxy brightnessAvailable]);
      _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "Setting %f Nits failed. Brightness available = %d", v13, 0x12u);
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)configureSkyLightTimeouts
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v13 = a2;
  if (([(CBBrightnessProxy *)self->_brightnessControlProxy conformsToProtocol:&unk_1F59DEAF0]& 1) != 0)
  {
    brightnessControlProxy = selfCopy->_brightnessControlProxy;
    [(CBBrightnessProxy *)brightnessControlProxy setShieldingTimeout:?];
    [(CBBrightnessProxy *)brightnessControlProxy setDimMessagingTimeout:2.0];
    [(CBBrightnessProxy *)brightnessControlProxy setSleepMessagingTimeout:2.0];
    v11 = 0;
    if (([(CBBrightnessProxy *)brightnessControlProxy commitBrightnessTimeouts:&v11]& 1) != 0)
    {
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
      if (selfCopy->_logHandle)
      {
        v3 = selfCopy->_logHandle;
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