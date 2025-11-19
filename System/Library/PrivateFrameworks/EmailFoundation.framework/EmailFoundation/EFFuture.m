@interface EFFuture
+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4;
+ (id)_recover:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
+ (id)_then:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
+ (id)chain:(id)a3;
+ (id)combine:(id)a3;
+ (id)futureWithBlock:(id)a3;
+ (id)futureWithError:(id)a3;
+ (id)futureWithResult:(id)a3;
+ (id)join:(id)a3;
+ (id)lazyFutureWithBlock:(id)a3;
+ (id)nullFuture;
+ (id)onScheduler:(id)a3 futureWithBlock:(id)a4;
+ (id)onScheduler:(id)a3 lazyFutureWithBlock:(id)a4;
+ (id)sequence:(id)a3;
+ (void)_always:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)tryCancel;
- (EFFuture)init;
- (EFFutureDelegate)delegate;
- (EFObserver)firstResultObserverAdapter;
- (EFObserver)resultsObserverAdapter;
- (id)BOOLErrorCompletionHandlerAdapter;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)map:(id)a3;
- (id)onScheduler:(id)a3 map:(id)a4;
- (id)onScheduler:(id)a3 recover:(id)a4;
- (id)onScheduler:(id)a3 then:(id)a4;
- (id)recover:(id)a3;
- (id)result:(id *)a3;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultIfAvailable:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (id)then:(id)a3;
- (void)_addCompletionBlock:(id)a3;
- (void)_finishWithFuture:(id)a3;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)always:(id)a3;
- (void)onScheduler:(id)a3 addFailureBlock:(id)a4;
- (void)onScheduler:(id)a3 addSuccessBlock:(id)a4;
@end

@implementation EFFuture

- (EFFuture)init
{
  v8.receiver = self;
  v8.super_class = EFFuture;
  v2 = [(EFFuture *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;

    [(NSConditionLock *)v2->_stateLock setName:@"EFFuture state lock"];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v5;
  }

  return v2;
}

- (BOOL)isFinished
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(EFFuture *)self _nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return v3;
}

- (void)_flushCompletionBlocks
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  [(NSConditionLock *)self->_stateLock unlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        result = self->_result;
        error = self->_error;
        (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (EFFutureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)completionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__EFFuture_completionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E8248B40;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

- (BOOL)tryCancel
{
  v3 = [MEMORY[0x1E696ABC0] ef_cancelledError];
  v4 = [(EFFuture *)self finishWithResult:0 error:v3];

  if (v4)
  {
    [(EFFuture *)self didCancel];
  }

  return v4;
}

+ (id)nullFuture
{
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [a1 futureWithResult:v3];

  return v4;
}

+ (id)futureWithResult:(id)a3
{
  v3 = a3;
  v4 = +[EFPromise promise];
  [v4 finishWithResult:v3];
  v5 = [v4 future];

  return v5;
}

+ (id)futureWithError:(id)a3
{
  v3 = a3;
  v4 = +[EFPromise promise];
  [v4 finishWithError:v3];
  v5 = [v4 future];

  return v5;
}

+ (id)futureWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler globalAsyncScheduler];
  v6 = [a1 onScheduler:v5 futureWithBlock:v4];

  return v6;
}

+ (id)onScheduler:(id)a3 futureWithBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[EFPromise promise];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __40__EFFuture_onScheduler_futureWithBlock___block_invoke;
  v15 = &unk_1E8248960;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v16 = v9;
  [v5 performBlock:&v12];
  v10 = [v9 future];

  return v10;
}

void __40__EFFuture_onScheduler_futureWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (id)lazyFutureWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [a1 onScheduler:v5 lazyFutureWithBlock:v4];

  return v6;
}

+ (id)onScheduler:(id)a3 lazyFutureWithBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[EFLazyFuture alloc] initWithScheduler:v5 block:v6];

  return v7;
}

