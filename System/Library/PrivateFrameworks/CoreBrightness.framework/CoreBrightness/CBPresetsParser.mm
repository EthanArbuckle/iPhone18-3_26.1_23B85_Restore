@interface CBPresetsParser
+ (id)sharedInstance;
- (BOOL)autoBrightnessDisabledForDisplay:(unint64_t)display;
- (BOOL)brightnessDisabledForDisplay:(unint64_t)display;
- (BOOL)nightShiftDisabled;
- (BOOL)referenceMode:(unint64_t)mode;
- (BOOL)trueToneDisabled;
- (CBPresetsParser)init;
- (float)maxSDRLuminanceForDisplay:(unint64_t)display;
- (void)dealloc;
- (void)refreshPresetState;
- (void)setDisplayList:(id)list;
@end

@implementation CBPresetsParser

+ (id)sharedInstance
{
  objc_sync_enter(self);
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, &__block_literal_global_2);
  }

  v3 = sharedInstance__sharedObject_0;
  objc_sync_exit(self);
  return v3;
}

CBPresetsParser *__33__CBPresetsParser_sharedInstance__block_invoke()
{
  result = objc_alloc_init(CBPresetsParser);
  sharedInstance__sharedObject_0 = result;
  return result;
}

- (CBPresetsParser)init
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CBPresetsParser;
  selfCopy = [(CBPresetsParser *)&v5 init];
  if (selfCopy)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_displayPresets = v2;
    v3 = os_log_create("com.apple.CoreBrightness.CBPresetsParser", "default");
    selfCopy->_logHandle = v3;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_displayList);
  v2 = MEMORY[0x1E69E5920](selfCopy->_displayPresets).n128_u64[0];
  if (selfCopy->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
    selfCopy->_logHandle = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBPresetsParser;
  [(CBPresetsParser *)&v3 dealloc];
}

- (void)setDisplayList:(id)list
{
  objc_sync_enter(self);
  self->_displayList = [list copy];
  [(CBPresetsParser *)self refreshPresetState];
  objc_sync_exit(self);
}

- (void)refreshPresetState
{
  selfCopy = self;
  v11 = a2;
  objc_sync_enter(self);
  context = objc_autoreleasePoolPush();
  [(NSMutableDictionary *)selfCopy->_displayPresets removeAllObjects];
  displayList = selfCopy->_displayList;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __37__CBPresetsParser_refreshPresetState__block_invoke;
  v9 = &unk_1E867BA58;
  v10 = selfCopy;
  [(NSArray *)displayList enumerateObjectsUsingBlock:?];
  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
}

void __37__CBPresetsParser_refreshPresetState__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = +[CBPreset newActive:](CBPreset, "newActive:", [a2 unsignedIntValue]);
  if (v5)
  {
    [*(*(a1 + 32) + 16) setObject:v5 forKey:a2];
    if (*(*(a1 + 32) + 24))
    {
      v3 = *(*(a1 + 32) + 24);
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

      v3 = inited;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_64_8_64(v7, a2, v5);
      _os_log_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_INFO, "Presets: display %@ updated info: %@", v7, 0x16u);
    }

    MEMORY[0x1E69E5920](v5);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)trueToneDisabled
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v13 = a2;
  objc_sync_enter(self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 0;
  [(NSMutableDictionary *)selfCopy->_displayPresets enumerateKeysAndObjectsUsingBlock:?];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    if (v9[3])
    {
      v2 = "disable";
    }

    else
    {
      v2 = "enable";
    }

    __os_log_helper_16_2_1_8_32(v15, v2);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Presets: %s true tone", v15, 0xCu);
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __35__CBPresetsParser_trueToneDisabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = 1;
  v6 = 1;
  if ((v3 & 1) == 0)
  {
    result = [a3 trueToneDisabled];
    v6 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6 & 1;
  return result;
}

- (BOOL)nightShiftDisabled
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v13 = a2;
  objc_sync_enter(self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 0;
  [(NSMutableDictionary *)selfCopy->_displayPresets enumerateKeysAndObjectsUsingBlock:?];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    if (v9[3])
    {
      v2 = "disable";
    }

    else
    {
      v2 = "enable";
    }

    __os_log_helper_16_2_1_8_32(v15, v2);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Presets: %s night-shift", v15, 0xCu);
  }

  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __37__CBPresetsParser_nightShiftDisabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = 1;
  v6 = 1;
  if ((v3 & 1) == 0)
  {
    result = [a3 nightShiftDisabled];
    v6 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6 & 1;
  return result;
}

- (BOOL)autoBrightnessDisabledForDisplay:(unint64_t)display
{
  selfCopy = self;
  v17 = a2;
  displayCopy = display;
  objc_sync_enter(self);
  autoBrighnessDisabled = 0;
  context = objc_autoreleasePoolPush();
  v14 = -[NSMutableDictionary objectForKey:](selfCopy->_displayPresets, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:displayCopy]);
  if (v14)
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

    v13 = logHandle;
    v12 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "Presets: disable auto-brightness updates", v11, 2u);
    }

    autoBrighnessDisabled = [v14 autoBrighnessDisabled];
  }

  objc_autoreleasePoolPop(context);
  v4 = autoBrighnessDisabled;
  objc_sync_exit(self);
  return v4 & 1;
}

- (float)maxSDRLuminanceForDisplay:(unint64_t)display
{
  v14 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v10 = 0.0;
  context = objc_autoreleasePoolPush();
  v9 = -[NSMutableDictionary objectForKey:](self->_displayPresets, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:display]);
  if (v9)
  {
    [v9 maxSDRLuminance];
    v10 = v3;
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
      __os_log_helper_16_0_2_8_0_8_0(v13, display, COERCE__INT64(v10));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Presets(%lu): Aurora in maxSDRLuminance: %f", v13, 0x16u);
    }
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)brightnessDisabledForDisplay:(unint64_t)display
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  brightnessDisabled = 0;
  context = objc_autoreleasePoolPush();
  v8 = -[NSMutableDictionary objectForKey:](self->_displayPresets, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:display]);
  if (v8)
  {
    brightnessDisabled = [v8 brightnessDisabled];
    if (brightnessDisabled)
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v12, display);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Presets(%lu): lock brightness updates", v12, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return brightnessDisabled & 1;
}

- (BOOL)referenceMode:(unint64_t)mode
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  context = objc_autoreleasePoolPush();
  referenceMode = 0;
  v8 = -[NSMutableDictionary objectForKey:](self->_displayPresets, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode]);
  if (v8)
  {
    referenceMode = [v8 referenceMode];
    if (referenceMode)
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

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_2_8_0_4_0(v12, mode, referenceMode & 1);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Presets(%lu): reference mode = %d", v12, 0x12u);
      }
    }
  }

  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return referenceMode & 1;
}

@end