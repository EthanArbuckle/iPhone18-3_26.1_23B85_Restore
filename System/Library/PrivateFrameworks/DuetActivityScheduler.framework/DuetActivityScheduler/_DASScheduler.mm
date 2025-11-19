@interface _DASScheduler
+ (_DASScheduler)schedulerWithClientName:(id)a3;
+ (_DASScheduler)schedulerWithEndpoint:(id)a3;
+ (_DASScheduler)schedulerWithEndpoint:(id)a3 withClientName:(id)a4;
+ (id)log;
+ (id)scheduler;
+ (id)sharedScheduler;
- (BOOL)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deferActivities:(id)a3;
- (BOOL)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4;
- (BOOL)evaluateAllActivitiesWithHandle:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 error:(id *)a5;
- (BOOL)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 error:(id *)a6;
- (BOOL)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 error:(id *)a10;
- (BOOL)reportSystemWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 error:(id *)a5;
- (BOOL)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 error:(id *)a10;
- (BOOL)submitActivity:(id)a3 inGroup:(id)a4 error:(id *)a5;
- (BOOL)submitActivityInternal:(id)a3;
- (BOOL)triggerScoreEvaluationAndRunActivities:(id)a3;
- (BOOL)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5;
- (BOOL)wasActivityAllowedToRun:(id)a3;
- (NSMutableDictionary)submittedActivities;
- (_DASActivityBackgroundTasksSchedulerDelegate)backgroundTaskSchedulerDelegate;
- (_DASScheduler)initWithListenerEndpoint:(id)a3;
- (double)balanceForBudgetWithName:(id)a3;
- (double)getRuntimeLimit:(id)a3;
- (id)_resetWidgetBudgets;
- (id)activityContainsOverrides:(id)a3;
- (id)allBudgets;
- (id)blockingPoliciesWithParameters:(id)a3;
- (id)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)currentConnection;
- (id)currentPredictions;
- (id)delayedRunningActivities;
- (id)evaluateBytesConsumed:(id)a3 withPreviousParameters:(id)a4;
- (id)evaluatePolicies:(id)a3;
- (id)extendUpdateActivityDictionary:(id)a3;
- (id)getActivityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)getBuddyEvents:(id)a3 bgsqlData:(id)a4;
- (id)getConditionsPenalties:(id)a3;
- (id)getContentionPenalties:(id)a3;
- (id)getDeviceConditionTimelines:(id)a3 bgsqlData:(id)a4;
- (id)getElapsedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)getEligibilityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)getEstimatedMADCompletionTimes:(id)a3 endDate:(id)a4 bgsqlData:(id)a5;
- (id)getEstimatedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)getFeatureTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5;
- (id)getInstallTimeline:(id)a3 bgsqlData:(id)a4;
- (id)getLimiterResponseForActivity:(id)a3;
- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4;
- (id)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4;
- (id)getSortedCandidateActivities:(id)a3;
- (id)inspect:(id)a3;
- (id)policies;
- (id)queryDependenciesOfTaskIdentifier:(id)a3;
- (id)queryStatusOfResultIdentifier:(id)a3;
- (id)runProceedableActivities:(id)a3;
- (id)runningActivities;
- (id)runningGroupActivities;
- (id)statistics;
- (id)submitTaskRequest:(id)a3;
- (id)submittedTaskState;
- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 retryAfter:(double)a4;
- (void)activity:(id)a3 blockedOnPolicies:(id)a4;
- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4;
- (void)activityCanceled:(id)a3;
- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4;
- (void)activityCompleted:(id)a3;
- (void)activityStarted:(id)a3;
- (void)activityStartedWithParameters:(id)a3;
- (void)activityStoppedWithParameters:(id)a3;
- (void)addPauseExceptParameter:(id)a3;
- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4;
- (void)cancelActivities:(id)a3;
- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4;
- (void)cancelAllTaskRequests;
- (void)cancelTaskRequestWithIdentifier:(id)a3;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3;
- (void)completeSystemTaskWithIdentifier:(id)a3;
- (void)connectToDaemon:(BOOL)a3;
- (void)continuedProcessingDeviceCapabilities:(id)a3;
- (void)createActivityGroup:(id)a3;
- (void)dealloc;
- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4;
- (void)disableAppRefreshForApps:(id)a3;
- (void)endLaunchWithReason:(id)a3 forApp:(id)a4;
- (void)forceResetOfResultIdentifier:(id)a3;
- (void)forceRunActivities:(id)a3;
- (void)getPendingTaskRequestsWithCompletionHandler:(id)a3;
- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5;
- (void)handleEligibleActivities:(id)a3;
- (void)handleLaunchFromDaemonForActivities:(id)a3;
- (void)handleNoLongerRunningActivities:(id)a3;
- (void)pauseWithParameters:(id)a3;
- (void)prewarmApplication:(id)a3;
- (void)prewarmSuspendWithHandler:(id)a3;
- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 completionHandler:(id)a5;
- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 completionHandler:(id)a5;
- (void)reportTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 completionHandler:(id)a8;
- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)resubmitPendingActivities;
- (void)resubmitPendingStartActivities;
- (void)resubmitRunningActivities;
- (void)resubmitRunningActivities:(id)a3;
- (void)resubmitRunningTasks:(id)a3;
- (void)resumeTaskSchedulingWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)runActivities:(id)a3;
- (void)runActivitiesWithDelayedStart:(id)a3;
- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4;
- (void)setBackgroundTasksSchedulerDelegate:(id)a3;
- (void)setBalance:(double)a3 forBudgetWithName:(id)a4;
- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4;
- (void)setMinimumBackgroundFetchInterval:(double)a3 forApp:(id)a4;
- (void)setupXPCConnectionWithEndpoint:(id)a3;
- (void)submitActivities:(id)a3;
- (void)submitActivitiesInternal:(id)a3;
- (void)submitActivity:(id)a3;
- (void)submitActivity:(id)a3 inGroup:(id)a4;
- (void)submitActivity:(id)a3 inGroupWithName:(id)a4;
- (void)submitRateLimitConfiguration:(id)a3;
- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5;
- (void)suspendActivities:(id)a3;
- (void)unprotectedEstablishDaemonConnectionIfInterrupted;
- (void)unregisterSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updateActivity:(id)a3 withParameters:(id)a4;
- (void)updateBytesConsumedForActivity:(id)a3 withParameters:(id)a4;
- (void)updateOngoingTask:(id)a3;
- (void)updateProgress:(id)a3 forOngoingTask:(id)a4;
- (void)updateSystemConstraintsWithParameters:(id)a3;
- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5;
- (void)willExpireBGTaskActivities:(id)a3;
@end

@implementation _DASScheduler

+ (id)sharedScheduler
{
  if (sharedScheduler_onceToken_0 != -1)
  {
    +[_DASScheduler sharedScheduler];
  }

  v3 = sharedScheduler_sharedScheduler;

  return v3;
}

- (id)currentConnection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  connectionCreationQueue = self->_connectionCreationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34___DASScheduler_currentConnection__block_invoke;
  v5[3] = &unk_1E7C8F740;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionCreationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)unprotectedEstablishDaemonConnectionIfInterrupted
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_interrupted)
  {
    v3 = [objc_opt_class() log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      interrupted = self->_interrupted;
      v7[0] = 67109120;
      v7[1] = interrupted;
      _os_log_impl(&dword_1B6E2F000, v3, OS_LOG_TYPE_DEFAULT, "Establish daemon connection; interrupted: %d", v7, 8u);
    }

    [(_DASScheduler *)self setupXPCConnectionWithEndpoint:self->_endpoint];
    [(_DASScheduler *)self resubmitRunningActivities];
    [(_DASScheduler *)self resubmitPendingStartActivities];
    [(_DASScheduler *)self resubmitPendingActivities];
    v5 = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];

    if (v5)
    {
      [(_DASScheduler *)self connectToDaemon:1];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)scheduler
{
  v2 = [[_DASScheduler alloc] initWithListenerEndpoint:0];

  return v2;
}

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[_DASScheduler log];
  }

  v3 = log_log;

  return v3;
}

