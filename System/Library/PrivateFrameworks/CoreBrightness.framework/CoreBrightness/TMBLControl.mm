@interface TMBLControl
- (BOOL)_setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5;
- (BOOL)addDisplayModuleForBrightnessControlProxy:(id)a3;
- (BOOL)findDisplays;
- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)a3;
- (BOOL)removeDisplayModuleWithID:(int)a3;
- (BOOL)setInternalPropertyWithKey:(id)a3 property:(id)a4;
- (BOOL)setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5;
- (BOOL)start;
- (BOOL)useSyncBrightnessTransactionForDisplay:(id)a3;
- (TMBLControl)init;
- (id)copyDisplayInfo;
- (id)copyDisplayList;
- (id)copyIdentifiers;
- (id)copyPropertyInternalForKey:(id)a3;
- (id)copyPropertyWithKey:(id)a3 client:(id)a4;
- (id)copyStatusInfo;
- (void)callBlockWithProperty:(id)a3 value:(id)a4;
- (void)clearDisplaySet;
- (void)dealloc;
- (void)handleCAWindowServerDisplay:(id)a3;
- (void)registerNotificationBlock:(id)a3;
- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4;
- (void)sendNotificationFor:(id)a3 withValue:(id)a4;
- (void)sendSyncNotificationFor:(id)a3 withValue:(id)a4;
- (void)stop;
@end

@implementation TMBLControl

- (TMBLControl)init
{
  v29 = self;
  v28 = a2;
  v27.receiver = self;
  v27.super_class = TMBLControl;
  v29 = [(BLControl *)&v27 init];
  if (!v29)
  {
    return v29;
  }

  v2 = os_log_create("com.apple.CoreBrightness.TMBacklightControl", "default");
  v29->_logHandle = v2;
  v3 = dispatch_queue_create("BacklightControl - Primary", 0);
  v29->_queue = v3;
  if (v29->_queue)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29->_displays = v4;
    if (!v29->_displays)
    {
      if (v29->_logHandle)
      {
        logHandle = v29->_logHandle;
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

    return v29;
  }

  if (v29->_logHandle)
  {
    v17 = v29->_logHandle;
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
  if (v29->_logHandle)
  {
    v9 = v29->_logHandle;
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

  MEMORY[0x1E69E5920](v29);
  v29 = 0;
  return 0;
}

- (BOOL)start
{
  v18 = self;
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
  v10 = v18;
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
  v10 = self;
  v9 = a2;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __19__TMBLControl_stop__block_invoke;
  v7 = &unk_1E867B480;
  v8 = v10;
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
  v6 = self;
  v5 = a2;
  v2 = MEMORY[0x1E69E5920](self->_displays).n128_u64[0];
  if (v6->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](v6->_logHandle).n128_u64[0];
    v6->_logHandle = 0;
  }

  if (v6->_queue)
  {
    v3 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
    dispatch_release(v6->_queue);
    v6->_queue = 0;
  }

  v4.receiver = v6;
  v4.super_class = TMBLControl;
  [(BLControl *)&v4 dealloc:*&v2];
}

- (id)copyPropertyInternalForKey:(id)a3
{
  v4 = 0;
  if ([a3 isEqual:@"CBDisplayList"])
  {
    return [(TMBLControl *)self copyDisplayList];
  }

  return v4;
}

- (id)copyPropertyWithKey:(id)a3 client:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = a4;
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
  v14 = v28;
  v15 = a3;
  v16 = a4;
  dispatch_sync(queue, &block);
  if (v28->_logHandle)
  {
    logHandle = v28->_logHandle;
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
    __os_log_helper_16_2_2_8_64_8_64(v29, v26, v19[5]);
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

- (BOOL)setInternalPropertyWithKey:(id)a3 property:(id)a4
{
  v5 = 0;
  if ([a3 isEqual:@"DisplayMode"])
  {
    return [(TMBLControl *)self handleDisplayModeUpdatePropertyHandler:a4];
  }

  return v5;
}

- (BOOL)setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
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
  v13 = v27;
  v14 = a3;
  v15 = a4;
  v16 = a5;
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

- (BOOL)_setPropertyWithKey:(id)a3 property:(id)a4 client:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = [(TMBLControl *)self setInternalPropertyWithKey:a3 property:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [objc_msgSend(v22 "getKeyDisplayIDRef")];
    v17 = -[NSMutableDictionary objectForKey:](v24->_displays, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18]);
    if (v17)
    {
      v19 = (v19 | [v17 setProperty:v21 forKey:{objc_msgSend(v22, "getKeyString")}]) != 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, sizeof(__b));
      obj = [(NSMutableDictionary *)v24->_displays allValues];
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
          v5 = [v16 setProperty:v21 forKey:v22];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_64_8_64_4_0(v25, v22, v21, v19);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "key=%@ property=%@ result=%d", v25, 0x1Cu);
  }

  *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)findDisplays
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = 0;
  v23 = [MEMORY[0x1E6979550] serverIfRunning];
  if (v23)
  {
    v19 = [v23 displays];
    if (v26->_logHandle)
    {
      logHandle = v26->_logHandle;
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
      __os_log_helper_16_2_1_8_66(v29, v19);
      _os_log_impl(&dword_1DE8E5000, oslog, v17, "displays: %{public}@", v29, 0xCu);
    }

    memset(__b, 0, sizeof(__b));
    obj = v19;
    v8 = [v19 countByEnumeratingWithState:__b objects:v28 count:16];
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
        if ([(TMBLControl *)v26 useSyncBrightnessTransactionForDisplay:v16])
        {
          [(TMBLControl *)v26 handleCAWindowServerDisplay:v16];
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
    if (v26->_logHandle)
    {
      v14 = v26->_logHandle;
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

- (BOOL)useSyncBrightnessTransactionForDisplay:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![a3 displayType])
  {
    v6 = (CBU_IsSyncBrightnessTransactionsSupported() & 1) != 0 || ([a3 brightnessAvailable] & 1) != 0;
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
    __os_log_helper_16_0_2_4_0_4_0(v9, [a3 displayId], v6);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Display ID: %d, UseSyncBrightnessTransactionForDisplay: %d", v9, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (void)handleCAWindowServerDisplay:(id)a3
{
  v3 = [[CBBrightnessProxyCA alloc] initWithCABrightnessControl:a3];
  if (v3)
  {
    [(TMBLControl *)self addDisplayModuleForBrightnessControlProxy:v3];
    MEMORY[0x1E69E5920](v3);
  }
}

- (BOOL)addDisplayModuleForBrightnessControlProxy:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = 1;
  -[TMBLControl removeDisplayModuleWithID:](self, "removeDisplayModuleWithID:", [a3 displayId]);
  v22 = [[TMDisplayModule alloc] initWithBrightnessControl:v24 andQueue:v26->_queue];
  if (v22)
  {
    context = objc_autoreleasePoolPush();
    if (v26->_logHandle)
    {
      logHandle = v26->_logHandle;
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
      __os_log_helper_16_0_1_4_0(v27, [v24 displayId]);
      _os_log_impl(&dword_1DE8E5000, v21, v20, "Adding module for display with ID = %d", v27, 8u);
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = -1073741824;
    v16 = 0;
    v17 = __57__TMBLControl_addDisplayModuleForBrightnessControlProxy___block_invoke;
    v18 = &unk_1E867B558;
    v19 = v26;
    [(CBModule *)v22 registerNotificationBlock:?];
    -[NSMutableDictionary setObject:forKey:](v26->_displays, "setObject:forKey:", v22, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v24, "displayId")}]);
    [(CBDisplayModule *)v22 start];
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (v26->_logHandle)
    {
      v7 = v26->_logHandle;
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

- (BOOL)removeDisplayModuleWithID:(int)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 1;
  v6 = -[NSMutableDictionary objectForKey:](self->_displays, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:a3]);
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
      __os_log_helper_16_2_2_8_64_4_0(v10, v6, a3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Removing container %@ for ID %d", v10, 0x12u);
    }

    [v6 stop];
    [v6 unregisterNotificationBlock];
    -[NSMutableDictionary removeObjectForKey:](self->_displays, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithInt:a3]);
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
  v11 = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = v11->_displays;
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

  [(NSMutableDictionary *)v11->_displays removeAllObjects];
  *MEMORY[0x1E69E9840];
}

