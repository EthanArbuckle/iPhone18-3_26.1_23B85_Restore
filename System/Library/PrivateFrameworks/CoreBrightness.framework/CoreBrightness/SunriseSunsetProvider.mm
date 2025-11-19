@interface SunriseSunsetProvider
- (SunriseSunsetProvider)initWithCallback:(id)a3;
- (id)copySunriseSunsetInfo:(int)a3;
- (id)copySunsetSunriseInfoFromContext;
- (void)dealloc;
- (void)registerBlock:(id)a3;
- (void)unregisterBlock;
- (void)unregisterNotification;
- (void)updateSunriseSunsetInfo;
@end

@implementation SunriseSunsetProvider

- (id)copySunsetSunriseInfoFromContext
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  if (self->_duetContextStore)
  {
    if (v24->_duetKeyPath)
    {
      v22 = [(_CDClientContext *)v24->_duetContextStore objectForKeyedSubscript:v24->_duetKeyPath];
      if (v22)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
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

        v20 = logHandle;
        v19 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          v3[23] = v20;
          *type = v19;
          buf = v25;
          __os_log_helper_16_2_1_8_64(v25, v22);
          _os_log_impl(&dword_1DE8E5000, v20, v19, "sun schedule dictionary : %@", v25, 0xCu);
        }

        v18 = NSClassFromString(&cfstr_Cdcontextqueri.isa);
        v16 = [v22 objectForKeyedSubscript:[(objc_class *)v18 sunriseSunsetAvailabilityStatusKey]];
        [v21 setValue:v16 forKey:@"status"];
        v17 = [(objc_class *)v18 currentSunriseKey];
        v15 = [v22 objectForKeyedSubscript:v17];
        v3[16] = v22;
        v14 = [v22 objectForKeyedSubscript:[(objc_class *)v18 currentSunsetKey]];
        v3[17] = v22;
        v13 = [v22 objectForKeyedSubscript:[(objc_class *)v18 nextSunriseKey]];
        v3[18] = v22;
        v12 = [v22 objectForKeyedSubscript:[(objc_class *)v18 nextSunsetKey]];
        v3[19] = v22;
        v11 = [v22 objectForKeyedSubscript:[(objc_class *)v18 previousSunriseKey]];
        v3[20] = v22;
        v10 = [v22 objectForKeyedSubscript:[(objc_class *)v18 previousSunsetKey]];
        v3[21] = v22;
        v9 = [v22 objectForKeyedSubscript:[(objc_class *)v18 isDaylightKey]];
        v3[22] = v3;
        v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v15, @"sunrise", v14, @"sunset", v11, @"previousSunrise", v10, @"previousSunset", v13, @"nextSunrise", v12, @"nextSunset", v9, @"isDaylight", 0}];
        [v21 setObject:v8 forKey:@"sunSchedule"];
        MEMORY[0x1E69E5920](v8);
      }
    }
  }

  v3[15] = v21;
  *MEMORY[0x1E69E9840];
  return v21;
}

