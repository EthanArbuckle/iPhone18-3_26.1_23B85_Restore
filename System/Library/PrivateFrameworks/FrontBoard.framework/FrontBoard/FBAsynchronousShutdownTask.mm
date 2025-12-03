@interface FBAsynchronousShutdownTask
+ (void)startTaskWithName:(id)name timeout:(double)timeout workItem:(id)item;
+ (void)waitForTasks;
@end

@implementation FBAsynchronousShutdownTask

+ (void)waitForTasks
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [self componentsJoinedByString:{@", "}];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "Shutdown tasks timed out: %{public}@. Shutting down now.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)startTaskWithName:(id)name timeout:(double)timeout workItem:(id)item
{
  v45 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v8 = [name copy];
  v9 = objc_alloc_init(FBAsynchronousShutdownTask);
  objc_storeStrong(&v9->_name, v8);
  v9->_interval = timeout;
  v10 = FBLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name = v9->_name;
    *buf = 138543618;
    nameCopy = name;
    v43 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_1A89DD000, v10, OS_LOG_TYPE_DEFAULT, "Starting shutdown task %{public}@ with %.1fs timeout.", buf, 0x16u);
  }

  os_unfair_lock_lock(&__lock);
  if (!__lock_group)
  {
    v12 = dispatch_group_create();
    v13 = __lock_group;
    __lock_group = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = __lock_tasks;
    __lock_tasks = v14;
  }

  [__lock_tasks addObject:v9];
  v16 = __lock_group;
  os_unfair_lock_unlock(&__lock);
  dispatch_group_enter(v16);
  v17 = MEMORY[0x1E698E630];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke;
  v38[3] = &unk_1E783CB20;
  v18 = v9;
  v39 = v18;
  v40 = v16;
  v19 = v16;
  v20 = [v17 sentinelWithCompletion:v38];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBSShutdownTask:%@", v8];
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  date = [MEMORY[0x1E695DF00] date];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_10;
  block[3] = &unk_1E783CEA8;
  v32 = SerialWithQoS;
  v33 = v18;
  v34 = v8;
  v35 = date;
  v36 = v20;
  v37 = itemCopy;
  v24 = v20;
  v25 = date;
  v26 = v8;
  v27 = v18;
  v28 = SerialWithQoS;
  v29 = itemCopy;
  dispatch_async(v28, block);

  v30 = *MEMORY[0x1E69E9840];
}

void __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFailed])
  {
    v3 = FBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_cold_1(a1, v3);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_2;
  v10[3] = &unk_1E783CE80;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  (*(v2 + 16))(v2, v3, v10);
}

void __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock(&__lock);
  [__lock_tasks removeObject:*(a1 + 32)];
  os_unfair_lock_unlock(&__lock);
  v4 = FBLogCommon();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_2_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    [*(a1 + 48) timeIntervalSinceNow];
    v9 = 138543618;
    v10 = v6;
    v11 = 2048;
    v12 = -v7;
    _os_log_impl(&dword_1A89DD000, v5, OS_LOG_TYPE_DEFAULT, "Shutdown task %{public}@ complete after %.2fs", &v9, 0x16u);
  }

  [*(a1 + 56) signal];
  v8 = *MEMORY[0x1E69E9840];
}

void __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "Shutdown task %{public}@ dropped completion handler on the floor.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __65__FBAsynchronousShutdownTask_startTaskWithName_timeout_workItem___block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  [*(a1 + 48) timeIntervalSinceNow];
  v7 = -v6;
  v8 = [a2 descriptionWithMultilinePrefix:0];
  v10 = 138543874;
  v11 = v5;
  v12 = 2048;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_ERROR, "Shutdown task %{public}@ failed after %.2fs with error: %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

@end