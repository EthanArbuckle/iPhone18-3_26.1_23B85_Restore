@interface BrightnessSystemClient
- (BOOL)isAlsSupported;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)setProperty:(id)a3 withKey:(id)a4 andDisplay:(unint64_t)a5;
- (BOOL)setProperty:(id)a3 withKey:(id)a4 keyboardID:(unint64_t)a5;
- (BrightnessSystemClient)init;
- (id)copyPropertyForKey:(id)a3 andDisplay:(unint64_t)a4;
- (id)copyPropertyForKey:(id)a3 keyboardID:(unint64_t)a4;
- (void)dealloc;
- (void)registerDisplayNotificationCallbackBlock:(id)a3;
- (void)registerKeyboardNotificationCallbackBlock:(id)a3;
- (void)registerNotificationBlock:(id)a3;
- (void)registerNotificationBlock:(id)a3 forProperties:(id)a4;
- (void)registerNotificationForKey:(id)a3;
- (void)registerNotificationForKey:(id)a3 andDisplay:(unint64_t)a4;
- (void)registerNotificationForKeys:(id)a3;
- (void)registerNotificationForKeys:(id)a3 andDisplay:(unint64_t)a4;
- (void)registerNotificationForKeys:(id)a3 keyboardID:(unint64_t)a4;
- (void)unregisterDisplayNotificationBlock;
- (void)unregisterKeyboardNotificationBlock;
- (void)unregisterNotificationForKey:(id)a3;
- (void)unregisterNotificationForKey:(id)a3 andDisplay:(unint64_t)a4;
- (void)unregisterNotificationForKeys:(id)a3;
- (void)unregisterNotificationForKeys:(id)a3 andDisplay:(unint64_t)a4;
- (void)unregisterNotificationForKeys:(id)a3 keyboardID:(unint64_t)a4;
- (void)unregisterPropertyNotificationBlock;
@end

@implementation BrightnessSystemClient

