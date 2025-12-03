@interface BrightnessSystemInternal
- (BOOL)initBLControl:(int64_t)control;
- (BOOL)isAlsSupported;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setCombinableProperty:(id)property forKey:(id)key client:(id)client;
- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client;
- (BrightnessSystemInternal)init;
- (id)adjustDictionaryToBeValidPropertyList:(id)list;
- (id)copyPropertyForKey:(id)key client:(id)client;
- (id)newAggregatedPropertyForCombinablePropertiesForKey:(id)key;
- (void)clientConnectedWithExpObj:(id)obj;
- (void)clientDisconnectedWithExpObj:(id)obj;
- (void)dealloc;
- (void)destroyServer;
- (void)notifyClientsForProperty:(id)property key:(id)key;
- (void)registerNotificationBlock:(id)block forProperties:(id)properties;
- (void)setNotificationProperties:(id)properties forClient:(id)client;
- (void)setOwnedProperty:(id)property forKey:(id)key client:(id)client;
- (void)undoCombinablePropertiesForClient:(id)client;
- (void)undoOwnedPropertiesForClient:(id)client;
@end

@implementation BrightnessSystemInternal

uint64_t __32__BrightnessSystemInternal_init__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(a1 + 32) + 88))
  {
    v6 = *(a1 + 32);
    [*(v6 + 80) enumerateKeysAndObjectsUsingBlock:?];
    when = dispatch_time(0, 10000000000);
    global_queue = dispatch_get_global_queue(17, 0);
    dispatch_after(when, global_queue, *(*(a1 + 32) + 96));
  }

  return objc_sync_exit(obj);
}

uint64_t __32__BrightnessSystemInternal_init__block_invoke_81(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if ([*(*(a1 + 32) + 80) objectForKey:*(a1 + 40)])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    if (v6)
    {
      [*(*(a1 + 32) + 80) setObject:v6 forKey:*(a1 + 40)];
      MEMORY[0x1E69E5920](v6);
      if (*(*(a1 + 32) + 104))
      {
        v3 = *(*(a1 + 32) + 104);
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

        v3 = inited;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v7, *(a1 + 40));
        _os_log_debug_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_DEBUG, "BSI-barrier: Resetting state for client %@", v7, 0xCu);
      }
    }
  }

  result = objc_sync_exit(obj);
  *MEMORY[0x1E69E9840];
  return result;
}

void __32__BrightnessSystemInternal_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [a3 intValue];
    if (v12)
    {
      if (v12 == 1)
      {
        if (*(*(a1 + 32) + 104))
        {
          v4 = *(*(a1 + 32) + 104);
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

        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v15, a2);
          _os_log_error_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_ERROR, "BSI-barrier: Disabling client %@", v15, 0xCu);
        }

        v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
        if (v8)
        {
          [*(*(a1 + 32) + 80) setObject:v8 forKey:a2];
          MEMORY[0x1E69E5920](v8);
        }
      }
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
      if (v11)
      {
        [*(*(a1 + 32) + 80) setObject:v11 forKey:a2];
        MEMORY[0x1E69E5920](v11);
      }

      v10 = [*(*(a1 + 32) + 48) objectForKey:a2];
      if (*(*(a1 + 32) + 104))
      {
        v6 = *(*(a1 + 32) + 104);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v16, a2, v10);
        _os_log_debug_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEBUG, "BSI-barrier: Sending barrier to client %@, connection %@", v16, 0x16u);
      }

      v9 = *(a1 + 32);
      [v10 scheduleSendBarrierBlock:?];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v8 = 1;
  v7 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  if (v7)
  {
    [v7 setProtocol:&unk_1F59CF618];
    v6 = objc_alloc_init(BacklightdExportedObj);
    if (v6)
    {
      [(BacklightdExportedObj *)v6 setServer:self];
      [(BacklightdExportedObj *)v6 setConnection:connection];
      [connection setExportedInterface:v7];
      [connection setExportedObject:v6];
      v5 = objc_alloc_init(MEMORY[0x1E696B0D0]);
      if (v5)
      {
        [v5 setProtocol:&unk_1F59CD4D8];
        [connection setRemoteObjectInterface:v5];
        [(BrightnessSystemInternal *)self clientConnectedWithExpObj:v6];
        [connection setInvalidationHandler:?];
        [connection setInterruptionHandler:?];
        [connection resume];
      }

      else
      {
        MEMORY[0x1E69E5920](v6);
        MEMORY[0x1E69E5920](v7);
        v8 = 0;
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v7);
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

double __63__BrightnessSystemInternal_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) clientDisconnectedWithExpObj:*(a1 + 40)];
  MEMORY[0x1E69E5920](*(a1 + 48));
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 56)).n128_u64[0];
  return result;
}

