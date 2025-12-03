@interface BrightnessSystemClientInternal
- (BOOL)setProperty:(id)property forKey:(id)key;
- (BOOL)setSyncProperty:(id)property forKey:(id)key;
- (BrightnessSystemClientInternal)init;
- (id)copyPropertyForKey:(id)key;
- (void)addKeyToClientProperties:(id)properties;
- (void)addPropertiesForNotification:(id)notification;
- (void)addPropertyForNotification:(id)notification;
- (void)dealloc;
- (void)registerNotificationBlock:(id)block;
- (void)registerNotificationBlock:(id)block forProperties:(id)properties;
- (void)removeKeyFromClientProperties:(id)properties;
- (void)removePropertiesFromNotification:(id)notification;
- (void)removePropertyFromNotification:(id)notification;
- (void)stopXpcService;
@end

@implementation BrightnessSystemClientInternal

- (BrightnessSystemClientInternal)init
{
  selfCopy = self;
  v22 = a2;
  v21.receiver = self;
  v21.super_class = BrightnessSystemClientInternal;
  selfCopy = [(BrightnessSystemClientInternal *)&v21 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = os_log_create("com.apple.CoreBrightness.BSCI", "default");
  selfCopy->_logHandle = v2;
  if (!selfCopy->_logHandle)
  {
    v16 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v20 = v16;
    v19 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v18, 2u);
    }
  }

  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.backlightd" options:0];
  selfCopy->_connection = v3;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v17 = dispatch_queue_create("com.apple.CoreBrightness.BSCI NSXPC", v4);
  if (v17)
  {
    [(NSXPCConnection *)selfCopy->_connection _setQueue:v17];
    dispatch_release(v17);
  }

  selfCopy->copyPropertyForKeyCompleted = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696AB30]);
  selfCopy->copyPropertyForKeyWaitCondition = v5;
  selfCopy->_useSynchronousRemote = 0;
  if (_os_feature_enabled_impl())
  {
    selfCopy->_useSynchronousRemote = 1;
  }

  if (!selfCopy->_connection)
  {
    goto LABEL_22;
  }

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F59CF618];
  [(NSXPCConnection *)selfCopy->_connection setRemoteObjectInterface:v6];
  [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:?];
  [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:?];
  if (!selfCopy->_useSynchronousRemote)
  {
    v10 = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxyWithErrorHandler:?];
    selfCopy->_remote = v10;
    goto LABEL_17;
  }

  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v8 = dispatch_queue_create("com.apple.CoreBrightness.BSCI serial", v7);
  selfCopy->_serialQueue = v8;
  if (!selfCopy->_serialQueue)
  {
LABEL_22:
    MEMORY[0x1E69E5920](selfCopy);
    return 0;
  }

  v9 = [(NSXPCConnection *)selfCopy->_connection synchronousRemoteObjectProxyWithErrorHandler:?];
  selfCopy->_remote = v9;
LABEL_17:
  if (!selfCopy->_remote)
  {
    goto LABEL_22;
  }

  MEMORY[0x1E69E5928](selfCopy->_remote);
  v11 = objc_alloc_init(BrightnessSystemClientExportedObj);
  selfCopy->exportedObj = v11;
  if (!selfCopy->exportedObj)
  {
    goto LABEL_22;
  }

  [(BrightnessSystemClientExportedObj *)selfCopy->exportedObj setTarget:selfCopy];
  v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F59CD4D8];
  [(NSXPCConnection *)selfCopy->_connection setExportedInterface:v12];
  [(NSXPCConnection *)selfCopy->_connection setExportedObject:selfCopy->exportedObj];
  [(NSXPCConnection *)selfCopy->_connection resume];
  return selfCopy;
}

- (void)stopXpcService
{
  objc_sync_enter(self);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection invalidate];
  MEMORY[0x1E69E5920](self->_remote);
  self->_remote = 0;
  objc_sync_exit(self);
}