- (SunriseSunsetProvider)initWithCallback:(id)a3
{
  v50 = self;
  v49 = a2;
  v48 = a3;
  v47.receiver = self;
  v47.super_class = SunriseSunsetProvider;
  v50 = [(SunriseSunsetProvider *)&v47 init];
  if (v50)
  {
    if (dlopen("/System/Library/PrivateFrameworks/CoreDuetContext.framework/CoreDuetContext", 1))
    {
      v3 = os_log_create("com.apple.CoreBrightness.NightShift", "sunprovider");
      v50->_logHandle = v3;
      v4 = [NSClassFromString(&cfstr_Cdclientcontex.isa) userContext];
      v50->_duetContextStore = v4;
      if (v50->_duetContextStore)
      {
        v50->_duetDispatchSemaphore = dispatch_semaphore_create(1);
        if (v48)
        {
          v5 = _Block_copy(v48);
          v50->_callbackBlock = v5;
        }

        v6 = [NSClassFromString(&cfstr_Cdcontextqueri.isa) keyPathForSunriseSunsetDataDictionary];
        v50->_duetKeyPath = v6;
        v7 = NSClassFromString(&cfstr_Cdcontextualpr.isa);
        v8 = [(objc_class *)v7 predicateForChangeAtKeyPath:v50->_duetKeyPath];
        v50->_predicate = v8;
        v40 = MEMORY[0x1E69E9820];
        v41 = -1073741824;
        v42 = 0;
        v43 = __42__SunriseSunsetProvider_initWithCallback___block_invoke;
        v44 = &unk_1E867D1F8;
        v45 = v50;
        v50->_duetCallback = &v40;
        v9 = NSClassFromString(&cfstr_Cdcontextualch.isa);
        v10 = [(objc_class *)v9 registrationWithIdentifier:@"com.apple.CoreBrightness.registrationForSunsetSunrise" contextualPredicate:v50->_predicate dismissalPolicy:0 deviceSet:0 mustWake:0 callback:v50->_duetCallback];
        v50->_duetRegistration = v10;
        if (v50->_duetRegistration)
        {
          [(_CDClientContext *)v50->_duetContextStore registerCallback:v50->_duetRegistration];
          v50->_sunriseSunsetNotificationEnabled = 1;
        }

        if (v50->_logHandle)
        {
          logHandle = v50->_logHandle;
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

        v39 = logHandle;
        v38 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          log = v39;
          type = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_impl(&dword_1DE8E5000, log, type, "SunriseSunsetProvider initialised successfully", v37, 2u);
        }
      }

      else
      {
        if (v50->_logHandle)
        {
          v23 = v50->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v22 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v22 = init_default_corebrightness_log();
          }

          v23 = v22;
        }

        v36 = v23;
        v35 = 16;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v20 = v36;
          v21 = v35;
          __os_log_helper_16_0_0(v34);
          _os_log_error_impl(&dword_1DE8E5000, v20, v21, "Duet context store not available", v34, 2u);
        }

        MEMORY[0x1E69E5920](v50);
        return 0;
      }
    }

    else
    {
      if (v50->_logHandle)
      {
        v19 = v50->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v18 = init_default_corebrightness_log();
        }

        v19 = v18;
      }

      v33 = v19;
      v32 = 16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v16 = v33;
        v17 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_error_impl(&dword_1DE8E5000, v16, v17, "CoreDuet framework dynamic load failed", v31, 2u);
      }

      MEMORY[0x1E69E5920](v50);
      return 0;
    }
  }

  else
  {
    if (MEMORY[8])
    {
      v15 = v50->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    v30 = v15;
    v29 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v12 = v30;
      v13 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_error_impl(&dword_1DE8E5000, v12, v13, "error on initialisation", v28, 2u);
    }

    MEMORY[0x1E69E5920](v50);
    return 0;
  }

  return v50;
}

uint64_t __42__SunriseSunsetProvider_initWithCallback___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v4 = *(*(a1 + 32) + 8);
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

    v4 = inited;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v7, a2);
    _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Identifier called: %@", v7, 0xCu);
  }

  [*(a1 + 32) updateSunriseSunsetInfo];
  *MEMORY[0x1E69E9840];
  return 1;
}

- (void)registerBlock:(id)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  if (self->_logHandle)
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
  v10 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "register async callback block", v9, 2u);
  }

  obj = v14;
  objc_sync_enter(v14);
  if (v14->_callbackBlock)
  {
    _Block_release(v14->_callbackBlock);
    v14->_callbackBlock = 0;
  }

  if (v12)
  {
    v3 = _Block_copy(v12);
    v14->_callbackBlock = v3;
  }

  objc_sync_exit(obj);
}

- (void)unregisterBlock
{
  v11 = self;
  v10 = a2;
  if (self->_logHandle)
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
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "unregistering async callback block", v7, 2u);
  }

  obj = v11;
  objc_sync_enter(v11);
  if (v11->_callbackBlock)
  {
    _Block_release(v11->_callbackBlock);
    v11->_callbackBlock = 0;
  }

  objc_sync_exit(obj);
}

- (void)unregisterNotification
{
  v11 = self;
  v10 = a2;
  if (self->_logHandle)
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
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "unregistering notification", v7, 2u);
  }

  obj = v11;
  objc_sync_enter(v11);
  if (v11->_duetRegistration)
  {
    [(_CDClientContext *)v11->_duetContextStore deregisterCallback:v11->_duetRegistration];
    MEMORY[0x1E69E5920](v11->_duetRegistration);
  }

  v11->_sunriseSunsetNotificationEnabled = 0;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  v12 = self;
  v11 = a2;
  objc_sync_enter(self);
  if (v12->_logHandle)
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
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "SunriseSunsetProvider terminating", v8, 2u);
  }

  if (v12->_duetDispatchSemaphore)
  {
    dispatch_semaphore_wait(v12->_duetDispatchSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v12->_duetDispatchSemaphore);
    v12->_duetDispatchSemaphore = 0;
  }

  MEMORY[0x1E69E5920](v12->_duetKeyPath);
  v12->_duetKeyPath = 0;
  MEMORY[0x1E69E5920](v12->_duetContextStore);
  v12->_duetContextStore = 0;
  MEMORY[0x1E69E5920](v12->_predicate);
  v12->_predicate = 0;
  if (v12->_logHandle)
  {
    MEMORY[0x1E69E5920](v12->_logHandle);
    v12->_logHandle = 0;
  }

  objc_sync_exit(self);
  v7.receiver = v12;
  v7.super_class = SunriseSunsetProvider;
  [(SunriseSunsetProvider *)&v7 dealloc];
}

