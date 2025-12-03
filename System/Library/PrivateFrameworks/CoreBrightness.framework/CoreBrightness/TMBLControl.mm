@interface TMBLControl
- (BOOL)_setPropertyWithKey:(id)key property:(id)property client:(id)client;
- (BOOL)addDisplayModuleForBrightnessControlProxy:(id)proxy;
- (BOOL)findDisplays;
- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)handler;
- (BOOL)removeDisplayModuleWithID:(int)d;
- (BOOL)setInternalPropertyWithKey:(id)key property:(id)property;
- (BOOL)setPropertyWithKey:(id)key property:(id)property client:(id)client;
- (BOOL)start;
- (BOOL)useSyncBrightnessTransactionForDisplay:(id)display;
- (TMBLControl)init;
- (id)copyDisplayInfo;
- (id)copyDisplayList;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)key;
- (id)copyPropertyWithKey:(id)key client:(id)client;
- (id)copyStatusInfo;
- (void)callBlockWithProperty:(id)property value:(id)value;
- (void)clearDisplaySet;
- (void)dealloc;
- (void)handleCAWindowServerDisplay:(id)display;
- (void)registerNotificationBlock:(id)block;
- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode;
- (void)sendNotificationFor:(id)for withValue:(id)value;
- (void)sendSyncNotificationFor:(id)for withValue:(id)value;
- (void)stop;
@end

@implementation TMBLControl

- (TMBLControl)init
{
  selfCopy = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = TMBLControl;
  selfCopy = [(BLControl *)&v27 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = os_log_create("com.apple.CoreBrightness.TMBacklightControl", "default");
  selfCopy->_logHandle = v2;
  v3 = dispatch_queue_create("BacklightControl - Primary", 0);
  selfCopy->_queue = v3;
  if (selfCopy->_queue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_displays = v4;
    if (!selfCopy->_displays)
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

      v23 = logHandle;
      v22 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v23;
        v11 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_1DE8E5000, v10, v11, "unable to create display containers list", v21, 2u);
      }

      goto LABEL_23;
    }

    return selfCopy;
  }

  if (selfCopy->_logHandle)
  {
    v17 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v16 = init_default_corebrightness_log();
    }

    v17 = v16;
  }

  v26 = v17;
  v25 = 16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    log = v26;
    type = v25;
    __os_log_helper_16_0_0(v24);
    _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create dispatch queue", v24, 2u);
  }

LABEL_23:
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

  v20 = v9;
  v19 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v6 = v20;
    v7 = v19;
    __os_log_helper_16_0_0(v18);
    _os_log_error_impl(&dword_1DE8E5000, v6, v7, "error creating the TMBacklightControl", v18, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

- (BOOL)start
{
  selfCopy = self;
  v17 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x20000000;
  v15 = 32;
  v16 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __20__TMBLControl_start__block_invoke;
  v9 = &unk_1E867C080;
  v10 = selfCopy;
  v11 = &v12;
  dispatch_sync(queue, &block);
  v4 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v4 & 1;
}

uint64_t __20__TMBLControl_start__block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 192))
  {
    v5 = *(*(a1 + 32) + 192);
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

    v5 = inited;
  }

  v9 = v5;
  v8 = 2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "TMBacklightControl start", v7, 2u);
  }

  result = [*(a1 + 32) findDisplays];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (void)stop
{
  selfCopy = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __19__TMBLControl_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = selfCopy;
  dispatch_sync(queue, &block);
}

uint64_t __19__TMBLControl_stop__block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 192))
  {
    v5 = *(*(a1 + 32) + 192);
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

    v5 = inited;
  }

  v9 = v5;
  v8 = 2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "TMBacklightControl stop", v7, 2u);
  }

  return [*(a1 + 32) registerNotificationBlock:0];
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  v2 = MEMORY[0x1E69E5920](self->_displays).n128_u64[0];
  if (selfCopy->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_queue)
  {
    v3 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  v4.receiver = selfCopy;
  v4.super_class = TMBLControl;
  [(BLControl *)&v4 dealloc:*&v2];
}