double __63__BrightnessSystemInternal_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clientDisconnectedWithExpObj:*(a1 + 40)];
  MEMORY[0x1E69E5920](*(a1 + 48));
  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 56)).n128_u64[0];
  return result;
}

- (void)clientConnectedWithExpObj:(id)obj
{
  objc_sync_enter(self);
  if (!self->_clientsProps)
  {
    self->_clientsProps = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  copyClientID = [obj copyClientID];
  [(NSMutableDictionary *)self->_clientsProps setObject:v6 forKey:copyClientID];
  *&v3 = MEMORY[0x1E69E5920](v6).n128_u64[0];
  if (!self->_clients)
  {
    self->_clients = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  -[NSMutableDictionary setObject:forKey:](self->_clients, "setObject:forKey:", [obj connection], copyClientID);
  MEMORY[0x1E69E5920](copyClientID);
  objc_sync_exit(self);
}

- (void)clientDisconnectedWithExpObj:(id)obj
{
  copyClientID = [obj copyClientID];
  [(BrightnessSystemInternal *)self undoOwnedPropertiesForClient:copyClientID];
  [(BrightnessSystemInternal *)self undoCombinablePropertiesForClient:copyClientID];
  objc_sync_enter(self);
  if (self->_clientsConnectionState)
  {
    [(NSMutableDictionary *)self->_clientsConnectionState removeObjectForKey:copyClientID];
    if (![(NSMutableDictionary *)self->_clientsConnectionState count])
    {
      MEMORY[0x1E69E5920](self->_clientsConnectionState);
      self->_clientsConnectionState = 0;
    }
  }

  if (self->_clientsProps)
  {
    [(NSMutableDictionary *)self->_clientsProps removeObjectForKey:copyClientID];
    if (![(NSMutableDictionary *)self->_clientsProps count])
    {
      MEMORY[0x1E69E5920](self->_clientsProps);
      self->_clientsProps = 0;
    }
  }

  if (self->_clients)
  {
    [(NSMutableDictionary *)self->_clients removeObjectForKey:copyClientID];
  }

  MEMORY[0x1E69E5920](copyClientID);
  objc_sync_exit(self);
}

- (void)destroyServer
{
  objc_sync_enter(self);
  self->_checkConnections = 0;
  [(NSXPCListener *)self->_listener invalidate];
  [(BLControl *)self->bl stop];
  [(BrightnessSystemInternal *)self registerNotificationBlock:0];
  if (self->_clients)
  {
    [(NSMutableDictionary *)self->_clients enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];
  }

  objc_sync_exit(self);
}

uint64_t __41__BrightnessSystemInternal_destroyServer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    return [a3 invalidate];
  }

  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_listener);
  selfCopy->_listener = 0;
  MEMORY[0x1E69E5920](selfCopy->bl);
  selfCopy->bl = 0;
  MEMORY[0x1E69E5920](selfCopy->_callbackProps);
  selfCopy->_callbackProps = 0;
  MEMORY[0x1E69E5920](selfCopy->_ownedProps);
  selfCopy->_ownedProps = 0;
  MEMORY[0x1E69E5920](selfCopy->_combinableProps);
  selfCopy->_combinableProps = 0;
  MEMORY[0x1E69E5920](selfCopy->_clients);
  selfCopy->_clients = 0;
  v2 = MEMORY[0x1E69E5920](selfCopy->_clientsConnectionState).n128_u64[0];
  selfCopy->_clientsConnectionState = 0;
  if (selfCopy->_logHandle)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_logHandle).n128_u64[0];
    selfCopy->_logHandle = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = BrightnessSystemInternal;
  [(BrightnessSystemInternal *)&v3 dealloc];
}

