@interface CBLowPowerMode
+ (id)levelToString:(int64_t)string;
- (CBLowPowerMode)initWithObservable:(id)observable;
- (void)dealloc;
- (void)deregisterNotificationBlockForCaller:(void *)caller;
- (void)deregisterObserver:(id)observer;
- (void)didChangeToMitigations:(id)mitigations withSessionInfo:(id)info;
- (void)forceMitigationLevel:(int64_t)level;
- (void)registerNotificationBlock:(id)block forCaller:(void *)caller;
- (void)registerObserver:(id)observer;
- (void)start;
- (void)stop;
@end

@implementation CBLowPowerMode

- (CBLowPowerMode)initWithObservable:(id)observable
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  observableCopy = observable;
  v10.receiver = self;
  v10.super_class = CBLowPowerMode;
  selfCopy = [(CBLowPowerMode *)&v10 init];
  v3 = os_log_create("com.apple.CoreBrightness.LowPowerMode", "LowPowerMode");
  *(selfCopy + 1) = v3;
  [selfCopy setObservable:observableCopy];
  *(selfCopy + 48) = 0;
  *(selfCopy + 2) = objc_opt_new();
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::map[abi:de200100](v9);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::operator=[abi:de200100](selfCopy + 3, v9);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::~map[abi:de200100](v9);
  [selfCopy setLastLevel:0];
  v8 = [*(selfCopy + 7) copyCurrentMitigationInfoForClientIdentifier:@"com.apple.CoreBrightness"];
  if (v8)
  {
    mitigationLevel = [v8 mitigationLevel];
  }

  else
  {
    mitigationLevel = 0;
  }

  [selfCopy setLastLevel:mitigationLevel];
  MEMORY[0x1E69E5920](v8);
  if (*(selfCopy + 1))
  {
    v6 = *(selfCopy + 1);
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
    __os_log_helper_16_2_1_8_64(v14, +[CBLowPowerMode levelToString:](CBLowPowerMode, "levelToString:", [selfCopy lastLevel]));
    _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Initial mitigation state set to %@", v14, 0xCu);
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)didChangeToMitigations:(id)mitigations withSessionInfo:(id)info
{
  v34 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v29 = a2;
  mitigationsCopy = mitigations;
  infoCopy = info;
  if (mitigations)
  {
    -[CBLowPowerMode setLastLevel:](selfCopy, "setLastLevel:", [mitigationsCopy mitigationLevel]);
    if (*(selfCopy + 1))
    {
      v16 = *(selfCopy + 1);
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
      v14 = [CBLowPowerMode levelToString:[(CBLowPowerMode *)selfCopy lastLevel]];
      v13 = [*(selfCopy + 2) count];
      v4 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::size[abi:de200100](selfCopy + 24);
      __os_log_helper_16_2_3_8_64_8_0_8_0(v32, v14, v13, v4);
      _os_log_impl(&dword_1DE8E5000, oslog, v23, "Received mitigation level %@. Notifying %ld observers and %lu blocks", v32, 0x20u);
    }

    v10 = selfCopy;
    objc_sync_enter(selfCopy);
    memset(__b, 0, sizeof(__b));
    obj = *(selfCopy + 2);
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
        [v22 didChangeToMitigationLevel:{-[CBLowPowerMode lastLevel](selfCopy, "lastLevel")}];
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

    v20[1] = selfCopy + 24;
    v20[0] = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::begin[abi:de200100]();
    v19 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
    while (std::operator!=[abi:de200100](v20, &v19))
    {
      std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator*[abi:de200100](v20);
      (*(*(v5 + 8) + 16))(*(v5 + 8), [(CBLowPowerMode *)selfCopy lastLevel]);
      std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator++[abi:de200100](v20);
    }

    objc_sync_exit(v10);
  }

  else
  {
    if (*(selfCopy + 1))
    {
      v18 = *(selfCopy + 1);
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

+ (id)levelToString:(int64_t)string
{
  switch(string)
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
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  if (![(CBLowPowerMode *)selfCopy started]&& (_os_feature_enabled_impl() & 1) != 0)
  {
    if (*(selfCopy + 1))
    {
      v5 = *(selfCopy + 1);
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

    [*(selfCopy + 7) addObserver:selfCopy forClientIdentifier:{@"com.apple.CoreBrightness", log}];
    *(selfCopy + 48) = 1;
  }

  objc_sync_exit(self);
}

- (void)stop
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  if ([(CBLowPowerMode *)selfCopy started]&& (_os_feature_enabled_impl() & 1) != 0)
  {
    if (*(selfCopy + 1))
    {
      v5 = *(selfCopy + 1);
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

    [*(selfCopy + 7) removeObserver:selfCopy forClientIdentifier:{@"com.apple.CoreBrightness", log}];
    *(selfCopy + 48) = 0;
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](*(self + 7));
  MEMORY[0x1E69E5920](*(selfCopy + 1));
  *&v2 = MEMORY[0x1E69E5920](*(selfCopy + 2)).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBLowPowerMode;
  [(CBLowPowerMode *)&v3 dealloc];
}

- (void)deregisterObserver:(id)observer
{
  objc_sync_enter(self);
  [*(self + 2) removeObject:observer];
  objc_sync_exit(self);
}

- (void)registerObserver:(id)observer
{
  objc_sync_enter(self);
  [*(self + 2) addObject:observer];
  objc_sync_exit(self);
}

- (void)deregisterNotificationBlockForCaller:(void *)caller
{
  selfCopy = self;
  v7[1] = a2;
  v7[0] = caller;
  objc_sync_enter(self);
  v6 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::find[abi:de200100](selfCopy + 24, v7);
  v5 = std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::end[abi:de200100]();
  if (std::operator!=[abi:de200100](&v6, &v5))
  {
    std::__map_iterator<std::__tree_iterator<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,std::__tree_node<std::__value_type<void *,void({block_pointer})(PMMitigationLevel)>,void *> *,long>>::operator->[abi:de200100](&v6);
    _Block_release(*(v3 + 8));
    std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::erase[abi:de200100](selfCopy + 24, v6);
  }

  objc_sync_exit(self);
}

- (void)registerNotificationBlock:(id)block forCaller:(void *)caller
{
  selfCopy = self;
  v10 = a2;
  blockCopy = block;
  callerCopy = caller;
  objc_sync_enter(self);
  v5 = selfCopy;
  v6 = _Block_copy(blockCopy);
  std::pair<void * const,void({block_pointer})(PMMitigationLevel)>::pair[abi:de200100]<void *&,void({block_pointer})(PMMitigationLevel),0>(&v7, &callerCopy, &v6);
  std::map<void *,void({block_pointer})(PMMitigationLevel),std::less<void *>,std::allocator<std::pair<void * const,void({block_pointer})(PMMitigationLevel)>>>::insert[abi:de200100](v5 + 24, &v7);
  objc_sync_exit(self);
}

- (void)forceMitigationLevel:(int64_t)level
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
    __os_log_helper_16_2_2_8_64_8_0(v8, [CBLowPowerMode levelToString:level], level);
    _os_log_debug_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEBUG, "Forcing mitigation level to %@ (%ld)", v8, 0x16u);
  }

  v5 = [objc_alloc(MEMORY[0x1E69AD3F8]) initWithMitigationLevel:level clientIdentifier:@"com.apple.CoreBrightness"];
  [(CBLowPowerMode *)self didChangeToMitigations:v5 withSessionInfo:0];
  MEMORY[0x1E69E5920](v5);
  *MEMORY[0x1E69E9840];
}

@end