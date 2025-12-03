@interface ICNASnapshotBackgroundTask
+ (id)makeTaskRequest;
- (ICNASnapshotBackgroundTask)initWithAnalyticsController:(id)controller eventReporter:(id)reporter snapshotReporter:(id)snapshotReporter;
- (void)handleTaskExpiration;
- (void)runTaskWithCompletion:(id)completion;
@end

@implementation ICNASnapshotBackgroundTask

+ (id)makeTaskRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBAAA0]) initWithIdentifier:@"com.notes.analytics.snapshotBackgroundTask"];
  [v2 setRequiresNetworkConnectivity:1];
  [v2 setRequiresExternalPower:1];

  return v2;
}

- (ICNASnapshotBackgroundTask)initWithAnalyticsController:(id)controller eventReporter:(id)reporter snapshotReporter:(id)snapshotReporter
{
  controllerCopy = controller;
  reporterCopy = reporter;
  snapshotReporterCopy = snapshotReporter;
  v15.receiver = self;
  v15.super_class = ICNASnapshotBackgroundTask;
  v12 = [(ICNASnapshotBackgroundTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_analyticsController, controller);
    objc_storeStrong(&v13->_eventReporter, reporter);
    objc_storeStrong(&v13->_snapshotReporter, snapshotReporter);
    v13->_shouldStartSession = [controllerCopy globalSessionState] == 0;
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
  eventReporter = [(ICNASnapshotBackgroundTask *)self eventReporter];
  subTracker = [eventReporter subTracker];
  [v3 enterGroupWithSubtracker:subTracker];

  eventReporter2 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  [eventReporter2 submitSnapshotCompletionEventIsSuccessful:0];

  v7 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICNASnapshotBackgroundTask handleTaskExpiration];
  }

  v8 = +[ICNAController sharedController];
  eventReporter3 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  subTracker2 = [eventReporter3 subTracker];
  [v8 leaveGroupWithSubtracker:subTracker2];
}

- (void)runTaskWithCompletion:(id)completion
{
  v4 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICNASnapshotBackgroundTask runTaskWithCompletion:];
  }

  [MEMORY[0x277D36278] postBasicEvent:27];
  if ([(ICNASnapshotBackgroundTask *)self shouldStartSession])
  {
    referralURLForSnapshotBackgroundTask = [MEMORY[0x277D35DF0] referralURLForSnapshotBackgroundTask];
    analyticsController = [(ICNASnapshotBackgroundTask *)self analyticsController];
    [analyticsController startAppAndGlobalSessionIfNecessaryWithReferralURL:referralURLForSnapshotBackgroundTask referralApplication:&stru_286E361B0];
  }

  analyticsController2 = [(ICNASnapshotBackgroundTask *)self analyticsController];
  [analyticsController2 addSnapshotReferralDataToSessionLevel];

  v8 = +[ICNAController sharedController];
  eventReporter = [(ICNASnapshotBackgroundTask *)self eventReporter];
  subTracker = [eventReporter subTracker];
  [v8 enterGroupWithSubtracker:subTracker];

  eventReporter2 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  [eventReporter2 submitSnapshotTriggeredEvent];

  v12 = +[ICNASnapshotReporter sharedReporter];
  LODWORD(eventReporter) = [v12 shouldSnapshot];

  if (eventReporter)
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
  eventReporter3 = [(ICNASnapshotBackgroundTask *)self eventReporter];
  subTracker2 = [eventReporter3 subTracker];
  [v15 leaveGroupWithSubtracker:subTracker2];
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