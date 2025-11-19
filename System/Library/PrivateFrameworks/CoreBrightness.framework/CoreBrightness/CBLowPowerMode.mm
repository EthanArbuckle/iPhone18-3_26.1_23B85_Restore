@interface CBLowPowerMode
+ (id)levelToString:(int64_t)a3;
- (CBLowPowerMode)initWithObservable:(id)a3;
- (void)dealloc;
- (void)deregisterNotificationBlockForCaller:(void *)a3;
- (void)deregisterObserver:(id)a3;
- (void)didChangeToMitigations:(id)a3 withSessionInfo:(id)a4;
- (void)forceMitigationLevel:(int64_t)a3;
- (void)registerNotificationBlock:(id)a3 forCaller:(void *)a4;
- (void)registerObserver:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CBLowPowerMode

- (CBLowPowerMode)initWithObservable:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = CBLowPowerMode;
  v13 = [(CBLowPowerMode *)&v10 init];
  v3 = os_log_create("com.apple.CoreBrightness.LowPowerMode", "LowPowerMode");
  *(v13 + 1) = v3;
  [v13 setObservable:v11];
  *(v13 + 48) = 0;
  *(v13 + 2) = objc_opt_new();
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::map[abi:de200100](v9);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::operator=[abi:de200100](v13 + 3, v9);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::~map[abi:de200100](v9);
  [v13 setLastLevel:0];
  v8 = [*(v13 + 7) copyCurrentMitigationInfoForClientIdentifier:@"com.apple.CoreBrightness"];
  if (v8)
  {
    v7 = [v8 mitigationLevel];
  }

  else
  {
    v7 = 0;
  }

  [v13 setLastLevel:v7];
  MEMORY[0x1E69E5920](v8);
  if (*(v13 + 1))
  {
    v6 = *(v13 + 1);
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

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, +[CBLowPowerMode levelToString:](CBLowPowerMode, "levelToString:", [v13 lastLevel]));
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Initial mitigation state set to %@", v14, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return v13;
}

- (void)didChangeToMitigations:(id)a3 withSessionInfo:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v30 = self;
  v29 = a2;
  v28 = a3;
  v27 = a4;
  if (a3)
  {
    -[CBLowPowerMode setLastLevel:](v30, "setLastLevel:", [v28 mitigationLevel]);
    if (*(v30 + 1))
    {
      v16 = *(v30 + 1);
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

      v16 = inited;
    }

    oslog = v16;
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [CBLowPowerMode levelToString:[(CBLowPowerMode *)v30 lastLevel]];
      v13 = [*(v30 + 2) count];
      v4 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](v30 + 24);
      __os_log_helper_16_2_3_8_64_8_0_8_0(v32, v14, v13, v4);
      _os_log_impl(&dword_1DE8E5000, oslog, v23, "Received mitigation level %@. Notifying %ld observers and %lu blocks", v32, 0x20u);
    }

    v10 = v30;
    objc_sync_enter(v30);
    memset(__b, 0, sizeof(__b));
    obj = *(v30 + 2);
    v12 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
    if (v12)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v12;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v22 = 0;
        v22 = *(__b[1] + 8 * v8);
        [v22 didChangeToMitigationLevel:{-[CBLowPowerMode lastLevel](v30, "lastLevel")}];
        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    v20[1] = v30 + 24;
    v20[0] = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::begin[abi:de200100]();
    v19 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
    while (std::operator!=[abi:de200100](v20, &v19))
    {
      std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator*[abi:de200100](v20);
      (*(*(v5 + 8) + 16))(*(v5 + 8), [(CBLowPowerMode *)v30 lastLevel]);
      std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator++[abi:de200100](v20);
    }

    objc_sync_exit(v10);
  }

  else
  {
    if (*(v30 + 1))
    {
      v18 = *(v30 + 1);
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

    v26 = v18;
    v25 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v33, "[CBLowPowerMode didChangeToMitigations:withSessionInfo:]");
      _os_log_error_impl(&dword_1DE8E5000, v26, v25, "%s called, but no mitigations were provided", v33, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

+ (id)levelToString:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      return @"PMMitigationLevelNone";
    case 20:
      return @"PMMitigationLevelLow";
    case 50:
      return @"PMMitigationLevelMedium";
    case 70:
      return @"PMMitigationLevelHigh";
    case 100:
      return @"PMMitigationLevelExtreme";
  }

  return @"Unknown";
}