- (void)notifyClientsForProperty:(id)property key:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_64_8_64(v9, key, property);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "key=%@ property=%@", v9, 0x16u);
  }

  objc_sync_enter(self);
  [(NSMutableDictionary *)self->_clientsProps enumerateKeysAndObjectsUsingBlock:?];
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

uint64_t __57__BrightnessSystemInternal_notifyClientsForProperty_key___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      result = [a3 indexOfObject:a1[4]];
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((*(a1[5] + 88) & 1) == 0 || (result = [objc_msgSend(*(a1[5] + 80) objectForKey:{a2), "intValue"}], result != 2))
        {
          if (*(a1[5] + 104))
          {
            v5 = *(a1[5] + 104);
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

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v9, a2);
            _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "passed for client %@", v9, 0xCu);
          }

          result = [objc_msgSend(objc_msgSend(*(a1[5] + 48) objectForKey:{a2), "remoteObjectProxy"), "notifyChangedProperty:value:", a1[4], a1[6]}];
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return result;
}

- (BrightnessSystemInternal)init
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v27 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = CFPreferencesGetAppBooleanValue(@"CBInitNotificationPreference", @"com.apple.CoreBrightness", 0) != 0;
  if (v25)
  {
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
  }

  v24.receiver = selfCopy;
  v24.super_class = BrightnessSystemInternal;
  selfCopy = [(BrightnessSystemInternal *)&v24 init];
  if (selfCopy)
  {
    v2 = os_log_create("com.apple.CoreBrightness.BrightnessSystemInternal", "default");
    *(selfCopy + 13) = v2;
    if (!*(selfCopy + 13))
    {
      v13 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v23 = v13;
      v22 = 16;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        log = v23;
        type = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v21, 2u);
      }
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(selfCopy + 3) = v3;
    v20 = 0;
    if (CBU_IsInternalBuild() & 1) != 0 && (CBU_IsTestModeEnabled())
    {
      v20 = [selfCopy initBLControl:2];
    }

    else
    {
      v20 = [selfCopy initBLControl:1];
    }

    if (v20)
    {
      v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.backlightd"];
      *(selfCopy + 5) = v4;
      if (*(selfCopy + 5))
      {
        [*(selfCopy + 5) setDelegate:selfCopy];
        [*(selfCopy + 5) resume];
      }

      *(selfCopy + 88) = 1;
      v14 = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __32__BrightnessSystemInternal_init__block_invoke;
      v18 = &unk_1E867B480;
      v19 = selfCopy;
      v5 = [&v14 copy];
      *(selfCopy + 12) = v5;
      when = dispatch_time(0, 10000000000);
      global_queue = dispatch_get_global_queue(17, 0);
      dispatch_after(when, global_queue, *(selfCopy + 12));
      *(selfCopy + 14) = CFAbsoluteTimeGetCurrent() - Current;
      if (*(selfCopy + 13))
      {
        v9 = *(selfCopy + 13);
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

        v9 = inited;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v29, *(selfCopy + 14));
        _os_log_debug_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_DEBUG, "Init done after %0.4fs", v29, 0xCu);
      }
    }

    if (v25)
    {
      [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
    }
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)initBLControl:(int64_t)control
{
  v17 = *MEMORY[0x1E69E9840];
  if ((CBU_IsInternalBuild() & 1) != 0 || control == 1)
  {
    v10 = 0;
    if (self->bl)
    {
      [(BLControl *)self->bl stop];
      MEMORY[0x1E69E5920](self->bl);
      self->bl = 0;
    }

    if (control == 1)
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
        __os_log_helper_16_0_1_4_0(v15, control);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Set Default %d BLControl", v15, 8u);
      }

      self->bl = objc_alloc_init(BLControl);
    }

    else if (control == 2)
    {
      if (self->_logHandle)
      {
        v5 = self->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v4 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v4 = init_default_corebrightness_log();
        }

        v5 = v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_4_0(v14, control);
        _os_log_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEFAULT, "Set Test Mode %d BLControl", v14, 8u);
      }

      self->bl = objc_alloc_init(TMBLControl);
    }

    else
    {
      self->bl = objc_alloc_init(BLControl);
    }

    if (self->bl)
    {
      if ([(BLControl *)self->bl start])
      {
        [(BLControl *)self->bl registerNotificationBlock:?];
        v10 = 1;
      }

      else
      {
        MEMORY[0x1E69E5920](self->bl);
        self->bl = 0;
      }
    }

    v13 = v10 & 1;
  }

  else
  {
    if (self->_logHandle)
    {
      v9 = self->_logHandle;
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v16, control);
      _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "Failed to init %d BLControl - non internal build.", v16, 8u);
    }

    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

