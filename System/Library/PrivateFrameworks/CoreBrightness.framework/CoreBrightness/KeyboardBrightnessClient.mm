@interface KeyboardBrightnessClient
- (BOOL)enableAutoBrightness:(BOOL)brightness forKeyboard:(unint64_t)keyboard;
- (BOOL)isAmbientFeatureAvailableOnKeyboard:(unint64_t)keyboard;
- (BOOL)isAutoBrightnessEnabledForKeyboard:(unint64_t)keyboard;
- (BOOL)isBacklightDimmedOnKeyboard:(unint64_t)keyboard;
- (BOOL)isBacklightSaturatedOnKeyboard:(unint64_t)keyboard;
- (BOOL)isBacklightSuppressedOnKeyboard:(unint64_t)keyboard;
- (BOOL)isIdleDimmingSuspendedOnKeyboard:(unint64_t)keyboard;
- (BOOL)isKeyboardBuiltIn:(unint64_t)in;
- (BOOL)setBrightness:(float)brightness fadeSpeed:(int)speed commit:(BOOL)commit forKeyboard:(unint64_t)keyboard;
- (BOOL)setIdleDimTime:(double)time forKeyboard:(unint64_t)keyboard;
- (BOOL)suspendIdleDimming:(BOOL)dimming forKeyboard:(unint64_t)keyboard;
- (KeyboardBrightnessClient)init;
- (double)idleDimTimeForKeyboard:(unint64_t)keyboard;
- (float)backlightLevelForKeyboard:(unint64_t)keyboard;
- (float)brightnessForKeyboard:(unint64_t)keyboard;
- (id)copyKeyboardBacklightIDs;
- (void)dealloc;
@end

@implementation KeyboardBrightnessClient

- (KeyboardBrightnessClient)init
{
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = KeyboardBrightnessClient;
  selfCopy = [(KeyboardBrightnessClient *)&v12 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = os_log_create("com.apple.CoreBrightness.KeyboardBrightnessClient", "Default");
  selfCopy->_logHandle = v2;
  v3 = objc_alloc_init(BrightnessSystemClient);
  selfCopy->bsc = v3;
  if (selfCopy->bsc)
  {
    return selfCopy;
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

  v11 = logHandle;
  v10 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create XPC client", v9, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->bsc).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = KeyboardBrightnessClient;
  [(KeyboardBrightnessClient *)&v3 dealloc];
}

- (id)copyKeyboardBacklightIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightIDs"];
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
    __os_log_helper_16_2_1_8_64(v7, v5);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboardIDs=%@", v7, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isBacklightSuppressedOnKeyboard:(unint64_t)keyboard
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSuppressed" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "suppressed=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (BOOL)isBacklightSaturatedOnKeyboard:(unint64_t)keyboard
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSaturated" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "saturated=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (BOOL)isBacklightDimmedOnKeyboard:(unint64_t)keyboard
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightIdleDimActive" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "dimmed=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (float)brightnessForKeyboard:(unint64_t)keyboard
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightBrightness" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "brightness=%@", v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 floatValue];
    v8 = v3;
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (float)backlightLevelForKeyboard:(unint64_t)keyboard
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightLevel" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "backlight level=%@", v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 floatValue];
    v8 = v3;
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setBrightness:(float)brightness fadeSpeed:(int)speed commit:(BOOL)commit forKeyboard:(unint64_t)keyboard
{
  v21[3] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v20[0] = @"Brightness";
  *&v6 = brightness;
  v21[0] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v20[1] = @"FadeSpeed";
  v21[1] = [MEMORY[0x1E696AD98] numberWithInteger:speed];
  v20[2] = @"Commit";
  v21[2] = [MEMORY[0x1E696AD98] numberWithBool:commit];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v12 = [(BrightnessSystemClient *)self->bsc setProperty:v13 withKey:@"KeyboardBacklightBrightness" keyboardID:keyboard];
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
    if (v12)
    {
      v7 = "success";
    }

    else
    {
      v7 = "failed";
    }

    __os_log_helper_16_2_6_8_64_8_64_8_0_4_0_4_0_8_32(v19, @"KeyboardBacklightBrightness", v13, keyboard, speed, commit, v7);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ forID = %lu fadeSpeed = %d commit = %d (%s)", v19, 0x36u);
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)enableAutoBrightness:(BOOL)brightness forKeyboard:(unint64_t)keyboard
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:brightness];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightABEnabled" keyboardID:keyboard];
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
    if (v8)
    {
      v4 = "success";
    }

    else
    {
      v4 = "failed";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_32(v12, @"KeyboardBacklightABEnabled", v9, v4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%s)", v12, 0x20u);
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isAmbientFeatureAvailableOnKeyboard:(unint64_t)keyboard
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  keyboardCopy = keyboard;
  v14 = 0;
  copyKeyboardBacklightIDs = [(KeyboardBrightnessClient *)self copyKeyboardBacklightIDs];
  memset(__b, 0, sizeof(__b));
  obj = copyKeyboardBacklightIDs;
  v10 = [copyKeyboardBacklightIDs countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v12 = 0;
      v12 = *(__b[1] + 8 * v7);
      if (keyboardCopy == 1)
      {
        v14 = 1;
        goto LABEL_11;
      }

      unsignedIntegerValue = [v12 unsignedIntegerValue];
      if (unsignedIntegerValue == keyboardCopy)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    v14 = 1;
  }

LABEL_11:
  MEMORY[0x1E69E5920](copyKeyboardBacklightIDs);
  *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)isKeyboardBuiltIn:(unint64_t)in
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightBuiltIn" keyboardID:in];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "builtIn=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (double)idleDimTimeForKeyboard:(unint64_t)keyboard
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightIdleDimTime" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "dim time=%@", v10, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 floatValue];
    v8 = v3;
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setIdleDimTime:(double)time forKeyboard:(unint64_t)keyboard
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:time];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightIdleDimTime" keyboardID:keyboard];
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
    if (v8)
    {
      v4 = "success";
    }

    else
    {
      v4 = "failed";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_32(v12, @"KeyboardBacklightIdleDimTime", v9, v4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%s)", v12, 0x20u);
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)suspendIdleDimming:(BOOL)dimming forKeyboard:(unint64_t)keyboard
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:dimming];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightSuspendDimming" keyboardID:keyboard];
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
    if (v8)
    {
      v4 = "success";
    }

    else
    {
      v4 = "failed";
    }

    __os_log_helper_16_2_3_8_64_8_64_8_32(v12, @"KeyboardBacklightSuspendDimming", v9, v4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%s)", v12, 0x20u);
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isIdleDimmingSuspendedOnKeyboard:(unint64_t)keyboard
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSuspendDimming" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "dimming suspended=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

- (BOOL)isAutoBrightnessEnabledForKeyboard:(unint64_t)keyboard
{
  v10 = *MEMORY[0x1E69E9840];
  bOOLValue = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightABEnabled" keyboardID:keyboard];
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
    __os_log_helper_16_2_1_8_64(v9, v6);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "AB enabled=%@", v9, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

@end