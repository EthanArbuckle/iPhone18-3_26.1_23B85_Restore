@interface EDMigrationBackgroundTask
@end

@implementation EDMigrationBackgroundTask

void __69___EDMigrationBackgroundTask_initWithSystemTask_migrator_cancelable___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained shouldFinishSystemTask])
  {
    v3 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ completed", &v8, 0xCu);
    }

    [*(a1 + 32) setTaskCompleted];
  }

  else
  {
    v5 = [MEMORY[0x1E699B528] log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to retry after 5 minutes (BGSystemTaskRetryAfterLimitMin)", &v8, 0xCu);
    }

    [*(a1 + 32) setTaskExpiredWithRetryAfter:0 error:300.0];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end