uint64_t __42__BrightnessSystemInternal_initBLControl___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (*(*(a1 + 32) + 16) && ([*(*(a1 + 32) + 24) containsObject:a2] & 1) != 0)
  {
    v8 = 0;
    if (CBU_IsAccessory())
    {
      v8 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [a3 valueForKey:@"Brightness"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 floatValue];
          if (v3 == *(*(a1 + 32) + 32))
          {
            v8 = 0;
          }

          else
          {
            *(*(a1 + 32) + 32) = v3;
            v8 = 1;
          }
        }
      }
    }

    if (v8)
    {
      (*(*(*(a1 + 32) + 16) + 16))();
    }
  }

  objc_sync_exit(obj);
  return [*(a1 + 32) notifyClientsForProperty:a3 key:a2];
}

- (void)setNotificationProperties:(id)properties forClient:(id)client
{
  v11 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v10, client, properties);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "client=%@ keys=%@", v10, 0x16u);
  }

  if (properties && client)
  {
    objc_sync_enter(self);
    [(NSMutableDictionary *)self->_clientsProps setObject:properties forKey:client];
    if (self->_checkConnections)
    {
      if ([properties count])
      {
        if (!self->_clientsConnectionState)
        {
          self->_clientsConnectionState = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        if (![(NSMutableDictionary *)self->_clientsConnectionState objectForKey:client])
        {
          v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
          if (v6)
          {
            [(NSMutableDictionary *)self->_clientsConnectionState setObject:v6 forKey:client];
            MEMORY[0x1E69E5920](v6);
          }
        }
      }

      else
      {
        [(NSMutableDictionary *)self->_clientsConnectionState removeObjectForKey:client];
      }
    }

    objc_sync_exit(self);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client
{
  v15 = *MEMORY[0x1E69E9840];
  if ([key isEqual:@"BLControlType"] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = -[BrightnessSystemInternal initBLControl:](self, "initBLControl:", [property intValue]);
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
      __os_log_helper_16_0_2_4_0_4_0(v14, [property intValue], v8);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Switched BLControl to type = %d result = %d", v14, 0xEu);
    }

    v13 = v8;
  }

  else if (self->bl)
  {
    [(BrightnessSystemInternal *)self setOwnedProperty:property forKey:key client:client];
    if ([(BrightnessSystemInternal *)self isACombinableProperty:key])
    {
      v13 = [(BrightnessSystemInternal *)self setCombinableProperty:property forKey:key client:client];
    }

    else
    {
      v13 = [(BLControl *)self->bl setPropertyWithKey:key property:property client:client];
    }
  }

  else
  {
    v13 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (id)adjustDictionaryToBeValidPropertyList:(id)list
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = objc_opt_new();
    memset(__b, 0, sizeof(__b));
    obj = listCopy;
    v17 = [listCopy countByEnumeratingWithState:__b objects:v29 count:16];
    if (v17)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v22 = 0;
        v22 = *(__b[1] + 8 * v14);
        v11 = v23;
        v10 = -[BrightnessSystemInternal adjustDictionaryToBeValidPropertyList:](selfCopy, "adjustDictionaryToBeValidPropertyList:", [listCopy objectForKeyedSubscript:v22]);
        [v11 setObject:v10 forKey:{objc_msgSend(v22, "description")}];
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    v27 = v23;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_opt_new();
      memset(v18, 0, sizeof(v18));
      v8 = listCopy;
      v9 = [listCopy countByEnumeratingWithState:v18 objects:v28 count:16];
      if (v9)
      {
        v5 = *v18[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*v18[2] != v5)
          {
            objc_enumerationMutation(v8);
          }

          v19 = 0;
          v19 = *(v18[1] + 8 * v6);
          [v20 addObject:{-[BrightnessSystemInternal adjustDictionaryToBeValidPropertyList:](selfCopy, "adjustDictionaryToBeValidPropertyList:", v19)}];
          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [v8 countByEnumeratingWithState:v18 objects:v28 count:16];
            if (!v7)
            {
              break;
            }
          }
        }
      }

      v27 = v20;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v27 = listCopy;
      }

      else
      {
        v27 = [listCopy description];
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v27;
}

