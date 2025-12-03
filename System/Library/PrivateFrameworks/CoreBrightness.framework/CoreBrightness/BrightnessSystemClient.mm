@interface BrightnessSystemClient
- (BOOL)isAlsSupported;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)setProperty:(id)property withKey:(id)key andDisplay:(unint64_t)display;
- (BOOL)setProperty:(id)property withKey:(id)key keyboardID:(unint64_t)d;
- (BrightnessSystemClient)init;
- (id)copyPropertyForKey:(id)key andDisplay:(unint64_t)display;
- (id)copyPropertyForKey:(id)key keyboardID:(unint64_t)d;
- (void)dealloc;
- (void)registerDisplayNotificationCallbackBlock:(id)block;
- (void)registerKeyboardNotificationCallbackBlock:(id)block;
- (void)registerNotificationBlock:(id)block;
- (void)registerNotificationBlock:(id)block forProperties:(id)properties;
- (void)registerNotificationForKey:(id)key;
- (void)registerNotificationForKey:(id)key andDisplay:(unint64_t)display;
- (void)registerNotificationForKeys:(id)keys;
- (void)registerNotificationForKeys:(id)keys andDisplay:(unint64_t)display;
- (void)registerNotificationForKeys:(id)keys keyboardID:(unint64_t)d;
- (void)unregisterDisplayNotificationBlock;
- (void)unregisterKeyboardNotificationBlock;
- (void)unregisterNotificationForKey:(id)key;
- (void)unregisterNotificationForKey:(id)key andDisplay:(unint64_t)display;
- (void)unregisterNotificationForKeys:(id)keys;
- (void)unregisterNotificationForKeys:(id)keys andDisplay:(unint64_t)display;
- (void)unregisterNotificationForKeys:(id)keys keyboardID:(unint64_t)d;
- (void)unregisterPropertyNotificationBlock;
@end

@implementation BrightnessSystemClient

- (BrightnessSystemClient)init
{
  selfCopy = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = BrightnessSystemClient;
  selfCopy = [(BrightnessSystemClient *)&v22 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  selfCopy->_logHandle = os_log_create("com.apple.CoreBrightness.Client", "Default");
  if (!selfCopy->_logHandle)
  {
    v9 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v21 = v9;
    v20 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v19, 2u);
    }
  }

  selfCopy->bsci = objc_alloc_init(BrightnessSystemClientInternal);
  if (selfCopy->bsci)
  {
    v10[0] = 0;
    v10[1] = v10;
    v11 = 1375731712;
    v12 = 48;
    v13 = __Block_byref_object_copy__5;
    v14 = __Block_byref_object_dispose__5;
    v15 = selfCopy;
    [(BrightnessSystemClientInternal *)selfCopy->bsci registerNotificationBlock:?];
    _Block_object_dispose(v10, 8);
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

  v18 = logHandle;
  v17 = 16;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = v18;
    v4 = v17;
    __os_log_helper_16_0_0(v16);
    _os_log_error_impl(&dword_1DE8E5000, v3, v4, "failed to create XPC client", v16, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  return 0;
}

- (BOOL)isAlsSupported
{
  v3 = 0;
  cf1 = [(BrightnessSystemClientInternal *)self->bsci copyPropertyForKey:@"BLControlAlsSupported"];
  if (cf1)
  {
    v3 = CFEqual(cf1, *MEMORY[0x1E695E4D0]) != 0;
    CFRelease(cf1);
  }

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v11 = a2;
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

  v10 = logHandle;
  v9 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "BSC dealloc", v8, 2u);
  }

  [(BrightnessSystemClient *)selfCopy unregisterDisplayNotificationBlock];
  [(BrightnessSystemClient *)selfCopy unregisterKeyboardNotificationBlock];
  [(BrightnessSystemClient *)selfCopy unregisterPropertyNotificationBlock];
  [(BrightnessSystemClientInternal *)selfCopy->bsci registerNotificationBlock:0];
  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  [(BrightnessSystemClientInternal *)selfCopy->bsci stopXpcService];
  *&v2 = MEMORY[0x1E69E5920](selfCopy->bsci).n128_u64[0];
  v7.receiver = selfCopy;
  v7.super_class = BrightnessSystemClient;
  [(BrightnessSystemClient *)&v7 dealloc];
}