- (id)copyPropertyInternalForKey:(id)key
{
  v4 = 0;
  if ([key isEqual:@"CBDisplayList"])
  {
    return [(TMBLControl *)self copyDisplayList];
  }

  return v4;
}

- (id)copyPropertyWithKey:(id)key client:(id)client
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v27 = a2;
  keyCopy = key;
  clientCopy = client;
  v18 = 0;
  v19 = &v18;
  v20 = 1375731712;
  v21 = 48;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __42__TMBLControl_copyPropertyWithKey_client___block_invoke;
  v13 = &unk_1E867C2B0;
  v17 = &v18;
  v14 = selfCopy;
  keyCopy2 = key;
  clientCopy2 = client;
  dispatch_sync(queue, &block);
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v29, keyCopy, v19[5]);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ result=%@", v29, 0x16u);
  }

  v6 = v19[5];
  _Block_object_dispose(&v18, 8);
  *MEMORY[0x1E69E9840];
  return v6;
}

void __42__TMBLControl_copyPropertyWithKey_client___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a1;
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) copyPropertyInternalForKey:*(a1 + 40)];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v11 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [objc_msgSend(*(a1 + 40) "getKeyDisplayIDRef")];
      v15 = [*(*(a1 + 32) + 216) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v16)}];
      if (v15)
      {
        *(*(*(a1 + 56) + 8) + 40) = [v15 copyPropertyForKey:{objc_msgSend(*(a1 + 40), "getKeyString")}];
      }
    }

    else
    {
      v10 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(__b, 0, sizeof(__b));
        obj = [*(*(a1 + 32) + 216) allValues];
        v9 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (v9)
        {
          v5 = *__b[2];
          v6 = 0;
          v7 = v9;
          while (1)
          {
            v4 = v6;
            if (*__b[2] != v5)
            {
              objc_enumerationMutation(obj);
            }

            v14 = 0;
            v14 = *(__b[1] + 8 * v6);
            *(*(*(a1 + 56) + 8) + 40) = [v14 copyPropertyForKey:*(a1 + 40)];
            if (*(*(*(a1 + 56) + 8) + 40))
            {
              break;
            }

            ++v6;
            if (v4 + 1 >= v7)
            {
              v6 = 0;
              v7 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
              if (!v7)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v3 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) copyPropertyWithSimpleKey:*(a1 + 40) client:*(a1 + 48)];
      if (*(*(a1 + 32) + 192))
      {
        v2 = *(*(a1 + 32) + 192);
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

        v2 = inited;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v19, *(a1 + 40), *(*(*(a1 + 56) + 8) + 40));
        _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "simple key=%@ result=%@", v19, 0x16u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setInternalPropertyWithKey:(id)key property:(id)property
{
  v5 = 0;
  if ([key isEqual:@"DisplayMode"])
  {
    return [(TMBLControl *)self handleDisplayModeUpdatePropertyHandler:property];
  }

  return v5;
}

- (BOOL)setPropertyWithKey:(id)key property:(id)property client:(id)client
{
  selfCopy = self;
  v26 = a2;
  keyCopy = key;
  propertyCopy = property;
  clientCopy = client;
  v18 = 0;
  v19 = &v18;
  v20 = 0x20000000;
  v21 = 32;
  v22 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __50__TMBLControl_setPropertyWithKey_property_client___block_invoke;
  v12 = &unk_1E867C2D8;
  v17 = &v18;
  v13 = selfCopy;
  keyCopy2 = key;
  propertyCopy2 = property;
  clientCopy2 = client;
  dispatch_sync(queue, &block);
  v7 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return v7 & 1;
}

uint64_t __50__TMBLControl_setPropertyWithKey_property_client___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyWithKey:*(a1 + 40) property:*(a1 + 48) client:*(a1 + 56)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (BOOL)_setPropertyWithKey:(id)key property:(id)property client:(id)client
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v23 = a2;
  keyCopy = key;
  propertyCopy = property;
  clientCopy = client;
  v19 = [(TMBLControl *)self setInternalPropertyWithKey:key property:property];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [objc_msgSend(keyCopy "getKeyDisplayIDRef")];
    v17 = -[NSMutableDictionary objectForKey:](selfCopy->_displays, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18]);
    if (v17)
    {
      v19 = (v19 | [v17 setProperty:propertyCopy forKey:{objc_msgSend(keyCopy, "getKeyString")}]) != 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, sizeof(__b));
      obj = [(NSMutableDictionary *)selfCopy->_displays allValues];
      v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
      if (v14)
      {
        v10 = *__b[2];
        v11 = 0;
        v12 = v14;
        while (1)
        {
          v9 = v11;
          if (*__b[2] != v10)
          {
            objc_enumerationMutation(obj);
          }

          v16 = 0;
          v16 = *(__b[1] + 8 * v11);
          v5 = [v16 setProperty:propertyCopy forKey:keyCopy];
          v19 = (v19 | v5) != 0;
          ++v11;
          if (v9 + 1 >= v12)
          {
            v11 = 0;
            v12 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
            if (!v12)
            {
              break;
            }
          }
        }
      }
    }
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_64_8_64_4_0(v25, keyCopy, propertyCopy, v19);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ property=%@ result=%d", v25, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)findDisplays
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  v24 = 0;
  serverIfRunning = [MEMORY[0x1E6979550] serverIfRunning];
  if (serverIfRunning)
  {
    displays = [serverIfRunning displays];
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

    oslog = logHandle;
    v17 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_66(v29, displays);
      _os_log_impl(&dword_1DE8E5000, oslog, v17, "displays: %{public}@", v29, 0xCu);
    }

    memset(__b, 0, sizeof(__b));
    obj = displays;
    v8 = [displays countByEnumeratingWithState:__b objects:v28 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v16 = 0;
        v16 = *(__b[1] + 8 * v5);
        if ([(TMBLControl *)selfCopy useSyncBrightnessTransactionForDisplay:v16])
        {
          [(TMBLControl *)selfCopy handleCAWindowServerDisplay:v16];
          v24 = 1;
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    v27 = v24 & 1;
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

    v22 = v14;
    v21 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "CAWindowServer is not running", v20, 2u);
    }

    v27 = v24 & 1;
  }

  *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (BOOL)useSyncBrightnessTransactionForDisplay:(id)display
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![display displayType])
  {
    v6 = (CBU_IsSyncBrightnessTransactionsSupported() & 1) != 0 || ([display brightnessAvailable] & 1) != 0;
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
    __os_log_helper_16_0_2_4_0_4_0(v9, [display displayId], v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Display ID: %d, UseSyncBrightnessTransactionForDisplay: %d", v9, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleCAWindowServerDisplay:(id)display
{
  v3 = [[CBBrightnessProxyCA alloc] initWithCABrightnessControl:display];
  if (v3)
  {
    [(TMBLControl *)self addDisplayModuleForBrightnessControlProxy:v3];
    MEMORY[0x1E69E5920](v3);
  }
}

- (BOOL)addDisplayModuleForBrightnessControlProxy:(id)proxy
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  proxyCopy = proxy;
  v23 = 1;
  -[TMBLControl removeDisplayModuleWithID:](self, "removeDisplayModuleWithID:", [proxy displayId]);
  v22 = [[TMDisplayModule alloc] initWithBrightnessControl:proxyCopy andQueue:selfCopy->_queue];
  if (v22)
  {
    context = objc_autoreleasePoolPush();
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

    v21 = logHandle;
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v27, [proxyCopy displayId]);
      _os_log_impl(&dword_1DE8E5000, v21, v20, "Adding module for display with ID = %d", v27, 8u);
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __57__TMBLControl_addDisplayModuleForBrightnessControlProxy___block_invoke;
    v18 = &unk_1E867B558;
    v19 = selfCopy;
    [(CBModule *)v22 registerNotificationBlock:?];
    -[NSMutableDictionary setObject:forKey:](selfCopy->_displays, "setObject:forKey:", v22, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(proxyCopy, "displayId")}]);
    [(CBDisplayModule *)v22 start];
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v7 = selfCopy->_logHandle;
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

    v13 = v7;
    v12 = 16;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v4 = v13;
      v5 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_error_impl(&dword_1DE8E5000, v4, v5, "failed to create a container", v11, 2u);
    }

    v23 = 0;
  }

  MEMORY[0x1E69E5920](v22);
  *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (BOOL)removeDisplayModuleWithID:(int)d
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 1;
  v6 = -[NSMutableDictionary objectForKey:](self->_displays, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:d]);
  if (v6)
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
      __os_log_helper_16_2_2_8_64_4_0(v10, v6, d);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Removing container %@ for ID %d", v10, 0x12u);
    }

    [v6 stop];
    [v6 unregisterNotificationBlock];
    -[NSMutableDictionary removeObjectForKey:](self->_displays, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithInt:d]);
  }

  else
  {
    v7 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (void)clearDisplaySet
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->_displays;
  v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = 0;
      v9 = *(__b[1] + 8 * v4);
      [v9 stop];
      [v9 unregisterNotificationBlock];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  [(NSMutableDictionary *)selfCopy->_displays removeAllObjects];
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)block
{
  selfCopy = self;
  v12 = a2;
  blockCopy = block;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__TMBLControl_registerNotificationBlock___block_invoke;
  v8 = &unk_1E867C300;
  v9 = selfCopy;
  blockCopy2 = block;
  dispatch_sync(queue, &block);
}

