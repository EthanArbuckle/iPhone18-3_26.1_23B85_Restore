@interface KeyboardBrightnessClient
- (BOOL)enableAutoBrightness:(BOOL)a3 forKeyboard:(unint64_t)a4;
- (BOOL)isAmbientFeatureAvailableOnKeyboard:(unint64_t)a3;
- (BOOL)isAutoBrightnessEnabledForKeyboard:(unint64_t)a3;
- (BOOL)isBacklightDimmedOnKeyboard:(unint64_t)a3;
- (BOOL)isBacklightSaturatedOnKeyboard:(unint64_t)a3;
- (BOOL)isBacklightSuppressedOnKeyboard:(unint64_t)a3;
- (BOOL)isIdleDimmingSuspendedOnKeyboard:(unint64_t)a3;
- (BOOL)isKeyboardBuiltIn:(unint64_t)a3;
- (BOOL)setBrightness:(float)a3 fadeSpeed:(int)a4 commit:(BOOL)a5 forKeyboard:(unint64_t)a6;
- (BOOL)setIdleDimTime:(double)a3 forKeyboard:(unint64_t)a4;
- (BOOL)suspendIdleDimming:(BOOL)a3 forKeyboard:(unint64_t)a4;
- (KeyboardBrightnessClient)init;
- (double)idleDimTimeForKeyboard:(unint64_t)a3;
- (float)backlightLevelForKeyboard:(unint64_t)a3;
- (float)brightnessForKeyboard:(unint64_t)a3;
- (id)copyKeyboardBacklightIDs;
- (void)dealloc;
@end

@implementation KeyboardBrightnessClient

- (KeyboardBrightnessClient)init
{
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = KeyboardBrightnessClient;
  v14 = [(KeyboardBrightnessClient *)&v12 init];
  if (!v14)
  {
    return v14;
  }

  v2 = os_log_create("com.apple.CoreBrightness.KeyboardBrightnessClient", "Default");
  v14->_logHandle = v2;
  v3 = objc_alloc_init(BrightnessSystemClient);
  v14->bsc = v3;
  if (v14->bsc)
  {
    return v14;
  }

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

  v11 = logHandle;
  v10 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create XPC client", v9, 2u);
  }

  MEMORY[0x1E69E5920](v14);
  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->bsc).n128_u64[0];
  v3.receiver = v5;
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

- (BOOL)isBacklightSuppressedOnKeyboard:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSuppressed" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)isBacklightSaturatedOnKeyboard:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSaturated" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)isBacklightDimmedOnKeyboard:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightIdleDimActive" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (float)brightnessForKeyboard:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightBrightness" keyboardID:a3];
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

- (float)backlightLevelForKeyboard:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightLevel" keyboardID:a3];
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

- (BOOL)setBrightness:(float)a3 fadeSpeed:(int)a4 commit:(BOOL)a5 forKeyboard:(unint64_t)a6
{
  v21[3] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v20[0] = @"Brightness";
  *&v6 = a3;
  v21[0] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v20[1] = @"FadeSpeed";
  v21[1] = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v20[2] = @"Commit";
  v21[2] = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v12 = [(BrightnessSystemClient *)self->bsc setProperty:v13 withKey:@"KeyboardBacklightBrightness" keyboardID:a6];
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

    __os_log_helper_16_2_6_8_64_8_64_8_0_4_0_4_0_8_32(v19, @"KeyboardBacklightBrightness", v13, a6, a4, a5, v7);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ forID = %lu fadeSpeed = %d commit = %d (%s)", v19, 0x36u);
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)enableAutoBrightness:(BOOL)a3 forKeyboard:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a3];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightABEnabled" keyboardID:a4];
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

- (BOOL)isAmbientFeatureAvailableOnKeyboard:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = 0;
  v13 = [(KeyboardBrightnessClient *)self copyKeyboardBacklightIDs];
  memset(__b, 0, sizeof(__b));
  obj = v13;
  v10 = [v13 countByEnumeratingWithState:__b objects:v18 count:16];
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
      if (v15 == 1)
      {
        v14 = 1;
        goto LABEL_11;
      }

      v3 = [v12 unsignedIntegerValue];
      if (v3 == v15)
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
  MEMORY[0x1E69E5920](v13);
  *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (BOOL)isKeyboardBuiltIn:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightBuiltIn" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (double)idleDimTimeForKeyboard:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = -1.0;
  v7 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightIdleDimTime" keyboardID:a3];
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

- (BOOL)setIdleDimTime:(double)a3 forKeyboard:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a3];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightIdleDimTime" keyboardID:a4];
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

- (BOOL)suspendIdleDimming:(BOOL)a3 forKeyboard:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a3];
  v8 = [(BrightnessSystemClient *)self->bsc setProperty:v9 withKey:@"KeyboardBacklightSuspendDimming" keyboardID:a4];
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

- (BOOL)isIdleDimmingSuspendedOnKeyboard:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightSuspendDimming" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)isAutoBrightnessEnabledForKeyboard:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = [(BrightnessSystemClient *)self->bsc copyPropertyForKey:@"KeyboardBacklightABEnabled" keyboardID:a3];
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
    v7 = [v6 BOOLValue];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

@end