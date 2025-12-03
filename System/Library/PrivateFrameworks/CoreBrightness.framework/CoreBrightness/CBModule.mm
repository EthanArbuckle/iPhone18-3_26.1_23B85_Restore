@interface CBModule
- (CBModule)initWithQueue:(id)queue;
- (void)dealloc;
- (void)registerNotificationBlock:(id)block;
- (void)sendNotificationForKey:(id)key withValue:(id)value;
- (void)unregisterNotificationBlock;
@end

@implementation CBModule

- (CBModule)initWithQueue:(id)queue
{
  selfCopy = self;
  v6 = a2;
  queueCopy = queue;
  if (!queue)
  {
    return 0;
  }

  v4.receiver = selfCopy;
  v4.super_class = CBModule;
  selfCopy = [(CBModule *)&v4 init];
  if (selfCopy)
  {
    *(selfCopy + 3) = queueCopy;
    dispatch_retain(*(selfCopy + 3));
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBModule;
  [(CBModule *)&v2 dealloc];
}

- (void)sendNotificationForKey:(id)key withValue:(id)value
{
  if (self->_notificationBlock)
  {
    (*(self->_notificationBlock + 2))();
  }
}

- (void)registerNotificationBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
  [(CBModule *)self unregisterNotificationBlock];
  if (block)
  {
    self->_notificationBlock = _Block_copy(block);
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
  selfCopy = self;
  v9 = a2;
  if (self->_notificationBlock)
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
    v7 = 2;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
    }

    _Block_release(selfCopy->_notificationBlock);
    selfCopy->_notificationBlock = 0;
  }
}

@end