void __41__TMBLControl_registerNotificationBlock___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 208))
  {
    _Block_release(*(*(a1 + 32) + 208));
    *(*(a1 + 32) + 208) = 0;
  }

  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 208) = _Block_copy(*(a1 + 40));
  }
}

- (void)callBlockWithProperty:(id)property value:(id)value
{
  selfCopy = self;
  v16 = a2;
  propertyCopy = property;
  valueCopy = value;
  if (self->_callback)
  {
    v13 = _Block_copy(selfCopy->_callback);
    MEMORY[0x1E69E5928](propertyCopy);
    MEMORY[0x1E69E5928](valueCopy);
    global_queue = dispatch_get_global_queue(2, 0);
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __43__TMBLControl_callBlockWithProperty_value___block_invoke;
    v9 = &unk_1E867C0A8;
    v12 = v13;
    v10 = propertyCopy;
    v11 = valueCopy;
    dispatch_async(global_queue, &v5);
  }
}

double __43__TMBLControl_callBlockWithProperty_value___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  _Block_release(*(a1 + 48));
  MEMORY[0x1E69E5920](*(a1 + 32));
  *&result = MEMORY[0x1E69E5920](*(a1 + 40)).n128_u64[0];
  return result;
}

- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [handler objectForKey:@"Value"];
    v11 = [handler objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v12 integerValue];
        [v11 floatValue];
        v9 = v3;
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
          __os_log_helper_16_2_3_8_66_4_0_8_0(v15, [CBDisplayStateUtilities stringForDisplayMode:integerValue], integerValue, COERCE__INT64(v9));
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[Display Mode] Update handler - new mode: %{public}@ (%d), transition length: %f", v15, 0x1Cu);
        }

        *&v4 = v9 + 0.02;
        [(TMBLControl *)self scheduleDisplayModeCompletionTimerIn:integerValue forDisplayMode:v4];
      }
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)scheduleDisplayModeCompletionTimerIn:(float)in forDisplayMode:(int64_t)mode
{
  selfCopy = self;
  v14 = a2;
  inCopy = in;
  modeCopy = mode;
  queue = self->_queue;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __67__TMBLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
  v9 = &unk_1E867B9D8;
  v10 = selfCopy;
  modeCopy2 = mode;
  dispatch_async(queue, &v5);
}