+ (void)_always:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__EFFuture__always_withBlock_scheduler___block_invoke;
  v14[3] = &unk_1E8248620;
  v10 = v8;
  v15 = v10;
  [v7 onScheduler:v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EFFuture__always_withBlock_scheduler___block_invoke_2;
  v12[3] = &unk_1E8248988;
  v11 = v10;
  v13 = v11;
  [v7 onScheduler:v9 addFailureBlock:v12];
}

+ (id)_then:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[EFPromise promise];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__EFFuture__then_withBlock_scheduler___block_invoke;
  v18[3] = &unk_1E82489B0;
  v11 = v8;
  v20 = v11;
  v12 = v10;
  v19 = v12;
  [v7 onScheduler:v9 addSuccessBlock:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__EFFuture__then_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_1E82485A8;
  v13 = v12;
  v17 = v13;
  [v7 onScheduler:v9 addFailureBlock:v16];
  v14 = [v13 future];

  return v14;
}

void __38__EFFuture__then_withBlock_scheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:?];
}

+ (id)_recover:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[EFPromise promise];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__EFFuture__recover_withBlock_scheduler___block_invoke;
  v19[3] = &unk_1E8248648;
  v11 = v10;
  v20 = v11;
  [v7 onScheduler:v9 addSuccessBlock:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__EFFuture__recover_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_1E82489D8;
  v12 = v8;
  v18 = v12;
  v13 = v11;
  v17 = v13;
  [v7 onScheduler:v9 addFailureBlock:v16];
  v14 = [v13 future];

  return v14;
}

void __41__EFFuture__recover_withBlock_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:?];
}

+ (id)chain:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if ([v4 count] == 1)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 ef_tail];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __18__EFFuture_chain___block_invoke;
    v16[3] = &unk_1E8248A00;
    v18 = a1;
    v8 = v7;
    v17 = v8;
    v9 = [v5 then:v16];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __18__EFFuture_chain___block_invoke_2;
    v13[3] = &unk_1E8248A28;
    v15 = a1;
    v10 = v8;
    v14 = v10;
    v11 = [v9 recover:v13];

    v6 = v11;
  }

  return v6;
}

id __18__EFFuture_chain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DFB0] null];

  v5 = *(a1 + 40);
  if (v4 == v3)
  {
    [v5 chain:*(a1 + 32)];
  }

  else
  {
    [v5 futureWithResult:v3];
  }
  v6 = ;

  return v6;
}

id __18__EFFuture_chain___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 40) chain:*(a1 + 32)];

  return v1;
}

+ (id)join:(id)a3
{
  v3 = [a1 _join:a3 ignoreFailures:0];

  return v3;
}

+ (id)combine:(id)a3
{
  v3 = [a1 _join:a3 ignoreFailures:1];

  return v3;
}

+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = +[EFPromise promise];
    v7 = [v5 count];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [MEMORY[0x1E695DFB0] null];
        [v8 setObject:v10 atIndexedSubscript:i];
      }
    }

    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v12 = dispatch_group_create();
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __33__EFFuture__join_ignoreFailures___block_invoke;
    v30[3] = &unk_1E8248AA0;
    v13 = v12;
    v31 = v13;
    v14 = v11;
    v32 = v14;
    v15 = v8;
    v33 = v15;
    v35 = a4;
    v16 = v6;
    v34 = v16;
    [v5 enumerateObjectsUsingBlock:v30];
    v17 = dispatch_get_global_queue(21, 0);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __33__EFFuture__join_ignoreFailures___block_invoke_4;
    v26 = &unk_1E8248AC8;
    v18 = v14;
    v27 = v18;
    v19 = v16;
    v28 = v19;
    v20 = v15;
    v29 = v20;
    dispatch_group_notify(v13, v17, &v23);

    v21 = [v19 future];
  }

  else
  {
    v21 = [EFFuture futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return v21;
}

void __33__EFFuture__join_ignoreFailures___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__EFFuture__join_ignoreFailures___block_invoke_2;
  v10[3] = &unk_1E8248A50;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = a3;
  v13 = *(a1 + 32);
  [v5 addSuccessBlock:v10];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__EFFuture__join_ignoreFailures___block_invoke_3;
  v6[3] = &unk_1E8248A78;
  v9 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  [v5 addFailureBlock:v6];
}

