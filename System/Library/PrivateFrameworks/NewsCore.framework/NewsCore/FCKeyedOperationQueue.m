@interface FCKeyedOperationQueue
- (FCKeyedOperationQueue)init;
- (FCKeyedOperationQueue)initWithDelegate:(id)a3 maxConcurrentOperationCount:(int64_t)a4;
- (FCKeyedOperationQueueDelegate)delegate;
- (NSOrderedSet)keyQueue;
- (void)_enqueueOperationIfNeeded;
- (void)notifyWhenAllOperationsAreFinishedUsingBlock:(id)a3;
- (void)setKeyQueue:(id)a3;
- (void)setSuspended:(BOOL)a3;
@end

@implementation FCKeyedOperationQueue

- (void)_enqueueOperationIfNeeded
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_43;
  }

  [MEMORY[0x1E696AF00] isMainThread];
  if (![a1 isSuspended])
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = [a1 log];

    if (v6)
    {
      v7 = [a1 log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v3;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "KOQ will revisit queue, executing=%{public}@", buf, 0xCu);
      }
    }

    v8 = [v3 count];
    if (v5 == -1)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v5;
    }

    if (v8 >= v9)
    {
      v16 = [a1 log];

      if (!v16)
      {
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v17 = [a1 log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v44 = v5;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "KOQ is already executing as many operations as it can, max=%lu", buf, 0xCu);
      }

LABEL_40:

      goto LABEL_41;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke;
    v41[3] = &unk_1E7C46410;
    v10 = v3;
    v42 = v10;
    v11 = [v4 indexOfObjectPassingTest:v41];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v13 = 0;
    }

    else
    {
      v13 = [v4 objectAtIndexedSubscript:v11];
      v18 = objc_loadWeakRetained((a1 + 16));
      WeakRetained = v18;
      if (v13 && v18)
      {
        [v10 addObject:v13];
        v19 = *(a1 + 64);
        dispatch_group_enter(*(a1 + 72));
        v20 = objc_alloc_init(FCKeyedOperation);
        v21 = [a1 log];
        if (v20)
        {
          objc_storeStrong(&v20->_log, v21);
        }

        v30 = MEMORY[0x1E69E9820];
        v31 = 3221225472;
        v32 = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_2;
        v33 = &unk_1E7C37E08;
        v34 = v20;
        v35 = a1;
        WeakRetained = WeakRetained;
        v36 = WeakRetained;
        v13 = v13;
        v37 = v13;
        v38 = v4;
        v39 = v10;
        v15 = v19;
        v40 = v15;
        v22 = v20;
        v23 = _Block_copy(&v30);
        v24 = [a1 executionQueue];

        v25 = [a1 log];

        if (v24)
        {
          if (v25)
          {
            v26 = [a1 log];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v44 = v13;
              _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "KOQ will execute next operation on execution queue, key=%{public}@", buf, 0xCu);
            }
          }

          v27 = [a1 executionQueue];
          dispatch_async(v27, v23);
        }

        else
        {
          if (v25)
          {
            v28 = [a1 log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v44 = v13;
              _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "KOQ will execute next operation, key=%{public}@", buf, 0xCu);
            }
          }

          v23[2](v23);
        }

        [v15 setObject:v22 forKeyedSubscript:v13];
        [(FCKeyedOperationQueue *)a1 _enqueueOperationIfNeeded];

        goto LABEL_38;
      }
    }

    v14 = [a1 log];

    if (!v14)
    {
LABEL_39:

      v17 = v42;
      goto LABEL_40;
    }

    v15 = [a1 log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "KOQ found no keys that need to be executed", buf, 2u);
    }

LABEL_38:

    goto LABEL_39;
  }

  v2 = [a1 log];

  if (v2)
  {
    v3 = [a1 log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "KOQ will not revisit queue because it's currently suspended", buf, 2u);
    }

    goto LABEL_42;
  }

LABEL_43:
  v29 = *MEMORY[0x1E69E9840];
}

