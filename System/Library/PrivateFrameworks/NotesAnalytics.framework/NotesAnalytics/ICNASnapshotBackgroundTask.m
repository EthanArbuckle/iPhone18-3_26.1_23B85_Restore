@interface ICNASnapshotBackgroundTask
+ (id)makeTaskRequest;
- (ICNASnapshotBackgroundTask)initWithAnalyticsController:(id)a3 eventReporter:(id)a4 snapshotReporter:(id)a5;
- (void)handleTaskExpiration;
- (void)runTaskWithCompletion:(id)a3;
@end

@implementation ICNASnapshotBackgroundTask

+ (id)makeTaskRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBAAA0]) initWithIdentifier:@"com.notes.analytics.snapshotBackgroundTask"];
  [v2 setRequiresNetworkConnectivity:1];
  [v2 setRequiresExternalPower:1];

  return v2;
}

- (ICNASnapshotBackgroundTask)initWithAnalyticsController:(id)a3 eventReporter:(id)a4 snapshotReporter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICNASnapshotBackgroundTask;
  v12 = [(ICNASnapshotBackgroundTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_analyticsController, a3);
    objc_storeStrong(&v13->_eventReporter, a4);
    objc_storeStrong(&v13->_snapshotReporter, a5);
    v13->_shouldStartSession = [v9 globalSessionState] == 0;
  }

  return v13;
}

void __42__ICNASnapshotBackgroundTask_didRegister___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotReporter];
  v3 = [v2 shouldRunSnapshotManually];

  if (v3)
  {
    v4 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ICNASnapshotBackgroundTask_didRegister___block_invoke_2;
    block[3] = &unk_2799AF130;
    v5 = *(a1 + 40);
    block[4] = *(a1 + 32);
    dispatch_after(v4, v5, block);
  }
}

uint64_t __42__ICNASnapshotBackgroundTask_didRegister___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__ICNASnapshotBackgroundTask_didRegister___block_invoke_2_cold_1();
  }

  return [*(a1 + 32) runTaskWithCompletion:0];
}

- (void)handleTaskExpiration
{
  v3 = +[ICNAController sharedController];
  v4 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  v5 = [v4 subTracker];
  [v3 enterGroupWithSubtracker:v5];

  v6 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  [v6 submitSnapshotCompletionEventIsSuccessful:0];

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICNASnapshotBackgroundTask handleTaskExpiration];
  }

  v8 = +[ICNAController sharedController];
  v9 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  v10 = [v9 subTracker];
  [v8 leaveGroupWithSubtracker:v10];
}

- (void)runTaskWithCompletion:(id)a3
{
  v4 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICNASnapshotBackgroundTask runTaskWithCompletion:];
  }

  [MEMORY[0x277D36278] postBasicEvent:27];
  if ([(ICNASnapshotBackgroundTask *)self shouldStartSession])
  {
    v5 = [MEMORY[0x277D35DF0] referralURLForSnapshotBackgroundTask];
    v6 = [(ICNASnapshotBackgroundTask *)self analyticsController];
    [v6 startAppAndGlobalSessionIfNecessaryWithReferralURL:v5 referralApplication:&stru_286E361B0];
  }

  v7 = [(ICNASnapshotBackgroundTask *)self analyticsController];
  [v7 addSnapshotReferralDataToSessionLevel];

  v8 = +[ICNAController sharedController];
  v9 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  v10 = [v9 subTracker];
  [v8 enterGroupWithSubtracker:v10];

  v11 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  [v11 submitSnapshotTriggeredEvent];

  v12 = +[ICNASnapshotReporter sharedReporter];
  LODWORD(v9) = [v12 shouldSnapshot];

  if (v9)
  {
    v13 = +[ICNASnapshotReporter sharedReporter];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52__ICNASnapshotBackgroundTask_runTaskWithCompletion___block_invoke;
    v19[3] = &unk_2799AF130;
    v19[4] = self;
    [v13 reallyPerformSnapshotWithCompletionHandler:v19];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Analytics");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_25C6BF000, v14, OS_LOG_TYPE_INFO, "Snapshot not run", v18, 2u);
    }

    [MEMORY[0x277D36278] postBasicEvent:28];
  }

  v15 = +[ICNAController sharedController];
  v16 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  v17 = [v16 subTracker];
  [v15 leaveGroupWithSubtracker:v17];
}

uint64_t __52__ICNASnapshotBackgroundTask_runTaskWithCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) eventReporter];
  [v1 submitSnapshotCompletionEventIsSuccessful:1];

  v2 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__ICNASnapshotBackgroundTask_runTaskWithCompletion___block_invoke_cold_1();
  }

  return [MEMORY[0x277D36278] postBasicEvent:28];
}

@end