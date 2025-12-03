@interface CBBrightestALSFilter
- (BOOL)displayBrightnessFactorPropertyHandler:(id)handler;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (CBBrightestALSFilter)init;
- (id)filterEvent:(id)event;
- (void)dealloc;
- (void)forgetDataForService:(__IOHIDServiceClient *)service;
@end

@implementation CBBrightestALSFilter

- (CBBrightestALSFilter)init
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CBBrightestALSFilter;
  selfCopy = [(CBBrightestALSFilter *)&v5 init];
  if (selfCopy)
  {
    v2 = os_log_create("com.apple.CoreBrightness.CBBrightestALSFilter", "default");
    selfCopy->super._logHandle = v2;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_alsEvents = v3;
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
    selfCopy->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_alsEvents).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBBrightestALSFilter;
  [(CBBrightestALSFilter *)&v3 dealloc];
}

- (id)filterEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v21 = a2;
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = eventCopy;
    -[NSMutableDictionary setObject:forKey:](selfCopy->_alsEvents, "setObject:forKey:", eventCopy, [eventCopy serviceRegistryID]);
    context = objc_autoreleasePoolPush();
    v18 = [(NSMutableDictionary *)selfCopy->_alsEvents keysSortedByValueUsingComparator:&__block_literal_global_6];
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
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

    v17 = logHandle;
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v24, selfCopy->_alsEvents);
      _os_log_debug_impl(&dword_1DE8E5000, v17, v16, "ALS events %@", v24, 0xCu);
    }

    v15 = -[NSMutableDictionary objectForKey:](selfCopy->_alsEvents, "objectForKey:", [v18 objectAtIndexedSubscript:0]);
    if (v15 && (([v15 obstructed] & 1) == 0 || (objc_msgSend(eventCopy, "firstALSSample") & 1) != 0))
    {
      v23 = v15;
      v14 = 1;
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v7 = selfCopy->super._logHandle;
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
      v12 = 2;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v4 = v13;
        v5 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_1DE8E5000, v4, v5, "Brightest ALS event was not found", v11, 2u);
      }

      v23 = 0;
      v14 = 1;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v23 = eventCopy;
  }

  *MEMORY[0x1E69E9840];
  return v23;
}

- (void)forgetDataForService:(__IOHIDServiceClient *)service
{
  v8 = *MEMORY[0x1E69E9840];
  RegistryID = IOHIDServiceClientGetRegistryID(service);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableDictionary *)self->_alsEvents objectForKey:RegistryID])
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v7, RegistryID);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "forgetting data for service with ID = %@", v7, 0xCu);
    }

    [(NSMutableDictionary *)self->_alsEvents removeObjectForKey:RegistryID];
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v5 = 0;
  if ([key isEqual:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(key, "isEqual:", @"DisplayBrightnessFactorWithFade"))
  {
    return [(CBBrightestALSFilter *)self displayBrightnessFactorPropertyHandler:property];
  }

  return v5;
}

- (BOOL)displayBrightnessFactorPropertyHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    handlerCopy = [handler objectForKey:@"DisplayBrightnessFactor"];
  }

  else
  {
    handlerCopy = handler;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [handlerCopy floatValue];
    if (v3 <= 0.0)
    {
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
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
        __os_log_helper_16_0_1_8_0(v11, [(NSMutableDictionary *)self->_alsEvents count]);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Display off -> stored ALS events (%lu) removed", v11, 0xCu);
      }

      [(NSMutableDictionary *)self->_alsEvents removeAllObjects];
    }

    v8 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v8 & 1;
}

@end