@interface CNTimeProfilingSchedulerDecorator
+ (id)os_log;
- (CNTimeProfilingSchedulerDecorator)initWithScheduler:(id)scheduler;
- (NSString)description;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (unint64_t)nextBlockNumber;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNTimeProfilingSchedulerDecorator

+ (id)os_log
{
  if (os_log_cn_once_token_1_9 != -1)
  {
    +[CNTimeProfilingSchedulerDecorator os_log];
  }

  v3 = os_log_cn_once_object_1_9;

  return v3;
}

uint64_t __43__CNTimeProfilingSchedulerDecorator_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.debug", "scheduler-timing");
  v1 = os_log_cn_once_object_1_9;
  os_log_cn_once_object_1_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNTimeProfilingSchedulerDecorator)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = CNTimeProfilingSchedulerDecorator;
  v6 = [(CNTimeProfilingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v7->_blockCounter = 0;
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendName:@"scheduler" object:scheduler];

  build = [v3 build];

  return build;
}

- (unint64_t)nextBlockNumber
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockCounter = selfCopy->_blockCounter;
  selfCopy->_blockCounter = blockCounter + 1;
  objc_sync_exit(selfCopy);

  return blockCounter;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v7 = v6;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke;
  v12[3] = &unk_1E6ED7620;
  v13 = blockCopy;
  v14 = nextBlockNumber;
  v15 = v7;
  v12[4] = self;
  v11 = blockCopy;
  [scheduler2 performBlock:v12];
}

void __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduler];
  [v2 timestamp];
  v4 = v3;

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - v4];
    v15 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - *(a1 + 56)];
    v16 = 134218498;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_debug_impl(&dword_1859F0000, v11, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v16, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v9 = v8;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CNTimeProfilingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v14[3] = &unk_1E6ED7620;
  v15 = blockCopy;
  v16 = nextBlockNumber;
  v17 = v9;
  v14[4] = self;
  v13 = blockCopy;
  [scheduler2 performBlock:v14 qualityOfService:service];
}

void __67__CNTimeProfilingSchedulerDecorator_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduler];
  [v2 timestamp];
  v4 = v3;

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - v4];
    v15 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - *(a1 + 56)];
    v16 = 134218498;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_debug_impl(&dword_1859F0000, v11, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v16, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v7 = v6;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CNTimeProfilingSchedulerDecorator_performCancelableBlock___block_invoke;
  v14[3] = &unk_1E6ED7648;
  v15 = blockCopy;
  v16 = nextBlockNumber;
  v17 = v7;
  v14[4] = self;
  v11 = blockCopy;
  v12 = [scheduler2 performCancelableBlock:v14];

  return v12;
}

void __60__CNTimeProfilingSchedulerDecorator_performCancelableBlock___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scheduler];
  [v5 timestamp];
  v7 = v6;

  v8 = *(a1 + 32);
  v9 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v10 = [*(a1 + 32) scheduler];
  [v10 timestamp];
  v12 = v11;

  v13 = *(a1 + 32);
  v14 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 48);
    v17 = [CNTimeIntervalFormatter stringForTimeInterval:v12 - v7];
    v18 = [CNTimeIntervalFormatter stringForTimeInterval:v12 - *(a1 + 56)];
    v19 = 134218498;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    _os_log_debug_impl(&dword_1859F0000, v14, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v19, 0x20u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v9 = v8;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__CNTimeProfilingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v16[3] = &unk_1E6ED7648;
  v17 = blockCopy;
  v18 = nextBlockNumber;
  v19 = v9;
  v16[4] = self;
  v13 = blockCopy;
  v14 = [scheduler2 performCancelableBlock:v16 qualityOfService:service];

  return v14;
}

void __77__CNTimeProfilingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 scheduler];
  [v5 timestamp];
  v7 = v6;

  v8 = *(a1 + 32);
  v9 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v10 = [*(a1 + 32) scheduler];
  [v10 timestamp];
  v12 = v11;

  v13 = *(a1 + 32);
  v14 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 48);
    v17 = [CNTimeIntervalFormatter stringForTimeInterval:v12 - v7];
    v18 = [CNTimeIntervalFormatter stringForTimeInterval:v12 - *(a1 + 56)];
    v19 = 134218498;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    _os_log_debug_impl(&dword_1859F0000, v14, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v19, 0x20u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v9 = v8;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v16[3] = &unk_1E6ED7620;
  v17 = blockCopy;
  v18 = nextBlockNumber;
  v19 = v9;
  v16[4] = self;
  v13 = blockCopy;
  v14 = [scheduler2 afterDelay:v16 performBlock:delay];

  return v14;
}

void __61__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduler];
  [v2 timestamp];
  v4 = v3;

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - v4];
    v15 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - *(a1 + 56)];
    v16 = 134218498;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_debug_impl(&dword_1859F0000, v11, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v16, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v11 = v10;

  nextBlockNumber = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  scheduler2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v18[3] = &unk_1E6ED7620;
  v19 = blockCopy;
  v20 = nextBlockNumber;
  v21 = v11;
  v18[4] = self;
  v15 = blockCopy;
  v16 = [scheduler2 afterDelay:v18 performBlock:service qualityOfService:delay];

  return v16;
}

void __78__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) scheduler];
  [v2 timestamp];
  v4 = v3;

  v5 = *(a1 + 32);
  v6 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = *(a1 + 32);
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 48);
    v14 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - v4];
    v15 = [CNTimeIntervalFormatter stringForTimeInterval:v9 - *(a1 + 56)];
    v16 = 134218498;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v15;
    _os_log_debug_impl(&dword_1859F0000, v11, OS_LOG_TYPE_DEBUG, "Completing block %lu %{public}@ after activating, %{public}@ after scheduling", &v16, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (double)timestamp
{
  scheduler = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

- (void)performBlock:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3_2(&dword_1859F0000, v0, v1, "Scheduling block %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_4(a1);
  v4 = [OUTLINED_FUNCTION_1_4(v2 CNTimeIntervalFormatter];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_1859F0000, v5, v6, "Activating block %lu %{public}@ after scheduling", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end