- (void)cancelAllTaskRequests
{
  v3 = [(_DASScheduler *)self currentConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___DASScheduler_cancelAllTaskRequests__block_invoke;
  v6[3] = &unk_1E7C8F808;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___DASScheduler_cancelAllTaskRequests__block_invoke_378;
  v5[3] = &unk_1E7C8F0B0;
  v5[4] = self;
  [v4 cancelAllTaskRequestsWithCompletionHandler:v5];
}

- (void)setupXPCConnectionWithEndpoint:(id)a3
{
  v137[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v6 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v5)
  {
    v7 = [v6 initWithListenerEndpoint:{v5, v5}];
  }

  else
  {
    v7 = [v6 initWithMachServiceName:@"com.apple.duetactivityscheduler" options:{4096, 0}];
  }

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v7;

  objc_storeStrong(&self->_endpoint, a3);
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EE1250];
  v10 = MEMORY[0x1E695DFD8];
  v137[0] = objc_opt_class();
  v137[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:2];
  v12 = [v10 setWithArray:v11];
  [v9 setClasses:v12 forSelector:sel_submittedActivitiesWithHandler_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v136[0] = objc_opt_class();
  v136[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
  v15 = [v13 setWithArray:v14];
  [v9 setClasses:v15 forSelector:sel_delayedRunningActivitiesWithHandler_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x1E695DFD8];
  v135[0] = objc_opt_class();
  v135[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
  v18 = [v16 setWithArray:v17];
  [v9 setClasses:v18 forSelector:sel_runningActivitiesWithHandler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v134[0] = objc_opt_class();
  v134[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
  v21 = [v19 setWithArray:v20];
  [v9 setClasses:v21 forSelector:sel_runningGroupActivitiesWithHandler_ argumentIndex:0 ofReply:1];

  v22 = MEMORY[0x1E695DFD8];
  v133[0] = objc_opt_class();
  v133[1] = objc_opt_class();
  v133[2] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:3];
  v24 = [v22 setWithArray:v23];
  [v9 setClasses:v24 forSelector:sel_submitActivity_inGroup_withHandler_ argumentIndex:1 ofReply:1];

  v25 = MEMORY[0x1E695DFD8];
  v132[0] = objc_opt_class();
  v132[1] = objc_opt_class();
  v132[2] = objc_opt_class();
  v132[3] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:4];
  v27 = [v25 setWithArray:v26];
  [v9 setClasses:v27 forSelector:sel_currentPredictionsWithHandler_ argumentIndex:0 ofReply:1];

  v28 = MEMORY[0x1E695DFD8];
  v131[0] = objc_opt_class();
  v131[1] = objc_opt_class();
  v131[2] = objc_opt_class();
  v131[3] = objc_opt_class();
  v131[4] = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:5];
  v30 = [v28 setWithArray:v29];
  [v9 setClasses:v30 forSelector:sel_statisticsWithHandler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x1E695DFD8];
  v130[0] = objc_opt_class();
  v130[1] = objc_opt_class();
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
  v33 = [v31 setWithArray:v32];
  [v9 setClasses:v33 forSelector:sel_submitActivities_ argumentIndex:0 ofReply:0];

  v34 = MEMORY[0x1E695DFD8];
  v129[0] = objc_opt_class();
  v129[1] = objc_opt_class();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
  v36 = [v34 setWithArray:v35];
  [v9 setClasses:v36 forSelector:sel_startedActivities_ argumentIndex:0 ofReply:0];

  v37 = MEMORY[0x1E695DFD8];
  v128[0] = objc_opt_class();
  v128[1] = objc_opt_class();
  v128[2] = objc_opt_class();
  v128[3] = objc_opt_class();
  v128[4] = objc_opt_class();
  v128[5] = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:6];
  v39 = [v37 setWithArray:v38];
  [v9 setClasses:v39 forSelector:sel_updateSystemConstraintsWithParameters_ argumentIndex:0 ofReply:0];

  v40 = MEMORY[0x1E695DFD8];
  v127[0] = objc_opt_class();
  v127[1] = objc_opt_class();
  v127[2] = objc_opt_class();
  v127[3] = objc_opt_class();
  v127[4] = objc_opt_class();
  v127[5] = objc_opt_class();
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:6];
  v42 = [v40 setWithArray:v41];
  [v9 setClasses:v42 forSelector:sel_enterTestModeWithParameters_reset_handler_ argumentIndex:0 ofReply:0];

  v43 = MEMORY[0x1E695DFD8];
  v126[0] = objc_opt_class();
  v126[1] = objc_opt_class();
  v126[2] = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
  v45 = [v43 setWithArray:v44];
  [v9 setClasses:v45 forSelector:sel_blockingPoliciesWithParameters_handler_ argumentIndex:0 ofReply:0];

  v46 = MEMORY[0x1E695DFD8];
  v125[0] = objc_opt_class();
  v125[1] = objc_opt_class();
  v125[2] = objc_opt_class();
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:3];
  v48 = [v46 setWithArray:v47];
  [v9 setClasses:v48 forSelector:sel_pauseWithParameters_handler_ argumentIndex:0 ofReply:0];

  v49 = MEMORY[0x1E695DFD8];
  v124[0] = objc_opt_class();
  v124[1] = objc_opt_class();
  v124[2] = objc_opt_class();
  v124[3] = objc_opt_class();
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
  v51 = [v49 setWithArray:v50];
  [v9 setClasses:v51 forSelector:sel_submitRateLimitConfiguration_handler_ argumentIndex:0 ofReply:0];

  v52 = MEMORY[0x1E695DFD8];
  v123[0] = objc_opt_class();
  v123[1] = objc_opt_class();
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
  v54 = [v52 setWithArray:v53];
  [v9 setClasses:v54 forSelector:sel_delayedStartActivities_ argumentIndex:0 ofReply:0];

  v55 = MEMORY[0x1E695DFD8];
  v122[0] = objc_opt_class();
  v122[1] = objc_opt_class();
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
  v57 = [v55 setWithArray:v56];
  [v9 setClasses:v57 forSelector:sel_submitActivity_inGroup_withHandler_ argumentIndex:0 ofReply:0];

  v58 = MEMORY[0x1E695DFD8];
  v121[0] = objc_opt_class();
  v121[1] = objc_opt_class();
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:2];
  v60 = [v58 setWithArray:v59];
  [v9 setClasses:v60 forSelector:sel_submitTaskRequest_withHandler_ argumentIndex:0 ofReply:0];

  v61 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v9 setClasses:v61 forSelector:sel_updateProgressForOngoingTask_completionHandler_ argumentIndex:0 ofReply:0];

  v62 = MEMORY[0x1E695DFD8];
  v120[0] = objc_opt_class();
  v120[1] = objc_opt_class();
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
  v64 = [v62 setWithArray:v63];
  [v9 setClasses:v64 forSelector:sel_getPendingTaskRequestsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v65 = MEMORY[0x1E695DFD8];
  v119[0] = objc_opt_class();
  v119[1] = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
  v67 = [v65 setWithArray:v66];
  [v9 setClasses:v67 forSelector:sel_disableAppRefreshForApps_ argumentIndex:0 ofReply:0];

  [v9 setXPCType:MEMORY[0x1E69E9E80] forSelector:sel_submitTaskRequestWithIdentifier_descriptor_completionHandler_ argumentIndex:1 ofReply:0];
  [v9 setXPCType:MEMORY[0x1E69E9E80] forSelector:sel_updateTaskRequestWithIdentifier_descriptor_completionHandler_ argumentIndex:1 ofReply:0];
  v68 = MEMORY[0x1E695DFD8];
  v118[0] = objc_opt_class();
  v118[1] = objc_opt_class();
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v70 = [v68 setWithArray:v69];
  [v9 setClasses:v70 forSelector:sel_reportSystemTaskWithIdentifier_producedResults_completionHandler_ argumentIndex:1 ofReply:0];

  v71 = MEMORY[0x1E695DFD8];
  v117[0] = objc_opt_class();
  v117[1] = objc_opt_class();
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
  v73 = [v71 setWithArray:v72];
  [v9 setClasses:v73 forSelector:sel_reportSystemTaskWithIdentifier_consumedResults_completionHandler_ argumentIndex:1 ofReply:0];

  v74 = MEMORY[0x1E695DFD8];
  v116[0] = objc_opt_class();
  v116[1] = objc_opt_class();
  v116[2] = objc_opt_class();
  v116[3] = objc_opt_class();
  v116[4] = objc_opt_class();
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:5];
  v76 = [v74 setWithArray:v75];
  [v9 setClasses:v76 forSelector:sel_inspect_withHandler_ argumentIndex:0 ofReply:1];

  v77 = MEMORY[0x1E695DFD8];
  v115[0] = objc_opt_class();
  v115[1] = objc_opt_class();
  v115[2] = objc_opt_class();
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
  v79 = [v77 setWithArray:v78];
  [v9 setClasses:v79 forSelector:sel_resetFastPassActivities_resetAll_withHandler_ argumentIndex:0 ofReply:1];

  v80 = MEMORY[0x1E695DFD8];
  v114[0] = objc_opt_class();
  v114[1] = objc_opt_class();
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:2];
  v82 = [v80 setWithArray:v81];
  [v9 setClasses:v82 forSelector:sel_resubmitRunningTasks_ argumentIndex:0 ofReply:0];

  v83 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EDB780];
  v84 = MEMORY[0x1E695DFD8];
  v113[0] = objc_opt_class();
  v113[1] = objc_opt_class();
  v113[2] = objc_opt_class();
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
  v86 = [v84 setWithArray:v85];
  [v83 setClasses:v86 forSelector:sel_runActivities_ argumentIndex:0 ofReply:0];

  v87 = MEMORY[0x1E695DFD8];
  v112[0] = objc_opt_class();
  v112[1] = objc_opt_class();
  v112[2] = objc_opt_class();
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:3];
  v89 = [v87 setWithArray:v88];
  [v83 setClasses:v89 forSelector:sel_suspendActivities_ argumentIndex:0 ofReply:0];

  v90 = MEMORY[0x1E695DFD8];
  v111[0] = objc_opt_class();
  v111[1] = objc_opt_class();
  v111[2] = objc_opt_class();
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
  v92 = [v90 setWithArray:v91];
  [v83 setClasses:v92 forSelector:sel_cancelActivities_ argumentIndex:0 ofReply:0];

  v93 = MEMORY[0x1E695DFD8];
  v110[0] = objc_opt_class();
  v110[1] = objc_opt_class();
  v110[2] = objc_opt_class();
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:3];
  v95 = [v93 setWithArray:v94];
  [v83 setClasses:v95 forSelector:sel_runActivitiesWithDelayedStart_ argumentIndex:0 ofReply:0];

  v96 = MEMORY[0x1E695DFD8];
  v109[0] = objc_opt_class();
  v109[1] = objc_opt_class();
  v109[2] = objc_opt_class();
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:3];
  v98 = [v96 setWithArray:v97];
  [v83 setClasses:v98 forSelector:sel_handleLaunchFromDaemonForActivities_ argumentIndex:0 ofReply:0];

  v99 = MEMORY[0x1E695DFD8];
  v108[0] = objc_opt_class();
  v108[1] = objc_opt_class();
  v108[2] = objc_opt_class();
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:3];
  v101 = [v99 setWithArray:v100];
  [v83 setClasses:v101 forSelector:sel_willExpireBGTaskActivities_ argumentIndex:0 ofReply:0];

  [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_queue];
  objc_initWeak(&location, self);
  v102 = self->_xpcConnection;
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __48___DASScheduler_setupXPCConnectionWithEndpoint___block_invoke;
  v105[3] = &unk_1E7C8F6F0;
  objc_copyWeak(&v106, &location);
  [(NSXPCConnection *)v102 setInterruptionHandler:v105];
  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v9];
  [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v83];
  [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
  [(NSXPCConnection *)self->_xpcConnection resume];
  [(_DASScheduler *)self setInterrupted:0];
  objc_destroyWeak(&v106);
  objc_destroyWeak(&location);

  v103 = *MEMORY[0x1E69E9840];
}

- (_DASScheduler)initWithListenerEndpoint:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = _DASScheduler;
  v5 = [(_DASScheduler *)&v30 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.duet.activityscheduler.client.taskrunqueue", MEMORY[0x1E69E96A8]);
    runQueue = v5->_runQueue;
    v5->_runQueue = v6;

    v8 = dispatch_queue_create("com.apple.duet.activityscheduler.client.xpcqueue", 0);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = dispatch_queue_create("com.apple.duet.activityscheduler.client.connectionReestablish", 0);
    connectionCreationQueue = v5->_connectionCreationQueue;
    v5->_connectionCreationQueue = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    submittedActivities = v5->_submittedActivities;
    v5->_submittedActivities = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    startedActivities = v5->_startedActivities;
    v5->_startedActivities = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    delayedStartTasks = v5->_delayedStartTasks;
    v5->_delayedStartTasks = v16;

    v18 = objc_alloc_init(_DASSubmissionManager);
    submissionManager = v5->_submissionManager;
    v5->_submissionManager = v18;

    v20 = os_log_create([@"com.apple.duetactivityscheduler" UTF8String], objc_msgSend(@"client", "UTF8String"));
    dasFrameworkLog = v5->_dasFrameworkLog;
    v5->_dasFrameworkLog = v20;

    v22 = [MEMORY[0x1E695DF90] dictionary];
    activityToDataMap = v5->_activityToDataMap;
    v5->_activityToDataMap = v22;

    [(_DASScheduler *)v5 setupXPCConnectionWithEndpoint:v4];
    objc_initWeak(&location, v5);
    v24 = [@"com.appple.duet.activityscheduler.requestActivityResubmission" UTF8String];
    v25 = v5->_queue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42___DASScheduler_initWithListenerEndpoint___block_invoke;
    v27[3] = &unk_1E7C8F718;
    objc_copyWeak(&v28, &location);
    notify_register_dispatch(v24, &v5->_resubmitToken, v25, v27);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  notify_cancel(self->_resubmitToken);
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = _DASScheduler;
  [(_DASScheduler *)&v3 dealloc];
}