- (void)dealloc
{
  selfCopy = self;
  v12 = a2;
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
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "BSCI dealloc", v9, 2u);
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  [(BrightnessSystemClientInternal *)selfCopy registerNotificationBlock:0];
  if (selfCopy->_clientProperties)
  {
    MEMORY[0x1E69E5920](selfCopy->_clientProperties);
    selfCopy->_clientProperties = 0;
  }

  if (selfCopy->_connection)
  {
    MEMORY[0x1E69E5920](selfCopy->_connection);
  }

  if (selfCopy->exportedObj)
  {
    MEMORY[0x1E69E5920](selfCopy->exportedObj);
    selfCopy->exportedObj = 0;
  }

  if (selfCopy->_useSynchronousRemote)
  {
    MEMORY[0x1E69E5920](selfCopy->_serialQueue);
  }

  objc_sync_exit(obj);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->copyPropertyForKeyWaitCondition).n128_u64[0];
  v8.receiver = selfCopy;
  v8.super_class = BrightnessSystemClientInternal;
  [(BrightnessSystemClientInternal *)&v8 dealloc];
}

void __38__BrightnessSystemClientInternal_init__block_invoke(uint64_t a1)
{
  v9 = a1;
  v8 = a1;
  if (*(*(a1 + 32) + 64))
  {
    v4 = *(*(a1 + 32) + 64);
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

  v7 = v4;
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_1DE8E5000, log, type, "Connection invalidated!", v5, 2u);
  }
}

void __38__BrightnessSystemClientInternal_init__block_invoke_66(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  if (*(*(a1 + 32) + 64))
  {
    v6 = *(*(a1 + 32) + 64);
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

  v16 = v6;
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_1DE8E5000, log, type, "Connection interrupted!", v14, 2u);
  }

  if (*(*(a1 + 32) + 49))
  {
    global_queue = dispatch_get_global_queue(25, 0);
    block = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __38__BrightnessSystemClientInternal_init__block_invoke_67;
    v12 = &unk_1E867B480;
    v13 = *(a1 + 32);
    dispatch_async(global_queue, &block);
  }

  else
  {
    obj = *(a1 + 32);
    objc_sync_enter(obj);
    [*(*(a1 + 32) + 16) reconnect];
    if (*(*(a1 + 32) + 32))
    {
      [*(*(a1 + 32) + 16) registerNotificationForProperties:*(*(a1 + 32) + 32)];
    }

    objc_sync_exit(obj);
  }
}

uint64_t __38__BrightnessSystemClientInternal_init__block_invoke_67(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(*(a1 + 32) + 16) reconnect];
  if (*(*(a1 + 32) + 32))
  {
    [*(*(a1 + 32) + 16) registerNotificationForProperties:*(*(a1 + 32) + 32)];
  }

  return objc_sync_exit(obj);
}

void __38__BrightnessSystemClientInternal_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 64))
  {
    v3 = *(*(a1 + 32) + 64);
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v5, a2);
    _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "_connection synchronousRemoteObjectProxyWithErrorHandler error: %{public}@", v5, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

void __38__BrightnessSystemClientInternal_init__block_invoke_70(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 40) lock];
  *(*(a1 + 32) + 48) = 1;
  [*(*(a1 + 32) + 40) signal];
  [*(*(a1 + 32) + 40) unlock];
  if (*(*(a1 + 32) + 64))
  {
    v3 = *(*(a1 + 32) + 64);
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_66(v6, a2);
    _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "_connection remoteObjectProxyWithErrorHandler error: %{public}@", v6, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v24 = a2;
  propertyCopy = property;
  keyCopy = key;
  objc_sync_enter(self);
  if (selfCopy->_remote)
  {
    v20 = [keyCopy copy];
    v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{propertyCopy, 0}];
    if ([keyCopy isEqual:@"DisplayMode"])
    {
      if (selfCopy->_logHandle)
      {
        logHandle = selfCopy->_logHandle;
      }

      else
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v5;
      }

      v18 = logHandle;
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v27, propertyCopy);
        _os_log_impl(&dword_1DE8E5000, v18, v17, "[Display Mode] %@", v27, 0xCu);
      }
    }

    if (selfCopy->_useSynchronousRemote)
    {
      block = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __53__BrightnessSystemClientInternal_setProperty_forKey___block_invoke;
      v12 = &unk_1E867B750;
      v13 = selfCopy;
      v14 = v20;
      v15 = v19;
      v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      dispatch_sync(selfCopy->_serialQueue, v16);
      if (v16)
      {
        _Block_release(v16);
      }
    }

    else
    {
      [selfCopy->_remote clientSetPropertyWithKey:v20 property:v19];
    }

    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v19);
    v21 = 0;
  }

  else
  {
    v26 = 0;
    v21 = 1;
  }

  objc_sync_exit(self);
  if (!v21)
  {
    v26 = 1;
  }

  *MEMORY[0x1E69E9840];
  return v26 & 1;
}