- (id)copyPropertyForKey:(id)key client:(id)client
{
  v16 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v15, client, key);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "client=%@ key=%@", v15, 0x16u);
  }

  if ([key isEqual:@"CBSystemInitDuration"])
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_initDuration];
  }

  else if (self->bl)
  {
    if ([(BrightnessSystemInternal *)self isACombinableProperty:key])
    {
      v10 = [(BrightnessSystemInternal *)self newAggregatedPropertyForCombinablePropertiesForKey:key];
    }

    else
    {
      v10 = [(BLControl *)self->bl copyPropertyWithKey:key client:client];
    }

    keyCopy = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyCopy = key;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        keyCopy = [key getKeyString];
      }
    }

    if ([keyCopy isEqualToString:@"StatusInfo"])
    {
      context = objc_autoreleasePoolPush();
      v8 = [(BrightnessSystemInternal *)self adjustDictionaryToBeValidPropertyList:v10];
      v10 = MEMORY[0x1E69E5928](v8);
      objc_autoreleasePoolPop(context);
    }

    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isAlsSupported
{
  v3 = 0;
  cf1 = [(BrightnessSystemInternal *)self copyPropertyForKey:@"BLControlAlsSupported" client:0];
  if (cf1)
  {
    v3 = CFEqual(cf1, *MEMORY[0x1E695E4D0]) != 0;
    MEMORY[0x1E69E5920](cf1);
  }

  return v3;
}

- (void)registerNotificationBlock:(id)block forProperties:(id)properties
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  blockCopy = block;
  propertiesCopy = properties;
  objc_sync_enter(self);
  if (selfCopy->_callback)
  {
    _Block_release(selfCopy->_callback);
    selfCopy->_callback = 0;
  }

  if (blockCopy)
  {
    selfCopy->_callback = _Block_copy(blockCopy);
  }

  [(NSMutableArray *)selfCopy->_callbackProps removeAllObjects];
  if (propertiesCopy)
  {
    memset(__b, 0, sizeof(__b));
    obj = propertiesCopy;
    v10 = [propertiesCopy countByEnumeratingWithState:__b objects:v19 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v13 = 0;
        v13 = *(__b[1] + 8 * v7);
        [(NSMutableArray *)selfCopy->_callbackProps addObject:v13, v4];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v4 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
          v7 = 0;
          v8 = v4;
          if (!v4)
          {
            break;
          }
        }
      }
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
}

- (void)setOwnedProperty:(id)property forKey:(id)key client:(id)client
{
  if (client && property && key)
  {
    v8 = 0;
    v7 = 0;
    if ([key isEqual:@"BypassBlueLightReduction"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [property valueForKey:@"BypassBLRValue"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          v7 = [v6 intValue] == 0;
        }
      }
    }

    else if ([key isEqual:@"MinNits"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [property valueForKey:@"nits"];
        [property valueForKey:@"period"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = 1;
            v7 = [v5 intValue] == 0;
          }
        }
      }
    }

    else if ([key isEqual:@"PreStrobe"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 1;
        v7 = [property intValue] == 0;
      }
    }

    else if ([key isEqual:@"CBPersonaEnrollment"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 1;
        v7 = [property intValue] == 0;
      }
    }

    if (v8)
    {
      objc_sync_enter(self);
      if (!self->_ownedProps && !v7)
      {
        self->_ownedProps = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      }

      if (self->_ownedProps)
      {
        if (v7)
        {
          [(NSMutableDictionary *)self->_ownedProps removeObjectForKey:key];
        }

        else
        {
          [(NSMutableDictionary *)self->_ownedProps setObject:client forKey:key];
        }
      }

      objc_sync_exit(self);
    }
  }
}