void __67__TMBLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 192))
  {
    v2 = *(*(a1 + 32) + 192);
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

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v5, [CBDisplayStateUtilities stringForDisplayMode:*(a1 + 40)]);
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "[Display Mode] didCompleteTransitionToDisplayMode %{public}@", v5, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:*(a1 + 40)];
  [*(a1 + 32) sendSyncNotificationFor:@"DisplayModeChangeComplete" withValue:v4];
  MEMORY[0x1E69E5920](v4);
  *MEMORY[0x1E69E9840];
}

- (void)sendSyncNotificationFor:(id)for withValue:(id)value
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
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
    __os_log_helper_16_2_2_8_64_8_64(v9, for, value);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ value=%@", v9, 0x16u);
  }

  [(TMBLControl *)self handleNotificationInternalForKey:for withValue:value];
  if (self->_callback)
  {
    (*(self->_callback + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationFor:(id)for withValue:(id)value
{
  selfCopy = self;
  v15 = a2;
  forCopy = for;
  valueCopy = value;
  MEMORY[0x1E69E5928](for);
  MEMORY[0x1E69E5928](valueCopy);
  queue = selfCopy->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __45__TMBLControl_sendNotificationFor_withValue___block_invoke;
  v9 = &unk_1E867B750;
  v10 = selfCopy;
  v11 = forCopy;
  v12 = valueCopy;
  dispatch_async(queue, &block);
}

double __45__TMBLControl_sendNotificationFor_withValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sendSyncNotificationFor:*(a1 + 40) withValue:*(a1 + 48)];
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 48)).n128_u64[0];
  return result;
}