+ (_DASScheduler)schedulerWithClientName:(id)a3
{
  v3 = a3;
  v4 = [[_DASScheduler alloc] initWithListenerEndpoint:0];
  [(_DASScheduler *)v4 setClientName:v3];

  return v4;
}

+ (_DASScheduler)schedulerWithEndpoint:(id)a3
{
  v3 = a3;
  v4 = [[_DASScheduler alloc] initWithListenerEndpoint:v3];

  return v4;
}

+ (_DASScheduler)schedulerWithEndpoint:(id)a3 withClientName:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_DASScheduler alloc] initWithListenerEndpoint:v6];

  [(_DASScheduler *)v7 setClientName:v5];

  return v7;
}

- (id)submittedTaskState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_submittedActivities copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)resubmitRunningActivities
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = [(NSMutableDictionary *)v2->_startedActivities allValues];
  objc_sync_exit(v2);

  if ([v5 count])
  {
    v3 = [(_DASScheduler *)v2 xpcConnection];
    v4 = [v3 remoteObjectProxy];
    [v4 startedActivities:v5];
  }
}

- (void)resubmitPendingActivities
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_submittedActivities allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.requestsApplicationLaunch == NO && self.preClearedMode == 0"];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v9 = [v5 mutableCopy];

  objc_sync_exit(v2);
  if ([v9 count])
  {
    [(_DASSubmissionManager *)v2->_submissionManager removeAllObjects];
    submissionManager = v2->_submissionManager;
    v7 = [(_DASScheduler *)v2 xpcConnection];
    v8 = [v7 remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager submitActivities:v9 withScheduler:v8];
  }
}

- (void)resubmitPendingStartActivities
{
  v2 = self;
  objc_sync_enter(v2);
  v4 = [(NSMutableDictionary *)v2->_delayedStartTasks allValues];
  objc_sync_exit(v2);

  if ([v4 count])
  {
    v3 = [(NSXPCConnection *)v2->_xpcConnection remoteObjectProxy];
    [v3 delayedStartActivities:v4];
  }
}

- (void)handleEligibleActivities:(id)a3
{
  v4 = a3;
  v6 = [(_DASScheduler *)self currentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 handleEligibleActivities:v4];
}

- (BOOL)submitActivityInternal:(id)a3
{
  v4 = a3;
  v5 = [v4 limitationResponse];
  v6 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:v5];

  if (v6)
  {
    dasFrameworkLog = self->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_ERROR))
    {
      [(_DASScheduler *)dasFrameworkLog submitActivityInternal:v4];
    }
  }

  else
  {
    v8 = [v4 limitationResponse];
    v9 = [v8 count];

    if (v9)
    {
      v10 = self->_dasFrameworkLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DASScheduler *)v10 submitActivityInternal:v4];
      }
    }
  }

  v11 = [MEMORY[0x1E695DF00] date];
  [v4 setSubmitDate:v11];
  if (self->_clientName)
  {
    [v4 setClientName:?];
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v12 = self;
  objc_sync_enter(v12);
  if (([v4 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v4, "requestsExtensionLaunch"))
  {
    v13 = [v4 rateLimitConfigurationName];

    if (!v13)
    {
      v14 = [v4 keepsPrevious];
      if ((v14 | [v4 overwritesPrevious]))
      {
        submittedActivities = v12->_submittedActivities;
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __40___DASScheduler_submitActivityInternal___block_invoke;
        v28 = &unk_1E7C8F768;
        v29 = v4;
        v30 = v12;
        v31 = &v39;
        v32 = &v33;
        [(NSMutableDictionary *)submittedActivities enumerateKeysAndObjectsUsingBlock:&v25];
      }
    }
  }

  v16 = [v4 rateLimitConfigurationName];

  if (v16)
  {
    *(v40 + 24) = 1;
  }

  else if ((v40[3] & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = v12->_submittedActivities;
  v18 = [v4 uuid];
  [(NSMutableDictionary *)v17 setObject:v4 forKeyedSubscript:v18];

LABEL_18:
  v19 = v34[5];
  if (v19)
  {
    if ([v19 requestsExtensionLaunch])
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObject:v34[5]];
      [(_DASScheduler *)v12 cancelActivities:v20];
    }

    v21 = v12->_submittedActivities;
    v22 = [v34[5] uuid];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];
  }

  objc_sync_exit(v12);

  v23 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v23;
}

- (void)submitActivitiesInternal:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = self;
  objc_sync_enter(v6);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v9 = *v27;
    *&v8 = 138412546;
    v24 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 limitationResponse];
        v13 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:v12];

        if (v13)
        {
          v14 = v6->_dasFrameworkLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = [v11 name];
            v16 = [v11 limitationResponse];
            *buf = v24;
            v31 = v15;
            v32 = 2112;
            v33 = v16;
            _os_log_error_impl(&dword_1B6E2F000, v14, OS_LOG_TYPE_ERROR, "ERROR Submitting %@: Please contact das-core@group.apple.com to prevent this activity from getting rejected. Configuration: %@", buf, 0x16u);
          }
        }

        else
        {
          v17 = [v11 limitationResponse];
          v18 = [v17 count];

          if (!v18)
          {
            goto LABEL_13;
          }

          v14 = v6->_dasFrameworkLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v21 = [v11 name];
            v22 = [v11 limitationResponse];
            *buf = v24;
            v31 = v21;
            v32 = 2112;
            v33 = v22;
            _os_log_error_impl(&dword_1B6E2F000, v14, OS_LOG_TYPE_ERROR, "WARNING Submitting %@: %@", buf, 0x16u);
          }
        }

LABEL_13:
        if (v6->_clientName)
        {
          [v11 setClientName:?];
        }

        submittedActivities = v6->_submittedActivities;
        v20 = [v11 uuid];
        [(NSMutableDictionary *)submittedActivities setObject:v11 forKeyedSubscript:v20];

        [v11 setSubmitDate:v5];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v6);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)submitActivity:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_DASScheduler *)self submitActivityInternal:v4];
  v6 = [(_DASScheduler *)self dasFrameworkLog];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1B6E2F000, v6, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@", &v11, 0xCu);
    }

    if ([v4 preClearedMode])
    {
      v6 = [MEMORY[0x1E695DFD8] setWithObject:v4];
      [(_DASScheduler *)self runActivities:v6];
    }

    else
    {
      submissionManager = self->_submissionManager;
      v6 = [(_DASScheduler *)self currentConnection];
      v9 = [v6 remoteObjectProxy];
      [(_DASSubmissionManager *)submissionManager submitActivity:v4 withScheduler:v9];
    }
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B6E2F000, v6, OS_LOG_TYPE_DEFAULT, "Duplicate Activity: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)submitActivities:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DF70] array];
  [(_DASScheduler *)self submitActivitiesInternal:v4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 preClearedMode])
        {
          v13 = v5;
        }

        else
        {
          v13 = v6;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(_DASScheduler *)self runActivities:v5];
  v14 = [(_DASScheduler *)self currentConnection];
  v15 = [v14 remoteObjectProxy];
  [v15 submitActivities:v6];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleNoLongerRunningActivities:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  submittedActivities = v4->_submittedActivities;
  v6 = [v15 uuid];
  [(NSMutableDictionary *)submittedActivities removeObjectForKey:v6];

  delayedStartTasks = v4->_delayedStartTasks;
  v8 = [v15 uuid];
  [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:v8];

  startedActivities = v4->_startedActivities;
  v10 = [v15 uuid];
  [(NSMutableDictionary *)startedActivities removeObjectForKey:v10];

  objc_sync_exit(v4);
  v11 = v4->_activityToDataMap;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)v4->_activityToDataMap objectForKeyedSubscript:v15];
  if (v12)
  {
    v13 = [(_DASScheduler *)v4 currentConnection];
    v14 = [v13 remoteObjectProxy];
    [v14 updateActivity:v15 withParameters:v12];

    [(NSMutableDictionary *)v4->_activityToDataMap removeObjectForKey:v15];
  }

  objc_sync_exit(v11);
}

- (void)activityStarted:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  delayedStartTasks = v5->_delayedStartTasks;
  v7 = [v4 uuid];
  v8 = [(NSMutableDictionary *)delayedStartTasks objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = v5->_delayedStartTasks;
    v10 = [v4 uuid];
    [(NSMutableDictionary *)v9 removeObjectForKey:v10];

    startedActivities = v5->_startedActivities;
    v12 = [v4 uuid];
    [(NSMutableDictionary *)startedActivities setObject:v4 forKeyedSubscript:v12];
  }

  else
  {
    dasFrameworkLog = v5->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "startActivity: %@ activity was not found", &v19, 0xCu);
    }
  }

  objc_sync_exit(v5);
  if (v8)
  {
    v14 = [(_DASScheduler *)v5 dasFrameworkLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1B6E2F000, v14, OS_LOG_TYPE_DEFAULT, "STARTING: %@", &v19, 0xCu);
    }

    v15 = [MEMORY[0x1E695DF00] date];
    [v4 setStartDate:v15];

    v16 = [(_DASScheduler *)v5 currentConnection];
    v17 = [v16 remoteObjectProxy];
    [v17 activityStarted:v4];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)activityCanceled:(id)a3
{
  v9 = a3;
  [(_DASScheduler *)self handleNoLongerRunningActivities:v9];
  if (![v9 preClearedMode])
  {
    submissionManager = self->_submissionManager;
    v5 = [(_DASScheduler *)self currentConnection];
    v6 = [v5 remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCanceled:v9 withScheduler:v6];

    v7 = [(_DASScheduler *)self currentConnection];
    v8 = [v7 remoteObjectProxy];
    [v8 activityCanceled:v9];
  }
}

- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4
{
  v11 = a3;
  [(_DASScheduler *)self handleNoLongerRunningActivities:v11];
  if (![v11 preClearedMode])
  {
    submissionManager = self->_submissionManager;
    v7 = [(_DASScheduler *)self currentConnection];
    v8 = [v7 remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCanceled:v11 withScheduler:v8];

    v9 = [(_DASScheduler *)self currentConnection];
    v10 = [v9 remoteObjectProxy];
    [v10 activityCanceledWithReason:v11 expirationReason:a4];
  }
}

- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v6 = [(_DASScheduler *)self currentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 clientFailedtoExpireTaskWithIdentifier:v4];
}

- (id)_resetWidgetBudgets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v2 = [(_DASScheduler *)self currentConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___DASScheduler__resetWidgetBudgets__block_invoke;
  v6[3] = &unk_1E7C8F790;
  v6[4] = &v7;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v3 _resetWidgetBudgets];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)activityCompleted:(id)a3
{
  v9 = a3;
  [(_DASScheduler *)self handleNoLongerRunningActivities:v9];
  if (![v9 preClearedMode])
  {
    submissionManager = self->_submissionManager;
    v5 = [(_DASScheduler *)self currentConnection];
    v6 = [v5 remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCompleted:v9 withScheduler:v6];

    v7 = [(_DASScheduler *)self currentConnection];
    v8 = [v7 remoteObjectProxy];
    [v8 activityCompleted:v9];
  }
}

