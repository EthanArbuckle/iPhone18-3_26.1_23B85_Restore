@interface EFFuture
+ (id)_join:(id)_join ignoreFailures:(BOOL)failures;
+ (id)_recover:(id)_recover withBlock:(id)block scheduler:(id)scheduler;
+ (id)_then:(id)_then withBlock:(id)block scheduler:(id)scheduler;
+ (id)chain:(id)chain;
+ (id)combine:(id)combine;
+ (id)futureWithBlock:(id)block;
+ (id)futureWithError:(id)error;
+ (id)futureWithResult:(id)result;
+ (id)join:(id)join;
+ (id)lazyFutureWithBlock:(id)block;
+ (id)nullFuture;
+ (id)onScheduler:(id)scheduler futureWithBlock:(id)block;
+ (id)onScheduler:(id)scheduler lazyFutureWithBlock:(id)block;
+ (id)sequence:(id)sequence;
+ (void)_always:(id)_always withBlock:(id)block scheduler:(id)scheduler;
- (BOOL)finishWithResult:(id)result error:(id)error;
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
- (id)map:(id)map;
- (id)onScheduler:(id)scheduler map:(id)map;
- (id)onScheduler:(id)scheduler recover:(id)recover;
- (id)onScheduler:(id)scheduler then:(id)then;
- (id)recover:(id)recover;
- (id)result:(id *)result;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultIfAvailable:(id *)available;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (id)then:(id)then;
- (void)_addCompletionBlock:(id)block;
- (void)_finishWithFuture:(id)future;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)always:(id)always;
- (void)onScheduler:(id)scheduler addFailureBlock:(id)block;
- (void)onScheduler:(id)scheduler addSuccessBlock:(id)block;
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
  _nts_isFinished = [(EFFuture *)self _nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return _nts_isFinished;
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
  ef_cancelledError = [MEMORY[0x1E696ABC0] ef_cancelledError];
  v4 = [(EFFuture *)self finishWithResult:0 error:ef_cancelledError];

  if (v4)
  {
    [(EFFuture *)self didCancel];
  }

  return v4;
}

+ (id)nullFuture
{
  null = [MEMORY[0x1E695DFB0] null];
  v4 = [self futureWithResult:null];

  return v4;
}

+ (id)futureWithResult:(id)result
{
  resultCopy = result;
  v4 = +[EFPromise promise];
  [v4 finishWithResult:resultCopy];
  future = [v4 future];

  return future;
}

+ (id)futureWithError:(id)error
{
  errorCopy = error;
  v4 = +[EFPromise promise];
  [v4 finishWithError:errorCopy];
  future = [v4 future];

  return future;
}

+ (id)futureWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[EFScheduler globalAsyncScheduler];
  v6 = [self onScheduler:v5 futureWithBlock:blockCopy];

  return v6;
}

+ (id)onScheduler:(id)scheduler futureWithBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v7 = +[EFPromise promise];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __40__EFFuture_onScheduler_futureWithBlock___block_invoke;
  v15 = &unk_1E8248960;
  v8 = blockCopy;
  v17 = v8;
  v9 = v7;
  v16 = v9;
  [schedulerCopy performBlock:&v12];
  future = [v9 future];

  return future;
}

void __40__EFFuture_onScheduler_futureWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (id)lazyFutureWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [self onScheduler:v5 lazyFutureWithBlock:blockCopy];

  return v6;
}

+ (id)onScheduler:(id)scheduler lazyFutureWithBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v7 = [[EFLazyFuture alloc] initWithScheduler:schedulerCopy block:blockCopy];

  return v7;
}

+ (void)_always:(id)_always withBlock:(id)block scheduler:(id)scheduler
{
  _alwaysCopy = _always;
  blockCopy = block;
  schedulerCopy = scheduler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__EFFuture__always_withBlock_scheduler___block_invoke;
  v14[3] = &unk_1E8248620;
  v10 = blockCopy;
  v15 = v10;
  [_alwaysCopy onScheduler:schedulerCopy addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EFFuture__always_withBlock_scheduler___block_invoke_2;
  v12[3] = &unk_1E8248988;
  v11 = v10;
  v13 = v11;
  [_alwaysCopy onScheduler:schedulerCopy addFailureBlock:v12];
}

+ (id)_then:(id)_then withBlock:(id)block scheduler:(id)scheduler
{
  _thenCopy = _then;
  blockCopy = block;
  schedulerCopy = scheduler;
  v10 = +[EFPromise promise];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__EFFuture__then_withBlock_scheduler___block_invoke;
  v18[3] = &unk_1E82489B0;
  v11 = blockCopy;
  v20 = v11;
  v12 = v10;
  v19 = v12;
  [_thenCopy onScheduler:schedulerCopy addSuccessBlock:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__EFFuture__then_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_1E82485A8;
  v13 = v12;
  v17 = v13;
  [_thenCopy onScheduler:schedulerCopy addFailureBlock:v16];
  future = [v13 future];

  return future;
}

void __38__EFFuture__then_withBlock_scheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:?];
}