- (void)start
{
  v11 = self;
  v10 = a2;
  objc_sync_enter(self);
  if (![(CBLowPowerMode *)v11 started]&& (_os_feature_enabled_impl() & 1) != 0)
  {
    if (*(v11 + 1))
    {
      v5 = *(v11 + 1);
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
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_1DE8E5000, log, type, "Registering for backend notifications", v7, 2u);
    }

    [*(v11 + 7) addObserver:v11 forClientIdentifier:{@"com.apple.CoreBrightness", log}];
    *(v11 + 48) = 1;
  }

  objc_sync_exit(self);
}

- (void)stop
{
  v11 = self;
  v10 = a2;
  objc_sync_enter(self);
  if ([(CBLowPowerMode *)v11 started]&& (_os_feature_enabled_impl() & 1) != 0)
  {
    if (*(v11 + 1))
    {
      v5 = *(v11 + 1);
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
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_1DE8E5000, log, type, "Deregistering for backend notifications", v7, 2u);
    }

    [*(v11 + 7) removeObserver:v11 forClientIdentifier:{@"com.apple.CoreBrightness", log}];
    *(v11 + 48) = 0;
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](*(self + 7));
  MEMORY[0x1E69E5920](*(v5 + 1));
  *&v2 = MEMORY[0x1E69E5920](*(v5 + 2)).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBLowPowerMode;
  [(CBLowPowerMode *)&v3 dealloc];
}

- (void)deregisterObserver:(id)a3
{
  objc_sync_enter(self);
  [*(self + 2) removeObject:a3];
  objc_sync_exit(self);
}

- (void)registerObserver:(id)a3
{
  objc_sync_enter(self);
  [*(self + 2) addObject:a3];
  objc_sync_exit(self);
}

- (void)deregisterNotificationBlockForCaller:(void *)a3
{
  v8 = self;
  v7[1] = a2;
  v7[0] = a3;
  objc_sync_enter(self);
  v6 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::find[abi:de200100](v8 + 24, v7);
  v5 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
  if (std::operator!=[abi:de200100](&v6, &v5))
  {
    std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator->[abi:de200100](&v6);
    _Block_release(*(v3 + 8));
    std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::erase[abi:de200100](v8 + 24, v6);
  }

  objc_sync_exit(self);
}

- (void)registerNotificationBlock:(id)a3 forCaller:(void *)a4
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  objc_sync_enter(self);
  v5 = v11;
  v6 = _Block_copy(v9);
  std::pair<void * const,void({block_pointer})(PMMitigationLevel)>::pair[abi:de200100]<void *&,void({block_pointer})(PMMitigationLevel),0>(&v7, &v8, &v6);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::insert[abi:de200100](v5 + 24, &v7);
  objc_sync_exit(self);
}

- (void)forceMitigationLevel:(int64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(self + 1))
  {
    v4 = *(self + 1);
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

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_0(v8, [CBLowPowerMode levelToString:a3], a3);
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Forcing mitigation level to %@ (%ld)", v8, 0x16u);
  }

  v5 = [objc_alloc(MEMORY[0x1E69AD3F8]) initWithMitigationLevel:a3 clientIdentifier:@"com.apple.CoreBrightness"];
  [(CBLowPowerMode *)self didChangeToMitigations:v5 withSessionInfo:0];
  MEMORY[0x1E69E5920](v5);
  *MEMORY[0x1E69E9840];
}

@end