@interface MTGCDTaskScheduler
- (void)_scheduleTask:(id)task withCompletion:(id)completion;
- (void)scheduleTask:(id)task;
- (void)scheduleTaskGroup:(id)group;
@end

@implementation MTGCDTaskScheduler

- (void)_scheduleTask:(id)task withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  completionCopy = completion;
  [taskCopy delay];
  v9 = v8;
  v10 = MTLogForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 <= 0.0)
  {
    if (v11)
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = taskCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ executing %{public}@ immediately", buf, 0x16u);
    }

    completableBlock = [taskCopy completableBlock];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke;
    v22[3] = &unk_1E7B0D6F0;
    v23 = completionCopy;
    v17 = completableBlock[2];
    v12 = completionCopy;
    v17(completableBlock, v22);

    v15 = v23;
  }

  else
  {
    if (v11)
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2114;
      v27 = taskCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
    }

    v12 = objc_opt_new();
    [taskCopy delay];
    v14 = v13;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_13;
    v19[3] = &unk_1E7B0CA00;
    v20 = taskCopy;
    v21 = completionCopy;
    v15 = completionCopy;
    [v12 startTimer:v19 block:v14];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) completableBlock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__MTGCDTaskScheduler__scheduleTask_withCompletion___block_invoke_2;
  v3[3] = &unk_1E7B0D6F0;
  v4 = *(a1 + 40);
  (v2)[2](v2, v3);
}

- (void)scheduleTask:(id)task
{
  v17 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = MTLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = taskCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
  }

  v6 = MTLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v15 = 2114;
    v16 = taskCopy;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ opening transaction for %{public}@", buf, 0x16u);
  }

  v7 = os_transaction_create();
  objc_initWeak(buf, taskCopy);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__MTGCDTaskScheduler_scheduleTask___block_invoke;
  v10[3] = &unk_1E7B0EEB8;
  objc_copyWeak(&v12, buf);
  v10[4] = self;
  v8 = v7;
  v11 = v8;
  [(MTGCDTaskScheduler *)self _scheduleTask:taskCopy withCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __35__MTGCDTaskScheduler_scheduleTask___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = MTLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = WeakRetained;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ closing transaction for %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)scheduleTaskGroup:(id)group
{
  v35 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  tasks = [groupCopy tasks];
  v6 = [tasks count];

  v7 = MTLogForCategory(0);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v33 = 2114;
      v34 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling %{public}@", buf, 0x16u);
    }

    completionBlock = dispatch_group_create();
    v10 = MTLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v33 = 2114;
      v34 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ opening transaction for %{public}@", buf, 0x16u);
    }

    v19 = os_transaction_create();
    v20 = groupCopy;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    tasks2 = [groupCopy tasks];
    v12 = [tasks2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(tasks2);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          dispatch_group_enter(completionBlock);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke;
          v24[3] = &unk_1E7B0C9D8;
          v25 = completionBlock;
          [(MTGCDTaskScheduler *)self _scheduleTask:v16 withCompletion:v24];

          ++v15;
        }

        while (v13 != v15);
        v13 = [tasks2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke_2;
    block[3] = &unk_1E7B0C9A0;
    block[4] = self;
    groupCopy = v20;
    v22 = v20;
    v23 = v19;
    v17 = v19;
    dispatch_group_notify(completionBlock, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v8)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v33 = 2114;
      v34 = groupCopy;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ has no tasks", buf, 0x16u);
    }

    completionBlock = [groupCopy completionBlock];
    (*(completionBlock + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __40__MTGCDTaskScheduler_scheduleTaskGroup___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ completed", &v10, 0x16u);
  }

  v5 = [*(a1 + 40) completionBlock];
  v5[2]();

  v6 = MTLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ closing transaction for %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end