@interface CNTimeProfilingSchedulerDecorator
+ (id)os_log;
- (CNTimeProfilingSchedulerDecorator)initWithScheduler:(id)a3;
- (NSString)description;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (unint64_t)nextBlockNumber;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
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

- (CNTimeProfilingSchedulerDecorator)initWithScheduler:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNTimeProfilingSchedulerDecorator;
  v6 = [(CNTimeProfilingSchedulerDecorator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
    v7->_blockCounter = 0;
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v5 = [v3 appendName:@"scheduler" object:v4];

  v6 = [v3 build];

  return v6;
}

- (unint64_t)nextBlockNumber
{
  v2 = self;
  objc_sync_enter(v2);
  blockCounter = v2->_blockCounter;
  v2->_blockCounter = blockCounter + 1;
  objc_sync_exit(v2);

  return blockCounter;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v5 timestamp];
  v7 = v6;

  v8 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v9 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v10 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__CNTimeProfilingSchedulerDecorator_performBlock___block_invoke;
  v12[3] = &unk_1E6ED7620;
  v13 = v4;
  v14 = v8;
  v15 = v7;
  v12[4] = self;
  v11 = v4;
  [v10 performBlock:v12];
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

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v12 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CNTimeProfilingSchedulerDecorator_performBlock_qualityOfService___block_invoke;
  v14[3] = &unk_1E6ED7620;
  v15 = v6;
  v16 = v10;
  v17 = v9;
  v14[4] = self;
  v13 = v6;
  [v12 performBlock:v14 qualityOfService:a4];
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

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v5 timestamp];
  v7 = v6;

  v8 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v9 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v10 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CNTimeProfilingSchedulerDecorator_performCancelableBlock___block_invoke;
  v14[3] = &unk_1E6ED7648;
  v15 = v4;
  v16 = v8;
  v17 = v7;
  v14[4] = self;
  v11 = v4;
  v12 = [v10 performCancelableBlock:v14];

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

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v12 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__CNTimeProfilingSchedulerDecorator_performCancelableBlock_qualityOfService___block_invoke;
  v16[3] = &unk_1E6ED7648;
  v17 = v6;
  v18 = v10;
  v19 = v9;
  v16[4] = self;
  v13 = v6;
  v14 = [v12 performCancelableBlock:v16 qualityOfService:a4];

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

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v7 timestamp];
  v9 = v8;

  v10 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v11 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v12 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock___block_invoke;
  v16[3] = &unk_1E6ED7620;
  v17 = v6;
  v18 = v10;
  v19 = v9;
  v16[4] = self;
  v13 = v6;
  v14 = [v12 afterDelay:v16 performBlock:a3];

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

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v9 timestamp];
  v11 = v10;

  v12 = [(CNTimeProfilingSchedulerDecorator *)self nextBlockNumber];
  v13 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [CNTimeProfilingSchedulerDecorator performBlock:];
  }

  v14 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__CNTimeProfilingSchedulerDecorator_afterDelay_performBlock_qualityOfService___block_invoke;
  v18[3] = &unk_1E6ED7620;
  v19 = v8;
  v20 = v12;
  v21 = v11;
  v18[4] = self;
  v15 = v8;
  v16 = [v14 afterDelay:v18 performBlock:a5 qualityOfService:a3];

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
  v2 = [(CNTimeProfilingSchedulerDecorator *)self scheduler];
  [v2 timestamp];
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