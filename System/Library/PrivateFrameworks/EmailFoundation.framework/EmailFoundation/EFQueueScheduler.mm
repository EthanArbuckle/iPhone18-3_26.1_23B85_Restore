@interface EFQueueScheduler
- (EFQueueScheduler)init;
- (EFQueueScheduler)initWithQueue:(id)a3;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)performCancelableBlock:(id)a3;
- (id)performWithObject:(id)a3;
- (void)assertIsExecuting:(BOOL)a3;
- (void)performBlock:(id)a3;
- (void)performSyncBarrierBlock:(id)a3;
- (void)performSyncBlock:(id)a3;
- (void)performVoucherPreservingBlock:(id)a3;
@end

@implementation EFQueueScheduler

- (EFQueueScheduler)init
{
  v3 = dispatch_get_global_queue(21, 0);
  v4 = [(EFQueueScheduler *)self initWithQueue:v3];

  return v4;
}

- (EFQueueScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EFQueueScheduler;
  v6 = [(EFQueueScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  if ([(EFQueueScheduler *)self prefersImmediateExecution])
  {
    v4[2](v4);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__EFQueueScheduler_performBlock___block_invoke;
    block[3] = &unk_1E8248840;
    v7 = v4;
    dispatch_async(queue, block);
  }
}

uint64_t __33__EFQueueScheduler_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (void)performSyncBlock:(id)a3
{
  v4 = a3;
  if ([(EFQueueScheduler *)self prefersImmediateExecution])
  {
    v4[2](v4);
  }

  else
  {
    v5 = +[EFPriorityDesignator currentDesignatorIfExists];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__EFQueueScheduler_performSyncBlock___block_invoke;
    v8[3] = &unk_1E8248960;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_sync(queue, v8);
  }
}

void __37__EFQueueScheduler_performSyncBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = +[EFPriorityDesignator currentDesignatorIfExists];

  if (v2 != v3)
  {

    +[EFPriorityDesignator destroyCurrentDesignator];
  }
}

- (void)performSyncBarrierBlock:(id)a3
{
  v4 = a3;
  if ([(EFQueueScheduler *)self prefersImmediateExecution])
  {
    v4[2](v4);
  }

  else
  {
    v5 = +[EFPriorityDesignator currentDesignatorIfExists];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__EFQueueScheduler_performSyncBarrierBlock___block_invoke;
    v8[3] = &unk_1E8248960;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_barrier_sync(queue, v8);
  }
}

void __44__EFQueueScheduler_performSyncBarrierBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = +[EFPriorityDesignator currentDesignatorIfExists];

  if (v2 != v3)
  {

    +[EFPriorityDesignator destroyCurrentDesignator];
  }
}

- (void)performVoucherPreservingBlock:(id)a3
{
  v4 = a3;
  if ([(EFQueueScheduler *)self prefersImmediateExecution])
  {
    dispatch_block_perform(DISPATCH_BLOCK_ASSIGN_CURRENT, v4);
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__EFQueueScheduler_performVoucherPreservingBlock___block_invoke;
    block[3] = &unk_1E8248840;
    v8 = v4;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v6);
  }
}

uint64_t __50__EFQueueScheduler_performVoucherPreservingBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  if ([(EFQueueScheduler *)self prefersImmediateExecution])
  {
    v4[2](v4, 0);
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc_init(EFManualCancelationToken);
    queue = self->_queue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__EFQueueScheduler_performCancelableBlock___block_invoke;
    v11[3] = &unk_1E82490A0;
    v8 = v6;
    v12 = v8;
    v13 = v4;
    dispatch_async(queue, v11);
    v9 = v13;
    v5 = v8;
  }

  return v5;
}

uint64_t __43__EFQueueScheduler_performCancelableBlock___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v2 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  if (a3 <= 1.84467441e10)
  {
    v7 = dispatch_time(0, (a3 * 1000000000.0));
  }

  else
  {
    v7 = -1;
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  dispatch_source_set_timer(v8, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__EFQueueScheduler_afterDelay_performBlock___block_invoke;
  handler[3] = &unk_1E8248960;
  v9 = v6;
  v18 = v9;
  v10 = v8;
  v17 = v10;
  dispatch_source_set_event_handler(v10, handler);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__EFQueueScheduler_afterDelay_performBlock___block_invoke_2;
  v14[3] = &unk_1E8248580;
  v15 = v10;
  v11 = v10;
  v12 = [EFManualCancelationToken tokenWithCancelationBlock:v14];
  dispatch_resume(v11);

  return v12;
}

uint64_t __44__EFQueueScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  dispatch_source_cancel(*(a1 + 32));

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (id)performWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() onScheduler:self performWithObject:v4];

  return v5;
}

- (void)assertIsExecuting:(BOOL)a3
{
  queue = self->_queue;
  if (a3)
  {
    dispatch_assert_queue_V2(queue);
  }

  else
  {
    dispatch_assert_queue_not_V2(queue);
  }
}

@end