- (void)unregisterDisplayNotificationBlock
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  if (selfCopy->_displayNotificationBlock)
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

    v9 = logHandle;
    v8 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v7, 2u);
    }

    _Block_release(selfCopy->_displayNotificationBlock);
    selfCopy->_displayNotificationBlock = 0;
  }

  objc_sync_exit(self);
}

- (void)unregisterKeyboardNotificationBlock
{
  objc_sync_enter(self);
  if (self->_keyboardNotificationBlock)
  {
    _Block_release(self->_keyboardNotificationBlock);
    self->_keyboardNotificationBlock = 0;
  }

  objc_sync_exit(self);
}

- (void)unregisterPropertyNotificationBlock
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  if (selfCopy->_propertyNotificationBlock)
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

    v9 = logHandle;
    v8 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v7, 2u);
    }

    _Block_release(selfCopy->_propertyNotificationBlock);
    selfCopy->_propertyNotificationBlock = 0;
  }

  objc_sync_exit(self);
}

void __30__BrightnessSystemClient_init__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(*(*(a1 + 32) + 8) + 40) + 16))
  {
    v8 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
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

    v8 = inited;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v16, a2, a3);
    _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_INFO, "key=%@ value=%@", v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a2 getKeyString];
    v11 = [a2 getKeyDisplayID];
    v10 = [a2 getKeyKeyboardID];
    if (v12)
    {
      obj = *(*(*(a1 + 32) + 8) + 40);
      objc_sync_enter(obj);
      if (v11)
      {
        if (*(*(*(*(a1 + 32) + 8) + 40) + 24))
        {
          (*(*(*(*(*(a1 + 32) + 8) + 40) + 24) + 16))();
        }
      }

      else if (v10 && *(*(*(*(a1 + 32) + 8) + 40) + 32))
      {
        (*(*(*(*(*(a1 + 32) + 8) + 40) + 32) + 16))();
      }

      objc_sync_exit(obj);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(*(*(a1 + 32) + 8) + 40);
      objc_sync_enter(v5);
      if (*(*(*(*(a1 + 32) + 8) + 40) + 40))
      {
        (*(*(*(*(*(a1 + 32) + 8) + 40) + 40) + 16))();
      }

      objc_sync_exit(v5);
    }

    else
    {
      if (*(*(*(*(a1 + 32) + 8) + 40) + 16))
      {
        v4 = *(*(*(*(a1 + 32) + 8) + 40) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v15, a2);
        _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "unknown or invaid key (%@)", v15, 0xCu);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = [(BrightnessSystemClientInternal *)self->bsci setProperty:property forKey:key];
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

    __os_log_helper_16_2_3_8_64_8_64_8_34(v12, key, property, v4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%{public}s)", v12, 0x20u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setProperty:(id)property withKey:(id)key andDisplay:(unint64_t)display
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key andDisplay:display];
  if (v9)
  {
    v10 = [(BrightnessSystemClientInternal *)self->bsci setProperty:property forKey:v9];
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
      if (v10)
      {
        v5 = "success";
      }

      else
      {
        v5 = "failed";
      }

      __os_log_helper_16_2_3_8_64_8_64_8_34(v13, v9, property, v5);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%{public}s)", v13, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyPropertyForKey:(id)key andDisplay:(unint64_t)display
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key andDisplay:display];
  if (v7)
  {
    v8 = [(BrightnessSystemClientInternal *)self->bsci copyPropertyForKey:v7];
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
      __os_log_helper_16_2_3_8_64_8_0_8_64(v12, key, display, v8);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ display=%lu property=%@", v12, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)registerDisplayNotificationCallbackBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_8_0(v7, block);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterDisplayNotificationBlock];
  objc_sync_enter(self);
  if (block)
  {
    self->_displayNotificationBlock = _Block_copy(block);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_8_0(v7, block);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterPropertyNotificationBlock];
  objc_sync_enter(self);
  if (block)
  {
    self->_propertyNotificationBlock = _Block_copy(block);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)block forProperties:(id)properties
{
  v10 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_1_8_64(v9, properties);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v9, 0xCu);
  }

  [(BrightnessSystemClientInternal *)self->bsci registerNotificationBlock:block forProperties:properties];
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_1_8_64(v7, key);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@", v7, 0xCu);
  }

  if (key)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertyForNotification:key];
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_1_8_64(v7, key);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@", v7, 0xCu);
  }

  if (key)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertyFromNotification:key];
  }

  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)keys
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_1_8_64(v7, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v7, 0xCu);
  }

  if (keys)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertiesForNotification:keys];
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKeys:(id)keys
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_1_8_64(v7, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v7, 0xCu);
  }

  if (keys)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertiesFromNotification:keys];
  }

  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)keys andDisplay:(unint64_t)display
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, display, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keys, "count")}];
  if (v6)
  {
    [keys enumerateObjectsUsingBlock:?];
    [(BrightnessSystemClientInternal *)self->bsci addPropertiesForNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

double __65__BrightnessSystemClient_registerNotificationForKeys_andDisplay___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a2 andDisplay:*(a1 + 40)];
    [*(a1 + 32) addObject:v4];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

- (void)unregisterNotificationForKeys:(id)keys andDisplay:(unint64_t)display
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, display, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keys, "count")}];
  if (v6)
  {
    [keys enumerateObjectsUsingBlock:?];
    [(BrightnessSystemClientInternal *)self->bsci removePropertiesFromNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

double __67__BrightnessSystemClient_unregisterNotificationForKeys_andDisplay___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a2 andDisplay:*(a1 + 40)];
    [*(a1 + 32) addObject:v4];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

- (void)registerNotificationForKey:(id)key andDisplay:(unint64_t)display
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, display, key);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu key=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key andDisplay:display];
  if (v6)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertyForNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKey:(id)key andDisplay:(unint64_t)display
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, display, key);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key andDisplay:display];
  if (v6)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertyFromNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property withKey:(id)key keyboardID:(unint64_t)d
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key keyboardID:d];
  if (v9)
  {
    v10 = [(BrightnessSystemClientInternal *)self->bsci setProperty:property forKey:v9];
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
      if (v10)
      {
        v5 = "success";
      }

      else
      {
        v5 = "failed";
      }

      __os_log_helper_16_2_3_8_64_8_64_8_32(v13, v9, property, v5);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%s)", v13, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyPropertyForKey:(id)key keyboardID:(unint64_t)d
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:key keyboardID:d];
  if (v7)
  {
    v8 = [(BrightnessSystemClientInternal *)self->bsci copyPropertyForKey:v7];
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
      __os_log_helper_16_2_3_8_64_8_0_8_64(v12, key, d, v8);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ keyboardID=%lu property=%@", v12, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)registerKeyboardNotificationCallbackBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_1_8_0(v7, block);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterKeyboardNotificationBlock];
  objc_sync_enter(self);
  if (block)
  {
    self->_keyboardNotificationBlock = _Block_copy(block);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)keys keyboardID:(unint64_t)d
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, d, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboardID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keys, "count")}];
  if (v6)
  {
    [keys enumerateObjectsUsingBlock:?];
    [(BrightnessSystemClientInternal *)self->bsci addPropertiesForNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

double __65__BrightnessSystemClient_registerNotificationForKeys_keyboardID___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a2 keyboardID:*(a1 + 40)];
    [*(a1 + 32) addObject:v4];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

- (void)unregisterNotificationForKeys:(id)keys keyboardID:(unint64_t)d
{
  v11 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_0_8_64(v10, d, keys);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboardID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(keys, "count")}];
  if (v6)
  {
    [keys enumerateObjectsUsingBlock:?];
    [(BrightnessSystemClientInternal *)self->bsci removePropertiesFromNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

double __67__BrightnessSystemClient_unregisterNotificationForKeys_keyboardID___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a2 keyboardID:*(a1 + 40)];
    [*(a1 + 32) addObject:v4];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

@end