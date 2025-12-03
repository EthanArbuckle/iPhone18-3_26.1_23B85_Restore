@interface ICCloudSyncBackgroundTask
+ (id)makeTaskRequest;
- (ICCloudSyncBackgroundTask)initWithCloudContext:(id)context;
- (void)handleTaskExpiration;
- (void)runTaskWithCompletion:(id)completion;
@end

@implementation ICCloudSyncBackgroundTask

+ (id)makeTaskRequest
{
  v3 = objc_alloc(MEMORY[0x277CBAAA0]);
  taskIdentifier = [self taskIdentifier];
  v5 = [v3 initWithIdentifier:taskIdentifier];

  [v5 setRequiresNetworkConnectivity:1];
  [v5 setRequiresExternalPower:{objc_msgSend(self, "requiresPower")}];

  return v5;
}

- (ICCloudSyncBackgroundTask)initWithCloudContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICCloudSyncBackgroundTask;
  v6 = [(ICCloudSyncBackgroundTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cloudContext, context);
  }

  return v7;
}

- (void)runTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x277D36278] postBasicEvent:24];
  cloudContext = [(ICCloudSyncBackgroundTask *)self cloudContext];
  syncReason = [objc_opt_class() syncReason];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ICCloudSyncBackgroundTask_runTaskWithCompletion___block_invoke;
  v8[3] = &unk_278194CD8;
  v9 = completionCopy;
  v7 = completionCopy;
  [cloudContext syncWithReason:syncReason completionHandler:v8];
}

void __51__ICCloudSyncBackgroundTask_runTaskWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = 13;
  }

  else
  {
    v3 = 12;
  }

  [MEMORY[0x277D36278] postBasicEvent:v3];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)handleTaskExpiration
{
  [MEMORY[0x277D36278] postBasicEvent:14];
  cloudContext = [(ICCloudSyncBackgroundTask *)self cloudContext];
  [cloudContext cancelEverythingWithCompletionHandler:0];

  v4 = +[ICBackgroundTaskScheduler sharedScheduler];
  [v4 scheduleTask:objc_opt_class() completion:0];
}

@end