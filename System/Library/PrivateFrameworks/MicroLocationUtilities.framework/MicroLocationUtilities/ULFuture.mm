@interface ULFuture
+ (id)_join:(id)_join ignoreFailures:(BOOL)failures;
+ (id)_recover:(id)_recover withBlock:(id)block scheduler:(id)scheduler;
+ (id)_then:(id)_then withBlock:(id)block scheduler:(id)scheduler;
+ (id)chain:(id)chain;
+ (id)futureWithBlock:(id)block;
+ (id)futureWithError:(id)error;
+ (id)futureWithResult:(id)result;
+ (id)nullFuture;
+ (id)onScheduler:(id)scheduler futureWithBlock:(id)block;
+ (id)sequence:(id)sequence;
+ (void)_always:(id)_always withBlock:(id)block scheduler:(id)scheduler;
- (BOOL)finishWithResult:(id)result error:(id)error;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)tryCancel;
- (ULFuture)init;
- (id)BOOLErrorCompletionHandlerAdapter;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)map:(id)map;
- (id)onScheduler:(id)scheduler map:(id)map;
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

@implementation ULFuture

+ (id)nullFuture
{
  null = [MEMORY[0x277CBEB68] null];
  v4 = [self futureWithResult:null];

  return v4;
}

+ (id)futureWithResult:(id)result
{
  resultCopy = result;
  v4 = +[ULPromise promise];
  [v4 finishWithResult:resultCopy];

  future = [v4 future];

  return future;
}

+ (id)futureWithError:(id)error
{
  errorCopy = error;
  v4 = +[ULPromise promise];
  [v4 finishWithError:errorCopy];

  future = [v4 future];

  return future;
}

+ (id)futureWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[ULScheduler globalAsyncScheduler];
  v6 = [self onScheduler:v5 futureWithBlock:blockCopy];

  return v6;
}

+ (id)onScheduler:(id)scheduler futureWithBlock:(id)block
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v7 = +[ULPromise promise];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __40__ULFuture_onScheduler_futureWithBlock___block_invoke;
  v15 = &unk_2798DA6B8;
  v16 = v7;
  v17 = blockCopy;
  v8 = v7;
  v9 = blockCopy;
  [schedulerCopy performAsyncBlock:&v12];

  future = [v8 future];

  return future;
}

void __40__ULFuture_onScheduler_futureWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (void)_always:(id)_always withBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__ULFuture__always_withBlock_scheduler___block_invoke;
  v14[3] = &unk_2798DA6E0;
  v8 = blockCopy;
  v15 = v8;
  schedulerCopy = scheduler;
  _alwaysCopy = _always;
  [_alwaysCopy onScheduler:schedulerCopy addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__ULFuture__always_withBlock_scheduler___block_invoke_2;
  v12[3] = &unk_2798DA708;
  v13 = v8;
  v11 = v8;
  [_alwaysCopy onScheduler:schedulerCopy addFailureBlock:v12];
}

+ (id)_then:(id)_then withBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  _thenCopy = _then;
  v10 = +[ULPromise promise];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__ULFuture__then_withBlock_scheduler___block_invoke;
  v18[3] = &unk_2798DA730;
  v20 = blockCopy;
  v11 = v10;
  v19 = v11;
  v12 = blockCopy;
  [_thenCopy onScheduler:schedulerCopy addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__ULFuture__then_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_2798DA758;
  v17 = v11;
  v13 = v11;
  [_thenCopy onScheduler:schedulerCopy addFailureBlock:v16];

  future = [v13 future];

  return future;
}

void __38__ULFuture__then_withBlock_scheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:v2];
}

+ (id)_recover:(id)_recover withBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  _recoverCopy = _recover;
  v10 = +[ULPromise promise];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__ULFuture__recover_withBlock_scheduler___block_invoke;
  v19[3] = &unk_2798DA780;
  v11 = v10;
  v20 = v11;
  [_recoverCopy onScheduler:schedulerCopy addSuccessBlock:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__ULFuture__recover_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_2798DA7A8;
  v17 = v11;
  v18 = blockCopy;
  v12 = v11;
  v13 = blockCopy;
  [_recoverCopy onScheduler:schedulerCopy addFailureBlock:v16];

  future = [v12 future];

  return future;
}

void __41__ULFuture__recover_withBlock_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:v2];
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
    if ([chainCopy count] < 2)
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = [chainCopy subarrayWithRange:{1, objc_msgSend(chainCopy, "count") - 1}];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __18__ULFuture_chain___block_invoke;
    v16[3] = &unk_2798DA7D0;
    selfCopy = self;
    v8 = v7;
    v17 = v8;
    v9 = [firstObject then:v16];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __18__ULFuture_chain___block_invoke_2;
    v13[3] = &unk_2798DA7F8;
    v14 = v8;
    selfCopy2 = self;
    v10 = v8;
    v11 = [v9 recover:v13];

    v6 = v11;
  }

  return v6;
}

