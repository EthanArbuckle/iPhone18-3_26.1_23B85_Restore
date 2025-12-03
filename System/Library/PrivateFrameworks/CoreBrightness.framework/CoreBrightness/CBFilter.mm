@interface CBFilter
- (void)registerNotificationBlock:(id)block;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)unregisterNotificationBlock;
- (void)unscheduleWithDispatchQueue:(id)queue;
@end

@implementation CBFilter

- (void)scheduleWithDispatchQueue:(id)queue
{
  [(CBFilter *)self unscheduleWithDispatchQueue:queue];
  if (self->_notificationQueue)
  {
    dispatch_release(self->_notificationQueue);
  }

  self->_notificationQueue = queue;
  dispatch_retain(self->_notificationQueue);
}

- (void)unscheduleWithDispatchQueue:(id)queue
{
  if (self->_notificationQueue)
  {
    if (queue == self->_notificationQueue)
    {
      dispatch_release(self->_notificationQueue);
      self->_notificationQueue = 0;
    }
  }
}

- (void)registerNotificationBlock:(id)block
{
  [(CBFilter *)self unregisterNotificationBlock];
  if (block)
  {
    self->_notificationBlock = _Block_copy(block);
  }
}

- (void)unregisterNotificationBlock
{
  if (self->_notificationBlock)
  {
    _Block_release(self->_notificationBlock);
    self->_notificationBlock = 0;
  }
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  keyCopy = key;
  valueCopy = value;
  if (self->_notificationQueue && selfCopy->_notificationBlock)
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

    v17 = logHandle;
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v22, keyCopy);
      _os_log_debug_impl(&dword_1DE8E5000, v17, v16, "send notification for key = %@", v22, 0xCu);
    }

    v15 = _Block_copy(selfCopy->_notificationBlock);
    if (v15)
    {
      MEMORY[0x1E69E5928](valueCopy);
      MEMORY[0x1E69E5928](keyCopy);
      notificationQueue = selfCopy->_notificationQueue;
      block = MEMORY[0x1E69E9820];
      v8 = -1073741824;
      v9 = 0;
      v10 = __44__CBFilter_sendNotificationForKey_andValue___block_invoke;
      v11 = &unk_1E867D1D0;
      v12 = keyCopy;
      v14 = v15;
      v13 = valueCopy;
      dispatch_async(notificationQueue, &block);
    }
  }

  *MEMORY[0x1E69E9840];
}

double __44__CBFilter_sendNotificationForKey_andValue___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    _Block_release(*(a1 + 48));
  }

  MEMORY[0x1E69E5920](*(a1 + 40));
  *&result = MEMORY[0x1E69E5920](*(a1 + 32)).n128_u64[0];
  return result;
}

@end