@interface AccessoryDetection
- (AccessoryDetection)initWithAABC:(void *)a3;
- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
- (void)start;
@end

@implementation AccessoryDetection

- (AccessoryDetection)initWithAABC:(void *)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = AccessoryDetection;
  v9 = [(AccessoryDetection *)&v6 init];
  v3 = os_log_create("com.apple.CoreBrightness.AccessoryDetection", "default");
  v9->_logHandle = v3;
  v4 = [MEMORY[0x1E6997728] sharedInstance];
  v9->_connection = v4;
  v9->_aabc = v7;
  return v9;
}

- (void)start
{
  v11 = self;
  v10 = a2;
  v9 = [(ACCConnectionInfo *)self->_connection registerDelegate:self];
  if ((v9 & 1) == 0)
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

    v8 = logHandle;
    v7 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ACCConnectionInfo delegate registration failed", v6, 2u);
    }
  }
}

- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  if (self->_logHandle)
  {
    logHandle = v27->_logHandle;
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
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_8_64(v28, [v25 UTF8String], v22);
    _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "CoreAccessories endpoint %s attached with properties=%@", v28, 0x16u);
  }

  if (v24 == 13)
  {
    if (v22)
    {
      v18 = [v22 objectForKey:*MEMORY[0x1E6997738]];
      if (v18)
      {
        valuePtr = 0;
        CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
        if (valuePtr == 86)
        {
          if (v27->_logHandle)
          {
            v11 = v27->_logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v10 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v10 = init_default_corebrightness_log();
            }

            v11 = v10;
          }

          oslog = v11;
          v15 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v8 = oslog;
            v9 = v15;
            __os_log_helper_16_0_0(v14);
            _os_log_debug_impl(&dword_1DE8E5000, v8, v9, "Sleeve attached", v14, 2u);
          }

          v7 = MEMORY[0x1E69E5928](v25);
          v27->_sleeveUUID = v7;
          AABC::SetDeviceInSleeve(v27->_aabc, 1);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if (self->_logHandle)
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

  v14 = logHandle;
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_32(v19, [v16 UTF8String]);
    _os_log_debug_impl(&dword_1DE8E5000, v14, v13, "CoreAccessories endpoint %s detached", v19, 0xCu);
  }

  if (v18->_sleeveUUID && ([v16 isEqualToString:v18->_sleeveUUID] & 1) != 0)
  {
    MEMORY[0x1E69E5920](v18->_sleeveUUID);
    v18->_sleeveUUID = 0;
    AABC::SetDeviceInSleeve(v18->_aabc, 0);
    if (v18->_logHandle)
    {
      v7 = v18->_logHandle;
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

    v12 = v7;
    v11 = 2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v4 = v12;
      v5 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_debug_impl(&dword_1DE8E5000, v4, v5, "Sleeve detached", v10, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

@end