- (void)registerNotificationBlock:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__TMBLControl_registerNotificationBlock___block_invoke;
  v8 = &unk_1E867C300;
  v9 = v13;
  v10 = a3;
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

- (void)callBlockWithProperty:(id)a3 value:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  if (self->_callback)
  {
    v13 = _Block_copy(v17->_callback);
    MEMORY[0x1E69E5928](v15);
    MEMORY[0x1E69E5928](v14);
    global_queue = dispatch_get_global_queue(2, 0);
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __43__TMBLControl_callBlockWithProperty_value___block_invoke;
    v9 = &unk_1E867C0A8;
    v12 = v13;
    v10 = v15;
    v11 = v14;
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

- (BOOL)handleDisplayModeUpdatePropertyHandler:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a3 objectForKey:@"Value"];
    v11 = [a3 objectForKey:@"TransitionLength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v12 integerValue];
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
          __os_log_helper_16_2_3_8_66_4_0_8_0(v15, [CBDisplayStateUtilities stringForDisplayMode:v10], v10, COERCE__INT64(v9));
          _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[Display Mode] Update handler - new mode: %{public}@ (%d), transition length: %f", v15, 0x1Cu);
        }

        *&v4 = v9 + 0.02;
        [(TMBLControl *)self scheduleDisplayModeCompletionTimerIn:v10 forDisplayMode:v4];
      }
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)scheduleDisplayModeCompletionTimerIn:(float)a3 forDisplayMode:(int64_t)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  queue = self->_queue;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __67__TMBLControl_scheduleDisplayModeCompletionTimerIn_forDisplayMode___block_invoke;
  v9 = &unk_1E867B9D8;
  v10 = v15;
  v11 = a4;
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

- (void)sendSyncNotificationFor:(id)a3 withValue:(id)a4
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
    __os_log_helper_16_2_2_8_64_8_64(v9, a3, a4);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ value=%@", v9, 0x16u);
  }

  [(TMBLControl *)self handleNotificationInternalForKey:a3 withValue:a4];
  if (self->_callback)
  {
    (*(self->_callback + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendNotificationFor:(id)a3 withValue:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](v13);
  queue = v16->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __45__TMBLControl_sendNotificationFor_withValue___block_invoke;
  v9 = &unk_1E867B750;
  v10 = v16;
  v11 = v14;
  v12 = v13;
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
  v6 = self;
  v5 = a2;
  v4 = 0;
  if ([(NSMutableDictionary *)self->_displays count])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    return [v3 initWithObjectsAndKeys:{-[NSMutableDictionary allKeys](v6->_displays, "allKeys"), @"CBDisplayDeviceIDs", 0}];
  }

  return v4;
}

- (id)copyDisplayInfo
{
  v12 = self;
  v11 = a2;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  displays = v12->_displays;
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
  v4 = [(TMBLControl *)self copyIdentifiers];
  [v4 enumerateObjectsUsingBlock:?];
  MEMORY[0x1E69E5920](v4);
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
  v4 = self;
  v3 = a2;
  return [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"CBDisplayList", @"CBDisplayInfo", @"BLControlAlsSupported", @"CBClamshellState", 0}];
}

@end