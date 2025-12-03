@interface CUTDeferredTaskQueue
- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)capacity queue:(id)queue block:(id)block;
- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)capacity queue:(id)queue block:(id)block;
- (void)cancelPendingExecutions;
- (void)enqueueExecutionWithTarget:(id)target afterDelay:(double)delay;
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
  pendingDispatchBlocks = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  v4 = [pendingDispatchBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pendingDispatchBlocks);
        }

        dispatch_block_cancel(*(*(&v11 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [pendingDispatchBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  pendingDispatchBlocks2 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  [pendingDispatchBlocks2 removeAllObjects];

  pendingDispatchBlocks = self->_pendingDispatchBlocks;
  self->_pendingDispatchBlocks = 0;

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (CUTDeferredTaskQueue)initWithCapacity:(int64_t)capacity queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  if (capacity < 0)
  {
    sub_1B2330D1C();
  }

  v10 = blockCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:capacity];
  v12 = [(CUTDeferredTaskQueue *)self initWithNumberCapacity:v11 queue:queueCopy block:v10];

  return v12;
}

- (CUTDeferredTaskQueue)initWithNumberCapacity:(id)capacity queue:(id)queue block:(id)block
{
  capacityCopy = capacity;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = CUTDeferredTaskQueue;
  v12 = [(CUTDeferredTaskQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_capacity, capacity);
    objc_storeStrong(&v13->_queue, queue);
    v14 = MEMORY[0x1B2746240](blockCopy);
    originalBlock = v13->_originalBlock;
    v13->_originalBlock = v14;
  }

  return v13;
}

- (void)enqueueExecutionWithTarget:(id)target afterDelay:(double)delay
{
  targetCopy = target;
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
  v7 = targetCopy;
  v29 = v7;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  objc_storeWeak(v32 + 5, v8);
  os_unfair_lock_lock(&self->_lock);
  while (1)
  {
    capacity = [(CUTDeferredTaskQueue *)self capacity];
    if (!capacity)
    {
      break;
    }

    pendingDispatchBlocks = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v11 = [pendingDispatchBlocks count];
    capacity2 = [(CUTDeferredTaskQueue *)self capacity];
    integerValue = [capacity2 integerValue];

    if (v11 < integerValue)
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    pendingDispatchBlocks2 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v16 = [pendingDispatchBlocks2 objectAtIndex:0];

    pendingDispatchBlocks3 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    [pendingDispatchBlocks3 removeObjectAtIndex:0];

    dispatch_block_cancel(v16);
    pendingDispatchBlocks4 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
    v19 = [pendingDispatchBlocks4 count];

    if (!v19)
    {
      pendingDispatchBlocks = self->_pendingDispatchBlocks;
      self->_pendingDispatchBlocks = 0;
    }

    objc_autoreleasePoolPop(v14);
  }

  pendingDispatchBlocks5 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];

  if (!pendingDispatchBlocks5)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = self->_pendingDispatchBlocks;
    self->_pendingDispatchBlocks = v22;
  }

  pendingDispatchBlocks6 = [(CUTDeferredTaskQueue *)self pendingDispatchBlocks];
  v25 = MEMORY[0x1B2746240](v8);
  [pendingDispatchBlocks6 addObject:v25];

  v26 = dispatch_time(0, (delay * 1000000000.0));
  queue = [(CUTDeferredTaskQueue *)self queue];
  dispatch_after(v26, queue, v8);

  os_unfair_lock_unlock(&self->_lock);
  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);
}

@end