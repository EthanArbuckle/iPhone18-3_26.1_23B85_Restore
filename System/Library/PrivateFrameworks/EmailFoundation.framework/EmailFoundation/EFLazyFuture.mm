@interface EFLazyFuture
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)run;
- (BOOL)tryCancel;
- (EFLazyFuture)initWithScheduler:(id)scheduler block:(id)block;
- (id)delegate;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultIfAvailable:(id *)available;
- (void)addFailureBlock:(id)block;
- (void)addSuccessBlock:(id)block;
- (void)onScheduler:(id)scheduler addFailureBlock:(id)block;
- (void)onScheduler:(id)scheduler addSuccessBlock:(id)block;
- (void)setDelegate:(id)delegate;
@end

@implementation EFLazyFuture

- (EFLazyFuture)initWithScheduler:(id)scheduler block:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = EFLazyFuture;
  v9 = [(EFFuture *)&v17 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v9->_stateLock;
    v9->_stateLock = v10;

    [(NSConditionLock *)v9->_stateLock setName:@"EFLazyFuture state lock"];
    objc_storeStrong(&v9->_scheduler, scheduler);
    v12 = _Block_copy(blockCopy);
    block = v9->_block;
    v9->_block = v12;

    v14 = objc_alloc_init(EFPromise);
    promise = v9->_promise;
    v9->_promise = v14;
  }

  return v9;
}

- (id)delegate
{
  future = [(EFPromise *)self->_promise future];
  delegate = [future delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  future = [(EFPromise *)self->_promise future];
  [future setDelegate:delegateCopy];
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
    v4 = _Block_copy(self->_block);
    block = self->_block;
    self->_block = 0;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:1];
    scheduler = self->_scheduler;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __19__EFLazyFuture_run__block_invoke;
    v9[3] = &unk_1E8248960;
    v7 = v4;
    v9[4] = self;
    v10 = v7;
    [(EFScheduler *)scheduler performBlock:v9];
  }

  return condition == 0;
}

void __19__EFLazyFuture_run__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  v3 = (*(v2 + 16))();
  v4 = v5;
  [*(*(a1 + 32) + 72) finishWithResult:v3 error:v4];
  [*(*(a1 + 32) + 48) lock];
  [*(*(a1 + 32) + 48) unlockWithCondition:2];
}

- (BOOL)isFinished
{
  future = [(EFPromise *)self->_promise future];
  isFinished = [future isFinished];

  return isFinished;
}

- (BOOL)isCancelled
{
  future = [(EFPromise *)self->_promise future];
  isCancelled = [future isCancelled];

  return isCancelled;
}

- (BOOL)tryCancel
{
  [(NSConditionLock *)self->_stateLock lock];
  condition = [(NSConditionLock *)self->_stateLock condition];
  if (condition)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    future = [(EFPromise *)self->_promise future];
    [future cancel];

    block = self->_block;
    self->_block = 0;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:2];
  }

  return condition == 0;
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  v4 = +[EFScheduler immediateScheduler];
  [(EFLazyFuture *)self onScheduler:v4 addSuccessBlock:blockCopy];
}

- (void)onScheduler:(id)scheduler addSuccessBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  [(EFLazyFuture *)self run];
  future = [(EFPromise *)self->_promise future];
  [future onScheduler:schedulerCopy addSuccessBlock:blockCopy];
}

- (void)addFailureBlock:(id)block
{
  blockCopy = block;
  v4 = +[EFScheduler immediateScheduler];
  [(EFLazyFuture *)self onScheduler:v4 addFailureBlock:blockCopy];
}

- (void)onScheduler:(id)scheduler addFailureBlock:(id)block
{
  schedulerCopy = scheduler;
  blockCopy = block;
  [(EFLazyFuture *)self run];
  future = [(EFPromise *)self->_promise future];
  [future onScheduler:schedulerCopy addFailureBlock:blockCopy];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  [(EFLazyFuture *)self run];
  future = [(EFPromise *)self->_promise future];
  v8 = [future resultBeforeDate:dateCopy error:error];

  return v8;
}

- (id)resultIfAvailable:(id *)available
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v6 = [(EFLazyFuture *)self resultBeforeDate:distantPast error:available];

  return v6;
}

@end