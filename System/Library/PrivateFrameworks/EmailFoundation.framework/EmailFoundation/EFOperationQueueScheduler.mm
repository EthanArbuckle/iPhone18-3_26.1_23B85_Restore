@interface EFOperationQueueScheduler
- (EFOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)performCancelableBlock:(id)a3;
- (id)performWithObject:(id)a3;
- (void)performBlock:(id)a3;
- (void)performSyncBarrierBlock:(id)a3;
- (void)performSyncBlock:(id)a3;
- (void)performVoucherPreservingBlock:(id)a3;
@end

@implementation EFOperationQueueScheduler

- (EFOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = EFOperationQueueScheduler;
  v4 = [(EFOperationQueueScheduler *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v4->_queue;
    v4->_queue = v5;

    [(NSOperationQueue *)v4->_queue setMaxConcurrentOperationCount:a3];
  }

  return v4;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EFOperationQueueScheduler_performBlock___block_invoke;
  v7[3] = &unk_1E8248840;
  v8 = v4;
  v6 = v4;
  [(NSOperationQueue *)queue addOperationWithBlock:v7];
}

uint64_t __42__EFOperationQueueScheduler_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (void)performSyncBlock:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[EFPriorityDesignator currentDesignatorIfExists];
  v6 = MEMORY[0x1E696AAE0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __46__EFOperationQueueScheduler_performSyncBlock___block_invoke;
  v16 = &unk_1E8248960;
  v7 = v4;
  v18 = v7;
  v8 = v5;
  v17 = v8;
  v9 = [v6 blockOperationWithBlock:&v13];
  queue = self->_queue;
  v19[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{1, v13, v14, v15, v16}];
  [(NSOperationQueue *)queue addOperations:v11 waitUntilFinished:1];

  v12 = *MEMORY[0x1E69E9840];
}

void __46__EFOperationQueueScheduler_performSyncBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = +[EFPriorityDesignator currentDesignatorIfExists];

  if (v2 != v3)
  {

    +[EFPriorityDesignator destroyCurrentDesignator];
  }
}

- (void)performSyncBarrierBlock:(id)a3
{
  v4 = a3;
  v5 = +[EFPriorityDesignator currentDesignatorIfExists];
  queue = self->_queue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __53__EFOperationQueueScheduler_performSyncBarrierBlock___block_invoke;
  v12 = &unk_1E8248960;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v13 = v8;
  [(NSOperationQueue *)queue addBarrierBlock:&v9];
  [(EFOperationQueueScheduler *)self performSyncBlock:&__block_literal_global_24, v9, v10, v11, v12];
}

void __53__EFOperationQueueScheduler_performSyncBarrierBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = +[EFPriorityDesignator currentDesignatorIfExists];

  if (v2 != v3)
  {

    +[EFPriorityDesignator destroyCurrentDesignator];
  }
}

- (void)performVoucherPreservingBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EFOperationQueueScheduler_performVoucherPreservingBlock___block_invoke;
  block[3] = &unk_1E8248840;
  v6 = v4;
  v9 = v6;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  [(NSOperationQueue *)queue addOperationWithBlock:v7];
}

uint64_t __59__EFOperationQueueScheduler_performVoucherPreservingBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EFManualCancelationToken);
  v6 = MEMORY[0x1E696AAE0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__EFOperationQueueScheduler_performCancelableBlock___block_invoke;
  v18[3] = &unk_1E8248960;
  v7 = v4;
  v20 = v7;
  v8 = v5;
  v19 = v8;
  v9 = [v6 blockOperationWithBlock:v18];
  objc_initWeak(&location, v9);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __52__EFOperationQueueScheduler_performCancelableBlock___block_invoke_2;
  v15 = &unk_1E8248558;
  objc_copyWeak(&v16, &location);
  [(EFManualCancelationToken *)v8 addCancelationBlock:&v12];
  [(NSOperationQueue *)self->_queue addOperation:v9, v12, v13, v14, v15];
  v10 = v8;
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

uint64_t __52__EFOperationQueueScheduler_performCancelableBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

void __52__EFOperationQueueScheduler_performCancelableBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(EFManualCancelationToken);
  v8 = +[EFScheduler globalAsyncScheduler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__EFOperationQueueScheduler_afterDelay_performBlock___block_invoke;
  v15[3] = &unk_1E8248738;
  v9 = v7;
  v16 = v9;
  v17 = self;
  v10 = v6;
  v18 = v10;
  v11 = [v8 afterDelay:v15 performBlock:a3];

  v12 = v18;
  v13 = v9;

  return v9;
}

void __53__EFOperationQueueScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __53__EFOperationQueueScheduler_afterDelay_performBlock___block_invoke_2;
    v7 = &unk_1E82498E8;
    v2 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v3 = [v2 performCancelableBlock:&v4];
    [*(a1 + 32) addCancelable:{v3, v4, v5, v6, v7}];
  }
}

uint64_t __53__EFOperationQueueScheduler_afterDelay_performBlock___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  return +[EFPriorityDesignator destroyCurrentDesignator];
}

- (id)performWithObject:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() onScheduler:self performWithObject:v4];

  return v5;
}

@end