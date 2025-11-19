@interface CKContextExecutor
- (CKContextExecutor)initWithContext:(id)a3 workItemQueue:(id)a4 completionQueue:(id)a5 timeoutAfter:(unint64_t)a6 completionHandler:(id)a7;
- (id)context;
- (void)_awaitCompletion;
- (void)addWorkItemToQueue:(id)a3 withWorkItem:(id)a4 andContext:(id)a5;
- (void)dealloc;
- (void)markReadyAndAwaitCompletion;
@end

@implementation CKContextExecutor

- (void)_awaitCompletion
{
  p_done = &self->_done;
  v3 = atomic_load(&self->_done);
  if ((v3 & 1) == 0)
  {
    v5 = dispatch_group_wait(self->_group, self->_timeoutAfter);
    atomic_store(1u, p_done);
    v6 = MEMORY[0x1B8CBE810](self->_completionHandler);
    v7 = v6;
    if (v6)
    {
      v8 = v5 != 0;
      completionQueue = self->_completionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__CKContextExecutor__awaitCompletion__block_invoke;
      block[3] = &unk_1E7CEE518;
      block[4] = self;
      v11 = v6;
      v12 = v8;
      dispatch_sync(completionQueue, block);
    }

    [(NSCondition *)self->_completionCondition signal];
  }
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)dealloc
{
  objc_storeWeak(&self->_context, 0);
  workItemQueue = self->_workItemQueue;
  self->_workItemQueue = 0;

  completionQueue = self->_completionQueue;
  self->_completionQueue = 0;

  group = self->_group;
  self->_group = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  completionCondition = self->_completionCondition;
  self->_completionCondition = 0;

  v8.receiver = self;
  v8.super_class = CKContextExecutor;
  [(CKContextExecutor *)&v8 dealloc];
}

- (CKContextExecutor)initWithContext:(id)a3 workItemQueue:(id)a4 completionQueue:(id)a5 timeoutAfter:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = CKContextExecutor;
  v16 = [(CKContextExecutor *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_context, v12);
    objc_storeStrong(&v17->_workItemQueue, a4);
    objc_storeStrong(&v17->_completionQueue, a5);
    v18 = dispatch_group_create();
    group = v17->_group;
    v17->_group = v18;

    v17->_timeoutAfter = a6;
    v20 = MEMORY[0x1B8CBE810](v15);
    completionHandler = v17->_completionHandler;
    v17->_completionHandler = v20;

    v22 = objc_alloc_init(MEMORY[0x1E696AB30]);
    completionCondition = v17->_completionCondition;
    v17->_completionCondition = v22;

    [(CKContextExecutor *)v17 markIncomplete];
    v24 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__CKContextExecutor_initWithContext_workItemQueue_completionQueue_timeoutAfter_completionHandler___block_invoke;
    block[3] = &unk_1E7CEE308;
    v27 = v17;
    dispatch_async(v24, block);
  }

  else
  {
    (*(v15 + 2))(v15, 0, 0);
  }

  return v17;
}

- (void)markReadyAndAwaitCompletion
{
  dispatch_group_leave(self->_group);
  v3 = atomic_load(&self->_done);
  if ((v3 & 1) == 0)
  {
    completionCondition = self->_completionCondition;

    [(NSCondition *)completionCondition wait];
  }
}

- (void)addWorkItemToQueue:(id)a3 withWorkItem:(id)a4 andContext:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = atomic_load(&self->_done);
  if (v8 && (v10 & 1) == 0)
  {
    v11 = a3;
    v12 = [v8 copy];

    objc_initWeak(&location, self);
    group = self->_group;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__CKContextExecutor_addWorkItemToQueue_withWorkItem_andContext___block_invoke;
    v14[3] = &unk_1E7CEE540;
    objc_copyWeak(&v17, &location);
    v8 = v12;
    v16 = v8;
    v15 = v9;
    dispatch_group_async(group, v11, v14);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

uint64_t __64__CKContextExecutor_addWorkItemToQueue_withWorkItem_andContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 40))
    {
      v3 = atomic_load(WeakRetained + 56);
      if ((v3 & 1) == 0)
      {
        v4 = *(a1 + 32);
        (*(*(a1 + 40) + 16))();
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

@end