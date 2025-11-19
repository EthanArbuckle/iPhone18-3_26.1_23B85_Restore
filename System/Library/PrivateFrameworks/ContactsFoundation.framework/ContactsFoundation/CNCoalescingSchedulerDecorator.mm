@interface CNCoalescingSchedulerDecorator
- (CNCoalescingSchedulerDecorator)initWithScheduler:(id)a3 coalescingWindow:(double)a4;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (unint64_t)getAndIncrementState;
- (void)flushDelayedBlock;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)removeDelayedBlock:(id)a3;
@end

@implementation CNCoalescingSchedulerDecorator

- (CNCoalescingSchedulerDecorator)initWithScheduler:(id)a3 coalescingWindow:(double)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CNCoalescingSchedulerDecorator;
  v8 = [(CNCoalescingSchedulerDecorator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, a3);
    v9->_coalescingWindow = a4;
    v9->_state = 0;
    v10 = objc_alloc_init(CNStack);
    delayedBlocks = v9->_delayedBlocks;
    v9->_delayedBlocks = v10;

    v12 = v9;
  }

  return v9;
}

- (unint64_t)getAndIncrementState
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(CNCoalescingSchedulerDecorator *)v2 state])
  {
    v3 = 1;
  }

  else
  {
    [(CNCoalescingSchedulerDecorator *)v2 setState:1];
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)flushDelayedBlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CNCoalescingSchedulerDecorator *)v2 delayedBlocks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CNCoalescingSchedulerDecorator *)v2 delayedBlocks];
    v6 = [v5 pop];

    v7 = [(CNCoalescingSchedulerDecorator *)v2 delayedBlocks];
    v8 = [v7 popAll];

    v9 = [(CNCoalescingSchedulerDecorator *)v2 scheduler];
    [(CNCoalescingSchedulerDecorator *)v2 coalescingWindow];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__CNCoalescingSchedulerDecorator_flushDelayedBlock__block_invoke;
    v11[3] = &unk_1E6ED5830;
    v11[4] = v2;
    v10 = [v9 afterDelay:v11 performBlock:?];
  }

  else
  {
    [(CNCoalescingSchedulerDecorator *)v2 setState:0];
    v6 = 0;
  }

  objc_sync_exit(v2);

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)removeDelayedBlock:(id)a3
{
  aBlock = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNCoalescingSchedulerDecorator *)v4 delayedBlocks];
  v6 = _Block_copy(aBlock);
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CNCoalescingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_1E6ED5CC8;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = [(CNCoalescingSchedulerDecorator *)self performCancelableBlock:v7];
}

void __47__CNCoalescingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheduler];
  [v2 performBlock:*(a1 + 40)];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CNCoalescingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E6ED7978;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v7 = v6;
  v8 = [(CNCoalescingSchedulerDecorator *)self performCancelableBlock:v9];
}

void __64__CNCoalescingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) scheduler];
  [v2 performBlock:*(a1 + 40) qualityOfService:*(a1 + 48)];
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CNCancelationToken);
  v8 = [(CNCoalescingSchedulerDecorator *)self getAndIncrementState];
  if (v8 == 1)
  {
    v10 = self;
    objc_sync_enter(v10);
    objc_initWeak(&location, v10);
    objc_initWeak(&from, v7);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__CNCoalescingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke_2;
    v21[3] = &unk_1E6ED79A0;
    objc_copyWeak(&v23, &location);
    objc_copyWeak(v24, &from);
    v22 = v6;
    v24[1] = a4;
    v13 = [v21 copy];
    v14 = [(CNCoalescingSchedulerDecorator *)v10 delayedBlocks];
    v15 = _Block_copy(v13);
    [v14 push:v15];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__CNCoalescingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke_3;
    v18[3] = &unk_1E6ED6E80;
    objc_copyWeak(&v20, &location);
    v16 = v13;
    v19 = v16;
    [(CNCancelationToken *)v7 addCancelationBlock:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_sync_exit(v10);
  }

  else
  {
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = [(CNCoalescingSchedulerDecorator *)self scheduler];
    v10 = [v9 performCancelableBlock:v6 qualityOfService:a4];

    v11 = [(CNCoalescingSchedulerDecorator *)self scheduler];
    [(CNCoalescingSchedulerDecorator *)self coalescingWindow];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __74__CNCoalescingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
    v27[3] = &unk_1E6ED5830;
    v27[4] = self;
    v12 = [v11 afterDelay:v27 performBlock:?];

    [(CNCancelationToken *)v7 addCancelable:v10];
    [(CNCancelationToken *)v7 addCancelable:v12];
  }

LABEL_6:

  return v7;
}

void __74__CNCoalescingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (([v2 isCanceled] & 1) == 0)
  {
    v3 = [WeakRetained scheduler];
    v4 = [v3 performCancelableBlock:*(a1 + 32) qualityOfService:*(a1 + 56)];

    [v2 addCancelable:v4];
  }
}

void __74__CNCoalescingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeDelayedBlock:*(a1 + 32)];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(CNCoalescingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CNCoalescingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_1E6ED5858;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 afterDelay:v11 performBlock:a3];

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CNCoalescingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CNCoalescingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E6ED79C8;
  v13[4] = self;
  v14 = v8;
  v15 = a5;
  v10 = v8;
  v11 = [v9 afterDelay:v13 performBlock:a5 qualityOfService:a3];

  return v11;
}

- (double)timestamp
{
  v2 = [(CNCoalescingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end