void __33__EFFuture__join_ignoreFailures___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) lock];
  [*(a1 + 40) setObject:v3 atIndexedSubscript:*(a1 + 56)];
  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

void __33__EFFuture__join_ignoreFailures___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) finishWithError:v3];
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __33__EFFuture__join_ignoreFailures___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(a1 + 40) finishWithResult:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

+ (id)sequence:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if ([v15 count])
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [v15 firstObject];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v15 ef_tail];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        v9 = v4;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v8);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __21__EFFuture_sequence___block_invoke;
          v18[3] = &unk_1E8248AF0;
          v19 = v3;
          v20 = v10;
          v4 = [v9 then:v18];

          ++v8;
          v9 = v4;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __21__EFFuture_sequence___block_invoke_2;
    v16[3] = &unk_1E8248B18;
    v11 = v3;
    v17 = v11;
    v12 = [v4 then:v16];
  }

  else
  {
    v12 = [EFFuture futureWithResult:MEMORY[0x1E695E0F0]];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __21__EFFuture_sequence___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  return v3;
}

id __21__EFFuture_sequence___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  v4 = [EFFuture futureWithResult:*(a1 + 32)];

  return v4;
}

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(EFFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
  v7 = [(EFFuture *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)resultIfAvailable:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantPast];
  v6 = [(EFFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AF00] isMainThread];
  if (v7)
  {
    v8 = [(EFFuture *)self delegate];
    [v8 didStartBlockingMainThreadForFuture:self];
  }

  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:v6])
  {
    v9 = self->_result;
    v10 = self->_error;
    [(NSConditionLock *)self->_stateLock unlock];
    if (v7)
    {
      v11 = [(EFFuture *)self delegate];
      [v11 didFinishBlockingMainThreadForFuture:self];
    }

    if (a4)
    {
      v12 = v10;
      *a4 = v10;
    }
  }

  else
  {
    if (v7)
    {
      v13 = [(EFFuture *)self delegate];
      [v13 didFinishBlockingMainThreadForFuture:self];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] ef_timeoutError];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(EFFuture *)self _nts_isFinished])
  {
    v3 = [(NSError *)self->_error ef_isCancelledError];
  }

  else
  {
    v3 = 0;
  }

  [(NSConditionLock *)self->_stateLock unlock];
  return v3;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(NSConditionLock *)self->_stateLock lock];
  v9 = [(EFFuture *)self _nts_isFinished];
  if (v9)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_result, a3);
    v10 = [v8 copy];
    error = self->_error;
    self->_error = v10;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
    [(EFFuture *)self _flushCompletionBlocks];
  }

  return !v9;
}

- (void)_finishWithFuture:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__EFFuture__finishWithFuture___block_invoke;
  v6[3] = &unk_1E8248648;
  v6[4] = self;
  [v4 addSuccessBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EFFuture__finishWithFuture___block_invoke_2;
  v5[3] = &unk_1E82485A8;
  v5[4] = self;
  [v4 addFailureBlock:v5];
}

- (id)BOOLErrorCompletionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EFFuture_BOOLErrorCompletionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E8248B68;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __45__EFFuture_BOOLErrorCompletionHandlerAdapter__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [v6 finishWithResult:v7];
  }

  else
  {
    [v6 finishWithError:v5];
  }
}

- (id)errorOnlyCompletionHandlerAdapter
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__EFFuture_errorOnlyCompletionHandlerAdapter__block_invoke;
  aBlock[3] = &unk_1E82485A8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = _Block_copy(v2);

  return v3;
}

void __45__EFFuture_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    [v4 finishWithError:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v4 finishWithResult:v5];
  }
}

- (EFObserver)firstResultObserverAdapter
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__EFFuture_firstResultObserverAdapter__block_invoke;
  v6[3] = &unk_1E8248648;
  v6[4] = self;
  v4[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__EFFuture_firstResultObserverAdapter__block_invoke_2;
  v5[3] = &unk_1E8248580;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EFFuture_firstResultObserverAdapter__block_invoke_3;
  v4[3] = &unk_1E82485A8;
  v2 = [EFObserver observerWithResultBlock:v6 completionBlock:v5 failureBlock:v4];

  return v2;
}

