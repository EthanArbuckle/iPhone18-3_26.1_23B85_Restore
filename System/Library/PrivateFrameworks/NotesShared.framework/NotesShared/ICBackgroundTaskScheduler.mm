@interface ICBackgroundTaskScheduler
+ (ICBackgroundTaskScheduler)sharedScheduler;
- (ICBackgroundTaskScheduler)init;
- (void)registerTask:(id)task;
- (void)scheduleTask:(Class)task completion:(id)completion;
@end

@implementation ICBackgroundTaskScheduler

+ (ICBackgroundTaskScheduler)sharedScheduler
{
  if (sharedScheduler_onceToken != -1)
  {
    +[ICBackgroundTaskScheduler sharedScheduler];
  }

  v3 = sharedScheduler_sharedScheduler;

  return v3;
}

void __44__ICBackgroundTaskScheduler_sharedScheduler__block_invoke()
{
  v0 = objc_alloc_init(ICBackgroundTaskScheduler);
  v1 = sharedScheduler_sharedScheduler;
  sharedScheduler_sharedScheduler = v0;
}

- (ICBackgroundTaskScheduler)init
{
  v3.receiver = self;
  v3.super_class = ICBackgroundTaskScheduler;
  return [(ICBackgroundTaskScheduler *)&v3 init];
}

- (void)registerTask:(id)task
{
  taskCopy = task;
  makeTaskRequest = [objc_opt_class() makeTaskRequest];
  identifier = [makeTaskRequest identifier];
  mEMORY[0x277CBAAA8] = [MEMORY[0x277CBAAA8] sharedScheduler];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __42__ICBackgroundTaskScheduler_registerTask___block_invoke;
  v15 = &unk_278197FA8;
  v7 = identifier;
  v16 = v7;
  v8 = taskCopy;
  v17 = v8;
  v9 = [mEMORY[0x277CBAAA8] registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:&v12];

  v10 = os_log_create("com.apple.notes", "BackgroundTask");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICBackgroundTaskScheduler registerTask:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ICBackgroundTaskScheduler registerTask:];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 didRegister:{v9, v12, v13, v14, v15, v16}];
  }
}

void __42__ICBackgroundTaskScheduler_registerTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__ICBackgroundTaskScheduler_registerTask___block_invoke_2;
  v11[3] = &unk_278195ED8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  objc_copyWeak(&v14, &location);
  v4 = objc_loadWeakRetained(&location);
  [v4 setExpirationHandler:v11];

  v5 = os_log_create("com.apple.notes", "BackgroundTask");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __42__ICBackgroundTaskScheduler_registerTask___block_invoke_cold_1();
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__ICBackgroundTaskScheduler_registerTask___block_invoke_11;
  v8[3] = &unk_278197F80;
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v7 = v3;
  v10 = v7;
  [v6 runTaskWithCompletion:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __42__ICBackgroundTaskScheduler_registerTask___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "BackgroundTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__ICBackgroundTaskScheduler_registerTask___block_invoke_2_cold_1();
  }

  [*(a1 + 40) handleTaskExpiration];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setTaskCompletedWithSuccess:1];
}

void __42__ICBackgroundTaskScheduler_registerTask___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "BackgroundTask");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__ICBackgroundTaskScheduler_registerTask___block_invoke_11_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__ICBackgroundTaskScheduler_registerTask___block_invoke_11_cold_2();
  }

  [*(a1 + 40) setTaskCompletedWithSuccess:v3 == 0];
}

- (void)scheduleTask:(Class)task completion:(id)completion
{
  completionCopy = completion;
  makeTaskRequest = [(objc_class *)task makeTaskRequest];
  mEMORY[0x277CBAAA8] = [MEMORY[0x277CBAAA8] sharedScheduler];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke;
  v10[3] = &unk_278197FF8;
  v11 = makeTaskRequest;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = makeTaskRequest;
  [mEMORY[0x277CBAAA8] getPendingTaskRequestsWithCompletionHandler:v10];
}

void __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke(uint64_t a1, void *a2)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_2;
  v18[3] = &unk_278197FD0;
  v4 = (a1 + 32);
  v19 = *(a1 + 32);
  v5 = [a2 ic_objectPassingTest:v18];
  if (!v5)
  {
    v8 = [MEMORY[0x277CBAAA8] sharedScheduler];
    v9 = *v4;
    v17 = 0;
    v10 = [v8 submitTaskRequest:v9 error:&v17];
    v11 = v17;

    v12 = os_log_create("com.apple.notes", "BackgroundTask");
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_3(v4);
      }

      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_16;
      }

      v15 = *(v14 + 16);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_2(v4, v11, v13);
      }

      v16 = *(a1 + 40);
      if (!v16)
      {
        goto LABEL_16;
      }

      v15 = *(v16 + 16);
    }

    v15();
LABEL_16:

    goto LABEL_17;
  }

  v6 = os_log_create("com.apple.notes", "BackgroundTask");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_1(v4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 1, 0);
  }

LABEL_17:
}

uint64_t __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)registerTask:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Failed registering {id: %@}", v1, 0xCu);
}

void __42__ICBackgroundTaskScheduler_registerTask___block_invoke_11_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_214D51000, v1, OS_LOG_TYPE_ERROR, "Failed running {id: %@, error: %@}", v2, 0x16u);
}

void __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Already scheduled {id: %@}", v4, v5, v6, v7, v8);
}

void __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "Failed scheduling {id: %@, error: %@}", v6, 0x16u);
}

void __53__ICBackgroundTaskScheduler_scheduleTask_completion___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Scheduled {id: %@}", v4, v5, v6, v7, v8);
}

@end