- (void)updateActivity:(id)a3 withParameters:(id)a4
{
  v35[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 allKeys];
  v35[0] = @"DownloadedOnWifi";
  v35[1] = @"DownloadedOnCell";
  v35[2] = @"UploadedOnWifi";
  v35[3] = @"UploadedOnCell";
  v35[4] = @"Cell";
  v35[5] = @"WiFi";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:6];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v31 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v26 = self;
    v27 = v6;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([v8 containsObject:{v14, v26, v27, v28}])
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          [v15 doubleValue];
          if (v16 > 0.0 || ([v8 containsObject:@"Cell"] & 1) != 0)
          {

LABEL_17:
            self = v26;
            v6 = v27;
            [(_DASScheduler *)v26 updateBytesConsumedForActivity:v27 withParameters:v7];
            goto LABEL_18;
          }

          v17 = [v8 containsObject:@"WiFi"];

          if (v17)
          {
            goto LABEL_17;
          }
        }

        else if (([v8 containsObject:@"Cell"] & 1) != 0 || objc_msgSend(v8, "containsObject:", @"WiFi"))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
      self = v26;
      v6 = v27;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if ([v8 containsObject:@"PercentCompleted"])
  {
    v18 = [v7 objectForKeyedSubscript:@"PercentCompleted"];
    [v18 doubleValue];
    v20 = v19;

    if (v20 >= 0.0)
    {
      v21 = [(_DASScheduler *)self currentConnection];
      v22 = [v21 remoteObjectProxy];
      v32 = @"PercentCompleted";
      v23 = [v7 objectForKeyedSubscript:@"PercentCompleted"];
      v33 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [v22 updateActivity:v6 withParameters:v24];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateSystemConstraintsWithParameters:(id)a3
{
  v4 = a3;
  v6 = [(_DASScheduler *)self currentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 updateSystemConstraintsWithParameters:v4];
}

- (id)extendUpdateActivityDictionary:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v71 = [MEMORY[0x1E695DF90] dictionary];
  v79 = v3;
  [v3 allKeys];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v83 = 0u;
  v4 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (!v4)
  {
    v72 = 0.0;
    v73 = 0.0;
    v6 = 0.0;
    v77 = 0.0;
    v78 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    goto LABEL_23;
  }

  v5 = v4;
  v72 = 0.0;
  v73 = 0.0;
  v6 = 0.0;
  v7 = *v81;
  v77 = 0.0;
  v78 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v81 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v80 + 1) + 8 * i);
      if ([v14 isEqualToString:@"Cell"])
      {
        v15 = [v79 objectForKeyedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"Inexpensive"];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"Upload"];
          [v18 doubleValue];
          v20 = v19;

          v21 = v8 + v20;
          v12 = v12 + v20;
          v22 = v10 + v20;
          v23 = v78 + v20;
          v24 = [v17 objectForKeyedSubscript:@"Download"];
          [v24 doubleValue];
          v26 = v25;

          v8 = v21 + v26;
          v11 = v11 + v26;
          v10 = v22 + v26;
          v78 = v23 + v26;
        }

        v27 = [v15 objectForKeyedSubscript:@"Expensive"];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 objectForKeyedSubscript:@"Upload"];
          [v29 doubleValue];
          v31 = v30;

          v32 = v9 + v31;
          v12 = v12 + v31;
          v33 = v10 + v31;
          v34 = v6 + v31;
          v35 = [v28 objectForKeyedSubscript:@"Download"];
          [v35 doubleValue];
          v37 = v36;

          v11 = v11 + v37;
          v9 = v32 + v37;
          v10 = v33 + v37;
          v6 = v34 + v37;
        }
      }

      else
      {
        if (![v14 isEqualToString:@"WiFi"])
        {
          continue;
        }

        v74 = v10;
        v75 = v6;
        v15 = [v79 objectForKeyedSubscript:v14];
        v38 = [v15 objectForKeyedSubscript:@"Inexpensive"];
        v17 = v38;
        if (v38)
        {
          v39 = [v38 objectForKeyedSubscript:@"Upload"];
          [v39 doubleValue];
          v41 = v40;

          v42 = v8 + v41;
          v12 = v12 + v41;
          v43 = v77 + v41;
          v44 = v73 + v41;
          v45 = [v17 objectForKeyedSubscript:@"Download"];
          [v45 doubleValue];
          v47 = v46;

          v48 = v42 + v47;
          v11 = v11 + v47;
          v77 = v43 + v47;
          v73 = v44 + v47;
        }

        else
        {
          v48 = v8;
        }

        v49 = [v15 objectForKeyedSubscript:@"Expensive"];
        v28 = v49;
        if (v49)
        {
          v50 = [v49 objectForKeyedSubscript:@"Upload"];
          [v50 doubleValue];
          v52 = v51;

          v53 = v9 + v52;
          v12 = v12 + v52;
          v54 = v77 + v52;
          v55 = v72 + v52;
          v56 = [v28 objectForKeyedSubscript:@"Download"];
          [v56 doubleValue];
          v58 = v57;

          v9 = v53 + v58;
          v11 = v11 + v58;
          v77 = v54 + v58;
          v72 = v55 + v58;
        }

        v8 = v48;
        v10 = v74;
        v6 = v75;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
  }

  while (v5);
