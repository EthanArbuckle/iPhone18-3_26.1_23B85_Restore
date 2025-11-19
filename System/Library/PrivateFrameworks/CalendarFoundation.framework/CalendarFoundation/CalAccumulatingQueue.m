@interface CalAccumulatingQueue
- (id)_initWithQueue:(id)a3 andBlock:(id)a4 delay:(double)a5 throttle:(id)a6;
- (void)_callTargetBlockAndReset;
- (void)_cancelPendingTimer;
- (void)_executeBlockWithThrottleBlock;
- (void)_executeBlockWithoutThrottleBlock;
- (void)_scheduleTimerWithDelay:(double)a3;
- (void)executeBlock;
- (void)updateTags:(id)a3 withContext:(id)a4;
- (void)updateTagsAndExecuteBlock:(id)a3 withContext:(id)a4;
@end

@implementation CalAccumulatingQueue

- (id)_initWithQueue:(id)a3 andBlock:(id)a4 delay:(double)a5 throttle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = CalAccumulatingQueue;
  v13 = [(CalAccumulatingQueue *)&v25 init];
  if (v13)
  {
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = dispatch_queue_create("CalAccumulatingQueue", 0);
    }

    queue = v13->_queue;
    v13->_queue = v14;

    v16 = [v11 copy];
    block = v13->_block;
    v13->_block = v16;

    v18 = [v12 copy];
    throttleBlock = v13->_throttleBlock;
    v13->_throttleBlock = v18;

    v20 = [MEMORY[0x1E695DFA8] set];
    tags = v13->_tags;
    v13->_tags = v20;

    v22 = [MEMORY[0x1E695DF90] dictionary];
    context = v13->_context;
    v13->_context = v22;

    v13->_delay = a5;
    v13->_executionPending = 0;
  }

  return v13;
}

- (void)_cancelPendingTimer
{
  dispatch_assert_queue_V2(self->_queue);
  pendingExecutionTimer = self->_pendingExecutionTimer;
  if (pendingExecutionTimer)
  {
    dispatch_source_cancel(pendingExecutionTimer);
    v4 = self->_pendingExecutionTimer;
    self->_pendingExecutionTimer = 0;

    self->_pendingPopTime = 0;
  }
}

- (void)_scheduleTimerWithDelay:(double)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (a3 <= 0.0)
  {
    [(CalAccumulatingQueue *)self _cancelPendingTimer];

    [(CalAccumulatingQueue *)self _callTargetBlockAndReset];
  }

  else
  {
    v5 = dispatch_time(0, (a3 * 1000000000.0));
    if (self->_pendingPopTime - 1 >= v5)
    {
      v6 = v5;
      [(CalAccumulatingQueue *)self _cancelPendingTimer];
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
      pendingExecutionTimer = self->_pendingExecutionTimer;
      self->_pendingExecutionTimer = v7;

      self->_pendingPopTime = v6;
      dispatch_source_set_timer(self->_pendingExecutionTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
      v9 = self->_pendingExecutionTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __48__CalAccumulatingQueue__scheduleTimerWithDelay___block_invoke;
      handler[3] = &unk_1E7EC66B0;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(self->_pendingExecutionTimer);
    }
  }
}

uint64_t __48__CalAccumulatingQueue__scheduleTimerWithDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelPendingTimer];
  v2 = *(a1 + 32);

  return [v2 _callTargetBlockAndReset];
}

- (void)_callTargetBlockAndReset
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self;
  objc_sync_enter(v3);
  v5 = [(NSMutableSet *)v3->_tags allObjects];
  v4 = [(NSMutableDictionary *)v3->_context copy];
  [(NSMutableSet *)v3->_tags removeAllObjects];
  [(NSMutableDictionary *)v3->_context removeAllObjects];
  v3->_executionPending = 0;
  objc_sync_exit(v3);

  if ([v5 count] || objc_msgSend(v4, "count"))
  {
    (*(v3->_block + 2))();
  }
}

- (void)_executeBlockWithoutThrottleBlock
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_executionPending && ((v3 = [(NSMutableSet *)obj->_tags count], v2 = obj, v3) || (v4 = [(NSMutableDictionary *)obj->_context count], v2 = obj, v4)))
  {
    v2->_executionPending = 1;
    objc_sync_exit(v2);

    v5 = dispatch_time(0, (obj->_delay * 1000000000.0));
    queue = obj->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[3] = &unk_1E7EC66B0;
    block[4] = obj;
    block[2] = __57__CalAccumulatingQueue__executeBlockWithoutThrottleBlock__block_invoke;
    dispatch_after(v5, queue, block);
  }

  else
  {
    objc_sync_exit(v2);
  }
}

- (void)_executeBlockWithThrottleBlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CalAccumulatingQueue__executeBlockWithThrottleBlock__block_invoke;
  block[3] = &unk_1E7EC66B0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__CalAccumulatingQueue__executeBlockWithThrottleBlock__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v4 = [*(*(a1 + 32) + 40) allObjects];
  v3 = [*(*(a1 + 32) + 48) copy];
  objc_sync_exit(v2);

  if ([v4 count] || objc_msgSend(v3, "count"))
  {
    (*(*(*(a1 + 32) + 24) + 16))();
    [*(a1 + 32) _scheduleTimerWithDelay:?];
  }
}

- (void)executeBlock
{
  if (self->_throttleBlock)
  {
    [(CalAccumulatingQueue *)self _executeBlockWithThrottleBlock];
  }

  else
  {
    [(CalAccumulatingQueue *)self _executeBlockWithoutThrottleBlock];
  }
}

- (void)updateTags:(id)a3 withContext:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (v6)
  {
    [(NSMutableSet *)v7->_tags addObjectsFromArray:v6];
  }

  v17 = v6;
  if (v18)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v18;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:{16, v6}];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = *v20;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)v7->_context objectForKeyedSubscript:v12];
        v14 = [v8 objectForKeyedSubscript:v12];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v13 arrayByAddingObjectsFromArray:v14];
              [(NSMutableDictionary *)v7->_context setObject:v15 forKeyedSubscript:v12];
LABEL_16:

              goto LABEL_18;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v13 setByAddingObjectsFromSet:v14];
              [(NSMutableDictionary *)v7->_context setObject:v15 forKeyedSubscript:v12];
              goto LABEL_16;
            }
          }
        }

        [(NSMutableDictionary *)v7->_context setObject:v14 forKeyedSubscript:v12];
LABEL_18:
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {
LABEL_20:

        break;
      }
    }
  }

  objc_sync_exit(v7);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateTagsAndExecuteBlock:(id)a3 withContext:(id)a4
{
  [(CalAccumulatingQueue *)self updateTags:a3 withContext:a4];

  [(CalAccumulatingQueue *)self executeBlock];
}

@end