- (void)undoOwnedPropertiesForClient:(id)client
{
  if (client)
  {
    v15 = 0;
    objc_sync_enter(self);
    if (self->_ownedProps)
    {
      if ([client isEqual:{-[NSMutableDictionary objectForKey:](self->_ownedProps, "objectForKey:", @"BypassBlueLightReduction"}])
      {
        v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        v6 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v3) = 2.0;
        v13 = [v6 initWithFloat:v3];
        if (v14)
        {
          if (v13)
          {
            v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"BypassBLRValue", v13, @"BypassBLRPeriod", 0}];
            if (v12)
            {
              v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v15 setValue:v12 forKey:@"BypassBlueLightReduction"];
              [(NSMutableDictionary *)self->_ownedProps removeObjectForKey:@"BypassBlueLightReduction", MEMORY[0x1E69E5920](v12).n128_f64[0]];
            }
          }
        }

        MEMORY[0x1E69E5920](v14);
        MEMORY[0x1E69E5920](v13);
      }

      if ([client isEqual:{-[NSMutableDictionary objectForKey:](self->_ownedProps, "objectForKey:", @"PreStrobe"}])
      {
        v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        if (v11)
        {
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v15 setValue:v11 forKey:@"PreStrobe"];
          [(NSMutableDictionary *)self->_ownedProps removeObjectForKey:@"PreStrobe", MEMORY[0x1E69E5920](v11).n128_f64[0]];
        }
      }

      if ([client isEqual:{-[NSMutableDictionary objectForKey:](self->_ownedProps, "objectForKey:", @"CBPersonaEnrollment"}])
      {
        v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        if (v10)
        {
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v15 setValue:v10 forKey:@"CBPersonaEnrollment"];
          [(NSMutableDictionary *)self->_ownedProps removeObjectForKey:@"CBPersonaEnrollment", MEMORY[0x1E69E5920](v10).n128_f64[0]];
        }
      }

      if ([client isEqual:{-[NSMutableDictionary objectForKey:](self->_ownedProps, "objectForKey:", @"MinNits"}])
      {
        v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        v5 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v4) = 0.5;
        v8 = [v5 initWithFloat:v4];
        if (v9)
        {
          if (v8)
          {
            v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"nits", v8, @"period", 0}];
            if (v7)
            {
              if (!v15)
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v15 setValue:v7 forKey:@"MinNits"];
              [(NSMutableDictionary *)self->_ownedProps removeObjectForKey:@"MinNits", MEMORY[0x1E69E5920](v7).n128_f64[0]];
            }
          }
        }

        MEMORY[0x1E69E5920](v9);
        MEMORY[0x1E69E5920](v8);
      }
    }

    objc_sync_exit(self);
    if (v15)
    {
      [v15 enumerateKeysAndObjectsUsingBlock:?];
      MEMORY[0x1E69E5920](v15);
    }
  }
}

uint64_t __57__BrightnessSystemInternal_undoOwnedPropertiesForClient___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    return [*(*(a1 + 32) + 8) setPropertyWithKey:a2 property:a3 client:*(a1 + 40)];
  }

  return result;
}