LABEL_23:
  v59 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v71 setObject:v59 forKeyedSubscript:@"Cell"];

  v60 = [MEMORY[0x1E696AD98] numberWithDouble:v77];
  [v71 setObject:v60 forKeyedSubscript:@"WiFi"];

  v61 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v71 setObject:v61 forKeyedSubscript:@"Upload"];

  v62 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v71 setObject:v62 forKeyedSubscript:@"Download"];

  v63 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v71 setObject:v63 forKeyedSubscript:@"Expensive"];

  v64 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v71 setObject:v64 forKeyedSubscript:@"Inexpensive"];

  v65 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v71 setObject:v65 forKeyedSubscript:@"CellExpensive"];

  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
  [v71 setObject:v66 forKeyedSubscript:@"WiFiExpensive"];

  v67 = [MEMORY[0x1E696AD98] numberWithDouble:v78];
  [v71 setObject:v67 forKeyedSubscript:@"CellInexpensive"];

  v68 = [MEMORY[0x1E696AD98] numberWithDouble:v73];
  [v71 setObject:v68 forKeyedSubscript:@"WiFiInexpensive"];

  v69 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)evaluateBytesConsumed:(id)a3 withPreviousParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = v6;
  v10 = [v6 objectForKeyedSubscript:@"Cell"];
  if (v10)
  {
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"WiFi"];

    if (!v11)
    {
      v84 = [v9 objectForKeyedSubscript:@"DownloadedOnWifi"];
      [v84 doubleValue];
      v86 = v85;

      v87 = [v9 objectForKeyedSubscript:@"DownloadedOnCell"];
      [v87 doubleValue];
      v89 = v88;

      v90 = [v9 objectForKeyedSubscript:@"UploadedOnWifi"];
      [v90 doubleValue];
      v92 = v91;

      v93 = [v9 objectForKeyedSubscript:@"UploadedOnCell"];
      [v93 doubleValue];
      v95 = v94;

      v96 = [v7 objectForKeyedSubscript:@"Expensive"];
      if (v96)
      {
        v97 = MEMORY[0x1E696AD98];
        v98 = [v7 objectForKeyedSubscript:@"Expensive"];
        [v98 doubleValue];
        v99 = [v97 numberWithDouble:?];
        [v8 setObject:v99 forKeyedSubscript:@"Expensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Expensive"];
      }

      v100 = [v7 objectForKeyedSubscript:@"Inexpensive"];
      if (v100)
      {
        v101 = MEMORY[0x1E696AD98];
        v102 = [v7 objectForKeyedSubscript:@"Inexpensive"];
        [v102 doubleValue];
        v103 = [v101 numberWithDouble:?];
        [v8 setObject:v103 forKeyedSubscript:@"Inexpensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Inexpensive"];
      }

      v104 = [v7 objectForKeyedSubscript:@"Upload"];
      if (v104)
      {
        v105 = MEMORY[0x1E696AD98];
        v106 = [v7 objectForKeyedSubscript:@"Upload"];
        [v106 doubleValue];
        v107 = [v105 numberWithDouble:?];
        [v8 setObject:v107 forKeyedSubscript:@"Upload"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Upload"];
      }

      v108 = [v7 objectForKeyedSubscript:@"Download"];
      if (v108)
      {
        v109 = MEMORY[0x1E696AD98];
        v110 = [v7 objectForKeyedSubscript:@"Download"];
        [v110 doubleValue];
        v111 = [v109 numberWithDouble:?];
        [v8 setObject:v111 forKeyedSubscript:@"Download"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Download"];
      }

      v112 = [v7 objectForKeyedSubscript:@"WiFiExpensive"];
      if (v112)
      {
        v113 = MEMORY[0x1E696AD98];
        v114 = [v7 objectForKeyedSubscript:@"WiFiExpensive"];
        [v114 doubleValue];
        v115 = [v113 numberWithDouble:?];
        [v8 setObject:v115 forKeyedSubscript:@"WiFiExpensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"WiFiExpensive"];
      }

      v116 = [v7 objectForKeyedSubscript:@"WiFiInexpensive"];
      if (v116)
      {
        v117 = MEMORY[0x1E696AD98];
        v118 = [v7 objectForKeyedSubscript:@"WiFiInexpensive"];
        [v118 doubleValue];
        v119 = [v117 numberWithDouble:?];
        [v8 setObject:v119 forKeyedSubscript:@"WiFiInexpensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"WiFiInexpensive"];
      }

      v120 = [v7 objectForKeyedSubscript:@"CellExpensive"];
      if (v120)
      {
        v121 = MEMORY[0x1E696AD98];
        v122 = [v7 objectForKeyedSubscript:@"CellExpensive"];
        [v122 doubleValue];
        v123 = [v121 numberWithDouble:?];
        [v8 setObject:v123 forKeyedSubscript:@"CellExpensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"CellExpensive"];
      }

      v124 = [v7 objectForKeyedSubscript:@"CellInexpensive"];
      if (v124)
      {
        v125 = MEMORY[0x1E696AD98];
        v126 = [v7 objectForKeyedSubscript:@"CellInexpensive"];
        [v126 doubleValue];
        v127 = [v125 numberWithDouble:?];
        [v8 setObject:v127 forKeyedSubscript:@"CellInexpensive"];
      }

      else
      {
        [v8 setObject:&unk_1F2ED4A48 forKeyedSubscript:@"CellInexpensive"];
      }

      v128 = MEMORY[0x1E696AD98];
      v129 = [v7 objectForKeyedSubscript:@"Upload"];
      [v129 doubleValue];
      v131 = [v128 numberWithDouble:v95 + v92 + v130];
      [v8 setObject:v131 forKeyedSubscript:@"Upload"];

      v132 = MEMORY[0x1E696AD98];
      v133 = [v7 objectForKeyedSubscript:@"Download"];
      [v133 doubleValue];
      v135 = [v132 numberWithDouble:v89 + v86 + v134];
      [v8 setObject:v135 forKeyedSubscript:@"Download"];

      v71 = v89 + v95;
      v74 = v86 + v92;
      goto LABEL_5;
    }
  }

  v12 = [(_DASScheduler *)self extendUpdateActivityDictionary:v9];
  v13 = [v12 objectForKeyedSubscript:@"Expensive"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v12 objectForKeyedSubscript:@"Inexpensive"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v12 objectForKeyedSubscript:@"Upload"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v12 objectForKeyedSubscript:@"Download"];
  [v22 doubleValue];
  v24 = v23;

  v25 = [v12 objectForKeyedSubscript:@"CellExpensive"];
  [v25 doubleValue];
  v27 = v26;

  v28 = [v12 objectForKeyedSubscript:?];
  [v28 doubleValue];
  v30 = v29;

  v31 = [v12 objectForKeyedSubscript:?];
  [v31 doubleValue];
  v33 = v32;

  v34 = [v12 objectForKeyedSubscript:?];
  [v34 doubleValue];
  v36 = v35;

  v37 = MEMORY[0x1E696AD98];
  v38 = [v7 objectForKeyedSubscript:@"Expensive"];
  [v38 doubleValue];
  v40 = [v37 numberWithDouble:v15 + v39];
  [v8 setObject:v40 forKeyedSubscript:@"Expensive"];

  v41 = MEMORY[0x1E696AD98];
  v42 = [v7 objectForKeyedSubscript:@"Inexpensive"];
  [v42 doubleValue];
  v44 = [v41 numberWithDouble:v18 + v43];
  [v8 setObject:v44 forKeyedSubscript:@"Inexpensive"];

  v45 = MEMORY[0x1E696AD98];
  v46 = [v7 objectForKeyedSubscript:@"Upload"];
  [v46 doubleValue];
  v48 = [v45 numberWithDouble:v21 + v47];
  [v8 setObject:v48 forKeyedSubscript:@"Upload"];

  v49 = MEMORY[0x1E696AD98];
  v50 = [v7 objectForKeyedSubscript:@"Download"];
  [v50 doubleValue];
  v52 = [v49 numberWithDouble:v24 + v51];
  [v8 setObject:v52 forKeyedSubscript:@"Download"];

  v53 = MEMORY[0x1E696AD98];
  v54 = [v7 objectForKeyedSubscript:@"CellExpensive"];
  [v54 doubleValue];
  v56 = [v53 numberWithDouble:v27 + v55];
  [v8 setObject:v56 forKeyedSubscript:@"CellExpensive"];

  v57 = MEMORY[0x1E696AD98];
  v58 = [v7 objectForKeyedSubscript:@"CellInexpensive"];
  [v58 doubleValue];
  v60 = [v57 numberWithDouble:v30 + v59];
  [v8 setObject:v60 forKeyedSubscript:@"CellInexpensive"];

  v61 = MEMORY[0x1E696AD98];
  v62 = [v7 objectForKeyedSubscript:@"WiFiExpensive"];
  [v62 doubleValue];
  v64 = [v61 numberWithDouble:v33 + v63];
  [v8 setObject:v64 forKeyedSubscript:@"WiFiExpensive"];

  v65 = MEMORY[0x1E696AD98];
  v66 = [v7 objectForKeyedSubscript:@"WiFiInexpensive"];
  [v66 doubleValue];
  v68 = [v65 numberWithDouble:v36 + v67];
  [v8 setObject:v68 forKeyedSubscript:@"WiFiInexpensive"];

  v69 = [v12 objectForKeyedSubscript:@"Cell"];
  [v69 doubleValue];
  v71 = v70;

  v72 = [v12 objectForKeyedSubscript:@"WiFi"];
  [v72 doubleValue];
  v74 = v73;

LABEL_5:
  v75 = MEMORY[0x1E696AD98];
  v76 = [v7 objectForKeyedSubscript:@"WiFi"];
  [v76 doubleValue];
  v78 = [v75 numberWithDouble:v74 + v77];
  [v8 setObject:v78 forKeyedSubscript:@"WiFi"];

  v79 = MEMORY[0x1E696AD98];
  v80 = [v7 objectForKeyedSubscript:@"Cell"];
  [v80 doubleValue];
  v82 = [v79 numberWithDouble:v71 + v81];
  [v8 setObject:v82 forKeyedSubscript:@"Cell"];

  return v8;
}

- (void)updateBytesConsumedForActivity:(id)a3 withParameters:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 dataBudgetingEnabled])
  {
    v8 = self->_activityToDataMap;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)self->_activityToDataMap objectForKeyedSubscript:v6];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = [(_DASScheduler *)self dasFrameworkLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412802;
      v25 = v6;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_1B6E2F000, v10, OS_LOG_TYPE_DEBUG, "Activity %@ had %@. Updating with new parameter: %@", &v24, 0x20u);
    }

    v11 = [(_DASScheduler *)self evaluateBytesConsumed:v7 withPreviousParameters:v9];

    [(NSMutableDictionary *)self->_activityToDataMap setObject:v11 forKeyedSubscript:v6];
    v12 = [v11 objectForKeyedSubscript:@"WiFi"];
    [v12 doubleValue];
    v14 = v13;
    v15 = [v11 objectForKeyedSubscript:@"Cell"];
    [v15 doubleValue];
    v17 = v16;

    v18 = v14 + v17;
    if (v18 > 1048576.0)
    {
      v19 = [(_DASScheduler *)self dasFrameworkLog];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        v24 = 138412802;
        v25 = v6;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = &unk_1F2ED4A78;
        _os_log_impl(&dword_1B6E2F000, v19, OS_LOG_TYPE_DEFAULT, "%@: %@ > %@", &v24, 0x20u);
      }

      v21 = [(_DASScheduler *)self currentConnection];
      v22 = [v21 remoteObjectProxy];
      [v22 updateActivity:v6 withParameters:v11];

      [v11 removeAllObjects];
    }

    objc_sync_exit(v8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)createActivityGroup:(id)a3
{
  submissionManager = self->_submissionManager;
  v5 = a3;
  [(_DASSubmissionManager *)submissionManager createActivityGroup:v5];
  v7 = [(_DASScheduler *)self currentConnection];
  v6 = [v7 remoteObjectProxy];
  [v6 createActivityGroup:v5];
}

- (void)submitActivity:(id)a3 inGroupWithName:(id)a4
{
  v6 = a3;
  [v6 setGroupName:a4];
  [(_DASScheduler *)self submitActivity:v6];
}

- (void)submitActivity:(id)a3 inGroup:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_DASScheduler *)self submitActivityInternal:v6];
  v8 = [v7 name];
  [v6 setGroupName:v8];

  v9 = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 name];
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_1B6E2F000, v9, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@ in group %{public}@", &v15, 0x16u);
  }

  if ([v6 preClearedMode])
  {
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    [(_DASScheduler *)self runActivities:v11];
  }

  else
  {
    submissionManager = self->_submissionManager;
    v11 = [(_DASScheduler *)self currentConnection];
    v13 = [v11 remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager submitActivity:v6 inGroup:v7 withScheduler:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)submitActivity:(id)a3 inGroup:(id)a4 error:(id *)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [v8 setClientName:self->_clientName];
  v10 = [MEMORY[0x1E695DF00] now];
  [v8 setSubmitDate:v10];

  v11 = self;
  objc_sync_enter(v11);
  if ([v8 requestsApplicationLaunch] && objc_msgSend(v8, "keepsPrevious"))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = v11->_submittedActivities;
    v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v13)
    {
      v14 = *v50;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          if (([v16 requestsApplicationLaunch] & 1) != 0 && objc_msgSend(v16, "isIdenticalLaunchTo:", v8))
          {
            if (os_log_type_enabled(v11->_dasFrameworkLog, OS_LOG_TYPE_ERROR))
            {
              [_DASScheduler submitActivity:inGroup:error:];
            }

            if (a5)
            {
              *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_DASActivitySchedulerErrorDomain" code:5 userInfo:&unk_1F2ED4930];
            }

            objc_sync_exit(v11);
            v30 = 0;
            goto LABEL_21;
          }
        }

        v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  objc_sync_exit(v11);

  v17 = [(_DASScheduler *)v11 dasFrameworkLog];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B6E2F000, v17, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@", &buf, 0xCu);
  }

  v18 = +[_DASSubmissionRateLimiter sharedLimiter];
  [v18 trackActivity:v8];

  v19 = v11;
  objc_sync_enter(v19);
  submittedActivities = v19->_submittedActivities;
  v21 = [v8 uuid];
  [(NSMutableDictionary *)submittedActivities setObject:v8 forKeyedSubscript:v21];

  objc_sync_exit(v19);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__1;
  v56 = __Block_byref_object_dispose__1;
  v57 = 0;
  v22 = [(_DASScheduler *)v19 currentConnection];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __46___DASScheduler_submitActivity_inGroup_error___block_invoke;
  v41[3] = &unk_1E7C8F7B8;
  v43 = &v45;
  v41[4] = v19;
  v23 = v8;
  v42 = v23;
  p_buf = &buf;
  v24 = [v22 synchronousRemoteObjectProxyWithErrorHandler:v41];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __46___DASScheduler_submitActivity_inGroup_error___block_invoke_340;
  v36 = &unk_1E7C8F7E0;
  v39 = &v45;
  v37 = v19;
  v25 = v23;
  v38 = v25;
  v40 = &buf;
  [v24 submitActivity:v25 inGroup:v9 withHandler:&v33];

  if ((v46[3] & 1) == 0)
  {
    v26 = v19;
    objc_sync_enter(v26);
    v27 = v19->_submittedActivities;
    v28 = [v25 uuid];
    [(NSMutableDictionary *)v27 removeObjectForKey:v28];

    objc_sync_exit(v26);
  }

  if (a5)
  {
    v29 = *(*(&buf + 1) + 40);
    if (v29)
    {
      *a5 = v29;
    }
  }

  v30 = *(v46 + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v45, 8);
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (BOOL)deferActivities:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33___DASScheduler_deferActivities___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33___DASScheduler_deferActivities___block_invoke_342;
  v8[3] = &unk_1E7C8F830;
  v8[4] = &v10;
  [v6 deferActivities:v4 withHandler:v8];

  LOBYTE(v5) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

- (NSMutableDictionary)submittedActivities
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v3 = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___DASScheduler_submittedActivities__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___DASScheduler_submittedActivities__block_invoke_344;
  v7[3] = &unk_1E7C8F430;
  v7[4] = &v9;
  [v4 submittedActivitiesWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)delayedRunningActivities
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41___DASScheduler_delayedRunningActivities__block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v5 = v3;
  v15 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41___DASScheduler_delayedRunningActivities__block_invoke_346;
  v11[3] = &unk_1E7C8F880;
  v13 = &v16;
  v7 = v5;
  v12 = v7;
  [v6 delayedRunningActivitiesWithHandler:v11];

  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)runningActivities
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(_DASScheduler *)self currentConnection];
  v5 = [v4 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34___DASScheduler_runningActivities__block_invoke;
  v10[3] = &unk_1E7C8F880;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [v5 runningActivitiesWithHandler:v10];

  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)runningGroupActivities
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(_DASScheduler *)self currentConnection];
  v5 = [v4 remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39___DASScheduler_runningGroupActivities__block_invoke;
  v10[3] = &unk_1E7C8F880;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [v5 runningGroupActivitiesWithHandler:v10];

  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)forceRunActivities:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___DASScheduler_forceRunActivities___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 forceRunActivities:v4];
}

- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4
{
  v6 = a4;
  v7 = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___DASScheduler_runActivitiesWithUrgency_activities___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 runActivitiesWithUrgency:a3 activities:v6];
}

- (id)currentPredictions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = MEMORY[0x1E695E0F8];
  v3 = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35___DASScheduler_currentPredictions__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___DASScheduler_currentPredictions__block_invoke_347;
  v7[3] = &unk_1E7C8F8A8;
  v7[4] = &v9;
  [v4 currentPredictionsWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = MEMORY[0x1E695E0F8];
  v10 = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke;
  v15[3] = &unk_1E7C8F808;
  v15[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_349;
  v14[3] = &unk_1E7C8F8D0;
  v14[4] = self;
  v14[5] = &v16;
  [v11 currentAllocations:a3 timeFilter:v8 bgsqlData:v9 withHandler:v14];

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)statistics
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v3 = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27___DASScheduler_statistics__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27___DASScheduler_statistics__block_invoke_350;
  v7[3] = &unk_1E7C8F8A8;
  v7[4] = &v9;
  [v4 statisticsWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)inspect:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25___DASScheduler_inspect___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25___DASScheduler_inspect___block_invoke_353;
  v9[3] = &unk_1E7C8F430;
  v9[4] = &v11;
  [v6 inspect:v4 withHandler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)resubmitRunningTasks:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38___DASScheduler_resubmitRunningTasks___block_invoke;
  v11 = &unk_1E7C8F858;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:&v8];
  [v7 resubmitRunningTasks:{v6, v8, v9, v10, v11, v12}];
}

- (void)forceResetOfResultIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___DASScheduler_forceResetOfResultIdentifier___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 forceResetOfResultIdentifier:v4];
}

- (id)queryStatusOfResultIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke_354;
  v10[3] = &unk_1E7C8F8A8;
  v10[4] = &v13;
  [v7 queryStatusOfResultIdentifier:v6 withHandler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)queryDependenciesOfTaskIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke_355;
  v10[3] = &unk_1E7C8F8A8;
  v10[4] = &v13;
  [v7 queryDependenciesOfTaskIdentifier:v6 withHandler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)allBudgets
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v3 = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27___DASScheduler_allBudgets__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27___DASScheduler_allBudgets__block_invoke_356;
  v7[3] = &unk_1E7C8F430;
  v7[4] = &v9;
  [v4 allBudgetsWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (double)balanceForBudgetWithName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DASScheduler_balanceForBudgetWithName___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42___DASScheduler_balanceForBudgetWithName___block_invoke_357;
  v10[3] = &unk_1E7C8F920;
  v10[4] = &v13;
  [v7 balanceForBudgetWithName:v6 withHandler:v10];

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setBalance:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  v7 = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46___DASScheduler_setBalance_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 setBalance:v8 forBudgetWithName:{a3, v10, v11, v12, v13, v14}];
}

- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  v7 = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___DASScheduler_decrementBy_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 decrementBy:v8 forBudgetWithName:{a3, v10, v11, v12, v13, v14}];
}

- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4
{
  v6 = a4;
  v7 = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___DASScheduler_setCapacity_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 setCapacity:v8 forBudgetWithName:{a3, v10, v11, v12, v13, v14}];
}

- (id)policies
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v3 = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25___DASScheduler_policies__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25___DASScheduler_policies__block_invoke_359;
  v7[3] = &unk_1E7C8F8A8;
  v7[4] = &v9;
  [v4 policiesWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (id)evaluatePolicies:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34___DASScheduler_evaluatePolicies___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34___DASScheduler_evaluatePolicies___block_invoke_360;
  v10[3] = &unk_1E7C8F8A8;
  v10[4] = &v13;
  [v7 evaluatePolicies:v6 handler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)evaluateAllActivitiesWithHandle:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke;
  v9[3] = &unk_1E7C8F948;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_361;
  v8[3] = &unk_1E7C8F970;
  v8[4] = self;
  v8[5] = &v10;
  [v6 evaluateAllActivities:v4 handler:v8];

  LOBYTE(self) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return self;
}

- (id)runProceedableActivities:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DASScheduler_runProceedableActivities___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42___DASScheduler_runProceedableActivities___block_invoke_362;
  v10[3] = &unk_1E7C8F8A8;
  v10[4] = &v13;
  [v7 runProceedableActivities:v6 handler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)blockingPoliciesWithParameters:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48___DASScheduler_blockingPoliciesWithParameters___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48___DASScheduler_blockingPoliciesWithParameters___block_invoke_363;
  v9[3] = &unk_1E7C8F430;
  v9[4] = &v11;
  [v6 blockingPoliciesWithParameters:v4 handler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)activityContainsOverrides:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___DASScheduler_activityContainsOverrides___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43___DASScheduler_activityContainsOverrides___block_invoke_364;
  v9[3] = &unk_1E7C8F8A8;
  v9[4] = &v11;
  [v6 activityContainsOverrides:v4 handler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)submitRateLimitConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___DASScheduler_submitRateLimitConfiguration___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___DASScheduler_submitRateLimitConfiguration___block_invoke_367;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 submitRateLimitConfiguration:v7 handler:v8];
}

- (void)pauseWithParameters:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37___DASScheduler_pauseWithParameters___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37___DASScheduler_pauseWithParameters___block_invoke_368;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 pauseWithParameters:v7 handler:v8];
}

- (void)addPauseExceptParameter:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41___DASScheduler_addPauseExceptParameter___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41___DASScheduler_addPauseExceptParameter___block_invoke_369;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 addPauseExceptParameter:v7 handler:v8];
}