id __18__ULFuture_chain___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB68] null];

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

+ (id)_join:(id)_join ignoreFailures:(BOOL)failures
{
  _joinCopy = _join;
  if ([_joinCopy count])
  {
    v6 = +[ULPromise promise];
    v7 = [_joinCopy count];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        null = [MEMORY[0x277CBEB68] null];
        [v8 setObject:null atIndexedSubscript:i];
      }
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v12 = dispatch_group_create();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__ULFuture__join_ignoreFailures___block_invoke;
    v30[3] = &unk_2798DA870;
    v31 = v12;
    v13 = v11;
    v32 = v13;
    v14 = v8;
    v33 = v14;
    failuresCopy = failures;
    v15 = v6;
    v34 = v15;
    v16 = v12;
    [_joinCopy enumerateObjectsUsingBlock:v30];
    v17 = dispatch_get_global_queue(21, 0);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __33__ULFuture__join_ignoreFailures___block_invoke_4;
    v26 = &unk_2798DA898;
    v27 = v13;
    v28 = v15;
    v29 = v14;
    v18 = v14;
    v19 = v15;
    v20 = v13;
    dispatch_group_notify(v16, v17, &v23);

    future = [v19 future];
  }

  else
  {
    future = [ULFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return future;
}

void __33__ULFuture__join_ignoreFailures___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__ULFuture__join_ignoreFailures___block_invoke_2;
  v11[3] = &unk_2798DA820;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = a3;
  v14 = *(a1 + 32);
  [v6 addSuccessBlock:v11];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ULFuture__join_ignoreFailures___block_invoke_3;
  v7[3] = &unk_2798DA848;
  v10 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  [v6 addFailureBlock:v7];
}

void __33__ULFuture__join_ignoreFailures___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 lock];
  [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 56)];

  [*(a1 + 32) unlock];
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void __33__ULFuture__join_ignoreFailures___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) finishWithError:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

uint64_t __33__ULFuture__join_ignoreFailures___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) lock];
  [*(a1 + 40) finishWithResult:*(a1 + 48)];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

+ (id)sequence:(id)sequence
{
  v29 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  if ([sequenceCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([sequenceCopy count] < 2)
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v5 = [sequenceCopy subarrayWithRange:{1, objc_msgSend(sequenceCopy, "count") - 1}];
    }

    firstObject = [sequenceCopy firstObject];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        v13 = firstObject;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v24 + 1) + 8 * v12);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __21__ULFuture_sequence___block_invoke;
          v21[3] = &unk_2798DA8C0;
          v22 = array;
          v23 = v14;
          firstObject = [v13 then:v21];

          ++v12;
          v13 = firstObject;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __21__ULFuture_sequence___block_invoke_2;
    v19[3] = &unk_2798DA8E8;
    v20 = array;
    v15 = array;
    v6 = [firstObject then:v19];

    sequenceCopy = v18;
  }

  else
  {
    v6 = [ULFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

id __21__ULFuture_sequence___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 40);

  return v3;
}

ULFuture *__21__ULFuture_sequence___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObject:a2];
  v3 = *(a1 + 32);

  return [ULFuture futureWithResult:v3];
}

- (ULFuture)init
{
  v8.receiver = self;
  v8.super_class = ULFuture;
  v2 = [(ULFuture *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;

    [(NSConditionLock *)v2->_stateLock setName:@"ULFuture state lock"];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    completionBlocks = v2->_completionBlocks;
    v2->_completionBlocks = v5;
  }

  return v2;
}

- (id)result:(id *)result
{
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(ULFuture *)self resultBeforeDate:distantFuture error:result];

  return v6;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(ULFuture *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (id)resultIfAvailable:(id *)available
{
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [(ULFuture *)self resultBeforeDate:distantPast error:available];

  return v6;
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:date])
  {
    v6 = self->_result;
    stateLock = self->_stateLock;
    v8 = self->_error;
    [(NSConditionLock *)stateLock unlock];
    if (error)
    {
      v9 = v8;
      *error = v8;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ULErrorDomain" code:-1 userInfo:0];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFinished
{
  [(NSConditionLock *)self->_stateLock lock];
  _nts_isFinished = [(ULFuture *)self _nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return _nts_isFinished;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(ULFuture *)self _nts_isFinished])
  {
    domain = [(NSError *)self->_error domain];
    if ([domain isEqual:*MEMORY[0x277CCA050]])
    {
      v4 = [(NSError *)self->_error code]== 3072;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [(NSConditionLock *)self->_stateLock unlock];
  return v4;
}

- (BOOL)tryCancel
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  v4 = [(ULFuture *)self finishWithResult:0 error:v3];

  if (v4)
  {
    [(ULFuture *)self didCancel];
  }

  return v4;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(NSConditionLock *)self->_stateLock lock];
  _nts_isFinished = [(ULFuture *)self _nts_isFinished];
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
    [(ULFuture *)self _flushCompletionBlocks];
  }

  return !_nts_isFinished;
}

- (void)_finishWithFuture:(id)future
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__ULFuture__finishWithFuture___block_invoke;
  v6[3] = &unk_2798DA780;
  v6[4] = self;
  futureCopy = future;
  [futureCopy addSuccessBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ULFuture__finishWithFuture___block_invoke_2;
  v5[3] = &unk_2798DA758;
  v5[4] = self;
  [futureCopy addFailureBlock:v5];
}

- (id)completionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ULFuture_completionHandlerAdapter__block_invoke;
  v5[3] = &unk_2798DA910;
  v5[4] = self;
  v2 = MEMORY[0x259CA3550](v5, a2);
  v3 = MEMORY[0x259CA3550]();

  return v3;
}