- (BOOL)setCombinableProperty:(id)property forKey:(id)key client:(id)client
{
  v21 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_3_8_64_8_64_8_64(v20, property, key, client);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "setCombinableProperty %@ for key %@ and client %@", v20, 0x20u);
  }

  if (property && key)
  {
    objc_sync_enter(self);
    if (!self->_combinableProps)
    {
      self->_combinableProps = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v12 = [(NSMutableDictionary *)self->_combinableProps objectForKeyedSubscript:key];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_combinableProps setObject:v12 forKeyedSubscript:key];
      MEMORY[0x1E69E5920](v12);
    }

    if (self->_logHandle)
    {
      v7 = self->_logHandle;
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v19, self->_combinableProps);
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "setCombinableProperty _combinableProps is now %@", v19, 0xCu);
    }

    if (client)
    {
      [v12 setObject:property forKeyedSubscript:client];
    }

    else
    {
      [v12 setObject:property forKeyedSubscript:@"server"];
    }

    objc_sync_exit(self);
    v11 = [(BrightnessSystemInternal *)self newAggregatedPropertyForCombinablePropertiesForKey:key];
    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:0x7FFFFFFFFFFFFFFFLL];
    v13 = [(BLControl *)self->bl setPropertyWithKey:key property:v11 client:v10];
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (id)newAggregatedPropertyForCombinablePropertiesForKey:(id)key
{
  v58 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v53 = a2;
  keyCopy = key;
  objc_sync_enter(self);
  v51 = 0;
  context = objc_autoreleasePoolPush();
  if ([keyCopy isEqual:@"CoreBrightnessFeaturesDisabled"])
  {
    v50 = 1.0;
    v49 = 1.0;
    dictionary = 0;
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

    v47 = logHandle;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v57, keyCopy, selfCopy->_combinableProps);
      _os_log_debug_impl(&dword_1DE8E5000, v47, type, "copyAggregatedPropertyForCombinablePropertiesForKey. key: %@, combinableProps: %@", v57, 0x16u);
    }

    if (selfCopy->_combinableProps && -[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_combinableProps, "objectForKeyedSubscript:", keyCopy) && [-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_combinableProps objectForKeyedSubscript:{keyCopy), "count"}])
    {
      v45 = 0;
      v44 = 0;
      v43 = 2.0;
      v42 = 0;
      v41 = 0.0;
      v40 = 10.0;
      v39 = 10.0;
      v38 = 0;
      v37 = 0;
      memset(__b, 0, sizeof(__b));
      obj = [(NSMutableDictionary *)selfCopy->_combinableProps objectForKeyedSubscript:keyCopy];
      v21 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
      if (v21)
      {
        v18 = *__b[2];
        v19 = 0;
        v20 = v21;
        while (1)
        {
          v17 = v19;
          if (*__b[2] != v18)
          {
            objc_enumerationMutation(obj);
          }

          v36 = 0;
          v36 = *(__b[1] + 8 * v19);
          v16 = [(NSMutableDictionary *)selfCopy->_combinableProps objectForKeyedSubscript:keyCopy];
          v34 = [objc_msgSend(v16 objectForKeyedSubscript:{v36), "mutableCopy"}];
          v3 = v34;
          if ([v34 objectForKeyedSubscript:@"Status"])
          {
            [v34 setObject:objc_msgSend(v34 forKeyedSubscript:{"objectForKeyedSubscript:", @"Status", @"DisableWPShift"}];
            if ([v34 objectForKeyedSubscript:@"FixBrightnessNits"] && (objc_msgSend(objc_msgSend(v34, "objectForKeyedSubscript:", @"Status"), "BOOLValue") & 1) != 0)
            {
              [v34 setObject:objc_msgSend(v34 forKeyedSubscript:{"objectForKeyedSubscript:", @"FixBrightnessNits", @"OverrideBrightnessWithFixedNits"}];
            }

            else if ([v34 objectForKeyedSubscript:@"FixBrightness"] && (objc_msgSend(objc_msgSend(v34, "objectForKeyedSubscript:", @"Status"), "BOOLValue") & 1) != 0)
            {
              [v34 setObject:objc_msgSend(v34 forKeyedSubscript:{"objectForKeyedSubscript:", @"FixBrightness", @"OverrideBrightnessWithFixedSliderPosition"}];
            }
          }

          v33 = [v34 objectForKeyedSubscript:@"OverrideBrightnessWithFixedNits"] != 0;
          v32 = [objc_msgSend(v34 objectForKeyedSubscript:{@"DisableWPShift", "BOOLValue"}];
          [objc_msgSend(v34 objectForKeyedSubscript:{@"OverrideBrightnessWithFixedNits", "floatValue"}];
          v31 = v4;
          v30 = [v34 objectForKeyedSubscript:@"OverrideBrightnessWithFixedSliderPosition"] != 0;
          [objc_msgSend(v34 objectForKeyedSubscript:{@"OverrideBrightnessWithFixedSliderPosition", "floatValue"}];
          v29 = v5;
          [objc_msgSend(v34 objectForKeyedSubscript:{@"ReenablementRampPeriod", "floatValue"}];
          v28 = v6;
          [objc_msgSend(v34 objectForKeyedSubscript:{@"DisablementRampPeriod", "floatValue"}];
          v27 = v7;
          if ([v34 objectForKeyedSubscript:@"ReenablementRampPeriod"] && v28 < v39)
          {
            v39 = v28;
            v37 = 1;
          }

          if ([v34 objectForKeyedSubscript:@"DisablementRampPeriod"] && v27 < v40)
          {
            v40 = v27;
            v38 = 1;
          }

          if (v33)
          {
            v45 = 1;
          }

          if (v30)
          {
            v42 = 1;
          }

          if (v32)
          {
            v44 = 1;
          }

          if (v31 > v43)
          {
            v43 = v31;
          }

          if (v29 > v41)
          {
            v41 = v29;
          }

          ++v19;
          if (v17 + 1 >= v20)
          {
            v19 = 0;
            v20 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
            if (!v20)
            {
              break;
            }
          }
        }
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v44 & 1), @"DisableWPShift"}];
      if (v45)
      {
        *&v8 = v43;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v8), @"OverrideBrightnessWithFixedNits"}];
      }

      if (v42)
      {
        *&v8 = v41;
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v8), @"OverrideBrightnessWithFixedSliderPosition"}];
      }

      if (v37)
      {
        v15 = v39;
      }

      else
      {
        v15 = 1.0;
      }

      *&v8 = v15;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v8), @"ReenablementRampPeriod"}];
      if (v38)
      {
        v14 = v40;
      }

      else
      {
        v14 = 1.0;
      }

      *&v9 = v14;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v9), @"DisablementRampPeriod"}];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F59C97B8];
    }

    v51 = MEMORY[0x1E69E5928](dictionary);
    if (selfCopy->_logHandle)
    {
      v13 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v55, v51);
      _os_log_debug_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEBUG, "copyAggregatedPropertyForCombinablePropertiesForKey return dictionary %@", v55, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  v11 = v51;
  objc_sync_exit(self);
  *MEMORY[0x1E69E9840];
  return v11;
}

