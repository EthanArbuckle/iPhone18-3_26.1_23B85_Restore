@interface FCTaskScheduler
+ (id)backgroundDownloadOperationQueue;
+ (id)lowPriorityOperationQueue;
+ (id)lowPriorityQueue;
+ (id)postLaunchQueue;
+ (void)boostBackgroundDownloads;
+ (void)enableBackgroundDownloadsInSpiteOfHighPriorityTasks;
+ (void)executeOptionalPrefetchBlock:(id)a3;
+ (void)popHighPriorityTaskInFlight;
+ (void)pushHighPriorityTaskInFlight;
+ (void)scheduleBackgroundDownloadOperation:(id)a3;
+ (void)scheduleLowPriorityAsyncBlock:(id)a3;
+ (void)scheduleLowPriorityBlock:(id)a3;
+ (void)scheduleLowPriorityBlockForMainThread:(id)a3;
+ (void)scheduleLowPriorityOperation:(id)a3;
+ (void)scheduleOptionalPrefetchBlock:(id)a3;
+ (void)schedulePostLaunchBlockForMainThread:(id)a3;
@end

@implementation FCTaskScheduler

+ (void)pushHighPriorityTaskInFlight
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1EDB26F34);
  v3 = ++qword_1EDB26F70;
  v4 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "TaskScheduler: pushed high-priority task depth to %ld", &v11, 0xCu);
    v3 = qword_1EDB26F70;
  }

  if (v3 == 1)
  {
    v5 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "TaskScheduler: suspending low-priority queues", &v11, 2u);
    }

    v6 = [a1 postLaunchQueue];
    dispatch_suspend(v6);

    v7 = [a1 lowPriorityQueue];
    dispatch_suspend(v7);

    v8 = [a1 lowPriorityOperationQueue];
    [v8 setSuspended:1];

    LOBYTE(v8) = _MergedGlobals_138;
    v9 = [a1 backgroundDownloadOperationQueue];
    [v9 setSuspended:(v8 & 1) == 0];
  }

  os_unfair_lock_unlock(&stru_1EDB26F34);
  v10 = *MEMORY[0x1E69E9840];
}

+ (id)postLaunchQueue
{
  if (qword_1EDB26F80 != -1)
  {
    dispatch_once(&qword_1EDB26F80, &__block_literal_global_21);
  }

  v3 = qword_1EDB26F78;

  return v3;
}

void __34__FCTaskScheduler_postLaunchQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
  v1 = dispatch_queue_create("com.apple.news.postlaunch", v0);
  v2 = qword_1EDB26F78;
  qword_1EDB26F78 = v1;
}

void __35__FCTaskScheduler_lowPriorityQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, -5);
  v1 = dispatch_queue_create("com.apple.news.lowpriority", v0);
  v2 = qword_1EDB26F38;
  qword_1EDB26F38 = v1;
}

+ (id)lowPriorityQueue
{
  if (qword_1EDB26F40 != -1)
  {
    dispatch_once(&qword_1EDB26F40, &__block_literal_global_21);
  }

  v3 = qword_1EDB26F38;

  return v3;
}

+ (id)lowPriorityOperationQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__FCTaskScheduler_lowPriorityOperationQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1EDB26F50 != -1)
  {
    dispatch_once(&qword_1EDB26F50, block);
  }

  v2 = qword_1EDB26F48;

  return v2;
}

void __44__FCTaskScheduler_lowPriorityOperationQueue__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v3 = qword_1EDB26F48;
  qword_1EDB26F48 = v2;

  [qword_1EDB26F48 setQualityOfService:9];
  [qword_1EDB26F48 setMaxConcurrentOperationCount:1];
  [qword_1EDB26F48 setName:@"com.apple.news.lowpriority"];
  v4 = [*(a1 + 32) lowPriorityQueue];
  [qword_1EDB26F48 setUnderlyingQueue:v4];
}

+ (id)backgroundDownloadOperationQueue
{
  if (qword_1EDB26F68 != -1)
  {
    dispatch_once(&qword_1EDB26F68, &__block_literal_global_6);
  }

  v3 = qword_1EDB26F60;

  return v3;
}

uint64_t __51__FCTaskScheduler_backgroundDownloadOperationQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.news.backgrounddownload", v1);
  v3 = qword_1EDB26F58;
  qword_1EDB26F58 = v2;

  v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v5 = qword_1EDB26F60;
  qword_1EDB26F60 = v4;

  [qword_1EDB26F60 setQualityOfService:9];
  [qword_1EDB26F60 setMaxConcurrentOperationCount:1];
  [qword_1EDB26F60 setUnderlyingQueue:qword_1EDB26F58];
  v6 = qword_1EDB26F60;

  return [v6 setName:@"com.apple.news.backgrounddownload"];
}