- (BOOL)setSyncProperty:(id)property forKey:(id)key
{
  v21 = &v39;
  v53 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v49 = a2;
  propertyCopy = property;
  keyCopy = key;
  v46 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v41 = 1375731712;
  v42 = 48;
  v43 = __Block_byref_object_copy__1;
  v44 = __Block_byref_object_dispose__1;
  v45 = 0;
  obj = self;
  objc_sync_enter(self);
  if (selfCopy->_remote)
  {
    v19 = [*(v21 + 60) copy];
    v38 = v19;
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    v17 = [v18 initWithObjects:{*(v21 + 68), 0}];
    v37 = v17;
    if (*(*(v21 + 84) + 49))
    {
      block = MEMORY[0x1E69E9820];
      v28 = -1073741824;
      v29 = 0;
      v30 = __57__BrightnessSystemClientInternal_setSyncProperty_forKey___block_invoke;
      v31 = &unk_1E867B4A8;
      v32 = *(v21 + 84);
      v33 = v38;
      v34 = v37;
      v35 = v40;
      v36 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      if (v36)
      {
        dispatch_sync(*(*(v21 + 84) + 56), v36);
        _Block_release(v36);
      }
    }

    else
    {
      oslog = *(*(v21 + 84) + 64);
      type = OS_LOG_TYPE_FAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        log = oslog;
        *v15 = type;
        buf = v24;
        __os_log_helper_16_0_0(v24);
        _os_log_fault_impl(&dword_1DE8E5000, log, v15[0], "non-sycnhronous remote unsupported for set sycn property", buf, 2u);
      }
    }

    MEMORY[0x1E69E5920](v38);
    MEMORY[0x1E69E5920](v37);
    *v21 = 0;
  }

  else
  {
    v51 = v46 & 1;
    *v21 = 1;
  }

  objc_sync_exit(obj);
  if (!*v21)
  {
    if (*(*(v21 + 12) + 40) == *MEMORY[0x1E695E738])
    {
      MEMORY[0x1E69E5920](*(*(v21 + 12) + 40));
      *(*(v21 + 12) + 40) = 0;
    }

    else
    {
      v12 = *(*(v21 + 12) + 40);
      v13 = objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        bOOLValue = [*(*(v21 + 12) + 40) BOOLValue];
        v46 = bOOLValue;
        MEMORY[0x1E69E5920](*(*(v21 + 12) + 40));
      }

      else
      {
        v23 = *(*(v21 + 84) + 64);
        v22 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v7 = v23;
          *v8 = v22;
          v4 = *(*(v21 + 12) + 40);
          v9 = v52;
          __os_log_helper_16_2_1_8_64(v52, v4);
          _os_log_fault_impl(&dword_1DE8E5000, v7, v8[0], "unexpected result from setProperty (sync): %@", v9, 0xCu);
        }
      }
    }

    v51 = v46 & 1;
    *v21 = 1;
  }

  _Block_object_dispose(v40, 8);
  v6 = v51;
  *MEMORY[0x1E69E9840];
  return v51 & 1;
}

uint64_t __57__BrightnessSystemClientInternal_setSyncProperty_forKey___block_invoke(void *a1)
{
  v13 = a1;
  v12 = a1;
  v2 = *(a1[4] + 16);
  v3 = a1[5];
  v4 = a1[6];
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__BrightnessSystemClientInternal_setSyncProperty_forKey___block_invoke_2;
  v10 = &unk_1E867B778;
  v11 = a1[7];
  return [v2 clientSetSYNCPropertyWithKey:v3 property:v4 reply:?];
}

