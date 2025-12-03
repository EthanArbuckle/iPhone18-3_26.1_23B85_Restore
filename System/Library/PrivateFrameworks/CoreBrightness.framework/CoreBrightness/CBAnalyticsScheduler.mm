@interface CBAnalyticsScheduler
+ (id)sharedInstance;
- (CBAnalyticsScheduler)init;
- (int64_t)registerHandler:(id)handler;
- (void)dealloc;
- (void)removeHandler:(int64_t)handler;
- (void)run;
@end

@implementation CBAnalyticsScheduler

+ (id)sharedInstance
{
  selfCopy = self;
  v10 = a2;
  objc_sync_enter(self);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __38__CBAnalyticsScheduler_sharedInstance__block_invoke;
  v8 = &unk_1E867B480;
  v9 = selfCopy;
  v13 = &sharedInstance_onceToken;
  v12 = &v4;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_sync_exit(self);
  return sharedInstance__sharedObject;
}

uint64_t __38__CBAnalyticsScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CBAnalyticsScheduler;
  result = [objc_msgSendSuper2(&v2 alloc)];
  sharedInstance__sharedObject = result;
  return result;
}

- (CBAnalyticsScheduler)init
{
  selfCopy = self;
  v23 = a2;
  v22.receiver = self;
  v22.super_class = CBAnalyticsScheduler;
  selfCopy = [(CBAnalyticsScheduler *)&v22 init];
  if (selfCopy)
  {
    selfCopy->_logHandle = os_log_create("com.apple.CoreBrightness.CBAnalyticsScheduler", "default");
    if (!selfCopy->_logHandle)
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v21 = inited;
      v20 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v21;
        type = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v19, 2u);
      }
    }

    selfCopy->_requests = objc_alloc_init(MEMORY[0x1E695DF90]);
    selfCopy->_requestId = 1;
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v18, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF8]);
    xpc_dictionary_set_string(v18, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
    v12[0] = 0;
    v12[1] = v12;
    v13 = 1375731712;
    v14 = 48;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = selfCopy;
    handler = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __28__CBAnalyticsScheduler_init__block_invoke;
    v10 = &unk_1E867B6E0;
    v11 = v12;
    xpc_activity_register("com.apple.CoreBrightness.Analytics", v18, &handler);
    xpc_release(v18);
    _Block_object_dispose(v12, 8);
  }

  return selfCopy;
}

- (void)run
{
  v8 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_requests copy];
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
    __os_log_helper_16_0_1_8_0(v7, [(NSMutableDictionary *)self->_requests count]);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Running analytics scheduler - got %lu handlers", v7, 0xCu);
  }

  objc_sync_exit(self);
  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
  MEMORY[0x1E69E5920](v5);
  *MEMORY[0x1E69E9840];
}

uint64_t __27__CBAnalyticsScheduler_run__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(a3 + 16))();
  }

  return result;
}

- (int64_t)registerHandler:(id)handler
{
  objc_sync_enter(self);
  context = objc_autoreleasePoolPush();
  v7 = [handler copy];
  -[NSMutableDictionary setObject:forKey:](self->_requests, "setObject:forKey:", v7, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_requestId]);
  requestId = self->_requestId;
  self->_requestId = requestId + 1;
  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
  return requestId;
}

- (void)removeHandler:(int64_t)handler
{
  objc_sync_enter(self);
  context = objc_autoreleasePoolPush();
  -[NSMutableDictionary removeObjectForKey:](self->_requests, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:handler]);
  objc_autoreleasePoolPop(context);
  objc_sync_exit(self);
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  xpc_activity_unregister("com.apple.CoreBrightness.Analytics");
  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_requests).n128_u64[0];
  selfCopy->_requests = 0;
  v3.receiver = selfCopy;
  v3.super_class = CBAnalyticsScheduler;
  [(CBAnalyticsScheduler *)&v3 dealloc];
}

@end