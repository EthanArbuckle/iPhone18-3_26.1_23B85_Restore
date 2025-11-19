@interface CNSuspendableSchedulerDecorator
+ (id)resumedSchedulerWithScheduler:(id)a3;
+ (id)suspendedSchedulerWithScheduler:(id)a3;
- (CNSuspendableSchedulerDecorator)initWithScheduler:(id)a3;
- (NSString)description;
- (double)timestamp;
- (id)_nts_enqueueCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)_performFirstQueuedTask;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)resume;
- (void)suspend;
@end

@implementation CNSuspendableSchedulerDecorator

- (void)resume
{
  v3 = [(CNSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(CNSuspendableSchedulerDecorator *)self lock];
  [v4 unlockWithCondition:1];

  v5 = [(CNSuspendableSchedulerDecorator *)self scheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNSuspendableSchedulerDecorator_resume__block_invoke;
  v6[3] = &unk_1E6ED5830;
  v6[4] = self;
  [v5 performBlock:v6];
}

- (void)_performFirstQueuedTask
{
  v3 = [(CNSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(CNSuspendableSchedulerDecorator *)self lock];
  v5 = [v4 condition];

  if (v5)
  {
    v6 = [(CNSuspendableSchedulerDecorator *)self queue];
    v7 = [v6 dequeue];

    v8 = [(CNSuspendableSchedulerDecorator *)self lock];
    v10 = v8;
    if (v7)
    {
      [v8 unlockWithCondition:1];

      v7[2](v7);
      v9 = [(CNSuspendableSchedulerDecorator *)self scheduler];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__CNSuspendableSchedulerDecorator__performFirstQueuedTask__block_invoke;
      v11[3] = &unk_1E6ED5830;
      v11[4] = self;
      [v9 performBlock:v11];

      return;
    }

    [v8 unlockWithCondition:2];
  }

  else
  {
    v10 = [(CNSuspendableSchedulerDecorator *)self lock];
    [v10 unlock];
  }
}

- (void)suspend
{
  v3 = [(CNSuspendableSchedulerDecorator *)self lock];
  [v3 lock];

  v4 = [(CNSuspendableSchedulerDecorator *)self lock];
  [v4 unlockWithCondition:0];
}

+ (id)suspendedSchedulerWithScheduler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScheduler:v4];

  return v5;
}

+ (id)resumedSchedulerWithScheduler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithScheduler:v4];

  [v5 resume];

  return v5;
}

- (CNSuspendableSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CNSuspendableSchedulerDecorator;
  v6 = [(CNSuspendableSchedulerDecorator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
    v8 = objc_alloc_init(CNQueue);
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    lock = v7->_lock;
    v7->_lock = v10;

    v12 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"scheduler" object:self->_scheduler];
  v5 = [(NSConditionLock *)self->_lock condition];
  v6 = @"CNSuspendableSchedulerConditionBuffering";
  if (v5 == 1)
  {
    v6 = @"CNSuspendableSchedulerConditionDraining";
  }

  if (v5 == 2)
  {
    v7 = @"CNSuspendableSchedulerConditionRelaying";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 appendName:@"status" object:v7];
  v9 = [v3 build];

  return v9;
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CNSuspendableSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E6ED5F90;
  v10 = v6;
  v7 = v6;
  v8 = [(CNSuspendableSchedulerDecorator *)self performCancelableBlock:v9 qualityOfService:a4];
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__8;
  v27 = __Block_byref_object_dispose__8;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [(CNSuspendableSchedulerDecorator *)self lock];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CNSuspendableSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v14[3] = &unk_1E6ED74F8;
  v14[4] = self;
  v16 = &v19;
  v17 = &v23;
  v8 = v6;
  v15 = v8;
  v18 = a4;
  CNRunWithLock(v7, v14);

  if (*(v20 + 24) == 1)
  {
    v9 = [(CNSuspendableSchedulerDecorator *)self scheduler];
    v10 = [v9 performCancelableBlock:v8 qualityOfService:a4];
    v11 = v24[5];
    v24[5] = v10;
  }

  v12 = v24[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

void __75__CNSuspendableSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lock];
  v3 = [v2 condition];

  if (v3 == 2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) _nts_enqueueCancelableBlock:*(a1 + 40) qualityOfService:*(a1 + 64)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    MEMORY[0x1EEE66BB8](v4, v6);
  }
}

- (id)_nts_enqueueCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CNCancelationToken);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__CNSuspendableSchedulerDecorator__nts_enqueueCancelableBlock_qualityOfService___block_invoke;
  v26[3] = &unk_1E6ED52C0;
  v8 = v6;
  v28 = v8;
  v9 = v7;
  v27 = v9;
  v10 = v26;
  v11 = v10;
  if (a4 <= 2)
  {
    if (!a4)
    {
      v14 = _Block_copy(v10);
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v12 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v13 = dispatch_block_create_with_qos_class(0, v12, 0, v10);
      goto LABEL_16;
    }

LABEL_11:
    v12 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      v12 = QOS_CLASS_UTILITY;
    }

    else
    {
      v12 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a4 == 5)
  {
    v12 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a4 != 6)
  {
    goto LABEL_11;
  }

  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
LABEL_16:
  v15 = v13;
  v14 = objc_opt_self();

LABEL_17:
  v16 = [v14 copy];

  v17 = [(CNSuspendableSchedulerDecorator *)self queue];
  v18 = _Block_copy(v16);
  [v17 enqueue:v18];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__CNSuspendableSchedulerDecorator__nts_enqueueCancelableBlock_qualityOfService___block_invoke_2;
  v21[3] = &unk_1E6ED7520;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  [(CNCancelationToken *)v9 addCancelationBlock:v21];
  v19 = v9;
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

void __80__CNSuspendableSchedulerDecorator__nts_enqueueCancelableBlock_qualityOfService___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained lock];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__CNSuspendableSchedulerDecorator__nts_enqueueCancelableBlock_qualityOfService___block_invoke_3;
  v4[3] = &unk_1E6ED5C10;
  objc_copyWeak(&v5, (a1 + 40));
  v4[4] = WeakRetained;
  CNRunWithLock(v3, v4);

  objc_destroyWeak(&v5);
}

void __80__CNSuspendableSchedulerDecorator__nts_enqueueCancelableBlock_qualityOfService___block_invoke_3(uint64_t a1)
{
  aBlock = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) queue];
  v3 = _Block_copy(aBlock);
  [v2 dequeueObject:v3];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_alloc_init(CNCancelationToken);
  v10 = [(CNSuspendableSchedulerDecorator *)self scheduler];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__CNSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v19 = &unk_1E6ED7548;
  v20 = self;
  v22 = v8;
  v23 = a5;
  v11 = v9;
  v21 = v11;
  v12 = v8;
  v13 = [v10 afterDelay:&v16 performBlock:a3];

  [(CNCancelationToken *)v11 addCancelable:v13, v16, v17, v18, v19, v20];
  v14 = v11;

  return v11;
}

void __76__CNSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__CNSuspendableSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v4[3] = &unk_1E6ED5F90;
  v5 = *(a1 + 48);
  v3 = [v2 performCancelableBlock:v4 qualityOfService:*(a1 + 56)];
  [*(a1 + 40) addCancelable:v3];
}

- (double)timestamp
{
  v2 = [(CNSuspendableSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end