uint64_t __57__BrightnessSystemClientInternal_setSyncProperty_forKey___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  result = [a3 code];
  if (!result)
  {
    result = [objc_msgSend(a2 objectAtIndexedSubscript:{0), "copy"}];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (id)copyPropertyForKey:(id)key
{
  v50 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v46 = a2;
  keyCopy = key;
  v38 = 0;
  v39 = &v38;
  v40 = 1375731712;
  v41 = 48;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  objc_sync_enter(self);
  if (selfCopy->_remote)
  {
    v36 = [keyCopy copy];
    if (selfCopy->_useSynchronousRemote)
    {
      block = MEMORY[0x1E69E9820];
      v28 = -1073741824;
      v29 = 0;
      v30 = __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke;
      v31 = &unk_1E867B7A0;
      v32 = selfCopy;
      v33 = v36;
      v34 = &v38;
      v35 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      dispatch_sync(selfCopy->_serialQueue, v35);
      if (v35)
      {
        _Block_release(v35);
      }
    }

    else
    {
      [(NSCondition *)selfCopy->copyPropertyForKeyWaitCondition lock];
      selfCopy->copyPropertyForKeyCompleted = 0;
      [(NSCondition *)selfCopy->copyPropertyForKeyWaitCondition unlock];
      remote = selfCopy->_remote;
      v20 = MEMORY[0x1E69E9820];
      v21 = -1073741824;
      v22 = 0;
      v23 = __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke_3;
      v24 = &unk_1E867B7C8;
      v26 = &v38;
      v25 = selfCopy;
      [remote clientCopyPropertyWithKey:v36 reply:?];
      [(NSCondition *)selfCopy->copyPropertyForKeyWaitCondition lock];
      while (!selfCopy->copyPropertyForKeyCompleted)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:10.0];
        v18 = ![(NSCondition *)selfCopy->copyPropertyForKeyWaitCondition waitUntilDate:v19];
        MEMORY[0x1E69E5920](v19);
        if (v18)
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

          oslog = logHandle;
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            v11 = type;
            __os_log_helper_16_0_0(v15);
            _os_log_impl(&dword_1DE8E5000, log, v11, "copyPropertyForKeyWaitCondition waitUntilDate timeout", v15, 2u);
          }

          break;
        }
      }

      selfCopy->copyPropertyForKeyCompleted = 0;
      [(NSCondition *)selfCopy->copyPropertyForKeyWaitCondition unlock];
    }

    MEMORY[0x1E69E5920](v36);
    v37 = 0;
  }

  else
  {
    v48 = 0;
    v37 = 1;
  }

  objc_sync_exit(self);
  if (!v37)
  {
    if ([keyCopy isEqual:@"DisplayBrightness"])
    {
      v9 = v39[5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (selfCopy->_logHandle)
        {
          v8 = selfCopy->_logHandle;
        }

        else
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v8 = v7;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v39[5];
          v6 = objc_opt_class();
          __os_log_helper_16_2_1_8_64(v49, v6);
          _os_log_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEFAULT, "Value of the key, kCBDisplayBrightnessKey, is NOT a dictionary class (is a %@ object)", v49, 0xCu);
        }
      }
    }

    if (v39[5] == *MEMORY[0x1E695E738])
    {
      CFRelease(v39[5]);
      v39[5] = 0;
    }

    v48 = v39[5];
    v37 = 1;
  }

  _Block_object_dispose(&v38, 8);
  *MEMORY[0x1E69E9840];
  return v48;
}

uint64_t __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke(void *a1)
{
  v12 = a1;
  v11 = a1;
  v2 = *(a1[4] + 16);
  v3 = a1[5];
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke_2;
  v9 = &unk_1E867B778;
  v10 = a1[6];
  return [v2 clientCopyPropertyWithKey:v3 reply:?];
}

CFTypeRef __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  result = [a3 code];
  if (!result)
  {
    result = [a2 objectAtIndex:0];
    if (result)
    {
      result = CFRetain(result);
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    *(*(*(a1 + 32) + 8) + 40) = v4;
  }

  return result;
}

uint64_t __53__BrightnessSystemClientInternal_copyPropertyForKey___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if (![a3 code])
  {
    v7 = [a2 objectAtIndex:0];
    if (v7)
    {
      v4 = CFRetain(v7);
    }

    else
    {
      v4 = 0;
    }

    *(*(*(a1 + 40) + 8) + 40) = v4;
  }

  [*(*(a1 + 32) + 40) lock];
  *(*(a1 + 32) + 48) = 1;
  [*(*(a1 + 32) + 40) signal];
  return [*(*(a1 + 32) + 40) unlock];
}