- (id)copySunriseSunsetInfo:(int)a3
{
  v53 = self;
  v52 = a2;
  v51 = a3;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 1375731712;
  v46 = 48;
  v47 = __Block_byref_object_copy__20;
  v48 = __Block_byref_object_dispose__20;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x20000000;
  v41 = 32;
  v42 = 0;
  objc_sync_enter(self);
  if (!v53->_duetDispatchSemaphore || dispatch_semaphore_wait(v53->_duetDispatchSemaphore, 0))
  {
    if (v53->_logHandle)
    {
      logHandle = v53->_logHandle;
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
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v23;
      v8 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_debug_impl(&dword_1DE8E5000, v7, v8, "already stuck in a querry, passing", v21, 2u);
    }
  }

  else
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block = MEMORY[0x1E69E9820];
    v31 = -1073741824;
    v32 = 0;
    v33 = __47__SunriseSunsetProvider_copySunriseSunsetInfo___block_invoke;
    v34 = &unk_1E867D220;
    v36 = &v43;
    v35 = v53;
    v37 = &v38;
    dispatch_async(global_queue, &block);
    dsema = v53->_duetDispatchSemaphore;
    v4 = dispatch_time(0, 1000000 * v51);
    if (dispatch_semaphore_wait(dsema, v4))
    {
      if (v53->_logHandle)
      {
        v14 = v53->_logHandle;
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

      oslog = v14;
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v11 = oslog;
        v12 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_error_impl(&dword_1DE8E5000, v11, v12, "sunrise/sunset querry timeout", v24, 2u);
      }

      *(v39 + 24) = 1;
    }

    else
    {
      if (v53->_logHandle)
      {
        v18 = v53->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v17 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v17 = init_default_corebrightness_log();
        }

        v18 = v17;
      }

      v29 = v18;
      v28 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        log = v29;
        type = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_debug_impl(&dword_1DE8E5000, log, type, "sunrise/sunset returned on time", v27, 2u);
      }

      dispatch_semaphore_signal(v53->_duetDispatchSemaphore);
      v50 = v44[5];
    }
  }

  objc_sync_exit(self);
  v6 = v50;
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v43, 8);
  return v6;
}

uint64_t __47__SunriseSunsetProvider_copySunriseSunsetInfo___block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) copySunsetSunriseInfoFromContext];
  dispatch_semaphore_signal(*(*(a1 + 32) + 48));
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (*(*(a1 + 32) + 8))
    {
      v6 = *(*(a1 + 32) + 8);
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

    v11 = v6;
    v10 = 2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "timeout detected, calling back with an update", v9, 2u);
    }

    if (*(*(a1 + 32) + 64))
    {
      v1 = *(*(*(a1 + 40) + 8) + 40);
      (*(*(*(a1 + 32) + 64) + 16))();
    }

    MEMORY[0x1E69E5920](*(*(*(a1 + 40) + 8) + 40));
  }

  return objc_sync_exit(obj);
}

- (void)updateSunriseSunsetInfo
{
  v18 = self;
  v17 = a2;
  objc_sync_enter(self);
  if (v18->_sunriseSunsetNotificationEnabled && v18->_duetDispatchSemaphore && !dispatch_semaphore_wait(v18->_duetDispatchSemaphore, 0))
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __48__SunriseSunsetProvider_updateSunriseSunsetInfo__block_invoke;
    v15 = &unk_1E867B480;
    v16 = v18;
    dispatch_async(global_queue, &block);
  }

  else
  {
    if (v18->_logHandle)
    {
      logHandle = v18->_logHandle;
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
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      log = v10;
      v4 = type;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_1DE8E5000, log, v4, "already stuck in a duet query, passing", v8, 2u);
    }
  }

  objc_sync_exit(self);
}

uint64_t __48__SunriseSunsetProvider_updateSunriseSunsetInfo__block_invoke(uint64_t a1)
{
  v13 = a1;
  v12 = a1;
  v11 = [*(a1 + 32) copySunsetSunriseInfoFromContext];
  dispatch_semaphore_signal(*(*(a1 + 32) + 48));
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
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

  v10 = v5;
  v9 = 2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "calling back with sun schedule update", v8, 2u);
  }

  if (*(*(a1 + 32) + 64))
  {
    (*(*(*(a1 + 32) + 64) + 16))();
  }

  MEMORY[0x1E69E5920](v11);
  return objc_sync_exit(obj);
}

@end