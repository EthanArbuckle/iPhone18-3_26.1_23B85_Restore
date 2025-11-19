@interface CNBlockCountingSchedulerDecorator
+ (id)os_log;
- (CNBlockCountingSchedulerDecorator)initWithScheduler:(id)a3;
- (NSString)description;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)blockBecameActive;
- (void)blockBecameCompleted;
- (void)blockBecamePending;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation CNBlockCountingSchedulerDecorator

+ (id)os_log
{
  if (os_log_cn_once_token_1 != -1)
  {
    +[CNBlockCountingSchedulerDecorator os_log];
  }

  v3 = os_log_cn_once_object_1;

  return v3;
}

uint64_t __43__CNBlockCountingSchedulerDecorator_os_log__block_invoke()
{
  os_log_cn_once_object_1 = os_log_create("com.apple.contacts.debug", "scheduler-counting");

  return MEMORY[0x1EEE66BB8]();
}

- (CNBlockCountingSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNBlockCountingSchedulerDecorator;
  v6 = [(CNBlockCountingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendName:@"scheduler" object:v4];

  v6 = [v3 build];

  return v6;
}

- (void)blockBecamePending
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = 134218752;
  v8 = a1;
  v9 = 2048;
  v10 = v3;
  v11 = 2048;
  v12 = v4;
  v13 = 2048;
  v14 = v5;
  _os_log_debug_impl(&dword_1859F0000, log, OS_LOG_TYPE_DEBUG, "Scheduler %p has new pending block (%lu pending, %lu active, %lu completed)", &v7, 0x2Au);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)blockBecameActive
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  *&v2->_pendingBlockCount = vaddq_s64(*&v2->_pendingBlockCount, xmmword_185A91F70);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = v2->_pendingBlockCount;
    activeBlockCount = v2->_activeBlockCount;
    completedBlockCount = v2->_completedBlockCount;
    v8 = 134218752;
    v9 = v2;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_1859F0000, v3, OS_LOG_TYPE_DEBUG, "Scheduler %p has new active block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)blockBecameCompleted
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  *&v2->_activeBlockCount = vaddq_s64(*&v2->_activeBlockCount, xmmword_185A91F70);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = v2->_pendingBlockCount;
    activeBlockCount = v2->_activeBlockCount;
    completedBlockCount = v2->_completedBlockCount;
    v8 = 134218752;
    v9 = v2;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_1859F0000, v3, OS_LOG_TYPE_DEBUG, "Scheduler %p has new completed block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v5 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNBlockCountingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_1E6ED5858;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __50__CNBlockCountingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CNBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E6ED5858;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 performBlock:v9 qualityOfService:a4];
}

uint64_t __67__CNBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v5 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CNBlockCountingSchedulerDecorator_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E6ED5CC8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 performCancelableBlock:v9];

  return v7;
}

uint64_t __60__CNBlockCountingSchedulerDecorator_performCancelableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 blockBecameActive];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 blockBecameCompleted];
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CNBlockCountingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E6ED5CC8;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 performCancelableBlock:v11 qualityOfService:a4];

  return v9;
}

uint64_t __77__CNBlockCountingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 blockBecameActive];
  (*(*(a1 + 40) + 16))();

  v5 = *(a1 + 32);

  return [v5 blockBecameCompleted];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v7 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CNBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_1E6ED5858;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 afterDelay:v11 performBlock:a3];

  return v9;
}

uint64_t __61__CNBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  v9 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__CNBlockCountingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E6ED5858;
  v13[4] = self;
  v14 = v8;
  v10 = v8;
  v11 = [v9 afterDelay:v13 performBlock:a5 qualityOfService:a3];

  return v11;
}

uint64_t __78__CNBlockCountingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (double)timestamp
{
  v2 = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end