+ (void)popHighPriorityTaskInFlight
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&stru_1EDB26F34);
  v3 = --qword_1EDB26F70;
  v4 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "TaskScheduler: popped high-priority task depth to %ld", &v11, 0xCu);
    v3 = qword_1EDB26F70;
  }

  if (!v3)
  {
    v5 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "TaskScheduler: resuming low-priority queues", &v11, 2u);
    }

    v6 = [a1 postLaunchQueue];
    dispatch_resume(v6);

    v7 = [a1 lowPriorityQueue];
    dispatch_resume(v7);

    v8 = [a1 lowPriorityOperationQueue];
    [v8 setSuspended:0];

    v9 = [a1 backgroundDownloadOperationQueue];
    [v9 setSuspended:0];
  }

  os_unfair_lock_unlock(&stru_1EDB26F34);
  v10 = *MEMORY[0x1E69E9840];
}

+ (void)scheduleLowPriorityBlock:(id)a3
{
  v4 = a3;
  v5 = [a1 lowPriorityQueue];
  dispatch_async(v5, v4);
}

+ (void)scheduleLowPriorityAsyncBlock:(id)a3
{
  v4 = [FCAsyncBlockOperation asyncBlockOperationWithBlock:a3];
  [a1 scheduleLowPriorityOperation:v4];
}

+ (void)scheduleLowPriorityBlockForMainThread:(id)a3
{
  v4 = a3;
  v5 = [a1 lowPriorityOperationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__FCTaskScheduler_scheduleLowPriorityBlockForMainThread___block_invoke;
  v7[3] = &unk_1E7C3A148;
  v8 = v4;
  v6 = v4;
  [v5 fc_addAsyncOperationWithBlock:v7];
}

void __57__FCTaskScheduler_scheduleLowPriorityBlockForMainThread___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__FCTaskScheduler_scheduleLowPriorityBlockForMainThread___block_invoke_2;
  v5[3] = &unk_1E7C39090;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __57__FCTaskScheduler_scheduleLowPriorityBlockForMainThread___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)scheduleLowPriorityOperation:(id)a3
{
  v4 = a3;
  v5 = [a1 lowPriorityOperationQueue];
  [v5 addOperation:v4];
}

+ (void)scheduleBackgroundDownloadOperation:(id)a3
{
  v4 = a3;
  v5 = [a1 backgroundDownloadOperationQueue];
  [v4 setQualityOfService:{objc_msgSend(v5, "qualityOfService")}];

  v6 = [a1 backgroundDownloadOperationQueue];
  [v6 addOperation:v4];
}

+ (void)enableBackgroundDownloadsInSpiteOfHighPriorityTasks
{
  os_unfair_lock_lock(&stru_1EDB26F34);
  if ((_MergedGlobals_138 & 1) == 0)
  {
    v3 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "TaskScheduler: permitting background downloads regardless of high-priority task depth", v5, 2u);
    }

    _MergedGlobals_138 = 1;
    v4 = [a1 backgroundDownloadOperationQueue];
    [v4 setSuspended:0];
  }

  os_unfair_lock_unlock(&stru_1EDB26F34);
}

+ (void)boostBackgroundDownloads
{
  v3 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "TaskScheduler: boosting priority of background downloads", v7, 2u);
  }

  [a1 enableBackgroundDownloadsInSpiteOfHighPriorityTasks];
  v4 = [a1 backgroundDownloadOperationQueue];
  [v4 setQualityOfService:25];
  v5 = [v4 operations];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_13];

  v6 = [v4 underlyingQueue];
  FCDispatchAsyncWithQualityOfService(v6, 25, &__block_literal_global_15);
}

+ (void)scheduleOptionalPrefetchBlock:(id)a3
{
  if ((s_disableOptionalPrefetching & 1) == 0)
  {
    [a1 scheduleLowPriorityBlock:a3];
  }
}

+ (void)executeOptionalPrefetchBlock:(id)a3
{
  if ((s_disableOptionalPrefetching & 1) == 0)
  {
    (*(a3 + 2))(a3);
  }
}

+ (void)schedulePostLaunchBlockForMainThread:(id)a3
{
  v4 = a3;
  v5 = [a1 postLaunchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FCTaskScheduler_schedulePostLaunchBlockForMainThread___block_invoke;
  block[3] = &unk_1E7C379C8;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

@end