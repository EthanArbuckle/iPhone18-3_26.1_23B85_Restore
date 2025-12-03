@interface SunriseSunsetProvider
- (SunriseSunsetProvider)initWithCallback:(id)callback;
- (id)copySunriseSunsetInfo:(int)info;
- (id)copySunsetSunriseInfoFromContext;
- (void)dealloc;
- (void)registerBlock:(id)block;
- (void)unregisterBlock;
- (void)unregisterNotification;
- (void)updateSunriseSunsetInfo;
@end

@implementation SunriseSunsetProvider

- (id)copySunsetSunriseInfoFromContext
{
  v26 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  if (self->_duetContextStore)
  {
    if (selfCopy->_duetKeyPath)
    {
      v22 = [(_CDClientContext *)selfCopy->_duetContextStore objectForKeyedSubscript:selfCopy->_duetKeyPath];
      if (v22)
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
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
        currentSunriseKey = [(objc_class *)v18 currentSunriseKey];
        v15 = [v22 objectForKeyedSubscript:currentSunriseKey];
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

- (SunriseSunsetProvider)initWithCallback:(id)callback
{
  selfCopy = self;
  v49 = a2;
  callbackCopy = callback;
  v47.receiver = self;
  v47.super_class = SunriseSunsetProvider;
  selfCopy = [(SunriseSunsetProvider *)&v47 init];
  if (selfCopy)
  {
    if (dlopen("/System/Library/PrivateFrameworks/CoreDuetContext.framework/CoreDuetContext", 1))
    {
      v3 = os_log_create("com.apple.CoreBrightness.NightShift", "sunprovider");
      selfCopy->_logHandle = v3;
      userContext = [NSClassFromString(&cfstr_Cdclientcontex.isa) userContext];
      selfCopy->_duetContextStore = userContext;
      if (selfCopy->_duetContextStore)
      {
        selfCopy->_duetDispatchSemaphore = dispatch_semaphore_create(1);
        if (callbackCopy)
        {
          v5 = _Block_copy(callbackCopy);
          selfCopy->_callbackBlock = v5;
        }

        keyPathForSunriseSunsetDataDictionary = [NSClassFromString(&cfstr_Cdcontextqueri.isa) keyPathForSunriseSunsetDataDictionary];
        selfCopy->_duetKeyPath = keyPathForSunriseSunsetDataDictionary;
        v7 = NSClassFromString(&cfstr_Cdcontextualpr.isa);
        v8 = [(objc_class *)v7 predicateForChangeAtKeyPath:selfCopy->_duetKeyPath];
        selfCopy->_predicate = v8;
        v40 = MEMORY[0x1E69E9820];
        v41 = -1073741824;
        v42 = 0;
        v43 = __42__SunriseSunsetProvider_initWithCallback___block_invoke;
        v44 = &unk_1E867D1F8;
        v45 = selfCopy;
        selfCopy->_duetCallback = &v40;
        v9 = NSClassFromString(&cfstr_Cdcontextualch.isa);
        v10 = [(objc_class *)v9 registrationWithIdentifier:@"com.apple.CoreBrightness.registrationForSunsetSunrise" contextualPredicate:selfCopy->_predicate dismissalPolicy:0 deviceSet:0 mustWake:0 callback:selfCopy->_duetCallback];
        selfCopy->_duetRegistration = v10;
        if (selfCopy->_duetRegistration)
        {
          [(_CDClientContext *)selfCopy->_duetContextStore registerCallback:selfCopy->_duetRegistration];
          selfCopy->_sunriseSunsetNotificationEnabled = 1;
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
        if (selfCopy->_logHandle)
        {
          v23 = selfCopy->_logHandle;
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

        MEMORY[0x1E69E5920](selfCopy);
        return 0;
      }
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v19 = selfCopy->_logHandle;
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

      MEMORY[0x1E69E5920](selfCopy);
      return 0;
    }
  }

  else
  {
    if (MEMORY[8])
    {
      v15 = selfCopy->_logHandle;
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

    MEMORY[0x1E69E5920](selfCopy);
    return 0;
  }

  return selfCopy;
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

- (void)registerBlock:(id)block
{
  selfCopy = self;
  v13 = a2;
  blockCopy = block;
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

  v11 = logHandle;
  v10 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "register async callback block", v9, 2u);
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  if (selfCopy->_callbackBlock)
  {
    _Block_release(selfCopy->_callbackBlock);
    selfCopy->_callbackBlock = 0;
  }

  if (blockCopy)
  {
    v3 = _Block_copy(blockCopy);
    selfCopy->_callbackBlock = v3;
  }

  objc_sync_exit(obj);
}

- (void)unregisterBlock
{
  selfCopy = self;
  v10 = a2;
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

  v9 = logHandle;
  v8 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "unregistering async callback block", v7, 2u);
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  if (selfCopy->_callbackBlock)
  {
    _Block_release(selfCopy->_callbackBlock);
    selfCopy->_callbackBlock = 0;
  }

  objc_sync_exit(obj);
}

- (void)unregisterNotification
{
  selfCopy = self;
  v10 = a2;
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

  v9 = logHandle;
  v8 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "unregistering notification", v7, 2u);
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  if (selfCopy->_duetRegistration)
  {
    [(_CDClientContext *)selfCopy->_duetContextStore deregisterCallback:selfCopy->_duetRegistration];
    MEMORY[0x1E69E5920](selfCopy->_duetRegistration);
  }

  selfCopy->_sunriseSunsetNotificationEnabled = 0;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  selfCopy = self;
  v11 = a2;
  objc_sync_enter(self);
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
    _os_log_impl(&dword_1DE8E5000, log, type, "SunriseSunsetProvider terminating", v8, 2u);
  }

  if (selfCopy->_duetDispatchSemaphore)
  {
    dispatch_semaphore_wait(selfCopy->_duetDispatchSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(selfCopy->_duetDispatchSemaphore);
    selfCopy->_duetDispatchSemaphore = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_duetKeyPath);
  selfCopy->_duetKeyPath = 0;
  MEMORY[0x1E69E5920](selfCopy->_duetContextStore);
  selfCopy->_duetContextStore = 0;
  MEMORY[0x1E69E5920](selfCopy->_predicate);
  selfCopy->_predicate = 0;
  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  objc_sync_exit(self);
  v7.receiver = selfCopy;
  v7.super_class = SunriseSunsetProvider;
  [(SunriseSunsetProvider *)&v7 dealloc];
}

- (id)copySunriseSunsetInfo:(int)info
{
  selfCopy = self;
  v52 = a2;
  infoCopy = info;
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
  if (!selfCopy->_duetDispatchSemaphore || dispatch_semaphore_wait(selfCopy->_duetDispatchSemaphore, 0))
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
    v35 = selfCopy;
    v37 = &v38;
    dispatch_async(global_queue, &block);
    dsema = selfCopy->_duetDispatchSemaphore;
    v4 = dispatch_time(0, 1000000 * infoCopy);
    if (dispatch_semaphore_wait(dsema, v4))
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
      if (selfCopy->_logHandle)
      {
        v18 = selfCopy->_logHandle;
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

      dispatch_semaphore_signal(selfCopy->_duetDispatchSemaphore);
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
  selfCopy = self;
  v17 = a2;
  objc_sync_enter(self);
  if (selfCopy->_sunriseSunsetNotificationEnabled && selfCopy->_duetDispatchSemaphore && !dispatch_semaphore_wait(selfCopy->_duetDispatchSemaphore, 0))
  {
    global_queue = dispatch_get_global_queue(2, 0);
    block = MEMORY[0x1E69E9820];
    v12 = -1073741824;
    v13 = 0;
    v14 = __48__SunriseSunsetProvider_updateSunriseSunsetInfo__block_invoke;
    v15 = &unk_1E867B480;
    v16 = selfCopy;
    dispatch_async(global_queue, &block);
  }

  else
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