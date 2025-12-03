@interface KeyboardBacklightHIDCurveNits
- (KeyboardBacklightHIDCurveNits)initWithQueue:(id)queue device:(id)device;
- (float)brightness;
- (float)convertNitsToLevelPercentage:(float)percentage;
- (float)level;
- (float)minCapableNits;
- (void)dealloc;
- (void)setBrightness:(float)brightness;
- (void)setBrightness:(float)brightness withFadeSpeed:(int)speed commit:(BOOL)commit;
@end

@implementation KeyboardBacklightHIDCurveNits

- (KeyboardBacklightHIDCurveNits)initWithQueue:(id)queue device:(id)device
{
  selfCopy = self;
  v8 = a2;
  queueCopy = queue;
  deviceCopy = device;
  v5.receiver = self;
  v5.super_class = KeyboardBacklightHIDCurveNits;
  return [(KeyboardBacklightHIDCurve *)&v5 initWithQueue:queue device:device];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = KeyboardBacklightHIDCurveNits;
  [(KeyboardBacklightHIDCurve *)&v2 dealloc];
}

- (float)level
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(KeyboardBacklight *)self suppressed]|| [(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelOff];
    v14 = v2;
  }

  else
  {
    [(KeyboardBacklight *)self levelMax];
    v12 = v3;
    [(KeyboardBacklight *)self levelPercentage];
    v13 = v12 * v4;
    [(KeyboardBacklight *)self levelMin];
    if (v13 >= v5)
    {
      v11 = v13;
    }

    else
    {
      v11 = v5;
    }

    [(KeyboardBacklight *)self levelMax];
    if (v11 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v11;
    }

    v14 = v10;
    if (self->super.super.super._logHandle)
    {
      logHandle = self->super.super.super._logHandle;
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
      __os_log_helper_16_0_1_8_0(v16, COERCE__INT64(v10));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "level = %f (Nits)", v16, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v14;
}

- (void)setBrightness:(float)brightness
{
  v33 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v29 = a2;
  brightnessCopy = brightness;
  if (self->super.super.super._logHandle)
  {
    logHandle = selfCopy->super.super.super._logHandle;
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

  v27 = logHandle;
  v26 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_4_0(v32, COERCE__INT64(brightnessCopy), [(KeyboardBacklight *)selfCopy manualAdjust]);
    _os_log_debug_impl(&dword_1DE8E5000, v27, v26, "requested brightness %f manualAdjust %d", v32, 0x12u);
  }

  if ([(KeyboardBacklight *)selfCopy manualAdjust])
  {
    v24 = 0.0;
    *&v3 = LODWORD(brightnessCopy);
    v23 = brightnessCopy;
    if (brightnessCopy <= 0.0)
    {
      v12 = v24;
    }

    else
    {
      v12 = v23;
    }

    v22 = v12;
    v25 = v12;
    v21 = 1.0;
    if (v12 >= 1.0)
    {
      v11 = v21;
    }

    else
    {
      v11 = v25;
    }

    v20 = v11;
    brightnessCopy = v11;
    *&v3 = v11;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v3];
    [(KeyboardBacklight *)selfCopy setSaturated:0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [(KeyboardBacklight *)selfCopy setMuted:v4 == 0.0];
    if ([(KeyboardBacklight *)selfCopy autoAdjust])
    {
      [(KeyboardBacklightHIDCurve *)selfCopy updateLuxToNitsCurve];
    }

    [(KeyboardBacklight *)selfCopy levelPercentage];
    [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithReason:1];
    if (selfCopy->super.super.super._logHandle)
    {
      v10 = selfCopy->super.super.super._logHandle;
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

    v19 = v10;
    v18 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v31, selfCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v19, v18, "%@", v31, 0xCu);
    }
  }

  else
  {
    if (selfCopy->super.super.super._logHandle)
    {
      v8 = selfCopy->super.super.super._logHandle;
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
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v17;
      v6 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, v5, v6, "Manual keyboard brightness adjustment not allowed", v15, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setBrightness:(float)brightness withFadeSpeed:(int)speed commit:(BOOL)commit
{
  v37 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v33 = a2;
  brightnessCopy = brightness;
  speedCopy = speed;
  commitCopy = commit;
  if (self->super.super.super._logHandle)
  {
    logHandle = selfCopy->super.super.super._logHandle;
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

  v29 = logHandle;
  v28 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_4_8_0_4_0_4_0_4_0(v36, COERCE__INT64(brightnessCopy), [(KeyboardBacklight *)selfCopy manualAdjust], speedCopy, commitCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v29, v28, "Requested keyboard brightness %f, manualAdjust %d, fade speed %d, commit %d", v36, 0x1Eu);
  }

  if ([(KeyboardBacklight *)selfCopy manualAdjust])
  {
    v26 = 0.0;
    *&v5 = LODWORD(brightnessCopy);
    v25 = brightnessCopy;
    if (brightnessCopy <= 0.0)
    {
      v14 = v26;
    }

    else
    {
      v14 = v25;
    }

    v24 = v14;
    v27 = v14;
    v23 = 1.0;
    if (v14 >= 1.0)
    {
      v13 = v23;
    }

    else
    {
      v13 = v27;
    }

    v22 = v13;
    brightnessCopy = v13;
    *&v5 = v13;
    [(KeyboardBacklight *)selfCopy setLevelPercentage:v5];
    [(KeyboardBacklight *)selfCopy setSaturated:0];
    [(KeyboardBacklight *)selfCopy levelPercentage];
    [(KeyboardBacklight *)selfCopy setMuted:v6 == 0.0];
    if (commitCopy)
    {
      if ([(KeyboardBacklight *)selfCopy autoAdjust])
      {
        [(KeyboardBacklightHIDCurve *)selfCopy updateLuxToNitsCurve];
      }

      [(KeyboardBacklight *)selfCopy levelPercentage];
      [CBKeyboardPreferencesManager setFloatPreference:@"KeyboardBacklightManualBrightness" forKey:?];
    }

    [(KeyboardBacklight *)selfCopy updateBacklightDeviceWithFadeSpeed:speedCopy commit:commitCopy reason:1];
    if (selfCopy->super.super.super._logHandle)
    {
      v12 = selfCopy->super.super.super._logHandle;
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

    v21 = v12;
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v35, selfCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v21, v20, "%@", v35, 0xCu);
    }
  }

  else
  {
    if (selfCopy->super.super.super._logHandle)
    {
      v10 = selfCopy->super.super.super._logHandle;
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
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_1DE8E5000, v7, v8, "Manual keyboard brightness adjustment not allowed", v17, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (float)convertNitsToLevelPercentage:(float)percentage
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0.0;
  [(KeyboardBacklight *)self levelMax];
  if (v3 != 0.0)
  {
    [(KeyboardBacklight *)self levelMax];
    v14 = percentage / v4;
  }

  [(KeyboardBacklightHIDCurveNits *)self maxLevelPercentage];
  if (v14 >= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v14;
  }

  if (v13 <= 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v13;
  }

  if (self->super.super.super._logHandle)
  {
    logHandle = self->super.super.super._logHandle;
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
    [(KeyboardBacklight *)self levelMax];
    *&v9 = v6;
    [(KeyboardBacklight *)self levelMin];
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v17, COERCE__INT64(percentage), COERCE__INT64(v12), v9, COERCE__INT64(v7));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "nits = %f -> level percentage = %f, max = %f, min = %f", v17, 0x2Au);
  }

  *MEMORY[0x1E69E9840];
  return v12;
}

- (float)brightness
{
  v4 = 0.0;
  if (![(KeyboardBacklight *)self suppressed]&& ![(KeyboardBacklight *)self saturated])
  {
    [(KeyboardBacklight *)self levelPercentage];
    return v2;
  }

  return v4;
}

- (float)minCapableNits
{
  [(KeyboardBacklight *)self levelMin];
  if (v2 <= 0.0)
  {
    return 0.01;
  }

  [(KeyboardBacklight *)self levelMin];
  return v3;
}

@end