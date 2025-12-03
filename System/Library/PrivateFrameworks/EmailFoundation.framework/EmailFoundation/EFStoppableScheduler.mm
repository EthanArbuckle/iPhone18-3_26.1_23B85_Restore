@interface EFStoppableScheduler
+ (id)assertableSchedulerWithScheduler:(id)scheduler;
+ (id)suspendableSchedulerWithScheduler:(id)scheduler;
- (EFStoppableScheduler)initWithScheduler:(id)scheduler;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)performCancelableBlock:(id)block;
- (id)performWithObject:(id)object;
- (void)_addCancelationToken:(id)token;
- (void)_cancelAllTokens;
- (void)_removeCancelationToken:(id)token;
- (void)dealloc;
- (void)performBlock:(id)block;
- (void)performSyncBarrierBlock:(id)block;
- (void)performSyncBlock:(id)block;
- (void)performVoucherPreservingBlock:(id)block;
- (void)resume;
- (void)stopAndWait;
- (void)suspend;
@end

@implementation EFStoppableScheduler

- (void)dealloc
{
  v3 = EFAtomicObjectRelease(&self->_scheduler);
  v4.receiver = self;
  v4.super_class = EFStoppableScheduler;
  [(EFStoppableScheduler *)&v4 dealloc];
}

- (EFStoppableScheduler)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v13.receiver = self;
  v13.super_class = EFStoppableScheduler;
  v5 = [(EFStoppableScheduler *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = EFAtomicObjectSetIfNil(&v5->_scheduler.cfObject, schedulerCopy);
    v8 = [EFLocked alloc];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = [(EFLocked *)v8 initWithObject:v9];
    tokens = v6->_tokens;
    v6->_tokens = v10;
  }

  return v6;
}

+ (id)assertableSchedulerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = [[self alloc] initWithScheduler:schedulerCopy];

  return v5;
}

+ (id)suspendableSchedulerWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v5 = [[self alloc] initWithScheduler:schedulerCopy];

  return v5;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  v7 = objc_alloc_init(EFManualCancelationToken);
  [(EFStoppableScheduler *)self _addCancelationToken:v7];
  objc_initWeak(&location, self);
  v8 = EFAtomicObjectLoad(&self->_scheduler);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __48__EFStoppableScheduler_afterDelay_performBlock___block_invoke;
  v17 = &unk_1E824A150;
  objc_copyWeak(&v20, &location);
  v9 = v7;
  v18 = v9;
  v10 = blockCopy;
  v19 = v10;
  v11 = [v8 afterDelay:&v14 performBlock:delay];

  if (v11)
  {
    [(EFManualCancelationToken *)v9 addCancelable:v11, v14, v15, v16, v17, v18];
    v12 = v9;
  }

  else
  {
    [(EFStoppableScheduler *)self _removeCancelationToken:v9, v14, v15, v16, v17, v18];
    v12 = 0;
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __48__EFStoppableScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeCancelationToken:*(a1 + 32)];
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  v4 = EFAtomicObjectLoad(&self->_scheduler);
  [v4 performBlock:blockCopy];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(EFManualCancelationToken);
  [(EFStoppableScheduler *)self _addCancelationToken:v5];
  objc_initWeak(&location, self);
  v6 = EFAtomicObjectLoad(&self->_scheduler);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __47__EFStoppableScheduler_performCancelableBlock___block_invoke;
  v15 = &unk_1E824A178;
  objc_copyWeak(&v18, &location);
  v7 = v5;
  v16 = v7;
  v8 = blockCopy;
  v17 = v8;
  v9 = [v6 performCancelableBlock:&v12];

  if (v9)
  {
    [(EFManualCancelationToken *)v7 addCancelable:v9, v12, v13, v14, v15, v16];
    v10 = v7;
  }

  else
  {
    [(EFStoppableScheduler *)self _removeCancelationToken:v7, v12, v13, v14, v15, v16];
    v10 = 0;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __47__EFStoppableScheduler_performCancelableBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _removeCancelationToken:*(a1 + 32)];
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)performSyncBlock:(id)block
{
  blockCopy = block;
  v4 = EFAtomicObjectLoad(&self->_scheduler);
  [v4 performSyncBlock:blockCopy];
}

- (void)performSyncBarrierBlock:(id)block
{
  blockCopy = block;
  v4 = EFAtomicObjectLoad(&self->_scheduler);
  [v4 performSyncBarrierBlock:blockCopy];
}

- (void)performVoucherPreservingBlock:(id)block
{
  blockCopy = block;
  v4 = EFAtomicObjectLoad(&self->_scheduler);
  [v4 performVoucherPreservingBlock:blockCopy];
}

- (id)performWithObject:(id)object
{
  objectCopy = object;
  v5 = EFAtomicObjectLoad(&self->_scheduler);
  v6 = [v5 performWithObject:objectCopy];

  return v6;
}

- (void)suspend
{
  v2 = EFAtomicObjectLoad(&self->_scheduler);
  [v2 suspend];
}

- (void)resume
{
  v2 = EFAtomicObjectLoad(&self->_scheduler);
  [v2 resume];
}

- (void)stopAndWait
{
  v3 = EFAtomicObjectRelease(&self->_scheduler);
  [(EFStoppableScheduler *)self _cancelAllTokens];
  [v3 performSyncBarrierBlock:&__block_literal_global_39];
}

- (void)_addCancelationToken:(id)token
{
  tokenCopy = token;
  tokens = self->_tokens;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__EFStoppableScheduler__addCancelationToken___block_invoke;
  v12[3] = &unk_1E824A1A0;
  v6 = tokenCopy;
  v13 = v6;
  [(EFLocked *)tokens performWhileLocked:v12];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__EFStoppableScheduler__addCancelationToken___block_invoke_2;
  v7[3] = &unk_1E824A1C8;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  [v6 addCancelationBlock:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __45__EFStoppableScheduler__addCancelationToken___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeCancelationToken:v2];
}

- (void)_removeCancelationToken:(id)token
{
  tokenCopy = token;
  tokens = self->_tokens;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EFStoppableScheduler__removeCancelationToken___block_invoke;
  v7[3] = &unk_1E824A1A0;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [(EFLocked *)tokens performWhileLocked:v7];
}

- (void)_cancelAllTokens
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  tokens = self->_tokens;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__EFStoppableScheduler__cancelAllTokens__block_invoke;
  v12[3] = &unk_1E824A1F0;
  v12[4] = &v13;
  [(EFLocked *)tokens performWhileLocked:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x1E69E9840];
}

void __40__EFStoppableScheduler__cancelAllTokens__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 allObjects];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 removeAllObjects];
}

@end