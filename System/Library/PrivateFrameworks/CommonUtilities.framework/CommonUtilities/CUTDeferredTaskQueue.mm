@interface CUTDeferredTaskQueue
- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)a3 queue:(id)a4 block:(id)a5;
- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)a3 queue:(id)a4 block:(id)a5;
- (void)cancelPendingExecutions;
- (void)enqueueExecutionWithTarget:(id)a3 afterDelay:(double)a4;
@end

@implementation CUTDeferredTaskQueue

- (void)cancelPendingExecutions
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_block_cancel(*(*(&v11 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  [v8 removeAllObjects];

  pendingDispatchBlocks = self->_pendingDispatchBlocks;
  self->_pendingDispatchBlocks = 0;

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)a3 queue:(id)a4 block:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 < 0)
  {
    sub_1B2330D1C();
  }

  v10 = v9;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12 = [(CUTDeferredTaskQueue *)self initWithNumberCapacity:v11 queue:v8 block:v10];

  return v12;
}

- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)a3 queue:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CUTDeferredTaskQueue;
  v12 = [(CUTDeferredTaskQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_capacity, a3);
    objc_storeStrong(&v13->_queue, a4);
    v14 = MEMORY[0x1B2746240](v11);
    originalBlock = v13->_originalBlock;
    v13->_originalBlock = v14;
  }

  return v13;
}

- (void)enqueueExecutionWithTarget:(id)a3 afterDelay:(double)a4
{
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3042000000;
  v34 = sub_1B23231D4;
  v35 = sub_1B2322E24;
  v36 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B2323D2C;
  block[3] = &unk_1E7B20C10;
  block[4] = self;
  v30 = &v31;
  v7 = v6;
  v29 = v7;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_storeWeak(v32 + 5, v8);
  os_unfair_lock_lock(&self->_lock);
  while (1)
  {
    v9 = [(CUTDeferredTaskQueue *)self capacity];
    if (!v9)
    {
      break;
    }

    v10 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v11 = [v10 count];
    v12 = [(CUTDeferredTaskQueue *)self capacity];
    v13 = [v12 integerValue];

    if (v11 < v13)
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v16 = [v15 objectAtIndex:0];

    v17 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    [v17 removeObjectAtIndex:0];

    dispatch_block_cancel(v16);
    v18 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v19 = [v18 count];

    if (!v19)
    {
      pendingDispatchBlocks = self->_pendingDispatchBlocks;
      self->_pendingDispatchBlocks = 0;
    }

    objc_autoreleasePoolPop(v14);
  }

  v21 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];

  if (!v21)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = self->_pendingDispatchBlocks;
    self->_pendingDispatchBlocks = v22;
  }

  v24 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  v25 = MEMORY[0x1B2746240](v8);
  [v24 addObject:v25];

  v26 = dispatch_time(0, (a4 * 1000000000.0));
  v27 = [(CUTDeferredTaskQueue *)self queue];
  dispatch_after(v26, v27, v8);

  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);
}

@end