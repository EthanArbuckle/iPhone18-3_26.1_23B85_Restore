@interface CNBlockCountingSchedulerDecorator
+ (id)os_log;
- (CNBlockCountingSchedulerDecorator)initWithScheduler:(id)scheduler;
- (NSString)description;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)blockBecameActive;
- (void)blockBecameCompleted;
- (void)blockBecamePending;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
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

- (CNBlockCountingSchedulerDecorator)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = CNBlockCountingSchedulerDecorator;
  v6 = [(CNBlockCountingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendName:@"scheduler" object:scheduler];

  build = [v3 build];

  return build;
}

- (void)blockBecamePending
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(self + 24);
  v5 = *(self + 32);
  v7 = 134218752;
  selfCopy = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_pendingBlockCount = vaddq_s64(*&selfCopy->_pendingBlockCount, xmmword_185A91F70);
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = selfCopy->_pendingBlockCount;
    activeBlockCount = selfCopy->_activeBlockCount;
    completedBlockCount = selfCopy->_completedBlockCount;
    v8 = 134218752;
    v9 = selfCopy;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEBUG, "Scheduler %p has new active block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(selfCopy);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)blockBecameCompleted
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_activeBlockCount = vaddq_s64(*&selfCopy->_activeBlockCount, xmmword_185A91F70);
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    pendingBlockCount = selfCopy->_pendingBlockCount;
    activeBlockCount = selfCopy->_activeBlockCount;
    completedBlockCount = selfCopy->_completedBlockCount;
    v8 = 134218752;
    v9 = selfCopy;
    v10 = 2048;
    v11 = pendingBlockCount;
    v12 = 2048;
    v13 = activeBlockCount;
    v14 = 2048;
    v15 = completedBlockCount;
    _os_log_debug_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_DEBUG, "Scheduler %p has new completed block (%lu pending, %lu active, %lu completed)", &v8, 0x2Au);
  }

  objc_sync_exit(selfCopy);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CNBlockCountingSchedulerDecorator_performBlock___block_invoke;
  v7[3] = &unk_1E6ED5858;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [scheduler performBlock:v7];
}

uint64_t __50__CNBlockCountingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CNBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v9[3] = &unk_1E6ED5858;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [scheduler performBlock:v9 qualityOfService:service];
}

uint64_t __67__CNBlockCountingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CNBlockCountingSchedulerDecorator_performCancelableBlock___block_invoke;
  v9[3] = &unk_1E6ED5CC8;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
  v7 = [scheduler performCancelableBlock:v9];

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

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CNBlockCountingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v11[3] = &unk_1E6ED5CC8;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler performCancelableBlock:v11 qualityOfService:service];

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

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CNBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_1E6ED5858;
  v11[4] = self;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [scheduler afterDelay:v11 performBlock:delay];

  return v9;
}

uint64_t __61__CNBlockCountingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) blockBecameActive];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 blockBecameCompleted];
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  [(CNBlockCountingSchedulerDecorator *)self blockBecamePending];
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__CNBlockCountingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v13[3] = &unk_1E6ED5858;
  v13[4] = self;
  v14 = blockCopy;
  v10 = blockCopy;
  v11 = [scheduler afterDelay:v13 performBlock:service qualityOfService:delay];

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
  scheduler = [(CNBlockCountingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end