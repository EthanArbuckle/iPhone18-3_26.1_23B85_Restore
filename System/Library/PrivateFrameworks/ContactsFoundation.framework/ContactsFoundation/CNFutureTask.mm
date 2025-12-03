@interface CNFutureTask
- (BOOL)cancel;
- (BOOL)finishWithResult:(id)result error:(id)error;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)run;
- (CNFutureTask)initWithTask:(id)task;
- (id)flatMap:(id)map;
- (id)futureResult;
- (id)recover:(id)recover;
- (id)result:(id *)result;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (void)_flushCompletionBlocks;
- (void)addFailureBlock:(id)block;
- (void)addFailureBlock:(id)block scheduler:(id)scheduler;
- (void)addSuccessBlock:(id)block;
- (void)addSuccessBlock:(id)block scheduler:(id)scheduler;
@end

@implementation CNFutureTask

- (CNFutureTask)initWithTask:(id)task
{
  taskCopy = task;
  v16.receiver = self;
  v16.super_class = CNFutureTask;
  v6 = [(CNFutureTask *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
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

- (id)result:(id *)result
{
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [(CNFutureTask *)self resultBeforeDate:distantFuture error:result];

  return v6;
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  if ([(NSConditionLock *)self->_stateLock lockWhenCondition:2 beforeDate:date])
  {
    v6 = [(CNFutureResult *)self->_futureResult copy];
    [(NSConditionLock *)self->_stateLock unlock];
    result = [v6 result];
    error = [v6 error];
    v9 = [CNFoundationError ifResultIsNil:result setOutputError:error toError:error];
  }

  else
  {
    v10 = +[CNFoundationError timeoutError];
    v6 = v10;
    if (error)
    {
      v11 = v10;
      v9 = 0;
      *error = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:timeout];
  v7 = [(CNFutureTask *)self resultBeforeDate:v6 error:error];

  return v7;
}

- (BOOL)isFinished
{
  [(NSConditionLock *)self->_stateLock lock];
  nts_isFinished = [(CNFutureTask *)self nts_isFinished];
  [(NSConditionLock *)self->_stateLock unlock];
  return nts_isFinished;
}

- (BOOL)isCancelled
{
  [(NSConditionLock *)self->_stateLock lock];
  if ([(CNFutureTask *)self nts_isFinished])
  {
    error = [(CNFutureResult *)self->_futureResult error];
    v4 = [CNFoundationError isCanceledError:error];
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
  condition = [(NSConditionLock *)self->_stateLock condition];
  if (condition == 2)
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

  return condition != 2;
}

- (BOOL)run
{
  [(NSConditionLock *)self->_stateLock lock];
  condition = [(NSConditionLock *)self->_stateLock condition];
  if (condition)
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

  return condition == 0;
}

- (BOOL)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(NSConditionLock *)self->_stateLock lock];
  condition = [(NSConditionLock *)self->_stateLock condition];
  if (condition == 2)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    [(CNFutureResult *)self->_futureResult setResult:resultCopy error:errorCopy];
    [(CNFutureCompletionBlocks *)self->_completionBlocks setShouldCallImmediately:1];
    task = self->_task;
    self->_task = 0;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:2];
    [(CNFutureTask *)self _flushCompletionBlocks];
  }

  return condition != 2;
}

- (void)addSuccessBlock:(id)block
{
  completionBlocks = self->_completionBlocks;
  blockCopy = block;
  futureResult = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks addSuccessBlock:blockCopy orCallWithFutureResult:futureResult];
}

- (void)addSuccessBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CNFutureTask_addSuccessBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED6A78;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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

- (void)addFailureBlock:(id)block
{
  completionBlocks = self->_completionBlocks;
  blockCopy = block;
  futureResult = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks addFailureBlock:blockCopy orCallWithFutureResult:futureResult];
}

- (void)addFailureBlock:(id)block scheduler:(id)scheduler
{
  blockCopy = block;
  schedulerCopy = scheduler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CNFutureTask_addFailureBlock_scheduler___block_invoke;
  v10[3] = &unk_1E6ED69D8;
  v11 = schedulerCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = schedulerCopy;
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
  futureResult = [(CNFutureTask *)self futureResult];
  [(CNFutureCompletionBlocks *)completionBlocks flushCompletionBlocksWithFutureResult:futureResult];
}

- (id)flatMap:(id)map
{
  mapCopy = map;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [CNFuture flatMap:self withBlock:mapCopy schedulerProvider:v5];

  return v6;
}

- (id)recover:(id)recover
{
  recoverCopy = recover;
  v5 = +[CNSchedulerProvider defaultProvider];
  v6 = [CNFuture recover:self withBlock:recoverCopy schedulerProvider:v5];

  return v6;
}

@end