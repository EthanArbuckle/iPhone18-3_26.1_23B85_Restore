@interface FKDelayedOperation
- (FKDelayedOperation)initWithQueue:(id)a3 delay:(double)a4 block:(id)a5;
- (void)_queue_executeBlock;
- (void)execute;
- (void)invalidate;
@end

@implementation FKDelayedOperation

- (FKDelayedOperation)initWithQueue:(id)a3 delay:(double)a4 block:(id)a5
{
  v9 = a3;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = FKDelayedOperation;
  v11 = [(FKDelayedOperation *)&v20 init];
  if (v11)
  {
    v12 = MEMORY[0x24C252D80](v10);
    v13 = *(v11 + 1);
    *(v11 + 1) = v12;

    objc_storeStrong(v11 + 2, a3);
    *(v11 + 4) = 0;
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v11 + 2));
    v15 = *(v11 + 5);
    *(v11 + 5) = v14;

    *(v11 + 6) = a4;
    v16 = *(v11 + 5);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __48__FKDelayedOperation_initWithQueue_delay_block___block_invoke;
    handler[3] = &unk_27916A108;
    v19 = v11;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(*(v11 + 5));
  }

  return v11;
}

uint64_t __48__FKDelayedOperation_initWithQueue_delay_block___block_invoke(uint64_t result)
{
  v1 = 1;
  atomic_compare_exchange_strong_explicit((*(result + 32) + 24), &v1, 0, memory_order_relaxed, memory_order_relaxed);
  if (v1 == 1)
  {
    return [*(result + 32) _queue_executeBlock];
  }

  return result;
}

- (void)execute
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_lastExecution + self->_delay;
  if (v3 >= CFAbsoluteTimeGetCurrent())
  {
    v5 = 0;
    atomic_compare_exchange_strong_explicit(&self->_blockEnqueued, &v5, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v5)
    {
      timerSource = self->_timerSource;
      v7 = dispatch_walltime(0, (self->_delay * 1000000000.0));

      dispatch_source_set_timer(timerSource, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  else
  {
    [(FKDelayedOperation *)self _queue_updateLastExecution];
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__FKDelayedOperation_execute__block_invoke;
    block[3] = &unk_27916A108;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)invalidate
{
  dispatch_source_cancel(self->_timerSource);
  timerSource = self->_timerSource;
  self->_timerSource = 0;

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__FKDelayedOperation_invalidate__block_invoke;
  block[3] = &unk_27916A108;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__FKDelayedOperation_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)_queue_executeBlock
{
  [(FKDelayedOperation *)self _queue_updateLastExecution];
  block = self->_block;
  if (block)
  {
    v4 = *(block + 2);

    v4();
  }
}

@end