+ (id)_recover:(id)_recover withBlock:(id)block scheduler:(id)scheduler
{
  _recoverCopy = _recover;
  blockCopy = block;
  schedulerCopy = scheduler;
  v10 = +[EFPromise promise];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__EFFuture__recover_withBlock_scheduler___block_invoke;
  v19[3] = &unk_1E8248648;
  v11 = v10;
  v20 = v11;
  [_recoverCopy onScheduler:schedulerCopy addSuccessBlock:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __41__EFFuture__recover_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_1E82489D8;
  v12 = blockCopy;
  v18 = v12;
  v13 = v11;
  v17 = v13;
  [_recoverCopy onScheduler:schedulerCopy addFailureBlock:v16];
  future = [v13 future];

  return future;
}

void __41__EFFuture__recover_withBlock_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:?];
}

+ (id)chain:(id)chain
{
  chainCopy = chain;
  firstObject = [chainCopy firstObject];
  if ([chainCopy count] == 1)
  {
    v6 = firstObject;
  }

  else
  {
    ef_tail = [chainCopy ef_tail];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __18__EFFuture_chain___block_invoke;
    v16[3] = &unk_1E8248A00;
    selfCopy = self;
    v8 = ef_tail;
    v17 = v8;
    v9 = [firstObject then:v16];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __18__EFFuture_chain___block_invoke_2;
    v13[3] = &unk_1E8248A28;
    selfCopy2 = self;
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

+ (id)join:(id)join
{
  v3 = [self _join:join ignoreFailures:0];

  return v3;
}

+ (id)combine:(id)combine
{
  v3 = [self _join:combine ignoreFailures:1];

  return v3;
}

+ (id)_join:(id)_join ignoreFailures:(BOOL)failures
{
  _joinCopy = _join;
  if ([_joinCopy count])
  {
    v6 = +[EFPromise promise];
    v7 = [_joinCopy count];
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        null = [MEMORY[0x1E695DFB0] null];
        [v8 setObject:null atIndexedSubscript:i];
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
    failuresCopy = failures;
    v16 = v6;
    v34 = v16;
    [_joinCopy enumerateObjectsUsingBlock:v30];
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

    future = [v19 future];
  }

  else
  {
    future = [EFFuture futureWithResult:MEMORY[0x1E695E0F0]];
  }

  return future;
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

+ (id)sequence:(id)sequence
{
  v26 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  if ([sequenceCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    firstObject = [sequenceCopy firstObject];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    ef_tail = [sequenceCopy ef_tail];
    v6 = [ef_tail countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        v8 = 0;
        v9 = firstObject;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(ef_tail);
          }

          v10 = *(*(&v21 + 1) + 8 * v8);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __21__EFFuture_sequence___block_invoke;
          v18[3] = &unk_1E8248AF0;
          v19 = array;
          v20 = v10;
          firstObject = [v9 then:v18];

          ++v8;
          v9 = firstObject;
        }

        while (v6 != v8);
        v6 = [ef_tail countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __21__EFFuture_sequence___block_invoke_2;
    v16[3] = &unk_1E8248B18;
    v11 = array;
    v17 = v11;
    v12 = [firstObject then:v16];
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

- (id)result:(id *)result
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(EFFuture *)self resultBeforeDate:distantFuture error:result];

  return v6;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(EFFuture *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (id)resultIfAvailable:(id *)available
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v6 = [(EFFuture *)self resultBeforeDate:distantPast error:available];

  return v6;
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    delegate = [(EFFuture *)self delegate];
    [delegate didStartBlockingMainThreadForFuture:self];
  }

  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:dateCopy])
  {
    v9 = self->_result;
    v10 = self->_error;
    [(NSConditionLock *)self->_stateLock unlock];
    if (isMainThread)
    {
      delegate2 = [(EFFuture *)self delegate];
      [delegate2 didFinishBlockingMainThreadForFuture:self];
    }

    if (error)
    {
      v12 = v10;
      *error = v10;
    }
  }

  else
  {
    if (isMainThread)
    {
      delegate3 = [(EFFuture *)self delegate];
      [delegate3 didFinishBlockingMainThreadForFuture:self];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] ef_timeoutError];
      *error = v9 = 0;
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
    ef_isCancelledError = [(NSError *)self->_error ef_isCancelledError];
  }

  else
  {
    ef_isCancelledError = 0;
  }

  [(NSConditionLock *)self->_stateLock unlock];
  return ef_isCancelledError;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(NSConditionLock *)self->_stateLock lock];
  _nts_isFinished = [(EFFuture *)self _nts_isFinished];
  if (_nts_isFinished)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    objc_storeStrong(&self->_result, result);
    v10 = [errorCopy copy];
    error = self->_error;
    self->_error = v10;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
    [(EFFuture *)self _flushCompletionBlocks];
  }

  return !_nts_isFinished;
}

