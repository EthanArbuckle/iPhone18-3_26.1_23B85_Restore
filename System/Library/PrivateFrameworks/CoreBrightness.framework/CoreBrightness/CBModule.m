@interface CBModule
- (CBModule)initWithQueue:(id)a3;
- (void)dealloc;
- (void)registerNotificationBlock:(id)a3;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
- (void)unregisterNotificationBlock;
@end

@implementation CBModule

- (CBModule)initWithQueue:(id)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  if (!a3)
  {
    return 0;
  }

  v4.receiver = v7;
  v4.super_class = CBModule;
  v7 = [(CBModule *)&v4 init];
  if (v7)
  {
    *(v7 + 3) = v5;
    dispatch_retain(*(v7 + 3));
  }

  return v7;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
    v4->_logHandle = 0;
  }

  if (v4->_queue)
  {
    dispatch_release(v4->_queue);
    v4->_queue = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBModule;
  [(CBModule *)&v2 dealloc];
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  if (self->_notificationBlock)
  {
    (*(self->_notificationBlock + 2))();
  }
}

- (void)registerNotificationBlock:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  [(CBModule *)self unregisterNotificationBlock];
  if (a3)
  {
    self->_notificationBlock = _Block_copy(a3);
  }

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
    __os_log_helper_16_0_1_8_0(v7, self->_notificationBlock);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "notificationBlock = %p", v7, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationBlock
{
  v10 = self;
  v9 = a2;
  if (self->_notificationBlock)
  {
    if (v10->_logHandle)
    {
      logHandle = v10->_logHandle;
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
    v7 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
    }

    _Block_release(v10->_notificationBlock);
    v10->_notificationBlock = 0;
  }
}

@end