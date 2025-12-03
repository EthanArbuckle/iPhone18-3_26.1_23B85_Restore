@interface FCAsyncOnceOperation
- (BOOL)finishedExecuting;
- (BOOL)finishedExecutingWithFailure;
- (FCAsyncOnceOperation)initWithBlock:(id)block;
- (FCAsyncOnceOperation)initWithTarget:(id)target selector:(SEL)selector;
- (id)executeWithCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)setRelativePriority:(int64_t)priority;
@end

@implementation FCAsyncOnceOperation

- (FCAsyncOnceOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(FCAsyncOnceOperation *)self init];
  if (v5)
  {
    v6 = [blockCopy copy];
    workBlock = v5->_workBlock;
    v5->_workBlock = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (FCAsyncOnceOperation)initWithTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  objc_initWeak(&location, targetCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__FCAsyncOnceOperation_initWithTarget_selector___block_invoke;
  aBlock[3] = &unk_1E7C420E0;
  objc_copyWeak(v11, &location);
  v11[1] = selector;
  v7 = _Block_copy(aBlock);
  v8 = [(FCAsyncOnceOperation *)self initWithBlock:v7];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v8;
}

id __48__FCAsyncOnceOperation_initWithTarget_selector___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = ([WeakRetained methodForSelector:*(a1 + 40)])(WeakRetained, *(a1 + 40), v3);
  }

  else
  {
    v3[2](v3, 0);
    v6 = 0;
  }

  return v6;
}

- (id)executeWithCallbackQueue:(id)queue completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  handlerCopy = handler;
  [(NFMutexLock *)self->_lock lock];
  if (self->_finished)
  {
    [(NFMutexLock *)self->_lock unlock];
    v8 = 0;
  }

  else
  {
    interest = self->_interest;
    if (!interest)
    {
      if (self->_activeGroup && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"already have an active group"];
        *buf = 136315906;
        v24 = "[FCAsyncOnceOperation executeWithCallbackQueue:completionHandler:]";
        v25 = 2080;
        v26 = "FCOnce.m";
        v27 = 1024;
        v28 = 155;
        v29 = 2114;
        v30 = v19;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      if (self->_activeOperation && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"already have an active operation"];
        *buf = 136315906;
        v24 = "[FCAsyncOnceOperation executeWithCallbackQueue:completionHandler:]";
        v25 = 2080;
        v26 = "FCOnce.m";
        v27 = 1024;
        v28 = 156;
        v29 = 2114;
        v30 = v20;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v10 = dispatch_group_create();
      dispatch_group_enter(v10);
      objc_storeStrong(&self->_activeGroup, v10);
      workBlock = self->_workBlock;
      v21[5] = MEMORY[0x1E69E9820];
      v21[6] = 3221225472;
      v21[7] = __67__FCAsyncOnceOperation_executeWithCallbackQueue_completionHandler___block_invoke;
      v21[8] = &unk_1E7C42108;
      v21[9] = self;
      v22 = v10;
      v12 = workBlock[2];
      v13 = v10;
      v14 = workBlock;
      v15 = v12();
      objc_storeStrong(&self->_activeOperation, v15);

      [(FCOperationCanceling *)self->_activeOperation setRelativePriority:self->_relativePriority];
      interest = self->_interest;
    }

    self->_interest = interest + 1;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__FCAsyncOnceOperation_executeWithCallbackQueue_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7C36EA0;
    v21[4] = self;
    v8 = [FCCancelHandler cancelHandlerWithBlock:v21];
    v16 = self->_activeGroup;
    [(NFMutexLock *)self->_lock unlock];
    if (v16)
    {
      dispatch_group_notify(v16, queueCopy, handlerCopy);

      goto LABEL_14;
    }
  }

  handlerCopy[2](handlerCopy);
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

void __67__FCAsyncOnceOperation_executeWithCallbackQueue_completionHandler___block_invoke(uint64_t a1, char a2)
{
  [*(*(a1 + 32) + 56) lock];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = (a1 + 40);
    if (*(v4 + 32) != *(a1 + 40))
    {
      goto LABEL_7;
    }

    *(v4 + 8) = 1;
    v6 = *(a1 + 32);
    if (v6 && (*(v6 + 9) = a2, (v7 = *(a1 + 32)) != 0))
    {
      *(v7 + 24) = 0;
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v5 = (a1 + 40);
  }

  [(FCAssetHandle *)v8 setFetchOperation:?];
  [(FCHLSPlaylistState *)*(a1 + 32) setCurrentStreamInf:?];
  objc_setProperty_nonatomic_copy(*(a1 + 32), v9, 0, 16);
  v4 = *(a1 + 32);
LABEL_7:
  [*(v4 + 56) unlock];
  v10 = *v5;

  dispatch_group_leave(v10);
}

uint64_t __67__FCAsyncOnceOperation_executeWithCallbackQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 56) lock];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_4;
  }

  --*(v2 + 24);
  v3 = *(a1 + 32);
  if (!v3 || !*(v3 + 24))
  {
LABEL_4:
    [(FCAssetHandle *)v3 setFetchOperation:?];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 40);
    }

    else
    {
      v5 = 0;
    }

    [v5 cancel];
    [(FCHLSPlaylistState *)*(a1 + 32) setCurrentStreamInf:?];
    v3 = *(a1 + 32);
  }

  v6 = *(v3 + 56);

  return [v6 unlock];
}

- (BOOL)finishedExecuting
{
  [(NFMutexLock *)self->_lock lock];
  finished = self->_finished;
  [(NFMutexLock *)self->_lock unlock];
  return finished;
}

- (BOOL)finishedExecutingWithFailure
{
  [(NFMutexLock *)self->_lock lock];
  v3 = self->_finished && !self->_succeeded;
  [(NFMutexLock *)self->_lock unlock];
  return v3;
}

- (void)setRelativePriority:(int64_t)priority
{
  [(NFMutexLock *)self->_lock lock];
  self->_relativePriority = priority;
  [(FCOperationCanceling *)self->_activeOperation setRelativePriority:priority];
  objc_opt_class();
  activeOperation = self->_activeOperation;
  if (activeOperation && (v6 = self->_activeOperation, (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = activeOperation;
    v8 = 25;
    if (!priority)
    {
      v8 = 17;
    }

    if (priority == -1)
    {
      v9 = 9;
    }

    else
    {
      v9 = v8;
    }

    v10 = v7;
    [(FCOperationCanceling *)v7 setQualityOfService:v9];
  }

  else
  {
    v10 = 0;
  }

  [(NFMutexLock *)self->_lock unlock];
}

@end