- (void)undoCombinablePropertiesForClient:(id)client
{
  v35 = *MEMORY[0x1E69E9840];
  obj = self;
  v30 = a2;
  clientCopy = client;
  if (client)
  {
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = obj;
    objc_sync_enter(obj);
    memset(__b, 0, sizeof(__b));
    v17 = *(obj + 9);
    v18 = [v17 countByEnumeratingWithState:__b objects:v34 count:16];
    if (v18)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(v17);
        }

        v27 = 0;
        v27 = *(__b[1] + 8 * v14);
        v25 = [*(obj + 9) objectForKeyedSubscript:v27];
        if ([v25 objectForKeyedSubscript:clientCopy])
        {
          [v25 removeObjectForKey:clientCopy];
          if (*(obj + 13))
          {
            v11 = *(obj + 13);
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

            v11 = inited;
          }

          oslog = v11;
          type = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_1_8_64(v33, clientCopy);
            _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "undoCombinableProperties for client %@", v33, 0xCu);
          }

          [v28 addObject:v27];
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v17 countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    objc_sync_exit(v16);
    memset(v21, 0, sizeof(v21));
    v8 = v28;
    v9 = [v28 countByEnumeratingWithState:v21 objects:v32 count:16];
    if (v9)
    {
      v5 = *v21[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*v21[2] != v5)
        {
          objc_enumerationMutation(v8);
        }

        v22 = 0;
        v22 = *(v21[1] + 8 * v6);
        v20 = [obj newAggregatedPropertyForCombinablePropertiesForKey:v22];
        v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:0x7FFFFFFFFFFFFFFFLL];
        [*(obj + 1) setPropertyWithKey:v22 property:v20 client:v19];
        MEMORY[0x1E69E5920](v19);
        *&v3 = MEMORY[0x1E69E5920](v20).n128_u64[0];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:v21 objects:v32 count:{16, v3}];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v28);
  }

  *MEMORY[0x1E69E9840];
}

@end