- (void)runActivitiesWithDelayedStart:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v32 = [v4 mutableCopy];
  v33 = [MEMORY[0x1E695DFA8] set];
  v6 = self;
  objc_sync_enter(v6);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        submittedActivities = v6->_submittedActivities;
        v12 = [v10 uuid];
        v13 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:v12];

        if (v13)
        {
          if ([v10 delayedStart])
          {
            v14 = v5;
          }

          else
          {
            v14 = v33;
          }

          [v14 addObject:v13];
          [v32 removeObject:v13];
          v15 = v6->_submittedActivities;
          v16 = [v10 uuid];
          [(NSMutableDictionary *)v15 removeObjectForKey:v16];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v5;
  v17 = [v30 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v17)
  {
    v18 = *v36;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v30);
        }

        v20 = *(*(&v35 + 1) + 8 * j);
        delayedStartTasks = v6->_delayedStartTasks;
        v22 = [v20 uuid];
        [(NSMutableDictionary *)delayedStartTasks setObject:v20 forKeyedSubscript:v22];

        runQueue = [v20 handlerQueue];
        v24 = runQueue;
        if (!runQueue)
        {
          runQueue = v6->_runQueue;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47___DASScheduler_runActivitiesWithDelayedStart___block_invoke;
        block[3] = &unk_1E7C8F1A0;
        block[4] = v6;
        block[5] = v20;
        dispatch_async(runQueue, block);
      }

      v17 = [v30 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v17);
  }

  objc_sync_exit(v6);
  if ([v32 count])
  {
    dasFrameworkLog = v6->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = MEMORY[0x1E696AD98];
      v27 = dasFrameworkLog;
      v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v32, "count")}];
      *buf = 138412546;
      v44 = v28;
      v45 = 2112;
      v46 = v32;
      _os_log_impl(&dword_1B6E2F000, v27, OS_LOG_TYPE_DEFAULT, "runActivitiesWithDelayedStart: %@ activities were not found: %@", buf, 0x16u);
    }
  }

  if ([v33 count])
  {
    [(_DASScheduler *)v6 runActivities:v33];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)runActivities:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43 = [MEMORY[0x1E695DF00] date];
  v5 = [MEMORY[0x1E695DFA8] set];
  v42 = [v4 mutableCopy];
  v6 = self;
  objc_sync_enter(v6);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v7)
  {
    v8 = *v60;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        submittedActivities = v6->_submittedActivities;
        v12 = [v10 uuid];
        v13 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:v12];

        if (v13)
        {
          [v5 addObject:v13];
          [v42 removeObject:v13];
          v14 = v6->_submittedActivities;
          v15 = [v10 uuid];
          [(NSMutableDictionary *)v14 removeObjectForKey:v15];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v7);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = v5;
  v16 = [v40 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v16)
  {
    v17 = *v56;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(v40);
        }

        v19 = *(*(&v55 + 1) + 8 * j);
        startedActivities = v6->_startedActivities;
        v21 = [v19 uuid];
        [(NSMutableDictionary *)startedActivities setObject:v19 forKeyedSubscript:v21];

        v22 = [v19 handlerQueue];
        runQueue = v22;
        if (!v22)
        {
          runQueue = v6->_runQueue;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __31___DASScheduler_runActivities___block_invoke;
        block[3] = &unk_1E7C8F9E8;
        block[4] = v19;
        v53 = v43;
        v54 = v6;
        dispatch_async(runQueue, block);
      }

      v16 = [v40 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v16);
  }

  v24 = [MEMORY[0x1E695DFA8] set];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = v42;
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (v26)
  {
    v27 = *v49;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v48 + 1) + 8 * k);
        if ([v29 isContinuedProcessingTask])
        {
          [v24 addObject:v29];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v48 objects:v68 count:16];
    }

    while (v26);
  }

  if ([v24 count])
  {
    v30 = [(_DASScheduler *)v6 backgroundTaskSchedulerDelegate];
    [v30 scheduler:v6 handleLaunchForActivities:v24];
  }

  [v25 minusSet:v24];

  objc_sync_exit(v6);
  if ([v25 count])
  {
    dasFrameworkLog = v6->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v32 = MEMORY[0x1E696AD98];
      v33 = dasFrameworkLog;
      v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      *buf = 138412546;
      v65 = v34;
      v66 = 2112;
      v67 = v25;
      _os_log_impl(&dword_1B6E2F000, v33, OS_LOG_TYPE_DEFAULT, "runActivities: %@ activities were not found: %@", buf, 0x16u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = v25;
    v36 = [v35 countByEnumeratingWithState:&v44 objects:v63 count:16];
    if (v36)
    {
      v37 = *v45;
      do
      {
        for (m = 0; m != v36; ++m)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v35);
          }

          [(_DASScheduler *)v6 activityCanceled:*(*(&v44 + 1) + 8 * m)];
        }

        v36 = [v35 countByEnumeratingWithState:&v44 objects:v63 count:16];
      }

      while (v36);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)suspendActivities:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = self;
  objc_sync_enter(v6);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v8)
  {
    v10 = *v43;
    *&v9 = 138543362;
    v33 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v42 + 1) + 8 * i);
        startedActivities = v6->_startedActivities;
        v14 = [v12 uuid];
        v15 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:v14];

        if (v15)
        {
          [v5 removeObject:v15];
          v16 = [v15 suspendRequestDate];
          v17 = v16 == 0;

          if (v17)
          {
            v19 = [v15 handlerQueue];
            runQueue = v19;
            if (!v19)
            {
              runQueue = v6->_runQueue;
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __35___DASScheduler_suspendActivities___block_invoke;
            block[3] = &unk_1E7C8F9E8;
            v39 = v15;
            v40 = v6;
            v41 = v12;
            dispatch_async(runQueue, block);

            v18 = v39;
          }

          else
          {
            v18 = [(_DASScheduler *)v6 dasFrameworkLog];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v33;
              v47 = v15;
              _os_log_impl(&dword_1B6E2F000, v18, OS_LOG_TYPE_DEFAULT, "Already requested suspension for %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v8);
  }

  v21 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v5;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v23)
  {
    v24 = *v35;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v34 + 1) + 8 * j);
        if ([v26 isContinuedProcessingTask])
        {
          [v21 addObject:v26];
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v23);
  }

  if ([v21 count])
  {
    v27 = [(_DASScheduler *)v6 backgroundTaskSchedulerDelegate];
    [v27 scheduler:v6 willExpireActivities:v21];
  }

  [v22 minusSet:v21];

  objc_sync_exit(v6);
  if ([v22 count])
  {
    dasFrameworkLog = v6->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v29 = MEMORY[0x1E696AD98];
      v30 = dasFrameworkLog;
      v31 = [v29 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
      *buf = 138412546;
      v47 = v31;
      v48 = 2112;
      v49 = v22;
      _os_log_impl(&dword_1B6E2F000, v30, OS_LOG_TYPE_DEFAULT, "suspendActivities: %@ activities were not running: %@", buf, 0x16u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)cancelActivities:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = self;
  objc_sync_enter(v6);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v31 + 1) + 8 * v10);
        submittedActivities = v6->_submittedActivities;
        v13 = [v11 uuid];
        v14 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:v13];

        if (v14)
        {
          goto LABEL_9;
        }

        startedActivities = v6->_startedActivities;
        v16 = [v11 uuid];
        v14 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:v16];

        if (v14 || (v17 = v6->_delayedStartTasks, [v11 uuid], v18 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v17, "objectForKeyedSubscript:", v18), v14 = objc_claimAutoreleasedReturnValue(), v18, v14))
        {
LABEL_9:
          v19 = v6->_submittedActivities;
          v20 = [v11 uuid];
          [(NSMutableDictionary *)v19 removeObjectForKey:v20];

          v21 = v6->_startedActivities;
          v22 = [v11 uuid];
          [(NSMutableDictionary *)v21 removeObjectForKey:v22];

          delayedStartTasks = v6->_delayedStartTasks;
          v24 = [v11 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:v24];
        }

        else
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v25 = [v7 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v8 = v25;
    }

    while (v25);
  }

  objc_sync_exit(v6);
  if ([v5 count])
  {
    dasFrameworkLog = v6->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v27 = MEMORY[0x1E696AD98];
      v28 = dasFrameworkLog;
      v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      *buf = 138412546;
      v36 = v29;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_1B6E2F000, v28, OS_LOG_TYPE_DEFAULT, "cancelActivities: %@ activities were not found: %@", buf, 0x16u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mutableCopy];
  v7 = self;
  objc_sync_enter(v7);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        submittedActivities = v7->_submittedActivities;
        v14 = [v12 uuid];
        v15 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:v14];

        if (v15)
        {
          goto LABEL_9;
        }

        startedActivities = v7->_startedActivities;
        v17 = [v12 uuid];
        v15 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:v17];

        if (v15 || (v18 = v7->_delayedStartTasks, [v12 uuid], v19 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v18, "objectForKeyedSubscript:", v19), v15 = objc_claimAutoreleasedReturnValue(), v19, v15))
        {
LABEL_9:
          v20 = v7->_submittedActivities;
          v21 = [v12 uuid];
          [(NSMutableDictionary *)v20 removeObjectForKey:v21];

          v22 = v7->_startedActivities;
          v23 = [v12 uuid];
          [(NSMutableDictionary *)v22 removeObjectForKey:v23];

          delayedStartTasks = v7->_delayedStartTasks;
          v25 = [v12 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:v25];
        }

        else
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v26 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      v9 = v26;
    }

    while (v26);
  }

  objc_sync_exit(v7);
  if ([v6 count])
  {
    dasFrameworkLog = v7->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MEMORY[0x1E696AD98];
      v29 = dasFrameworkLog;
      v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
      *buf = 138412546;
      v37 = v30;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_1B6E2F000, v29, OS_LOG_TYPE_DEFAULT, "cancelActivities: %@ activities were not found: %@", buf, 0x16u);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)wasActivityAllowedToRun:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  delayedStartTasks = v5->_delayedStartTasks;
  v7 = [v4 uuid];
  v8 = [(NSMutableDictionary *)delayedStartTasks objectForKeyedSubscript:v7];
  LOBYTE(delayedStartTasks) = v8 != 0;

  objc_sync_exit(v5);
  return delayedStartTasks;
}

- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, "Activity: %@ ignoring policies: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activity:(id)a3 blockedOnPolicies:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1B6E2F000, v8, OS_LOG_TYPE_DEFAULT, "Activity: %@ blocked on policies: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setMinimumBackgroundFetchInterval:(double)a3 forApp:(id)a4
{
  v6 = a4;
  v7 = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___DASScheduler_setMinimumBackgroundFetchInterval_forApp___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 setMinimumBackgroundFetchInterval:v6 forApp:a3];
}

- (void)endLaunchWithReason:(id)a3 forApp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_DASScheduler *)self currentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 endLaunchWithReason:v7 forApp:v6];
}

- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(_DASScheduler *)self currentConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 backgroundAppRefreshEnabledForApp:v7 withHandler:v6];
}

- (void)disableAppRefreshForApps:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42___DASScheduler_disableAppRefreshForApps___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 disableAppRefreshForApps:v4];
}

- (id)submitTaskRequest:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Submitting task request activity: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v6 = [MEMORY[0x1E695DF00] date];
  [v4 setSubmitDate:v6];

  v7 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35___DASScheduler_submitTaskRequest___block_invoke;
  v13[3] = &unk_1E7C8F948;
  v13[4] = self;
  v13[5] = &buf;
  v8 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35___DASScheduler_submitTaskRequest___block_invoke_376;
  v12[3] = &unk_1E7C8F790;
  v12[4] = &buf;
  [v8 submitTaskRequest:v4 withHandler:v12];

  v9 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)getPendingTaskRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61___DASScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7C8FA10;
  v6 = v4;
  v12 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61___DASScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7C8FA38;
  v10 = v6;
  v8 = v6;
  [v7 getPendingTaskRequestsWithCompletionHandler:v9];
}

- (void)cancelTaskRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke_377;
  v8[3] = &unk_1E7C8F1A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 cancelTaskRequestWithIdentifier:v7 completionHandler:v8];
}

- (void)setBackgroundTasksSchedulerDelegate:(id)a3
{
  objc_storeWeak(&self->_backgroundTaskSchedulerDelegate, a3);

  [(_DASScheduler *)self connectToDaemon:0];
}

- (void)connectToDaemon:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v3;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to daemon; reconnect: %d", buf, 8u);
  }

  if (v3)
  {
    [(_DASScheduler *)self xpcConnection];
  }

  else
  {
    [(_DASScheduler *)self currentConnection];
  }
  v6 = ;
  v7 = [v6 remoteObjectProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33___DASScheduler_connectToDaemon___block_invoke;
  v9[3] = &unk_1E7C8F0B0;
  v9[4] = self;
  [v7 establishConnection:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleLaunchFromDaemonForActivities:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Handling launch from daemon for activities: %@", &v8, 0xCu);
  }

  v6 = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];
  [v6 scheduler:self handleLaunchForActivities:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)willExpireBGTaskActivities:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Will expire BGTask activities: %@", &v8, 0xCu);
  }

  v6 = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];
  [v6 scheduler:self willExpireActivities:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateOngoingTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_DASScheduler *)self currentConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35___DASScheduler_updateOngoingTask___block_invoke;
    v9[3] = &unk_1E7C8F808;
    v9[4] = self;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___DASScheduler_updateOngoingTask___block_invoke_386;
    v7[3] = &unk_1E7C8F1A0;
    v7[4] = self;
    v8 = v4;
    [v6 updateOngoingTask:v8 completionHandler:v7];
  }
}

- (void)updateProgress:(id)a3 forOngoingTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    [v7 setProgress:v6];
    v9 = [(_DASScheduler *)self currentConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47___DASScheduler_updateProgress_forOngoingTask___block_invoke;
    v14[3] = &unk_1E7C8F808;
    v14[4] = self;
    v10 = [v9 remoteObjectProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_387;
    v11[3] = &unk_1E7C8F9E8;
    v11[4] = self;
    v12 = v6;
    v13 = v8;
    [v10 updateProgressForOngoingTask:v13 completionHandler:v11];
  }
}

- (void)continuedProcessingDeviceCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___DASScheduler_continuedProcessingDeviceCapabilities___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___DASScheduler_continuedProcessingDeviceCapabilities___block_invoke_388;
  v8[3] = &unk_1E7C8FA60;
  v9 = v4;
  v7 = v4;
  [v6 continuedProcessingDeviceCapabilities:v8];
}

- (BOOL)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v7 = [(_DASScheduler *)self currentConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke;
  v17[3] = &unk_1E7C8FA88;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke_390;
  v13[3] = &unk_1E7C8FAB0;
  v16 = &v27;
  v15 = &v21;
  v13[4] = self;
  v10 = v8;
  v14 = v10;
  [v9 acknowledgeSystemTaskLaunchWithIdentifier:v10 completionHandler:v13];

  if (a4)
  {
    *a4 = v22[5];
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 retryAfter:(double)a4
{
  v6 = a3;
  v7 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke;
  v13[3] = &unk_1E7C8F858;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_391;
  v11[3] = &unk_1E7C8F1A0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 acknowledgeSystemTaskSuspensionWithIdentifier:v10 retryAfter:v11 completionHandler:a4];
}

- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96___DASScheduler_handleClientLedSystemTaskExpirationWithIdentifier_retryAfter_completionHandler___block_invoke;
  v14[3] = &unk_1E7C8FAD8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 handleClientLedSystemTaskExpirationWithIdentifier:v12 retryAfter:v11 completionHandler:a4];
}

- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___DASScheduler_handleClientFailedtoExpireTaskWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 handleClientFailedtoExpireTaskWithIdentifier:v10 completionHandler:v9];
}

- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___DASScheduler_submitTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 submitTaskRequestWithIdentifier:v13 descriptor:v10 completionHandler:v12];
}

- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___DASScheduler_updateTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 updateTaskRequestWithIdentifier:v13 descriptor:v10 completionHandler:v12];
}

- (void)completeSystemTaskWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = v4;
  v12 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_392;
  v9[3] = &unk_1E7C8F1A0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 completeSystemTaskWithIdentifier:v8 completionHandler:v9];
}

- (void)unregisterSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___DASScheduler_unregisterSystemTaskWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 unregisterSystemTaskWithIdentifier:v10 completionHandler:v9];
}

- (void)resumeTaskSchedulingWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___DASScheduler_resumeTaskSchedulingWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 resumeTaskSchedulingWithIdentifier:v10 completionHandler:v9];
}

- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___DASScheduler_reportSystemTaskWithIdentifier_consumedResults_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 reportSystemTaskWithIdentifier:v13 consumedResults:v10 completionHandler:v12];
}

- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___DASScheduler_reportSystemTaskWithIdentifier_producedResults_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 reportSystemTaskWithIdentifier:v13 producedResults:v10 completionHandler:v12];
}

- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_DASScheduler *)self currentConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_1E7C8FB00;
  v23[4] = self;
  v12 = v8;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v10;
  v26 = v14;
  v15 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke_393;
  v19[3] = &unk_1E7C8FB28;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  [v15 resetResultsForIdentifier:v18 byTaskWithIdentifier:v17 completionHandler:v19];
}

- (void)reportTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = [(_DASScheduler *)self currentConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __100___DASScheduler_reportTaskWorkloadProgress_target_completed_category_subCategory_completionHandler___block_invoke;
  v23 = &unk_1E7C8FB50;
  v24 = self;
  v25 = v14;
  v18 = v14;
  v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler:&v20];
  [v19 reportTaskWorkloadProgress:v16 target:a4 completed:a5 category:a6 subCategory:v15 completionHandler:{v18, v20, v21, v22, v23, v24}];
}

- (void)resubmitRunningActivities:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = self;
    objc_sync_enter(v5);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          delayedStartTasks = v5->_delayedStartTasks;
          v12 = [v10 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:v12];

          submittedActivities = v5->_submittedActivities;
          v14 = [v10 uuid];
          [(NSMutableDictionary *)submittedActivities removeObjectForKey:v14];

          startedActivities = v5->_startedActivities;
          v16 = [v10 uuid];
          [(NSMutableDictionary *)startedActivities setObject:v10 forKeyedSubscript:v16];
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    objc_sync_exit(v5);
    v17 = [(_DASScheduler *)v5 xpcConnection];
    v18 = [v17 remoteObjectProxy];
    [v18 startedActivities:v6];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke;
  v16[3] = &unk_1E7C8FB78;
  v16[4] = self;
  v16[5] = &v21;
  v16[6] = &v17;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_400;
  v15[3] = &unk_1E7C8FBA0;
  v15[4] = self;
  v15[5] = &v21;
  v15[6] = &v17;
  [v12 reportFeatureCheckpoint:a3 forFeature:a4 atDate:v10 withHandler:v15];

  if (a6)
  {
    *a6 = v22[5];
  }

  v13 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (BOOL)reportSystemWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 error:(id *)a5
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke;
  v14[3] = &unk_1E7C8FB78;
  v14[4] = self;
  v14[5] = &v19;
  v14[6] = &v15;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_401;
  v13[3] = &unk_1E7C8FBA0;
  v13[4] = self;
  v13[5] = &v19;
  v13[6] = &v15;
  [v10 reportSystemWorkload:a3 ofCategory:a4 withHandler:v13];

  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (BOOL)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 error:(id *)a5
{
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke;
  v14[3] = &unk_1E7C8FB78;
  v14[4] = self;
  v14[5] = &v19;
  v14[6] = &v15;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_402;
  v13[3] = &unk_1E7C8FBA0;
  v13[4] = self;
  v13[5] = &v19;
  v13[6] = &v15;
  [v10 reportCustomCheckpoint:a3 forTask:v8 withHandler:v13];

  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (BOOL)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 error:(id *)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a9;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = [(_DASScheduler *)self currentConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke;
  v26[3] = &unk_1E7C8FB78;
  v26[4] = self;
  v26[5] = &v31;
  v26[6] = &v27;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_403;
  v25[3] = &unk_1E7C8FBA0;
  v25[4] = self;
  v25[5] = &v31;
  v25[6] = &v27;
  [v22 reportThroughputMetricsForIdentifier:v17 taskName:v18 itemCount:a5 totalDuration:v19 qos:a8 workloadCategory:v20 expectedValue:a6 withHandler:v25];

  if (a10)
  {
    *a10 = v32[5];
  }

  v23 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v23;
}

- (BOOL)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 error:(id *)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v21 = [(_DASScheduler *)self currentConnection];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke;
  v27[3] = &unk_1E7C8FB78;
  v27[4] = self;
  v27[5] = &v32;
  v27[6] = &v28;
  v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_404;
  v26[3] = &unk_1E7C8FBA0;
  v26[4] = self;
  v26[5] = &v32;
  v26[6] = &v28;
  [v22 reportProgressMetricsForIdentifier:v15 taskName:v16 itemsCompleted:v17 totalItemCount:v18 qos:v19 workloadCategory:a8 expectedValue:v20 withHandler:v26];

  if (a10)
  {
    *a10 = v33[5];
  }

  v23 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v23;
}

- (void)activityStartedWithParameters:(id)a3
{
  v4 = a3;
  v6 = [(_DASScheduler *)self currentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 activityStartedWithParameters:v4];
}

- (void)activityStoppedWithParameters:(id)a3
{
  v4 = a3;
  v6 = [(_DASScheduler *)self currentConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 activityStoppedWithParameters:v4];
}

- (void)prewarmApplication:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __36___DASScheduler_prewarmApplication___block_invoke;
  v11 = &unk_1E7C8F858;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&v8];
  [v7 prewarmApplication:{v6, v8, v9, v10, v11, v12}];
}

- (void)prewarmSuspendWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43___DASScheduler_prewarmSuspendWithHandler___block_invoke;
  v11 = &unk_1E7C8FB50;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&v8];
  [v7 prewarmSuspendWithHandler:{v6, v8, v9, v10, v11, v12}];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1F2EDB780];
  [v6 setExportedInterface:v7];

  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (BOOL)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke;
  v18[3] = &unk_1E7C8F858;
  v18[4] = self;
  v9 = v7;
  v19 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_405;
  v14[3] = &unk_1E7C8FBC8;
  v14[4] = self;
  v11 = v6;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v20;
  [v10 deleteLimitForActivity:v11 forLimiterWithName:v12 handler:v14];

  LOBYTE(v8) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (BOOL)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v10 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v11 = v9;
  v21 = v11;
  v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_406;
  v16[3] = &unk_1E7C8FBC8;
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v14 = v11;
  v18 = v14;
  v19 = &v22;
  [v12 updateLimit:v13 forActivity:v14 forLimiterWithName:v16 handler:a3];

  LOBYTE(v10) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v10;
}

- (id)getLimiterResponseForActivity:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___DASScheduler_getLimiterResponseForActivity___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___DASScheduler_getLimiterResponseForActivity___block_invoke_407;
  v11[3] = &unk_1E7C8FBF0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getLimiterResponseForActivity:v8 handler:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (double)getRuntimeLimit:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0xBFF0000000000000;
  v5 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33___DASScheduler_getRuntimeLimit___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33___DASScheduler_getRuntimeLimit___block_invoke_408;
  v11[3] = &unk_1E7C8FC18;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getRuntimeLimit:v8 handler:v11];

  v9 = v17[3];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)getElapsedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_409;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getElapsedRuntimes:v14 timeFilter:v9 bgsqlData:v10 handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getEstimatedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_410;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getEstimatedRuntimes:v14 timeFilter:v9 bgsqlData:v10 handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getConditionsPenalties:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40___DASScheduler_getConditionsPenalties___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40___DASScheduler_getConditionsPenalties___block_invoke_411;
  v11[3] = &unk_1E7C8FC40;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getConditionsPenalties:v8 handler:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)getContentionPenalties:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40___DASScheduler_getContentionPenalties___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40___DASScheduler_getContentionPenalties___block_invoke_412;
  v11[3] = &unk_1E7C8FC40;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getContentionPenalties:v8 handler:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (id)getFeatureTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_413;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getFeatureTimelines:v14 timeFilter:v9 bgsqlData:v10 handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getActivityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_414;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getActivityTimelines:v14 timeFilter:v9 bgsqlData:v10 handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getEligibilityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke;
  v17[3] = &unk_1E7C8F858;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_415;
  v16[3] = &unk_1E7C8F8D0;
  v16[4] = self;
  v16[5] = &v19;
  [v13 getEligibilityTimelines:v12 timeFilter:v9 bgsqlData:v10 handler:v16];

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)getDeviceConditionTimelines:(id)a3 bgsqlData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getDeviceConditionTimelines:v6 bgsqlData:v7 handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke_417;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getSchedulerEfficiencyMetrics:v6 bgsqlData:v7 handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke_418;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getOvernightIntensiveSchedulerEfficiencyMetrics:v6 bgsqlData:v7 handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getInstallTimeline:(id)a3 bgsqlData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419;
  v12[3] = &unk_1E7C8F478;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getInstallTimeline:v6 bgsqlData:v7 handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getBuddyEvents:(id)a3 bgsqlData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v8 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke_420;
  v12[3] = &unk_1E7C8F478;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getBuddyEvents:v6 bgsqlData:v7 handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getEstimatedMADCompletionTimes:(id)a3 endDate:(id)a4 bgsqlData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v11 = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = v8;
  v21 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getEstimatedMADCompletionTimes:v14 endDate:v9 bgsqlData:v10 handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getSortedCandidateActivities:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46___DASScheduler_getSortedCandidateActivities___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = v4;
  v15 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46___DASScheduler_getSortedCandidateActivities___block_invoke_422;
  v11[3] = &unk_1E7C8FBF0;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getSortedCandidateActivities:v8 handler:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (BOOL)triggerScoreEvaluationAndRunActivities:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke;
  v13[3] = &unk_1E7C8F858;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke_423;
  v10[3] = &unk_1E7C8FC68;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = &v15;
  [v7 triggerScoreEvaluationAndRunActivities:v8 handler:v10];

  LOBYTE(v5) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v5;
}

- (_DASActivityBackgroundTasksSchedulerDelegate)backgroundTaskSchedulerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundTaskSchedulerDelegate);

  return WeakRetained;
}

- (void)submitActivityInternal:(void *)a1 .cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 name];
  v5 = [a2 limitationResponse];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0(&dword_1B6E2F000, v6, v7, "WARNING Submitting %@: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)submitActivityInternal:(void *)a1 .cold.2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 name];
  v5 = [a2 limitationResponse];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0(&dword_1B6E2F000, v6, v7, "ERROR Submitting %@: Please contact das-core@group.apple.com to prevent this activity from getting rejected. Configuration: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)submitActivity:inGroup:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end