- (id)BOOLErrorCompletionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ULFuture_BOOLErrorCompletionHandlerAdapter__block_invoke;
  v5[3] = &unk_2798DA938;
  v5[4] = self;
  v2 = MEMORY[0x259CA3550](v5, a2);
  v3 = MEMORY[0x259CA3550]();

  return v3;
}

void __45__ULFuture_BOOLErrorCompletionHandlerAdapter__block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:?];
  }
}

- (id)errorOnlyCompletionHandlerAdapter
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__ULFuture_errorOnlyCompletionHandlerAdapter__block_invoke;
  v5[3] = &unk_2798DA758;
  v5[4] = self;
  v2 = MEMORY[0x259CA3550](v5, a2);
  v3 = MEMORY[0x259CA3550]();

  return v3;
}

void __45__ULFuture_errorOnlyCompletionHandlerAdapter__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v2 finishWithResult:v4];
  }
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ULFuture_addSuccessBlock___block_invoke;
  v7[3] = &unk_2798DA960;
  v8 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x259CA3550](v7);
  [(ULFuture *)self _addCompletionBlock:v6];
}

uint64_t __28__ULFuture_addSuccessBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)onScheduler:(id)scheduler addSuccessBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULFuture_onScheduler_addSuccessBlock___block_invoke;
  v10[3] = &unk_2798DA988;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
  [(ULFuture *)self addSuccessBlock:v10];
}

void __40__ULFuture_onScheduler_addSuccessBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ULFuture_onScheduler_addSuccessBlock___block_invoke_2;
  v7[3] = &unk_2798DA6B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performAsyncBlock:v7];
}

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ULFuture_addFailureBlock___block_invoke;
  v7[3] = &unk_2798DA960;
  v8 = blockCopy;
  v5 = blockCopy;
  v6 = MEMORY[0x259CA3550](v7);
  [(ULFuture *)self _addCompletionBlock:v6];
}

uint64_t __28__ULFuture_addFailureBlock___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)onScheduler:(id)scheduler addFailureBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULFuture_onScheduler_addFailureBlock___block_invoke;
  v10[3] = &unk_2798DA9B0;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
  [(ULFuture *)self addFailureBlock:v10];
}

void __40__ULFuture_onScheduler_addFailureBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ULFuture_onScheduler_addFailureBlock___block_invoke_2;
  v7[3] = &unk_2798DA6B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performAsyncBlock:v7];
}

- (void)_addCompletionBlock:(id)block
{
  blockCopy = block;
  [(NSConditionLock *)self->_stateLock lock];
  if ([(ULFuture *)self _nts_isFinished])
  {
    [(NSConditionLock *)self->_stateLock unlock];
    blockCopy[2](blockCopy, self->_result, self->_error);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v5 = MEMORY[0x259CA3550](blockCopy);
    [(NSMutableArray *)completionBlocks addObject:v5];

    [(NSConditionLock *)self->_stateLock unlock];
  }
}

- (void)_flushCompletionBlocks
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSMutableArray *)self->_completionBlocks copy];
  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  [(NSConditionLock *)self->_stateLock unlock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        result = self->_result;
        error = self->_error;
        (*(*(*(&v12 + 1) + 8 * v8) + 16))(*(*(&v12 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)always:(id)always
{
  alwaysCopy = always;
  v5 = +[ULScheduler immediateScheduler];
  [(ULFuture *)self onScheduler:v5 always:alwaysCopy];
}

- (id)then:(id)then
{
  thenCopy = then;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 then:thenCopy];

  return v6;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 recover:recoverCopy];

  return v6;
}

- (id)map:(id)map
{
  mapCopy = map;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 map:mapCopy];

  return v6;
}

- (id)onScheduler:(id)scheduler map:(id)map
{
  mapCopy = map;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__ULFuture_onScheduler_map___block_invoke;
  v10[3] = &unk_2798DA9D8;
  v11 = mapCopy;
  v7 = mapCopy;
  v8 = [(ULFuture *)self onScheduler:scheduler then:v10];

  return v8;
}

id __28__ULFuture_onScheduler_map___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if (v1)
  {
    v2 = [ULFuture futureWithResult:v1];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v2 = [ULFuture futureWithResult:v3];
  }

  return v2;
}

@end