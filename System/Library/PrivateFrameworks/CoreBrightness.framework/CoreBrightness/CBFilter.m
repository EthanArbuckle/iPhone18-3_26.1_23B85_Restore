@interface CBFilter
- (void)registerNotificationBlock:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)unregisterNotificationBlock;
- (void)unscheduleWithDispatchQueue:(id)a3;
@end

@implementation CBFilter

- (void)scheduleWithDispatchQueue:(id)a3
{
  [(CBFilter *)self unscheduleWithDispatchQueue:a3];
  if (self->_notificationQueue)
  {
    dispatch_release(self->_notificationQueue);
  }

  self->_notificationQueue = a3;
  dispatch_retain(self->_notificationQueue);
}

- (void)unscheduleWithDispatchQueue:(id)a3
{
  if (self->_notificationQueue)
  {
    if (a3 == self->_notificationQueue)
    {
      dispatch_release(self->_notificationQueue);
      self->_notificationQueue = 0;
    }
  }
}

- (void)registerNotificationBlock:(id)a3
{
  [(CBFilter *)self unregisterNotificationBlock];
  if (a3)
  {
    self->_notificationBlock = _Block_copy(a3);
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

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = self;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  if (self->_notificationQueue && v21->_notificationBlock)
  {
    if (v21->_logHandle)
    {
      logHandle = v21->_logHandle;
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
      __os_log_helper_16_2_1_8_64(v22, v19);
      _os_log_debug_impl(&dword_1DE8E5000, v17, v16, "send notification for key = %@", v22, 0xCu);
    }

    v15 = _Block_copy(v21->_notificationBlock);
    if (v15)
    {
      MEMORY[0x1E69E5928](v18);
      MEMORY[0x1E69E5928](v19);
      notificationQueue = v21->_notificationQueue;
      block = MEMORY[0x1E69E9820];
      v8 = -1073741824;
      v9 = 0;
      v10 = __44__CBFilter_sendNotificationForKey_andValue___block_invoke;
      v11 = &unk_1E867D1D0;
      v12 = v19;
      v14 = v15;
      v13 = v18;
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