- (BrightnessSystemClient)init
{
  v24 = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = BrightnessSystemClient;
  v24 = [(BrightnessSystemClient *)&v22 init];
  if (!v24)
  {
    return v24;
  }

  v24->_logHandle = os_log_create("com.apple.CoreBrightness.Client", "Default");
  if (!v24->_logHandle)
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

  v24->bsci = objc_alloc_init(BrightnessSystemClientInternal);
  if (v24->bsci)
  {
    v10[0] = 0;
    v10[1] = v10;
    v11 = 1375731712;
    v12 = 48;
    v13 = __Block_byref_object_copy__5;
    v14 = __Block_byref_object_dispose__5;
    v15 = v24;
    [(BrightnessSystemClientInternal *)v24->bsci registerNotificationBlock:?];
    _Block_object_dispose(v10, 8);
    return v24;
  }

  if (v24->_logHandle)
  {
    logHandle = v24->_logHandle;
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

  MEMORY[0x1E69E5920](v24);
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
  v12 = self;
  v11 = a2;
  if (self->_logHandle)
  {
    logHandle = v12->_logHandle;
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

  [(BrightnessSystemClient *)v12 unregisterDisplayNotificationBlock];
  [(BrightnessSystemClient *)v12 unregisterKeyboardNotificationBlock];
  [(BrightnessSystemClient *)v12 unregisterPropertyNotificationBlock];
  [(BrightnessSystemClientInternal *)v12->bsci registerNotificationBlock:0];
  if (v12->_logHandle)
  {
    MEMORY[0x1E69E5920](v12->_logHandle);
    v12->_logHandle = 0;
  }

  [(BrightnessSystemClientInternal *)v12->bsci stopXpcService];
  *&v2 = MEMORY[0x1E69E5920](v12->bsci).n128_u64[0];
  v7.receiver = v12;
  v7.super_class = BrightnessSystemClient;
  [(BrightnessSystemClient *)&v7 dealloc];
}

- (void)unregisterDisplayNotificationBlock
{
  v11 = self;
  v10 = a2;
  objc_sync_enter(self);
  if (v11->_displayNotificationBlock)
  {
    if (v11->_logHandle)
    {
      logHandle = v11->_logHandle;
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

    _Block_release(v11->_displayNotificationBlock);
    v11->_displayNotificationBlock = 0;
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
  v11 = self;
  v10 = a2;
  objc_sync_enter(self);
  if (v11->_propertyNotificationBlock)
  {
    if (v11->_logHandle)
    {
      logHandle = v11->_logHandle;
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

    _Block_release(v11->_propertyNotificationBlock);
    v11->_propertyNotificationBlock = 0;
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = [(BrightnessSystemClientInternal *)self->bsci setProperty:a3 forKey:a4];
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

    __os_log_helper_16_2_3_8_64_8_64_8_34(v12, a4, a3, v4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%{public}s)", v12, 0x20u);
  }

  *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)setProperty:(id)a3 withKey:(id)a4 andDisplay:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a4 andDisplay:a5];
  if (v9)
  {
    v10 = [(BrightnessSystemClientInternal *)self->bsci setProperty:a3 forKey:v9];
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

      __os_log_helper_16_2_3_8_64_8_64_8_34(v13, v9, a3, v5);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%{public}s)", v13, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyPropertyForKey:(id)a3 andDisplay:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a3 andDisplay:a4];
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
      __os_log_helper_16_2_3_8_64_8_0_8_64(v12, a3, a4, v8);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ display=%lu property=%@", v12, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)registerDisplayNotificationCallbackBlock:(id)a3
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
    __os_log_helper_16_0_1_8_0(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterDisplayNotificationBlock];
  objc_sync_enter(self);
  if (a3)
  {
    self->_displayNotificationBlock = _Block_copy(a3);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)a3
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
    __os_log_helper_16_0_1_8_0(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterPropertyNotificationBlock];
  objc_sync_enter(self);
  if (a3)
  {
    self->_propertyNotificationBlock = _Block_copy(a3);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)a3 forProperties:(id)a4
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
    __os_log_helper_16_2_1_8_64(v9, a4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v9, 0xCu);
  }

  [(BrightnessSystemClientInternal *)self->bsci registerNotificationBlock:a3 forProperties:a4];
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKey:(id)a3
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
    __os_log_helper_16_2_1_8_64(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@", v7, 0xCu);
  }

  if (a3)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertyForNotification:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKey:(id)a3
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
    __os_log_helper_16_2_1_8_64(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@", v7, 0xCu);
  }

  if (a3)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertyFromNotification:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)a3
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
    __os_log_helper_16_2_1_8_64(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v7, 0xCu);
  }

  if (a3)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertiesForNotification:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKeys:(id)a3
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
    __os_log_helper_16_2_1_8_64(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keys=%@", v7, 0xCu);
  }

  if (a3)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertiesFromNotification:a3];
  }

  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)a3 andDisplay:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v6)
  {
    [a3 enumerateObjectsUsingBlock:?];
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

- (void)unregisterNotificationForKeys:(id)a3 andDisplay:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v6)
  {
    [a3 enumerateObjectsUsingBlock:?];
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

- (void)registerNotificationForKey:(id)a3 andDisplay:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu key=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a3 andDisplay:a4];
  if (v6)
  {
    [(BrightnessSystemClientInternal *)self->bsci addPropertyForNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationForKey:(id)a3 andDisplay:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "displayID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a3 andDisplay:a4];
  if (v6)
  {
    [(BrightnessSystemClientInternal *)self->bsci removePropertyFromNotification:v6];
  }

  MEMORY[0x1E69E5920](v6);
  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)a3 withKey:(id)a4 keyboardID:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a4 keyboardID:a5];
  if (v9)
  {
    v10 = [(BrightnessSystemClientInternal *)self->bsci setProperty:a3 forKey:v9];
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

      __os_log_helper_16_2_3_8_64_8_64_8_32(v13, v9, a3, v5);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@ (%s)", v13, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v9);
  *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyPropertyForKey:(id)a3 keyboardID:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithPropertyKey:a3 keyboardID:a4];
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
      __os_log_helper_16_2_3_8_64_8_0_8_64(v12, a3, a4, v8);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ keyboardID=%lu property=%@", v12, 0x20u);
    }
  }

  MEMORY[0x1E69E5920](v7);
  *MEMORY[0x1E69E9840];
  return v8;
}

- (void)registerKeyboardNotificationCallbackBlock:(id)a3
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
    __os_log_helper_16_0_1_8_0(v7, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "block=%p", v7, 0xCu);
  }

  [(BrightnessSystemClient *)self unregisterKeyboardNotificationBlock];
  objc_sync_enter(self);
  if (a3)
  {
    self->_keyboardNotificationBlock = _Block_copy(a3);
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationForKeys:(id)a3 keyboardID:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboardID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v6)
  {
    [a3 enumerateObjectsUsingBlock:?];
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

- (void)unregisterNotificationForKeys:(id)a3 keyboardID:(unint64_t)a4
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
    __os_log_helper_16_2_2_8_0_8_64(v10, a4, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "keyboardID=%lu keys=%@", v10, 0x16u);
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v6)
  {
    [a3 enumerateObjectsUsingBlock:?];
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