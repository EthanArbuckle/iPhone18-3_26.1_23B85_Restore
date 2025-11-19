@interface ULFuture
+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4;
+ (id)_recover:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
+ (id)_then:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
+ (id)chain:(id)a3;
+ (id)futureWithBlock:(id)a3;
+ (id)futureWithError:(id)a3;
+ (id)futureWithResult:(id)a3;
+ (id)nullFuture;
+ (id)onScheduler:(id)a3 futureWithBlock:(id)a4;
+ (id)sequence:(id)a3;
+ (void)_always:(id)a3 withBlock:(id)a4 scheduler:(id)a5;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)tryCancel;
- (ULFuture)init;
- (id)BOOLErrorCompletionHandlerAdapter;
- (id)completionHandlerAdapter;
- (id)errorOnlyCompletionHandlerAdapter;
- (id)map:(id)a3;
- (id)onScheduler:(id)a3 map:(id)a4;
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

@implementation ULFuture

+ (id)nullFuture
{
  v3 = [MEMORY[0x277CBEB68] null];
  v4 = [a1 futureWithResult:v3];

  return v4;
}

+ (id)futureWithResult:(id)a3
{
  v3 = a3;
  v4 = +[ULPromise promise];
  [v4 finishWithResult:v3];

  v5 = [v4 future];

  return v5;
}

+ (id)futureWithError:(id)a3
{
  v3 = a3;
  v4 = +[ULPromise promise];
  [v4 finishWithError:v3];

  v5 = [v4 future];

  return v5;
}

+ (id)futureWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[ULScheduler globalAsyncScheduler];
  v6 = [a1 onScheduler:v5 futureWithBlock:v4];

  return v6;
}

+ (id)onScheduler:(id)a3 futureWithBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ULPromise promise];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __40__ULFuture_onScheduler_futureWithBlock___block_invoke;
  v15 = &unk_2798DA6B8;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  [v6 performAsyncBlock:&v12];

  v10 = [v8 future];

  return v10;
}

void __40__ULFuture_onScheduler_futureWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(a1 + 32) finishWithResult:v3 error:v4];
}

+ (void)_always:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__ULFuture__always_withBlock_scheduler___block_invoke;
  v14[3] = &unk_2798DA6E0;
  v8 = v7;
  v15 = v8;
  v9 = a5;
  v10 = a3;
  [v10 onScheduler:v9 addSuccessBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__ULFuture__always_withBlock_scheduler___block_invoke_2;
  v12[3] = &unk_2798DA708;
  v13 = v8;
  v11 = v8;
  [v10 onScheduler:v9 addFailureBlock:v12];
}

+ (id)_then:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[ULPromise promise];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__ULFuture__then_withBlock_scheduler___block_invoke;
  v18[3] = &unk_2798DA730;
  v20 = v7;
  v11 = v10;
  v19 = v11;
  v12 = v7;
  [v9 onScheduler:v8 addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__ULFuture__then_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_2798DA758;
  v17 = v11;
  v13 = v11;
  [v9 onScheduler:v8 addFailureBlock:v16];

  v14 = [v13 future];

  return v14;
}

void __38__ULFuture__then_withBlock_scheduler___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:v2];
}

+ (id)_recover:(id)a3 withBlock:(id)a4 scheduler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[ULPromise promise];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__ULFuture__recover_withBlock_scheduler___block_invoke;
  v19[3] = &unk_2798DA780;
  v11 = v10;
  v20 = v11;
  [v9 onScheduler:v8 addSuccessBlock:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__ULFuture__recover_withBlock_scheduler___block_invoke_2;
  v16[3] = &unk_2798DA7A8;
  v17 = v11;
  v18 = v7;
  v12 = v11;
  v13 = v7;
  [v9 onScheduler:v8 addFailureBlock:v16];

  v14 = [v12 future];

  return v14;
}

void __41__ULFuture__recover_withBlock_scheduler___block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _finishWithFuture:v2];
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
    if ([v4 count] < 2)
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = [v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1}];
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __18__ULFuture_chain___block_invoke;
    v16[3] = &unk_2798DA7D0;
    v18 = a1;
    v8 = v7;
    v17 = v8;
    v9 = [v5 then:v16];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __18__ULFuture_chain___block_invoke_2;
    v13[3] = &unk_2798DA7F8;
    v14 = v8;
    v15 = a1;
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