- (id)copyDisplayList
{
  selfCopy = self;
  v5 = a2;
  v4 = 0;
  if ([(NSMutableDictionary *)self->_displays count])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    return [v3 initWithObjectsAndKeys:{-[NSMutableDictionary allKeys](selfCopy->_displays, "allKeys"), @"CBDisplayDeviceIDs", 0}];
  }

  return v4;
}

- (id)copyDisplayInfo
{
  selfCopy = self;
  v11 = a2;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  displays = selfCopy->_displays;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __30__TMBLControl_copyDisplayInfo__block_invoke;
  v8 = &unk_1E867BBB8;
  v9 = v10;
  [(NSMutableDictionary *)displays enumerateKeysAndObjectsUsingBlock:?];
  return v10;
}

double __30__TMBLControl_copyDisplayInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 conformsToProtocol:&unk_1F59CFD60])
  {
    v5 = [a3 copyPropertyForKey:@"CBDisplayInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v5];
    }

    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  return result;
}

- (id)copyStatusInfo
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  copyIdentifiers = [(TMBLControl *)self copyIdentifiers];
  [copyIdentifiers enumerateObjectsUsingBlock:?];
  MEMORY[0x1E69E5920](copyIdentifiers);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    [(NSMutableDictionary *)self->_displays enumerateKeysAndObjectsUsingBlock:?];
    [v5 setObject:v3 forKey:@"CBDisplays"];
  }

  MEMORY[0x1E69E5920](v3);
  return v5;
}

double __29__TMBLControl_copyStatusInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) copyPropertyInternalForKey:a2];
    if (v4)
    {
      [*(a1 + 40) setObject:v4 forKey:a2];
      *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
    }
  }

  return result;
}

double __29__TMBLControl_copyStatusInfo__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 copyPropertyForKey:@"StatusInfo"];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKey:a2];
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  return result;
}

- (id)copyIdentifiers
{
  selfCopy = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CBDisplayList", @"CBDisplayInfo", @"BLControlAlsSupported", @"CBClamshellState", 0}];
}

@end