void __38__EFFuture_firstResultObserverAdapter__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFB0] null];
  [v1 finishWithResult:?];
}

- (EFObserver)resultsObserverAdapter
{
  v3 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__EFFuture_resultsObserverAdapter__block_invoke;
  v10[3] = &unk_1E8248648;
  v11 = v3;
  v7[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__EFFuture_resultsObserverAdapter__block_invoke_2;
  v8[3] = &unk_1E82485D0;
  v8[4] = self;
  v9 = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__EFFuture_resultsObserverAdapter__block_invoke_3;
  v7[3] = &unk_1E82485A8;
  v4 = v11;
  v5 = [EFObserver observerWithResultBlock:v10 completionBlock:v8 failureBlock:v7];

  return v5;
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__EFFuture_addSuccessBlock___block_invoke;
  aBlock[3] = &unk_1E8248B90;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  [(EFFuture *)self _addCompletionBlock:v6];
}

void __28__EFFuture_addSuccessBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)onScheduler:(id)a3 addSuccessBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EFFuture_onScheduler_addSuccessBlock___block_invoke;
  v10[3] = &unk_1E8248BB8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(EFFuture *)self addSuccessBlock:v10];
}

void __40__EFFuture_onScheduler_addSuccessBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__EFFuture_onScheduler_addSuccessBlock___block_invoke_2;
  v7[3] = &unk_1E8248960;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)addFailureBlock:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__EFFuture_addFailureBlock___block_invoke;
  aBlock[3] = &unk_1E8248B90;
  v8 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  [(EFFuture *)self _addCompletionBlock:v6];
}

void __28__EFFuture_addFailureBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v6)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)onScheduler:(id)a3 addFailureBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EFFuture_onScheduler_addFailureBlock___block_invoke;
  v10[3] = &unk_1E8248BE0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(EFFuture *)self addFailureBlock:v10];
}

void __40__EFFuture_onScheduler_addFailureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__EFFuture_onScheduler_addFailureBlock___block_invoke_2;
  v7[3] = &unk_1E8248960;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)_addCompletionBlock:(id)a3
{
  aBlock = a3;
  [(NSConditionLock *)self->_stateLock lock];
  v4 = [(EFFuture *)self _nts_isFinished];
  if (!v4)
  {
    completionBlocks = self->_completionBlocks;
    v6 = _Block_copy(aBlock);
    [(NSMutableArray *)completionBlocks addObject:v6];
  }

  [(NSConditionLock *)self->_stateLock unlock];
  if (v4)
  {
    (*(aBlock + 2))(aBlock, self->_result, self->_error);
  }
}

- (void)always:(id)a3
{
  v5 = a3;
  v4 = +[EFScheduler immediateScheduler];
  [(EFFuture *)self onScheduler:v4 always:v5];
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 then:v4];

  return v6;
}

- (id)onScheduler:(id)a3 then:(id)a4
{
  v4 = [EFFuture _then:self withBlock:a4 scheduler:a3];

  return v4;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 recover:v4];

  return v6;
}

- (id)onScheduler:(id)a3 recover:(id)a4
{
  v4 = [EFFuture _recover:self withBlock:a4 scheduler:a3];

  return v4;
}

- (id)map:(id)a3
{
  v4 = a3;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 map:v4];

  return v6;
}

- (id)onScheduler:(id)a3 map:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__EFFuture_onScheduler_map___block_invoke;
  v10[3] = &unk_1E8248C08;
  v11 = v6;
  v7 = v6;
  v8 = [(EFFuture *)self onScheduler:a3 then:v10];

  return v8;
}

id __28__EFFuture_onScheduler_map___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = v1;
  if (!v1)
  {
    v2 = [MEMORY[0x1E695DFB0] null];
  }

  v3 = [EFFuture futureWithResult:v2];
  if (!v1)
  {
  }

  return v3;
}

@end