- (void)_finishWithFuture:(id)future
{
  futureCopy = future;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__EFFuture__finishWithFuture___block_invoke;
  v6[3] = &unk_1E8248648;
  v6[4] = self;
  [futureCopy addSuccessBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__EFFuture__finishWithFuture___block_invoke_2;
  v5[3] = &unk_1E82485A8;
  v5[4] = self;
  [futureCopy addFailureBlock:v5];
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
  array = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__EFFuture_resultsObserverAdapter__block_invoke;
  v10[3] = &unk_1E8248648;
  v11 = array;
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

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__EFFuture_addSuccessBlock___block_invoke;
  aBlock[3] = &unk_1E8248B90;
  v8 = blockCopy;
  v5 = blockCopy;
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

- (void)onScheduler:(id)scheduler addSuccessBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EFFuture_onScheduler_addSuccessBlock___block_invoke;
  v10[3] = &unk_1E8248BB8;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28__EFFuture_addFailureBlock___block_invoke;
  aBlock[3] = &unk_1E8248B90;
  v8 = blockCopy;
  v5 = blockCopy;
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

- (void)onScheduler:(id)scheduler addFailureBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__EFFuture_onScheduler_addFailureBlock___block_invoke;
  v10[3] = &unk_1E8248BE0;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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

- (void)_addCompletionBlock:(id)block
{
  aBlock = block;
  [(NSConditionLock *)self->_stateLock lock];
  _nts_isFinished = [(EFFuture *)self _nts_isFinished];
  if (!_nts_isFinished)
  {
    completionBlocks = self->_completionBlocks;
    v6 = _Block_copy(aBlock);
    [(NSMutableArray *)completionBlocks addObject:v6];
  }

  [(NSConditionLock *)self->_stateLock unlock];
  if (_nts_isFinished)
  {
    (*(aBlock + 2))(aBlock, self->_result, self->_error);
  }
}

- (void)always:(id)always
{
  alwaysCopy = always;
  v4 = +[EFScheduler immediateScheduler];
  [(EFFuture *)self onScheduler:v4 always:alwaysCopy];
}

- (id)then:(id)then
{
  thenCopy = then;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 then:thenCopy];

  return v6;
}

- (id)onScheduler:(id)scheduler then:(id)then
{
  v4 = [EFFuture _then:self withBlock:then scheduler:scheduler];

  return v4;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 recover:recoverCopy];

  return v6;
}

- (id)onScheduler:(id)scheduler recover:(id)recover
{
  v4 = [EFFuture _recover:self withBlock:recover scheduler:scheduler];

  return v4;
}

- (id)map:(id)map
{
  mapCopy = map;
  v5 = +[EFScheduler immediateScheduler];
  v6 = [(EFFuture *)self onScheduler:v5 map:mapCopy];

  return v6;
}

- (id)onScheduler:(id)scheduler map:(id)map
{
  mapCopy = map;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__EFFuture_onScheduler_map___block_invoke;
  v10[3] = &unk_1E8248C08;
  v11 = mapCopy;
  v7 = mapCopy;
  v8 = [(EFFuture *)self onScheduler:scheduler then:v10];

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