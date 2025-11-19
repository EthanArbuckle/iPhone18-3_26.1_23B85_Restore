@interface CNInhibitingSchedulerDecorator
- (CNInhibitingSchedulerDecorator)initWithScheduler:(id)a3 inhibitorFactory:(id)a4;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation CNInhibitingSchedulerDecorator

- (CNInhibitingSchedulerDecorator)initWithScheduler:(id)a3 inhibitorFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNInhibitingSchedulerDecorator;
  v9 = [(CNInhibitingSchedulerDecorator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scheduler, a3);
    v11 = [v8 copy];
    inhibitorFactory = v10->_inhibitorFactory;
    v10->_inhibitorFactory = v11;

    v13 = v10;
  }

  return v10;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v7 = v5[2]();

  [v7 start];
  v6 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  [v6 performBlock:v4];

  [v7 stop];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v9 = v7[2]();

  [v9 start];
  v8 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  [v8 performBlock:v6 qualityOfService:a4];

  [v9 stop];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v6 = v5[2]();

  [v6 start];
  v7 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CNInhibitingSchedulerDecorator_performCancelableBlock___block_invoke;
  v12[3] = &unk_1E6ED5E28;
  v13 = v6;
  v14 = v4;
  v8 = v6;
  v9 = v4;
  v10 = [v7 performCancelableBlock:v12];

  return v10;
}

uint64_t __57__CNInhibitingSchedulerDecorator_performCancelableBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v8 = v7[2]();

  [v8 start];
  v9 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CNInhibitingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v14[3] = &unk_1E6ED5E28;
  v15 = v8;
  v16 = v6;
  v10 = v8;
  v11 = v6;
  v12 = [v9 performCancelableBlock:v14 qualityOfService:a4];

  return v12;
}

uint64_t __74__CNInhibitingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v8 = v7[2]();

  [v8 start];
  v9 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CNInhibitingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v14[3] = &unk_1E6ED52C0;
  v15 = v8;
  v16 = v6;
  v10 = v8;
  v11 = v6;
  v12 = [v9 afterDelay:v14 performBlock:a3];

  return v12;
}

uint64_t __58__CNInhibitingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CNInhibitingSchedulerDecorator *)self inhibitorFactory];
  v10 = v9[2]();

  [v10 start];
  v11 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CNInhibitingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v16[3] = &unk_1E6ED52C0;
  v17 = v10;
  v18 = v8;
  v12 = v10;
  v13 = v8;
  v14 = [v11 afterDelay:v16 performBlock:a5 qualityOfService:a3];

  return v14;
}

uint64_t __75__CNInhibitingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stop];
}

- (double)timestamp
{
  v2 = [(CNInhibitingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end