@interface CNFutureTask
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)a3 error:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)run;
- (CNFutureTask)initWithTask:(id)a3;
- (id)flatMap:(id)a3;
- (id)futureResult;
- (id)recover:(id)a3;
- (id)result:(id *)a3;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)a3;
- (void)addFailureBlock:(id)a3 scheduler:(id)a4;
- (void)addSuccessBlock:(id)a3;
- (void)addSuccessBlock:(id)a3 scheduler:(id)a4;
@end

@implementation CNFutureTask

- (CNFutureTask)initWithTask:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CNFutureTask;
  v6 = [(CNFutureTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
    v8 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v7->_stateLock;
    v7->_stateLock = v8;

    [(NSConditionLock *)v7->_stateLock setName:@"ABFuture state lock"];
    v10 = objc_alloc_init(CNFutureCompletionBlocks);
    completionBlocks = v7->_completionBlocks;
    v7->_completionBlocks = v10;

    v12 = objc_alloc_init(CNFutureResult);
    futureResult = v7->_futureResult;
    v7->_futureResult = v12;

    v14 = v7;
  }

  return v7;
}

- (id)result:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(CNFutureTask *)self resultBeforeDate:v5 error:a3];

  return v6;
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:2 beforeDate:a3])
  {
    v6 = [(CNFutureResult *)self->_futureResult copy];
    [(NSConditionLock *)self->_stateLock unlock];
    v7 = [v6 result];
    v8 = [v6 error];
    v9 = [CNFoundationError ifResultIsNil:v7 setOutputError:a4 toError:v8];
  }

  else
  {
    v10 = +[CNFoundationError timeoutError];
    v6 = v10;
    if (a4)
    {
      v11 = v10;
      v9 = 0;
      *a4 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
  v7 = [(CNFutureTask *)self resultBeforeDate:v6 error:a4];

  return v7;
}

- (BOOL)isFinished
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(CNFutureTask *)self nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return v3;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(CNFutureTask *)self nts_isFinished])
  {
    v3 = [(CNFutureResult *)self->_futureResult error];
    v4 = [CNFoundationError isCanceledError:v3];
  }

  else
  {
    v4 = 0;
  }

  [(NSConditionLock *)self->_stateLock unlock];
  return v4;
}

- (BOOL)cancel
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSConditionLock *)self->_stateLock condition];
  if (v3 == 2)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(CNFutureResult *)self->_futureResult setError:v4];

    [(CNFutureCompletionBlocks *)self->_completionBlocks setShouldCallImmediately:1];
    task = self->_task;
    self->_task = 0;
    v6 = task;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:2];
    [(CNTask *)v6 cancel];

    [(CNFutureTask *)self _flushCompletionBlocks];
    [(CNFutureTask *)self didCancel];
  }

  return v3 != 2;
}

- (BOOL)run
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSConditionLock *)self->_stateLock condition];
  if (v3)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    stateLock = self->_stateLock;
    v5 = self->_task;
    [(NSConditionLock *)stateLock unlockWithCondition:1];
    v9 = 0;
    v6 = [(CNTask *)v5 run:&v9];
    v7 = v9;
    [(CNFutureTask *)self finishWithResult:v6 error:v7];
  }

  return v3 == 0;
}

- (BOOL)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSConditionLock *)self->_stateLock lock];
  v8 = [(NSConditionLock *)self->_stateLock condition];
  if (v8 == 2)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    [(CNFutureResult *)self->_futureResult setResult:v6 error:v7];
    [(CNFutureCompletionBlocks *)self->_completionBlocks setShouldCallImmediately:1];
    task = self->_task;
    self->_task = 0;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:2];
    [(CNFutureTask *)self _flushCompletionBlocks];
  }

  return v8 != 2;
}

- (void)addSuccessBlock:(id)a3
{
  completionBlocks = self->_completionBlocks;
  v5 = a3;
  v6 = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks addSuccessBlock:v5 orCallWithFutureResult:v6];
}

- (void)addSuccessBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CNFutureTask_addSuccessBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED6A78;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(CNFutureTask *)self addSuccessBlock:v10];
}

void __42__CNFutureTask_addSuccessBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CNFutureTask_addSuccessBlock_scheduler___block_invoke_2;
  v7[3] = &unk_1E6ED52C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (void)addFailureBlock:(id)a3
{
  completionBlocks = self->_completionBlocks;
  v5 = a3;
  v6 = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks addFailureBlock:v5 orCallWithFutureResult:v6];
}

- (void)addFailureBlock:(id)a3 scheduler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CNFutureTask_addFailureBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED69D8;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  [(CNFutureTask *)self addFailureBlock:v10];
}

void __42__CNFutureTask_addFailureBlock_scheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CNFutureTask_addFailureBlock_scheduler___block_invoke_2;
  v7[3] = &unk_1E6ED52C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 performBlock:v7];
}

- (id)futureResult
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(CNFutureResult *)self->_futureResult copy];
  [(NSConditionLock *)self->_stateLock unlock];

  return v3;
}

- (void)_flushCompletionBlocks
{
  completionBlocks = self->_completionBlocks;
  v3 = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks flushCompletionBlocksWithFutureResult:v3];
}

- (id)flatMap:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [CNFuture flatMap:self withBlock:v4 schedulerProvider:v5];

  return v6;
}

- (id)recover:(id)a3
{
  v4 = a3;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [CNFuture recover:self withBlock:v4 schedulerProvider:v5];

  return v6;
}

@end