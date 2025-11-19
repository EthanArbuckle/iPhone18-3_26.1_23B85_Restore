@interface CBBrightestALSFilter
- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBBrightestALSFilter)init;
- (id)filterEvent:(id)a3;
- (void)dealloc;
- (void)forgetDataForService:(__IOHIDServiceClient *)a3;
@end

@implementation CBBrightestALSFilter

- (CBBrightestALSFilter)init
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CBBrightestALSFilter;
  v7 = [(CBBrightestALSFilter *)&v5 init];
  if (v7)
  {
    v2 = os_log_create("com.apple.CoreBrightness.CBBrightestALSFilter", "default");
    v7->super._logHandle = v2;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7->_alsEvents = v3;
  }

  return v7;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_alsEvents).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBBrightestALSFilter;
  [(CBBrightestALSFilter *)&v3 dealloc];
}

- (id)filterEvent:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = self;
  v21 = a2;
  v20 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v20;
    -[NSMutableDictionary setObject:forKey:](v22->_alsEvents, "setObject:forKey:", v20, [v20 serviceRegistryID]);
    context = objc_autoreleasePoolPush();
    v18 = [(NSMutableDictionary *)v22->_alsEvents keysSortedByValueUsingComparator:&__block_literal_global_6];
    if (v22->super._logHandle)
    {
      logHandle = v22->super._logHandle;
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
      __os_log_helper_16_2_1_8_64(v24, v22->_alsEvents);
      _os_log_debug_impl(&dword_1DE8E5000, v17, v16, "ALS events %@", v24, 0xCu);
    }

    v15 = -[NSMutableDictionary objectForKey:](v22->_alsEvents, "objectForKey:", [v18 objectAtIndexedSubscript:0]);
    if (v15 && (([v15 obstructed] & 1) == 0 || (objc_msgSend(v20, "firstALSSample") & 1) != 0))
    {
      v23 = v15;
      v14 = 1;
    }

    else
    {
      if (v22->super._logHandle)
      {
        v7 = v22->super._logHandle;
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
    v23 = v20;
  }

  *MEMORY[0x1E69E9840];
  return v23;
}

- (void)forgetDataForService:(__IOHIDServiceClient *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  RegistryID = IOHIDServiceClientGetRegistryID(a3);
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

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v5 = 0;
  if ([a4 isEqual:@"DisplayBrightnessFactor"] & 1) != 0 || (objc_msgSend(a4, "isEqual:", @"DisplayBrightnessFactorWithFade"))
  {
    return [(CBBrightestALSFilter *)self displayBrightnessFactorPropertyHandler:a3];
  }

  return v5;
}

- (BOOL)displayBrightnessFactorPropertyHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a3 objectForKey:@"DisplayBrightnessFactor"];
  }

  else
  {
    v7 = a3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 floatValue];
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