- (void)registerNotificationBlock:(id)block
{
  selfCopy = self;
  v11 = a2;
  blockCopy = block;
  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  v9 = inited;
  v8 = 2;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "A client registered for a notification block", v7, 2u);
  }

  obj = selfCopy;
  objc_sync_enter(selfCopy);
  [(BrightnessSystemClientExportedObj *)selfCopy->exportedObj registerNotificationBlock:blockCopy];
  objc_sync_exit(obj);
}

- (void)registerNotificationBlock:(id)block forProperties:(id)properties
{
  objc_sync_enter(self);
  if (self->_remote)
  {
    [(BrightnessSystemClientInternal *)self registerNotificationBlock:0];
    if (self->_clientProperties)
    {
      MEMORY[0x1E69E5920](self->_clientProperties);
      self->_clientProperties = 0;
    }

    if (properties)
    {
      self->_clientProperties = [properties mutableCopy];
    }

    if (self->_clientProperties)
    {
      [self->_remote registerNotificationForProperties:self->_clientProperties];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      [self->_remote registerNotificationForProperties:v4];
      MEMORY[0x1E69E5920](v4);
    }

    [(BrightnessSystemClientInternal *)self registerNotificationBlock:block, v4];
  }

  objc_sync_exit(self);
}

- (void)addPropertiesForNotification:(id)notification
{
  selfCopy = self;
  v11 = a2;
  notificationCopy = notification;
  if (notification)
  {
    obj = selfCopy;
    objc_sync_enter(selfCopy);
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __63__BrightnessSystemClientInternal_addPropertiesForNotification___block_invoke;
    v8 = &unk_1E867B668;
    v9 = selfCopy;
    [notificationCopy enumerateObjectsUsingBlock:?];
    [selfCopy->_remote registerNotificationForProperties:selfCopy->_clientProperties];
    objc_sync_exit(obj);
  }
}

uint64_t __63__BrightnessSystemClientInternal_addPropertiesForNotification___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addKeyToClientProperties:a2];
  }

  return result;
}

- (void)removePropertiesFromNotification:(id)notification
{
  selfCopy = self;
  v11 = a2;
  notificationCopy = notification;
  if (notification)
  {
    obj = selfCopy;
    objc_sync_enter(selfCopy);
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __67__BrightnessSystemClientInternal_removePropertiesFromNotification___block_invoke;
    v8 = &unk_1E867B668;
    v9 = selfCopy;
    [notificationCopy enumerateObjectsUsingBlock:?];
    [selfCopy->_remote registerNotificationForProperties:selfCopy->_clientProperties];
    objc_sync_exit(obj);
  }
}

uint64_t __67__BrightnessSystemClientInternal_removePropertiesFromNotification___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) removeKeyFromClientProperties:a2];
  }

  return result;
}

- (void)addPropertyForNotification:(id)notification
{
  if (notification)
  {
    objc_sync_enter(self);
    [(BrightnessSystemClientInternal *)self addKeyToClientProperties:notification];
    [self->_remote registerNotificationForProperties:self->_clientProperties];
    objc_sync_exit(self);
  }
}

- (void)removePropertyFromNotification:(id)notification
{
  if (notification)
  {
    objc_sync_enter(self);
    [(BrightnessSystemClientInternal *)self removeKeyFromClientProperties:notification];
    [self->_remote registerNotificationForProperties:self->_clientProperties];
    objc_sync_exit(self);
  }
}

- (void)addKeyToClientProperties:(id)properties
{
  objc_sync_enter(self);
  if (!self->_clientProperties)
  {
    self->_clientProperties = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (([(NSMutableArray *)self->_clientProperties containsObject:properties]& 1) == 0)
  {
    [(NSMutableArray *)self->_clientProperties addObject:properties];
  }

  objc_sync_exit(self);
}

- (void)removeKeyFromClientProperties:(id)properties
{
  objc_sync_enter(self);
  if (([(NSMutableArray *)self->_clientProperties containsObject:properties]& 1) != 0)
  {
    [(NSMutableArray *)self->_clientProperties removeObject:properties];
  }

  objc_sync_exit(self);
}

@end