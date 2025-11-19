@interface EFLazyFuture
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)run;
- (BOOL)tryCancel;
- (EFLazyFuture)initWithScheduler:(id)a3 block:(id)a4;
- (id)delegate;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultIfAvailable:(id *)a3;
- (void)addFailureBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
- (void)onScheduler:(id)a3 addFailureBlock:(id)a4;
- (void)onScheduler:(id)a3 addSuccessBlock:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation EFLazyFuture

- (EFLazyFuture)initWithScheduler:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = EFLazyFuture;
  v9 = [(EFFuture *)&v17 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    stateLock = v9->_stateLock;
    v9->_stateLock = v10;

    [(NSConditionLock *)v9->_stateLock setName:@"EFLazyFuture state lock"];
    objc_storeStrong(&v9->_scheduler, a3);
    v12 = _Block_copy(v8);
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
  v2 = [(EFPromise *)self->_promise future];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v5 = a3;
  v4 = [(EFPromise *)self->_promise future];
  [v4 setDelegate:v5];
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

  return v3 == 0;
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
  v2 = [(EFPromise *)self->_promise future];
  v3 = [v2 isFinished];

  return v3;
}

- (BOOL)isCancelled
{
  v2 = [(EFPromise *)self->_promise future];
  v3 = [v2 isCancelled];

  return v3;
}

- (BOOL)tryCancel
{
  [(NSConditionLock *)self->_stateLock lock];
  v3 = [(NSConditionLock *)self->_stateLock condition];
  if (v3)
  {
    [(NSConditionLock *)self->_stateLock unlock];
  }

  else
  {
    v4 = [(EFPromise *)self->_promise future];
    [v4 cancel];

    block = self->_block;
    self->_block = 0;

    [(NSConditionLock *)self->_stateLock unlockWithCondition:2];
  }

  return v3 == 0;
}

- (void)addSuccessBlock:(id)a3
{
  v5 = a3;
  v4 = +[EFScheduler immediateScheduler];
  [(EFLazyFuture *)self onScheduler:v4 addSuccessBlock:v5];
}

- (void)onScheduler:(id)a3 addSuccessBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(EFLazyFuture *)self run];
  v7 = [(EFPromise *)self->_promise future];
  [v7 onScheduler:v8 addSuccessBlock:v6];
}

- (void)addFailureBlock:(id)a3
{
  v5 = a3;
  v4 = +[EFScheduler immediateScheduler];
  [(EFLazyFuture *)self onScheduler:v4 addFailureBlock:v5];
}

- (void)onScheduler:(id)a3 addFailureBlock:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(EFLazyFuture *)self run];
  v7 = [(EFPromise *)self->_promise future];
  [v7 onScheduler:v8 addFailureBlock:v6];
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(EFLazyFuture *)self run];
  v7 = [(EFPromise *)self->_promise future];
  v8 = [v7 resultBeforeDate:v6 error:a4];

  return v8;
}

- (id)resultIfAvailable:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantPast];
  v6 = [(EFLazyFuture *)self resultBeforeDate:v5 error:a3];

  return v6;
}

@end