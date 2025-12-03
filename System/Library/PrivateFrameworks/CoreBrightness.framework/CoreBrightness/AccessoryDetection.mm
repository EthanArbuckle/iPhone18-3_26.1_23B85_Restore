@interface AccessoryDetection
- (AccessoryDetection)initWithAABC:(void *)c;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)start;
@end

@implementation AccessoryDetection

- (AccessoryDetection)initWithAABC:(void *)c
{
  selfCopy = self;
  v8 = a2;
  cCopy = c;
  v6.receiver = self;
  v6.super_class = AccessoryDetection;
  selfCopy = [(AccessoryDetection *)&v6 init];
  v3 = os_log_create("com.apple.CoreBrightness.AccessoryDetection", "default");
  selfCopy->_logHandle = v3;
  mEMORY[0x1E6997728] = [MEMORY[0x1E6997728] sharedInstance];
  selfCopy->_connection = mEMORY[0x1E6997728];
  selfCopy->_aabc = cCopy;
  return selfCopy;
}

- (void)start
{
  selfCopy = self;
  v10 = a2;
  v9 = [(ACCConnectionInfo *)self->_connection registerDelegate:self];
  if ((v9 & 1) == 0)
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

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v26 = a2;
  attachedCopy = attached;
  typeCopy = type;
  protocolCopy = protocol;
  propertiesCopy = properties;
  connectionCopy = connection;
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

  v20 = logHandle;
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_8_64(v28, [attachedCopy UTF8String], propertiesCopy);
    _os_log_debug_impl(&dword_1DE8E5000, v20, v19, "CoreAccessories endpoint %s attached with properties=%@", v28, 0x16u);
  }

  if (typeCopy == 13)
  {
    if (propertiesCopy)
    {
      v18 = [propertiesCopy objectForKey:*MEMORY[0x1E6997738]];
      if (v18)
      {
        valuePtr = 0;
        CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
        if (valuePtr == 86)
        {
          if (selfCopy->_logHandle)
          {
            v11 = selfCopy->_logHandle;
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

          v7 = MEMORY[0x1E69E5928](attachedCopy);
          selfCopy->_sleeveUUID = v7;
          AABC::SetDeviceInSleeve(selfCopy->_aabc, 1);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  detachedCopy = detached;
  connectionCopy = connection;
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

  v14 = logHandle;
  v13 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_32(v19, [detachedCopy UTF8String]);
    _os_log_debug_impl(&dword_1DE8E5000, v14, v13, "CoreAccessories endpoint %s detached", v19, 0xCu);
  }

  if (selfCopy->_sleeveUUID && ([detachedCopy isEqualToString:selfCopy->_sleeveUUID] & 1) != 0)
  {
    MEMORY[0x1E69E5920](selfCopy->_sleeveUUID);
    selfCopy->_sleeveUUID = 0;
    AABC::SetDeviceInSleeve(selfCopy->_aabc, 0);
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