- (FCKeyedOperationQueue)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCKeyedOperationQueue init]";
    v10 = 2080;
    v11 = "FCKeyedOperationQueue.m";
    v12 = 1024;
    v13 = 40;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCKeyedOperationQueue init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCKeyedOperationQueue)initWithDelegate:(id)a3 maxConcurrentOperationCount:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "delegate"];
    *buf = 136315906;
    v22 = "[FCKeyedOperationQueue initWithDelegate:maxConcurrentOperationCount:]";
    v23 = 2080;
    v24 = "FCKeyedOperationQueue.m";
    v25 = 1024;
    v26 = 45;
    v27 = 2114;
    v28 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v20.receiver = self;
  v20.super_class = FCKeyedOperationQueue;
  v7 = [(FCKeyedOperationQueue *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = objc_opt_new();
    keysForExecutingOperations = v8->_keysForExecutingOperations;
    v8->_keysForExecutingOperations = v9;

    v8->_maxConcurrentOperationCount = a4;
    v11 = objc_opt_new();
    mutableKeyQueue = v8->_mutableKeyQueue;
    v8->_mutableKeyQueue = v11;

    v13 = objc_opt_new();
    cancelHandlersByKey = v8->_cancelHandlersByKey;
    v8->_cancelHandlersByKey = v13;

    v15 = dispatch_group_create();
    operationExecutionGroup = v8->_operationExecutionGroup;
    v8->_operationExecutionGroup = v15;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setKeyQueue:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  if (self)
  {
    v6 = self->_mutableKeyQueue;
    [(NSMutableOrderedSet *)v6 removeAllObjects];
    v7 = [v5 array];

    [(NSMutableOrderedSet *)v6 addObjectsFromArray:v7];
    [MEMORY[0x1E696AF00] isMainThread];
    v8 = self->_mutableKeyQueue;
    v9 = self->_cancelHandlersByKey;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(NSMutableSet *)self->_keysForExecutingOperations copy];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (([(NSMutableOrderedSet *)v8 containsObject:v15]& 1) == 0)
          {
            v16 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v15];
            v17 = v16;
            if (v16)
            {
              [v16 cancel];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [0 removeAllObjects];
    v19 = [v5 array];

    [0 addObjectsFromArray:v19];
  }

  v18 = *MEMORY[0x1E69E9840];

  [(FCKeyedOperationQueue *)self _enqueueOperationIfNeeded];
}

- (NSOrderedSet)keyQueue
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = MEMORY[0x1E695DFB8];
  if (self)
  {
    mutableKeyQueue = self->_mutableKeyQueue;
  }

  else
  {
    mutableKeyQueue = 0;
  }

  return [v3 orderedSetWithOrderedSet:mutableKeyQueue];
}

- (void)notifyWhenAllOperationsAreFinishedUsingBlock:(id)a3
{
  if (self)
  {
    self = self->_operationExecutionGroup;
  }

  dispatch_group_notify(&self->super, MEMORY[0x1E69E96A0], a3);
}

- (void)setSuspended:(BOOL)a3
{
  [MEMORY[0x1E696AF00] isMainThread];
  self->_suspended = a3;

  [(FCKeyedOperationQueue *)self _enqueueOperationIfNeeded];
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_3;
  v20[3] = &unk_1E7C46438;
  v6 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v21 = v11;
  v22 = v10;
  v23 = *(a1 + 40);
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v15 = v20;
  if (v2)
  {
    if (*(v2 + 8))
    {
      v16 = *(v2 + 24);
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "KOQ will not execute operation because it's been cancelled, key=%{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v17 = [v13 keyedOperationQueue:v12 performAsyncOperationForKey:v14 completion:v15];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v25 = __60__FCKeyedOperation_executeForQueue_delegate_key_completion___block_invoke;
      v26 = &unk_1E7C36C58;
      v27 = v2;
      v28 = v17;
      v18 = v17;
      FCPerformBlockOnMainThread(&buf);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_3(uint64_t a1, char a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_4;
  v9[3] = &unk_1E7C39470;
  v13 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __50__FCKeyedOperationQueue__enqueueOperationIfNeeded__block_invoke_4(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    [*(a1 + 32) removeObject:*(a1 + 40)];
  }

  [*(a1 + 48) removeObject:*(a1 + 40)];
  [*(a1 + 56) removeObjectForKey:*(a1 + 40)];
  [(FCKeyedOperationQueue *)*(a1 + 64) _enqueueOperationIfNeeded];
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 72);
  }

  else
  {
    v3 = 0;
  }

  dispatch_group_leave(v3);
}

- (FCKeyedOperationQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end