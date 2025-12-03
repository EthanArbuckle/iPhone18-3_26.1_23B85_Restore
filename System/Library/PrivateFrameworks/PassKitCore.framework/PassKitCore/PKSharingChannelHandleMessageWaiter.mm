@interface PKSharingChannelHandleMessageWaiter
- (PKSharingChannelHandleMessageWaiter)initWithTimeout:(double)timeout messageHandler:(id)handler invalidationHandler:(id)invalidationHandler replyQueue:(id)queue;
- (void)_endTimeoutTimer;
- (void)_invalidateWithShouldNotify:(BOOL)notify fromTimeout:(BOOL)timeout;
- (void)_messageReceived;
- (void)_startTimeoutTimer;
- (void)startForHandle:(id)handle;
@end

@implementation PKSharingChannelHandleMessageWaiter

- (PKSharingChannelHandleMessageWaiter)initWithTimeout:(double)timeout messageHandler:(id)handler invalidationHandler:(id)invalidationHandler replyQueue:(id)queue
{
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = PKSharingChannelHandleMessageWaiter;
  v13 = [(PKSharingChannelHandleMessageWaiter *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_timeout = timeout;
    v15 = _Block_copy(handlerCopy);
    messageHandler = v14->_messageHandler;
    v14->_messageHandler = v15;

    v17 = _Block_copy(invalidationHandlerCopy);
    invalidationHandler = v14->_invalidationHandler;
    v14->_invalidationHandler = v17;

    objc_storeStrong(&v14->_replyQueue, queue);
    v14->_lock._os_unfair_lock_opaque = 0;
  }

  return v14;
}

- (void)startForHandle:(id)handle
{
  handleCopy = handle;
  objc_storeWeak(&self->_handle, handleCopy);
  [(PKSharingChannelHandleMessageWaiter *)self _startTimeoutTimer];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKSharingChannelHandleMessageWaiter_startForHandle___block_invoke;
  v6[3] = &unk_1E79C4E28;
  v6[4] = self;
  [handleCopy setInvalidationHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PKSharingChannelHandleMessageWaiter_startForHandle___block_invoke_2;
  v5[3] = &unk_1E79C4E28;
  v5[4] = self;
  [handleCopy setMessageReceivedHandler:v5];
}

- (void)_messageReceived
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_messageHandler);
  v4 = v3;
  if (self->_isHandlingMessage)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (!self->_isPendingInvalidation && v3)
    {
      v5 = 1;
      self->_isHandlingMessage = 1;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, self);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__71;
  v21 = __Block_byref_object_dispose__71;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke;
  v13 = &unk_1E79DFFB0;
  objc_copyWeak(&v16, &location);
  v6 = v4;
  v14 = v6;
  v15 = &v17;
  v7 = _Block_copy(&v10);
  v8 = [v7 copy];
  v9 = v18[5];
  v18[5] = v8;

  if (v5)
  {
    v7[2](v7);
  }

  objc_destroyWeak(&v16);
  _Block_object_dispose(&v17, 8);

  objc_destroyWeak(&location);
}

void __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 5);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke_2;
    v7[3] = &unk_1E79DFF88;
    objc_copyWeak(&v10, (a1 + 48));
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    [v4 handleOutstandingMessage:v7];

    objc_destroyWeak(&v10);
  }
}

void __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _endTimeoutTimer];

    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke_3;
    v12[3] = &unk_1E79DFF60;
    objc_copyWeak(&v15, (a1 + 48));
    v10 = v7;
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    (*(v9 + 16))(v9, v5, v12);

    objc_destroyWeak(&v15);
  }

  else
  {
    (*(v6 + 2))(v6, 1);
  }
}

void __55__PKSharingChannelHandleMessageWaiter__messageReceived__block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    os_unfair_lock_lock(v11 + 16);
    v6 = v11[49];
    v7 = objc_loadWeakRetained(v11 + 5);
    v8 = [v7 hasOutstandingMessage];

    v11[48] = v8 & ((v6 | a3) ^ 1);
    os_unfair_lock_unlock(v11 + 16);
    if (a3)
    {
      v9 = v11;
      v10 = 0;
    }

    else
    {
      if (!v6)
      {
        if (v8)
        {
          (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
        }

        else
        {
          [v11 _startTimeoutTimer];
        }

        goto LABEL_7;
      }

      v9 = v11;
      v10 = 1;
    }

    [v9 _invalidateWithShouldNotify:v10 fromTimeout:0];
LABEL_7:
    WeakRetained = v11;
  }
}

- (void)_invalidateWithShouldNotify:(BOOL)notify fromTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  notifyCopy = notify;
  os_unfair_lock_lock(&self->_lock);
  if (self->_isHandlingMessage)
  {
    self->_isPendingInvalidation = 1;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (notifyCopy)
    {
      v11 = _Block_copy(self->_invalidationHandler);
    }

    else
    {
      v11 = 0;
    }

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    messageHandler = self->_messageHandler;
    self->_messageHandler = 0;

    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_handle);
    [WeakRetained setInvalidationHandler:0];

    v10 = objc_loadWeakRetained(&self->_handle);
    [v10 setMessageReceivedHandler:0];

    if (v11)
    {
      v11[2](v11, timeoutCopy);
    }
  }
}

- (void)_startTimeoutTimer
{
  if (self->_timeout > 0.0)
  {
    v13[5] = v2;
    v13[6] = v3;
    os_unfair_lock_lock(&self->_lock);
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
    }

    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_replyQueue);
    v7 = self->_timer;
    self->_timer = v6;

    os_unfair_lock_unlock(&self->_lock);
    v8 = dispatch_time(0, (self->_timeout * 1000000000.0));
    dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    objc_initWeak(v13, self);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__PKSharingChannelHandleMessageWaiter__startTimeoutTimer__block_invoke;
    handler[3] = &unk_1E79C54B8;
    objc_copyWeak(&v12, v13);
    v11 = v6;
    v9 = v6;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(v13);
  }
}

void __57__PKSharingChannelHandleMessageWaiter__startTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    if (v3 == *(a1 + 32))
    {
      WeakRetained[7] = 0;
      v4 = WeakRetained;

      [v4 _invalidateWithShouldNotify:1 fromTimeout:1];
      WeakRetained = v4;
    }
  }
}

- (void)_endTimeoutTimer
{
  os_unfair_lock_lock(&self->_lock);
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end