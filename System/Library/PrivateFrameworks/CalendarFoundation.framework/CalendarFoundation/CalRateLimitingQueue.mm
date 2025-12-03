@interface CalRateLimitingQueue
- (CalRateLimitingQueue)initWithQueue:(id)queue minimumInterval:(double)interval andBlock:(id)block;
- (void)executeBlock;
@end

@implementation CalRateLimitingQueue

- (CalRateLimitingQueue)initWithQueue:(id)queue minimumInterval:(double)interval andBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = CalRateLimitingQueue;
  v10 = [(CalRateLimitingQueue *)&v18 init];
  if (v10)
  {
    if (queueCopy)
    {
      v11 = queueCopy;
      queue = v10->_queue;
      v10->_queue = v11;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_create("CalRateLimitingQueue", queue);
      v14 = v10->_queue;
      v10->_queue = v13;
    }

    v10->_minimumInterval = (interval * 1000000000.0);
    v15 = _Block_copy(blockCopy);
    block = v10->_block;
    v10->_block = v15;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_executionPending = 0;
    v10->_lastExecutionTimestamp = 0;
  }

  return v10;
}

- (void)executeBlock
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_executionPending)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_executionPending = 1;
    v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) - self->_lastExecutionTimestamp;
    minimumInterval = self->_minimumInterval;
    v5 = minimumInterval >= v3;
    v6 = minimumInterval - v3;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = dispatch_time(0, v7);
    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__CalRateLimitingQueue_executeBlock__block_invoke;
    block[3] = &unk_1E7EC66B0;
    block[4] = self;
    dispatch_after(v8, queue, block);
  }
}

void __36__CalRateLimitingQueue_executeBlock__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(a1 + 32) + 28) = 0;
  *(*(a1 + 32) + 32) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v2 = _Block_copy(*(*(a1 + 32) + 8));
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  v2[2]();
}

@end