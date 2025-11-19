@interface MRRateLimiter
- (MRRateLimiter)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6;
- (void)_notify;
- (void)update;
@end

@implementation MRRateLimiter

void __23__MRRateLimiter_update__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  [v2 timeIntervalSinceDate:*(*(a1 + 32) + 32)];
  v4 = *(a1 + 32);
  if (*(v4 + 32) && (v5 = v3, v3 < *(v4 + 48)))
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      *(v4 + 40) = 1;
      objc_initWeak(&location, *(a1 + 32));
      v6 = dispatch_time(0, ((*(*(a1 + 32) + 48) - v5) * 1000000000.0));
      v7 = *(*(a1 + 32) + 16);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __23__MRRateLimiter_update__block_invoke_2;
      v8[3] = &unk_1E769B178;
      objc_copyWeak(&v9, &location);
      dispatch_after(v6, v7, v8);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v4 _notify];
  }
}

- (void)_notify
{
  v3 = [MEMORY[0x1E695DF00] now];
  lastNotificationDate = self->_lastNotificationDate;
  self->_lastNotificationDate = v3;

  v5 = *(self->_block + 2);

  v5();
}

- (void)update
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MRRateLimiter_update__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
}

void __23__MRRateLimiter_update__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[40] = 0;
    v2 = WeakRetained;
    [WeakRetained _notify];
    WeakRetained = v2;
  }
}

- (MRRateLimiter)initWithInterval:(double)a3 name:(id)a4 queue:(id)a5 block:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = MRRateLimiter;
  v14 = [(MRRateLimiter *)&v18 init];
  if (v14)
  {
    if (a3 <= 0.0)
    {
      [MRRateLimiter initWithInterval:name:queue:block:];
    }

    if ([v11 length])
    {
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [MRRateLimiter initWithInterval:name:queue:block:];
      if (v12)
      {
LABEL_6:
        if (v13)
        {
LABEL_7:
          v14->_interval = a3;
          objc_storeStrong(&v14->_name, a4);
          objc_storeStrong(&v14->_queue, a5);
          v14->_lock._os_unfair_lock_opaque = 0;
          v15 = MEMORY[0x1A58E3570](v13);
          block = v14->_block;
          v14->_block = v15;

          goto LABEL_8;
        }

LABEL_11:
        [MRRateLimiter initWithInterval:name:queue:block:];
        goto LABEL_7;
      }
    }

    [MRRateLimiter initWithInterval:name:queue:block:];
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_8:

  return v14;
}

- (void)initWithInterval:name:queue:block:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"interval > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithInterval:name:queue:block:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"name.length > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithInterval:name:queue:block:.cold.3()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithInterval:name:queue:block:.cold.4()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

@end