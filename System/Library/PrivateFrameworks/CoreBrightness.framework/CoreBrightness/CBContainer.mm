@interface CBContainer
- (void)dealloc;
- (void)registerNotificationBlock:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)unregisterNotificationBlock;
- (void)unscheduleWithDispatchQueue:(id)a3;
@end

@implementation CBContainer

- (void)scheduleWithDispatchQueue:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (self->_queue)
  {
    [(CBContainer *)v13 unscheduleWithDispatchQueue:v11];
    queue = v13->_queue;
    block = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __41__CBContainer_scheduleWithDispatchQueue___block_invoke;
    v8 = &unk_1E867BB90;
    v9 = v13;
    v10 = v11;
    dispatch_sync(queue, &block);
  }
}

void __41__CBContainer_scheduleWithDispatchQueue___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    dispatch_release(*(*(a1 + 32) + 24));
  }

  *(*(a1 + 32) + 24) = *(a1 + 40);
  dispatch_retain(*(*(a1 + 32) + 24));
}

- (void)unscheduleWithDispatchQueue:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (self->_queue)
  {
    queue = v13->_queue;
    block = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __43__CBContainer_unscheduleWithDispatchQueue___block_invoke;
    v8 = &unk_1E867BB90;
    v9 = v13;
    v10 = v11;
    dispatch_sync(queue, &block);
  }
}

void __43__CBContainer_unscheduleWithDispatchQueue___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    if (*(a1 + 40) == *(*(a1 + 32) + 24))
    {
      dispatch_release(*(*(a1 + 32) + 24));
      *(*(a1 + 32) + 24) = 0;
    }
  }
}

- (void)registerNotificationBlock:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  [(CBContainer *)self unregisterNotificationBlock];
  if (v13->_queue)
  {
    queue = v13->_queue;
    block = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __41__CBContainer_registerNotificationBlock___block_invoke;
    v8 = &unk_1E867C818;
    v10 = v11;
    v9 = v13;
    dispatch_sync(queue, &block);
  }
}

void __41__CBContainer_registerNotificationBlock___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 32) = _Block_copy(*(a1 + 40));
  }

  if (*(*(a1 + 32) + 8))
  {
    v2 = *(*(a1 + 32) + 8);
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

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v4, *(*(a1 + 32) + 32));
    _os_log_debug_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEBUG, "notificationBlock = %p", v4, 0xCu);
  }

  *MEMORY[0x1E69E9840];
}

- (void)unregisterNotificationBlock
{
  v10 = self;
  v9 = a2;
  if (self->_queue)
  {
    queue = v10->_queue;
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = __42__CBContainer_unregisterNotificationBlock__block_invoke;
    v7 = &unk_1E867B480;
    v8 = v10;
    dispatch_sync(queue, &block);
  }
}

void __42__CBContainer_unregisterNotificationBlock__block_invoke(uint64_t a1)
{
  v10 = a1;
  v9 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v4 = *(*(a1 + 32) + 8);
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

  v8 = v4;
  v7 = 2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, &unk_1DEAD656F, v6, 2u);
  }

  if (*(*(a1 + 32) + 32))
  {
    _Block_release(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
  }
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_queue)
  {
    dispatch_release(v4->_queue);
    v4->_queue = 0;
  }

  if (v4->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
    v4->_logHandle = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBContainer;
  [(CBContainer *)&v2 dealloc];
}

@end