+ (id)_join:(id)a3 ignoreFailures:(BOOL)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = +[ULPromise promise];
    v7 = [v5 count];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v10 atIndexedSubscript:i];
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
    v35 = a4;
    v15 = v6;
    v34 = v15;
    v16 = v12;
    [v5 enumerateObjectsUsingBlock:v30];
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

    v21 = [v19 future];
  }

  else
  {
    v21 = [ULFuture futureWithResult:MEMORY[0x277CBEBF8]];
  }

  return v21;
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

+ (id)sequence:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] array];
    if ([v3 count] < 2)
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v5 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    }

    v7 = [v3 firstObject];
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
        v13 = v7;
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
          v22 = v4;
          v23 = v14;
          v7 = [v13 then:v21];

          ++v12;
          v13 = v7;
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
    v20 = v4;
    v15 = v4;
    v6 = [v7 then:v19];

    v3 = v18;
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

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [(ULFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v7 = [(ULFuture *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)resultIfAvailable:(id *)a3
{
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [(ULFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:1 beforeDate:a3])
  {
    v6 = self->_result;
    stateLock = self->_stateLock;
    v8 = self->_error;
    [(NSConditionLock *)stateLock unlock];
    if (a4)
    {
      v9 = v8;
      *a4 = v8;
    }
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"ULErrorDomain" code:-1 userInfo:0];
    *a4 = v6 = 0;
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
  v3 = [(ULFuture *)self _nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return v3;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(ULFuture *)self _nts_isFinished])
  {
    v3 = [(NSError *)self->_error domain];
    if ([v3 isEqual:*MEMORY[0x277CCA050]])
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

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(NSConditionLock *)self->_stateLock lock];
  v9 = [(ULFuture *)self _nts_isFinished];
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
    [(ULFuture *)self _flushCompletionBlocks];
  }

  return !v9;
}

- (void)_finishWithFuture:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__ULFuture__finishWithFuture___block_invoke;
  v6[3] = &unk_2798DA780;
  v6[4] = self;
  v4 = a3;
  [v4 addSuccessBlock:v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ULFuture__finishWithFuture___block_invoke_2;
  v5[3] = &unk_2798DA758;
  v5[4] = self;
  [v4 addFailureBlock:v5];
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

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ULFuture_addSuccessBlock___block_invoke;
  v7[3] = &unk_2798DA960;
  v8 = v4;
  v5 = v4;
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

- (void)onScheduler:(id)a3 addSuccessBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULFuture_onScheduler_addSuccessBlock___block_invoke;
  v10[3] = &unk_2798DA988;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)addFailureBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ULFuture_addFailureBlock___block_invoke;
  v7[3] = &unk_2798DA960;
  v8 = v4;
  v5 = v4;
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

- (void)onScheduler:(id)a3 addFailureBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ULFuture_onScheduler_addFailureBlock___block_invoke;
  v10[3] = &unk_2798DA9B0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_addCompletionBlock:(id)a3
{
  v6 = a3;
  [(NSConditionLock *)self->_stateLock lock];
  if ([(ULFuture *)self _nts_isFinished])
  {
    [(NSConditionLock *)self->_stateLock unlock];
    v6[2](v6, self->_result, self->_error);
  }

  else
  {
    completionBlocks = self->_completionBlocks;
    v5 = MEMORY[0x259CA3550](v6);
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

- (void)always:(id)a3
{
  v4 = a3;
  v5 = +[ULScheduler immediateScheduler];
  [(ULFuture *)self onScheduler:v5 always:v4];
}

- (id)then:(id)a3
{
  v4 = a3;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 then:v4];

  return v6;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 recover:v4];

  return v6;
}

- (id)map:(id)a3
{
  v4 = a3;
  v5 = +[ULScheduler immediateScheduler];
  v6 = [(ULFuture *)self onScheduler:v5 map:v4];

  return v6;
}

- (id)onScheduler:(id)a3 map:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__ULFuture_onScheduler_map___block_invoke;
  v10[3] = &unk_2798DA9D8;
  v11 = v6;
  v7 = v6;
  v8 = [(ULFuture *)self onScheduler:a3 then:v10];

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