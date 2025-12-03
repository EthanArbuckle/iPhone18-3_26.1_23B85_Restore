@interface _DASScheduler
+ (_DASScheduler)schedulerWithClientName:(id)name;
+ (_DASScheduler)schedulerWithEndpoint:(id)endpoint;
+ (_DASScheduler)schedulerWithEndpoint:(id)endpoint withClientName:(id)name;
+ (id)log;
+ (id)scheduler;
+ (id)sharedScheduler;
- (BOOL)acknowledgeSystemTaskLaunchWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deferActivities:(id)activities;
- (BOOL)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name;
- (BOOL)evaluateAllActivitiesWithHandle:(id)handle;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error;
- (BOOL)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date error:(id *)error;
- (BOOL)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0;
- (BOOL)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error;
- (BOOL)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0;
- (BOOL)submitActivity:(id)activity inGroup:(id)group error:(id *)error;
- (BOOL)submitActivityInternal:(id)internal;
- (BOOL)triggerScoreEvaluationAndRunActivities:(id)activities;
- (BOOL)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name;
- (BOOL)wasActivityAllowedToRun:(id)run;
- (NSMutableDictionary)submittedActivities;
- (_DASActivityBackgroundTasksSchedulerDelegate)backgroundTaskSchedulerDelegate;
- (_DASScheduler)initWithListenerEndpoint:(id)endpoint;
- (double)balanceForBudgetWithName:(id)name;
- (double)getRuntimeLimit:(id)limit;
- (id)_resetWidgetBudgets;
- (id)activityContainsOverrides:(id)overrides;
- (id)allBudgets;
- (id)blockingPoliciesWithParameters:(id)parameters;
- (id)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data;
- (id)currentConnection;
- (id)currentPredictions;
- (id)delayedRunningActivities;
- (id)evaluateBytesConsumed:(id)consumed withPreviousParameters:(id)parameters;
- (id)evaluatePolicies:(id)policies;
- (id)extendUpdateActivityDictionary:(id)dictionary;
- (id)getActivityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data;
- (id)getBuddyEvents:(id)events bgsqlData:(id)data;
- (id)getConditionsPenalties:(id)penalties;
- (id)getContentionPenalties:(id)penalties;
- (id)getDeviceConditionTimelines:(id)timelines bgsqlData:(id)data;
- (id)getElapsedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data;
- (id)getEligibilityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data;
- (id)getEstimatedMADCompletionTimes:(id)times endDate:(id)date bgsqlData:(id)data;
- (id)getEstimatedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data;
- (id)getFeatureTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data;
- (id)getInstallTimeline:(id)timeline bgsqlData:(id)data;
- (id)getLimiterResponseForActivity:(id)activity;
- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data;
- (id)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data;
- (id)getSortedCandidateActivities:(id)activities;
- (id)inspect:(id)inspect;
- (id)policies;
- (id)queryDependenciesOfTaskIdentifier:(id)identifier;
- (id)queryStatusOfResultIdentifier:(id)identifier;
- (id)runProceedableActivities:(id)activities;
- (id)runningActivities;
- (id)runningGroupActivities;
- (id)statistics;
- (id)submitTaskRequest:(id)request;
- (id)submittedTaskState;
- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)identifier retryAfter:(double)after;
- (void)activity:(id)activity blockedOnPolicies:(id)policies;
- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies;
- (void)activityCanceled:(id)canceled;
- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason;
- (void)activityCompleted:(id)completed;
- (void)activityStarted:(id)started;
- (void)activityStartedWithParameters:(id)parameters;
- (void)activityStoppedWithParameters:(id)parameters;
- (void)addPauseExceptParameter:(id)parameter;
- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler;
- (void)cancelActivities:(id)activities;
- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason;
- (void)cancelAllTaskRequests;
- (void)cancelTaskRequestWithIdentifier:(id)identifier;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier;
- (void)completeSystemTaskWithIdentifier:(id)identifier;
- (void)connectToDaemon:(BOOL)daemon;
- (void)continuedProcessingDeviceCapabilities:(id)capabilities;
- (void)createActivityGroup:(id)group;
- (void)dealloc;
- (void)decrementBy:(double)by forBudgetWithName:(id)name;
- (void)disableAppRefreshForApps:(id)apps;
- (void)endLaunchWithReason:(id)reason forApp:(id)app;
- (void)forceResetOfResultIdentifier:(id)identifier;
- (void)forceRunActivities:(id)activities;
- (void)getPendingTaskRequestsWithCompletionHandler:(id)handler;
- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler;
- (void)handleEligibleActivities:(id)activities;
- (void)handleLaunchFromDaemonForActivities:(id)activities;
- (void)handleNoLongerRunningActivities:(id)activities;
- (void)pauseWithParameters:(id)parameters;
- (void)prewarmApplication:(id)application;
- (void)prewarmSuspendWithHandler:(id)handler;
- (void)reportSystemTaskWithIdentifier:(id)identifier consumedResults:(id)results completionHandler:(id)handler;
- (void)reportSystemTaskWithIdentifier:(id)identifier producedResults:(id)results completionHandler:(id)handler;
- (void)reportTaskWorkloadProgress:(id)progress target:(unint64_t)target completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory completionHandler:(id)handler;
- (void)resetResultsForIdentifier:(id)identifier byTaskWithIdentifier:(id)withIdentifier completionHandler:(id)handler;
- (void)resubmitPendingActivities;
- (void)resubmitPendingStartActivities;
- (void)resubmitRunningActivities;
- (void)resubmitRunningActivities:(id)activities;
- (void)resubmitRunningTasks:(id)tasks;
- (void)resumeTaskSchedulingWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)runActivities:(id)activities;
- (void)runActivitiesWithDelayedStart:(id)start;
- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities;
- (void)setBackgroundTasksSchedulerDelegate:(id)delegate;
- (void)setBalance:(double)balance forBudgetWithName:(id)name;
- (void)setCapacity:(double)capacity forBudgetWithName:(id)name;
- (void)setMinimumBackgroundFetchInterval:(double)interval forApp:(id)app;
- (void)setupXPCConnectionWithEndpoint:(id)endpoint;
- (void)submitActivities:(id)activities;
- (void)submitActivitiesInternal:(id)internal;
- (void)submitActivity:(id)activity;
- (void)submitActivity:(id)activity inGroup:(id)group;
- (void)submitActivity:(id)activity inGroupWithName:(id)name;
- (void)submitRateLimitConfiguration:(id)configuration;
- (void)submitTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler;
- (void)suspendActivities:(id)activities;
- (void)unprotectedEstablishDaemonConnectionIfInterrupted;
- (void)unregisterSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateActivity:(id)activity withParameters:(id)parameters;
- (void)updateBytesConsumedForActivity:(id)activity withParameters:(id)parameters;
- (void)updateOngoingTask:(id)task;
- (void)updateProgress:(id)progress forOngoingTask:(id)task;
- (void)updateSystemConstraintsWithParameters:(id)parameters;
- (void)updateTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler;
- (void)willExpireBGTaskActivities:(id)activities;
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
    backgroundTaskSchedulerDelegate = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];

    if (backgroundTaskSchedulerDelegate)
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___DASScheduler_cancelAllTaskRequests__block_invoke;
  v6[3] = &unk_1E7C8F808;
  v6[4] = self;
  v4 = [currentConnection remoteObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___DASScheduler_cancelAllTaskRequests__block_invoke_378;
  v5[3] = &unk_1E7C8F0B0;
  v5[4] = self;
  [v4 cancelAllTaskRequestsWithCompletionHandler:v5];
}

- (void)setupXPCConnectionWithEndpoint:(id)endpoint
{
  v137[2] = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v6 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (endpointCopy)
  {
    v7 = [v6 initWithListenerEndpoint:{endpointCopy, endpointCopy}];
  }

  else
  {
    v7 = [v6 initWithMachServiceName:@"com.apple.duetactivityscheduler" options:{4096, 0}];
  }

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v7;

  objc_storeStrong(&self->_endpoint, endpoint);
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

- (_DASScheduler)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    submittedActivities = v5->_submittedActivities;
    v5->_submittedActivities = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    startedActivities = v5->_startedActivities;
    v5->_startedActivities = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    delayedStartTasks = v5->_delayedStartTasks;
    v5->_delayedStartTasks = dictionary3;

    v18 = objc_alloc_init(_DASSubmissionManager);
    submissionManager = v5->_submissionManager;
    v5->_submissionManager = v18;

    v20 = os_log_create([@"com.apple.duetactivityscheduler" UTF8String], objc_msgSend(@"client", "UTF8String"));
    dasFrameworkLog = v5->_dasFrameworkLog;
    v5->_dasFrameworkLog = v20;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    activityToDataMap = v5->_activityToDataMap;
    v5->_activityToDataMap = dictionary4;

    [(_DASScheduler *)v5 setupXPCConnectionWithEndpoint:endpointCopy];
    objc_initWeak(&location, v5);
    uTF8String = [@"com.appple.duet.activityscheduler.requestActivityResubmission" UTF8String];
    v25 = v5->_queue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __42___DASScheduler_initWithListenerEndpoint___block_invoke;
    v27[3] = &unk_1E7C8F718;
    objc_copyWeak(&v28, &location);
    notify_register_dispatch(uTF8String, &v5->_resubmitToken, v25, v27);
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

+ (_DASScheduler)schedulerWithClientName:(id)name
{
  nameCopy = name;
  v4 = [[_DASScheduler alloc] initWithListenerEndpoint:0];
  [(_DASScheduler *)v4 setClientName:nameCopy];

  return v4;
}

+ (_DASScheduler)schedulerWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [[_DASScheduler alloc] initWithListenerEndpoint:endpointCopy];

  return v4;
}

+ (_DASScheduler)schedulerWithEndpoint:(id)endpoint withClientName:(id)name
{
  nameCopy = name;
  endpointCopy = endpoint;
  v7 = [[_DASScheduler alloc] initWithListenerEndpoint:endpointCopy];

  [(_DASScheduler *)v7 setClientName:nameCopy];

  return v7;
}

- (id)submittedTaskState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_submittedActivities copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)resubmitRunningActivities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_startedActivities allValues];
  objc_sync_exit(selfCopy);

  if ([allValues count])
  {
    xpcConnection = [(_DASScheduler *)selfCopy xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy startedActivities:allValues];
  }
}

- (void)resubmitPendingActivities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_submittedActivities allValues];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.requestsApplicationLaunch == NO && self.preClearedMode == 0"];
  v5 = [allValues filteredArrayUsingPredicate:v4];
  v9 = [v5 mutableCopy];

  objc_sync_exit(selfCopy);
  if ([v9 count])
  {
    [(_DASSubmissionManager *)selfCopy->_submissionManager removeAllObjects];
    submissionManager = selfCopy->_submissionManager;
    xpcConnection = [(_DASScheduler *)selfCopy xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager submitActivities:v9 withScheduler:remoteObjectProxy];
  }
}

- (void)resubmitPendingStartActivities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_delayedStartTasks allValues];
  objc_sync_exit(selfCopy);

  if ([allValues count])
  {
    remoteObjectProxy = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectProxy];
    [remoteObjectProxy delayedStartActivities:allValues];
  }
}

- (void)handleEligibleActivities:(id)activities
{
  activitiesCopy = activities;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy handleEligibleActivities:activitiesCopy];
}

- (BOOL)submitActivityInternal:(id)internal
{
  internalCopy = internal;
  limitationResponse = [internalCopy limitationResponse];
  v6 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:limitationResponse];

  if (v6)
  {
    dasFrameworkLog = self->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_ERROR))
    {
      [(_DASScheduler *)dasFrameworkLog submitActivityInternal:internalCopy];
    }
  }

  else
  {
    limitationResponse2 = [internalCopy limitationResponse];
    v9 = [limitationResponse2 count];

    if (v9)
    {
      v10 = self->_dasFrameworkLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DASScheduler *)v10 submitActivityInternal:internalCopy];
      }
    }
  }

  date = [MEMORY[0x1E695DF00] date];
  [internalCopy setSubmitDate:date];
  if (self->_clientName)
  {
    [internalCopy setClientName:?];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([internalCopy requestsApplicationLaunch] & 1) != 0 || objc_msgSend(internalCopy, "requestsExtensionLaunch"))
  {
    rateLimitConfigurationName = [internalCopy rateLimitConfigurationName];

    if (!rateLimitConfigurationName)
    {
      keepsPrevious = [internalCopy keepsPrevious];
      if ((keepsPrevious | [internalCopy overwritesPrevious]))
      {
        submittedActivities = selfCopy->_submittedActivities;
        v25 = MEMORY[0x1E69E9820];
        v26 = 3221225472;
        v27 = __40___DASScheduler_submitActivityInternal___block_invoke;
        v28 = &unk_1E7C8F768;
        v29 = internalCopy;
        v30 = selfCopy;
        v31 = &v39;
        v32 = &v33;
        [(NSMutableDictionary *)submittedActivities enumerateKeysAndObjectsUsingBlock:&v25];
      }
    }
  }

  rateLimitConfigurationName2 = [internalCopy rateLimitConfigurationName];

  if (rateLimitConfigurationName2)
  {
    *(v40 + 24) = 1;
  }

  else if ((v40[3] & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = selfCopy->_submittedActivities;
  uuid = [internalCopy uuid];
  [(NSMutableDictionary *)v17 setObject:internalCopy forKeyedSubscript:uuid];

LABEL_18:
  v19 = v34[5];
  if (v19)
  {
    if ([v19 requestsExtensionLaunch])
    {
      v20 = [MEMORY[0x1E695DFD8] setWithObject:v34[5]];
      [(_DASScheduler *)selfCopy cancelActivities:v20];
    }

    v21 = selfCopy->_submittedActivities;
    uuid2 = [v34[5] uuid];
    [(NSMutableDictionary *)v21 removeObjectForKey:uuid2];
  }

  objc_sync_exit(selfCopy);

  v23 = *(v40 + 24);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  return v23;
}

- (void)submitActivitiesInternal:(id)internal
{
  v35 = *MEMORY[0x1E69E9840];
  internalCopy = internal;
  date = [MEMORY[0x1E695DF00] date];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = internalCopy;
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
        limitationResponse = [v11 limitationResponse];
        v13 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:limitationResponse];

        if (v13)
        {
          v14 = selfCopy->_dasFrameworkLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            name = [v11 name];
            limitationResponse2 = [v11 limitationResponse];
            *buf = v24;
            v31 = name;
            v32 = 2112;
            v33 = limitationResponse2;
            _os_log_error_impl(&dword_1B6E2F000, v14, OS_LOG_TYPE_ERROR, "ERROR Submitting %@: Please contact das-core@group.apple.com to prevent this activity from getting rejected. Configuration: %@", buf, 0x16u);
          }
        }

        else
        {
          limitationResponse3 = [v11 limitationResponse];
          v18 = [limitationResponse3 count];

          if (!v18)
          {
            goto LABEL_13;
          }

          v14 = selfCopy->_dasFrameworkLog;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            name2 = [v11 name];
            limitationResponse4 = [v11 limitationResponse];
            *buf = v24;
            v31 = name2;
            v32 = 2112;
            v33 = limitationResponse4;
            _os_log_error_impl(&dword_1B6E2F000, v14, OS_LOG_TYPE_ERROR, "WARNING Submitting %@: %@", buf, 0x16u);
          }
        }

LABEL_13:
        if (selfCopy->_clientName)
        {
          [v11 setClientName:?];
        }

        submittedActivities = selfCopy->_submittedActivities;
        uuid = [v11 uuid];
        [(NSMutableDictionary *)submittedActivities setObject:v11 forKeyedSubscript:uuid];

        [v11 setSubmitDate:date];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)submitActivity:(id)activity
{
  v13 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = [(_DASScheduler *)self submitActivityInternal:activityCopy];
  dasFrameworkLog = [(_DASScheduler *)self dasFrameworkLog];
  v7 = os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138543362;
      v12 = activityCopy;
      _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@", &v11, 0xCu);
    }

    if ([activityCopy preClearedMode])
    {
      dasFrameworkLog = [MEMORY[0x1E695DFD8] setWithObject:activityCopy];
      [(_DASScheduler *)self runActivities:dasFrameworkLog];
    }

    else
    {
      submissionManager = self->_submissionManager;
      dasFrameworkLog = [(_DASScheduler *)self currentConnection];
      remoteObjectProxy = [dasFrameworkLog remoteObjectProxy];
      [(_DASSubmissionManager *)submissionManager submitActivity:activityCopy withScheduler:remoteObjectProxy];
    }
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = activityCopy;
    _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "Duplicate Activity: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)submitActivities:(id)activities
{
  v22 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  [(_DASScheduler *)self submitActivitiesInternal:activitiesCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = activitiesCopy;
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
          v13 = array;
        }

        [v13 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(_DASScheduler *)self runActivities:v5];
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy submitActivities:array];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleNoLongerRunningActivities:(id)activities
{
  activitiesCopy = activities;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  submittedActivities = selfCopy->_submittedActivities;
  uuid = [activitiesCopy uuid];
  [(NSMutableDictionary *)submittedActivities removeObjectForKey:uuid];

  delayedStartTasks = selfCopy->_delayedStartTasks;
  uuid2 = [activitiesCopy uuid];
  [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:uuid2];

  startedActivities = selfCopy->_startedActivities;
  uuid3 = [activitiesCopy uuid];
  [(NSMutableDictionary *)startedActivities removeObjectForKey:uuid3];

  objc_sync_exit(selfCopy);
  v11 = selfCopy->_activityToDataMap;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)selfCopy->_activityToDataMap objectForKeyedSubscript:activitiesCopy];
  if (v12)
  {
    currentConnection = [(_DASScheduler *)selfCopy currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [remoteObjectProxy updateActivity:activitiesCopy withParameters:v12];

    [(NSMutableDictionary *)selfCopy->_activityToDataMap removeObjectForKey:activitiesCopy];
  }

  objc_sync_exit(v11);
}

- (void)activityStarted:(id)started
{
  v21 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delayedStartTasks = selfCopy->_delayedStartTasks;
  uuid = [startedCopy uuid];
  v8 = [(NSMutableDictionary *)delayedStartTasks objectForKeyedSubscript:uuid];

  if (v8)
  {
    v9 = selfCopy->_delayedStartTasks;
    uuid2 = [startedCopy uuid];
    [(NSMutableDictionary *)v9 removeObjectForKey:uuid2];

    startedActivities = selfCopy->_startedActivities;
    uuid3 = [startedCopy uuid];
    [(NSMutableDictionary *)startedActivities setObject:startedCopy forKeyedSubscript:uuid3];
  }

  else
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = startedCopy;
      _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "startActivity: %@ activity was not found", &v19, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);
  if (v8)
  {
    dasFrameworkLog = [(_DASScheduler *)selfCopy dasFrameworkLog];
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = startedCopy;
      _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "STARTING: %@", &v19, 0xCu);
    }

    date = [MEMORY[0x1E695DF00] date];
    [startedCopy setStartDate:date];

    currentConnection = [(_DASScheduler *)selfCopy currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [remoteObjectProxy activityStarted:startedCopy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)activityCanceled:(id)canceled
{
  canceledCopy = canceled;
  [(_DASScheduler *)self handleNoLongerRunningActivities:canceledCopy];
  if (![canceledCopy preClearedMode])
  {
    submissionManager = self->_submissionManager;
    currentConnection = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCanceled:canceledCopy withScheduler:remoteObjectProxy];

    currentConnection2 = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy2 = [currentConnection2 remoteObjectProxy];
    [remoteObjectProxy2 activityCanceled:canceledCopy];
  }
}

- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason
{
  reasonCopy = reason;
  [(_DASScheduler *)self handleNoLongerRunningActivities:reasonCopy];
  if (![reasonCopy preClearedMode])
  {
    submissionManager = self->_submissionManager;
    currentConnection = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCanceled:reasonCopy withScheduler:remoteObjectProxy];

    currentConnection2 = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy2 = [currentConnection2 remoteObjectProxy];
    [remoteObjectProxy2 activityCanceledWithReason:reasonCopy expirationReason:expirationReason];
  }
}

- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy clientFailedtoExpireTaskWithIdentifier:identifierCopy];
}

- (id)_resetWidgetBudgets
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___DASScheduler__resetWidgetBudgets__block_invoke;
  v6[3] = &unk_1E7C8F790;
  v6[4] = &v7;
  v3 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v3 _resetWidgetBudgets];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)activityCompleted:(id)completed
{
  completedCopy = completed;
  [(_DASScheduler *)self handleNoLongerRunningActivities:completedCopy];
  if (![completedCopy preClearedMode])
  {
    submissionManager = self->_submissionManager;
    currentConnection = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager activityCompleted:completedCopy withScheduler:remoteObjectProxy];

    currentConnection2 = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy2 = [currentConnection2 remoteObjectProxy];
    [remoteObjectProxy2 activityCompleted:completedCopy];
  }
}

- (void)updateActivity:(id)activity withParameters:(id)parameters
{
  v35[6] = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  parametersCopy = parameters;
  allKeys = [parametersCopy allKeys];
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
    selfCopy = self;
    v27 = activityCopy;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if ([allKeys containsObject:{v14, selfCopy, v27, v28}])
        {
          v15 = [parametersCopy objectForKeyedSubscript:v14];
          [v15 doubleValue];
          if (v16 > 0.0 || ([allKeys containsObject:@"Cell"] & 1) != 0)
          {

LABEL_17:
            self = selfCopy;
            activityCopy = v27;
            [(_DASScheduler *)selfCopy updateBytesConsumedForActivity:v27 withParameters:parametersCopy];
            goto LABEL_18;
          }

          v17 = [allKeys containsObject:@"WiFi"];

          if (v17)
          {
            goto LABEL_17;
          }
        }

        else if (([allKeys containsObject:@"Cell"] & 1) != 0 || objc_msgSend(allKeys, "containsObject:", @"WiFi"))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
      self = selfCopy;
      activityCopy = v27;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if ([allKeys containsObject:@"PercentCompleted"])
  {
    v18 = [parametersCopy objectForKeyedSubscript:@"PercentCompleted"];
    [v18 doubleValue];
    v20 = v19;

    if (v20 >= 0.0)
    {
      currentConnection = [(_DASScheduler *)self currentConnection];
      remoteObjectProxy = [currentConnection remoteObjectProxy];
      v32 = @"PercentCompleted";
      v23 = [parametersCopy objectForKeyedSubscript:@"PercentCompleted"];
      v33 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [remoteObjectProxy updateActivity:activityCopy withParameters:v24];
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateSystemConstraintsWithParameters:(id)parameters
{
  parametersCopy = parameters;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy updateSystemConstraintsWithParameters:parametersCopy];
}

- (id)extendUpdateActivityDictionary:(id)dictionary
{
  v85 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v79 = dictionaryCopy;
  [dictionaryCopy allKeys];
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
  [dictionary setObject:v59 forKeyedSubscript:@"Cell"];

  v60 = [MEMORY[0x1E696AD98] numberWithDouble:v77];
  [dictionary setObject:v60 forKeyedSubscript:@"WiFi"];

  v61 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [dictionary setObject:v61 forKeyedSubscript:@"Upload"];

  v62 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [dictionary setObject:v62 forKeyedSubscript:@"Download"];

  v63 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [dictionary setObject:v63 forKeyedSubscript:@"Expensive"];

  v64 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [dictionary setObject:v64 forKeyedSubscript:@"Inexpensive"];

  v65 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [dictionary setObject:v65 forKeyedSubscript:@"CellExpensive"];

  v66 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
  [dictionary setObject:v66 forKeyedSubscript:@"WiFiExpensive"];

  v67 = [MEMORY[0x1E696AD98] numberWithDouble:v78];
  [dictionary setObject:v67 forKeyedSubscript:@"CellInexpensive"];

  v68 = [MEMORY[0x1E696AD98] numberWithDouble:v73];
  [dictionary setObject:v68 forKeyedSubscript:@"WiFiInexpensive"];

  v69 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)evaluateBytesConsumed:(id)consumed withPreviousParameters:(id)parameters
{
  consumedCopy = consumed;
  parametersCopy = parameters;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = consumedCopy;
  v10 = [consumedCopy objectForKeyedSubscript:@"Cell"];
  if (v10)
  {
  }

  else
  {
    v11 = [consumedCopy objectForKeyedSubscript:@"WiFi"];

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

      v96 = [parametersCopy objectForKeyedSubscript:@"Expensive"];
      if (v96)
      {
        v97 = MEMORY[0x1E696AD98];
        v98 = [parametersCopy objectForKeyedSubscript:@"Expensive"];
        [v98 doubleValue];
        v99 = [v97 numberWithDouble:?];
        [dictionary setObject:v99 forKeyedSubscript:@"Expensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Expensive"];
      }

      v100 = [parametersCopy objectForKeyedSubscript:@"Inexpensive"];
      if (v100)
      {
        v101 = MEMORY[0x1E696AD98];
        v102 = [parametersCopy objectForKeyedSubscript:@"Inexpensive"];
        [v102 doubleValue];
        v103 = [v101 numberWithDouble:?];
        [dictionary setObject:v103 forKeyedSubscript:@"Inexpensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Inexpensive"];
      }

      v104 = [parametersCopy objectForKeyedSubscript:@"Upload"];
      if (v104)
      {
        v105 = MEMORY[0x1E696AD98];
        v106 = [parametersCopy objectForKeyedSubscript:@"Upload"];
        [v106 doubleValue];
        v107 = [v105 numberWithDouble:?];
        [dictionary setObject:v107 forKeyedSubscript:@"Upload"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Upload"];
      }

      v108 = [parametersCopy objectForKeyedSubscript:@"Download"];
      if (v108)
      {
        v109 = MEMORY[0x1E696AD98];
        v110 = [parametersCopy objectForKeyedSubscript:@"Download"];
        [v110 doubleValue];
        v111 = [v109 numberWithDouble:?];
        [dictionary setObject:v111 forKeyedSubscript:@"Download"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"Download"];
      }

      v112 = [parametersCopy objectForKeyedSubscript:@"WiFiExpensive"];
      if (v112)
      {
        v113 = MEMORY[0x1E696AD98];
        v114 = [parametersCopy objectForKeyedSubscript:@"WiFiExpensive"];
        [v114 doubleValue];
        v115 = [v113 numberWithDouble:?];
        [dictionary setObject:v115 forKeyedSubscript:@"WiFiExpensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"WiFiExpensive"];
      }

      v116 = [parametersCopy objectForKeyedSubscript:@"WiFiInexpensive"];
      if (v116)
      {
        v117 = MEMORY[0x1E696AD98];
        v118 = [parametersCopy objectForKeyedSubscript:@"WiFiInexpensive"];
        [v118 doubleValue];
        v119 = [v117 numberWithDouble:?];
        [dictionary setObject:v119 forKeyedSubscript:@"WiFiInexpensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"WiFiInexpensive"];
      }

      v120 = [parametersCopy objectForKeyedSubscript:@"CellExpensive"];
      if (v120)
      {
        v121 = MEMORY[0x1E696AD98];
        v122 = [parametersCopy objectForKeyedSubscript:@"CellExpensive"];
        [v122 doubleValue];
        v123 = [v121 numberWithDouble:?];
        [dictionary setObject:v123 forKeyedSubscript:@"CellExpensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"CellExpensive"];
      }

      v124 = [parametersCopy objectForKeyedSubscript:@"CellInexpensive"];
      if (v124)
      {
        v125 = MEMORY[0x1E696AD98];
        v126 = [parametersCopy objectForKeyedSubscript:@"CellInexpensive"];
        [v126 doubleValue];
        v127 = [v125 numberWithDouble:?];
        [dictionary setObject:v127 forKeyedSubscript:@"CellInexpensive"];
      }

      else
      {
        [dictionary setObject:&unk_1F2ED4A48 forKeyedSubscript:@"CellInexpensive"];
      }

      v128 = MEMORY[0x1E696AD98];
      v129 = [parametersCopy objectForKeyedSubscript:@"Upload"];
      [v129 doubleValue];
      v130 = [v128 numberWithDouble:v95 + v92 + v130];
      [dictionary setObject:v130 forKeyedSubscript:@"Upload"];

      v132 = MEMORY[0x1E696AD98];
      v133 = [parametersCopy objectForKeyedSubscript:@"Download"];
      [v133 doubleValue];
      v134 = [v132 numberWithDouble:v89 + v86 + v134];
      [dictionary setObject:v134 forKeyedSubscript:@"Download"];

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
  v38 = [parametersCopy objectForKeyedSubscript:@"Expensive"];
  [v38 doubleValue];
  v40 = [v37 numberWithDouble:v15 + v39];
  [dictionary setObject:v40 forKeyedSubscript:@"Expensive"];

  v41 = MEMORY[0x1E696AD98];
  v42 = [parametersCopy objectForKeyedSubscript:@"Inexpensive"];
  [v42 doubleValue];
  v44 = [v41 numberWithDouble:v18 + v43];
  [dictionary setObject:v44 forKeyedSubscript:@"Inexpensive"];

  v45 = MEMORY[0x1E696AD98];
  v46 = [parametersCopy objectForKeyedSubscript:@"Upload"];
  [v46 doubleValue];
  v48 = [v45 numberWithDouble:v21 + v47];
  [dictionary setObject:v48 forKeyedSubscript:@"Upload"];

  v49 = MEMORY[0x1E696AD98];
  v50 = [parametersCopy objectForKeyedSubscript:@"Download"];
  [v50 doubleValue];
  v52 = [v49 numberWithDouble:v24 + v51];
  [dictionary setObject:v52 forKeyedSubscript:@"Download"];

  v53 = MEMORY[0x1E696AD98];
  v54 = [parametersCopy objectForKeyedSubscript:@"CellExpensive"];
  [v54 doubleValue];
  v56 = [v53 numberWithDouble:v27 + v55];
  [dictionary setObject:v56 forKeyedSubscript:@"CellExpensive"];

  v57 = MEMORY[0x1E696AD98];
  v58 = [parametersCopy objectForKeyedSubscript:@"CellInexpensive"];
  [v58 doubleValue];
  v60 = [v57 numberWithDouble:v30 + v59];
  [dictionary setObject:v60 forKeyedSubscript:@"CellInexpensive"];

  v61 = MEMORY[0x1E696AD98];
  v62 = [parametersCopy objectForKeyedSubscript:@"WiFiExpensive"];
  [v62 doubleValue];
  v64 = [v61 numberWithDouble:v33 + v63];
  [dictionary setObject:v64 forKeyedSubscript:@"WiFiExpensive"];

  v65 = MEMORY[0x1E696AD98];
  v66 = [parametersCopy objectForKeyedSubscript:@"WiFiInexpensive"];
  [v66 doubleValue];
  v68 = [v65 numberWithDouble:v36 + v67];
  [dictionary setObject:v68 forKeyedSubscript:@"WiFiInexpensive"];

  v69 = [v12 objectForKeyedSubscript:@"Cell"];
  [v69 doubleValue];
  v71 = v70;

  v72 = [v12 objectForKeyedSubscript:@"WiFi"];
  [v72 doubleValue];
  v74 = v73;

LABEL_5:
  v75 = MEMORY[0x1E696AD98];
  v76 = [parametersCopy objectForKeyedSubscript:@"WiFi"];
  [v76 doubleValue];
  v78 = [v75 numberWithDouble:v74 + v77];
  [dictionary setObject:v78 forKeyedSubscript:@"WiFi"];

  v79 = MEMORY[0x1E696AD98];
  v80 = [parametersCopy objectForKeyedSubscript:@"Cell"];
  [v80 doubleValue];
  v82 = [v79 numberWithDouble:v71 + v81];
  [dictionary setObject:v82 forKeyedSubscript:@"Cell"];

  return dictionary;
}

- (void)updateBytesConsumedForActivity:(id)activity withParameters:(id)parameters
{
  v30 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  parametersCopy = parameters;
  if ([activityCopy dataBudgetingEnabled])
  {
    v8 = self->_activityToDataMap;
    objc_sync_enter(v8);
    dictionary = [(NSMutableDictionary *)self->_activityToDataMap objectForKeyedSubscript:activityCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    dasFrameworkLog = [(_DASScheduler *)self dasFrameworkLog];
    if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412802;
      v25 = activityCopy;
      v26 = 2112;
      v27 = dictionary;
      v28 = 2112;
      v29 = parametersCopy;
      _os_log_debug_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEBUG, "Activity %@ had %@. Updating with new parameter: %@", &v24, 0x20u);
    }

    v11 = [(_DASScheduler *)self evaluateBytesConsumed:parametersCopy withPreviousParameters:dictionary];

    [(NSMutableDictionary *)self->_activityToDataMap setObject:v11 forKeyedSubscript:activityCopy];
    v12 = [v11 objectForKeyedSubscript:@"WiFi"];
    [v12 doubleValue];
    v14 = v13;
    v15 = [v11 objectForKeyedSubscript:@"Cell"];
    [v15 doubleValue];
    v17 = v16;

    v18 = v14 + v17;
    if (v18 > 1048576.0)
    {
      dasFrameworkLog2 = [(_DASScheduler *)self dasFrameworkLog];
      if (os_log_type_enabled(dasFrameworkLog2, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        v24 = 138412802;
        v25 = activityCopy;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = &unk_1F2ED4A78;
        _os_log_impl(&dword_1B6E2F000, dasFrameworkLog2, OS_LOG_TYPE_DEFAULT, "%@: %@ > %@", &v24, 0x20u);
      }

      currentConnection = [(_DASScheduler *)self currentConnection];
      remoteObjectProxy = [currentConnection remoteObjectProxy];
      [remoteObjectProxy updateActivity:activityCopy withParameters:v11];

      [v11 removeAllObjects];
    }

    objc_sync_exit(v8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)createActivityGroup:(id)group
{
  submissionManager = self->_submissionManager;
  groupCopy = group;
  [(_DASSubmissionManager *)submissionManager createActivityGroup:groupCopy];
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy createActivityGroup:groupCopy];
}

- (void)submitActivity:(id)activity inGroupWithName:(id)name
{
  activityCopy = activity;
  [activityCopy setGroupName:name];
  [(_DASScheduler *)self submitActivity:activityCopy];
}

- (void)submitActivity:(id)activity inGroup:(id)group
{
  v19 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  groupCopy = group;
  [(_DASScheduler *)self submitActivityInternal:activityCopy];
  name = [groupCopy name];
  [activityCopy setGroupName:name];

  dasFrameworkLog = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [groupCopy name];
    v15 = 138543618;
    v16 = activityCopy;
    v17 = 2114;
    v18 = name2;
    _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@ in group %{public}@", &v15, 0x16u);
  }

  if ([activityCopy preClearedMode])
  {
    currentConnection = [MEMORY[0x1E695DFD8] setWithObject:activityCopy];
    [(_DASScheduler *)self runActivities:currentConnection];
  }

  else
  {
    submissionManager = self->_submissionManager;
    currentConnection = [(_DASScheduler *)self currentConnection];
    remoteObjectProxy = [currentConnection remoteObjectProxy];
    [(_DASSubmissionManager *)submissionManager submitActivity:activityCopy inGroup:groupCopy withScheduler:remoteObjectProxy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)submitActivity:(id)activity inGroup:(id)group error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  groupCopy = group;
  [activityCopy setClientName:self->_clientName];
  v10 = [MEMORY[0x1E695DF00] now];
  [activityCopy setSubmitDate:v10];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([activityCopy requestsApplicationLaunch] && objc_msgSend(activityCopy, "keepsPrevious"))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = selfCopy->_submittedActivities;
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
          if (([v16 requestsApplicationLaunch] & 1) != 0 && objc_msgSend(v16, "isIdenticalLaunchTo:", activityCopy))
          {
            if (os_log_type_enabled(selfCopy->_dasFrameworkLog, OS_LOG_TYPE_ERROR))
            {
              [_DASScheduler submitActivity:inGroup:error:];
            }

            if (error)
            {
              *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"_DASActivitySchedulerErrorDomain" code:5 userInfo:&unk_1F2ED4930];
            }

            objc_sync_exit(selfCopy);
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

  objc_sync_exit(selfCopy);

  dasFrameworkLog = [(_DASScheduler *)selfCopy dasFrameworkLog];
  if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = activityCopy;
    _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "SUBMITTING: %{public}@", &buf, 0xCu);
  }

  v18 = +[_DASSubmissionRateLimiter sharedLimiter];
  [v18 trackActivity:activityCopy];

  v19 = selfCopy;
  objc_sync_enter(v19);
  submittedActivities = v19->_submittedActivities;
  uuid = [activityCopy uuid];
  [(NSMutableDictionary *)submittedActivities setObject:activityCopy forKeyedSubscript:uuid];

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
  currentConnection = [(_DASScheduler *)v19 currentConnection];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __46___DASScheduler_submitActivity_inGroup_error___block_invoke;
  v41[3] = &unk_1E7C8F7B8;
  v43 = &v45;
  v41[4] = v19;
  v23 = activityCopy;
  v42 = v23;
  p_buf = &buf;
  v24 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v41];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __46___DASScheduler_submitActivity_inGroup_error___block_invoke_340;
  v36 = &unk_1E7C8F7E0;
  v39 = &v45;
  v37 = v19;
  v25 = v23;
  v38 = v25;
  v40 = &buf;
  [v24 submitActivity:v25 inGroup:groupCopy withHandler:&v33];

  if ((v46[3] & 1) == 0)
  {
    v26 = v19;
    objc_sync_enter(v26);
    v27 = v19->_submittedActivities;
    uuid2 = [v25 uuid];
    [(NSMutableDictionary *)v27 removeObjectForKey:uuid2];

    objc_sync_exit(v26);
  }

  if (error)
  {
    v29 = *(*(&buf + 1) + 40);
    if (v29)
    {
      *error = v29;
    }
  }

  v30 = *(v46 + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v45, 8);
LABEL_21:

  v31 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

- (BOOL)deferActivities:(id)activities
{
  activitiesCopy = activities;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33___DASScheduler_deferActivities___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33___DASScheduler_deferActivities___block_invoke_342;
  v8[3] = &unk_1E7C8F830;
  v8[4] = &v10;
  [v6 deferActivities:activitiesCopy withHandler:v8];

  LOBYTE(currentConnection) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return currentConnection;
}

- (NSMutableDictionary)submittedActivities
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36___DASScheduler_submittedActivities__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41___DASScheduler_delayedRunningActivities__block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v5 = v3;
  v15 = v5;
  v6 = [currentConnection remoteObjectProxyWithErrorHandler:v14];
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34___DASScheduler_runningActivities__block_invoke;
  v10[3] = &unk_1E7C8F880;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [remoteObjectProxy runningActivitiesWithHandler:v10];

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
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39___DASScheduler_runningGroupActivities__block_invoke;
  v10[3] = &unk_1E7C8F880;
  v12 = &v13;
  v6 = v3;
  v11 = v6;
  [remoteObjectProxy runningGroupActivitiesWithHandler:v10];

  v7 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v6, v7);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)forceRunActivities:(id)activities
{
  activitiesCopy = activities;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___DASScheduler_forceRunActivities___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 forceRunActivities:activitiesCopy];
}

- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities
{
  activitiesCopy = activities;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53___DASScheduler_runActivitiesWithUrgency_activities___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v8 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 runActivitiesWithUrgency:urgency activities:activitiesCopy];
}

- (id)currentPredictions
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = MEMORY[0x1E695E0F8];
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35___DASScheduler_currentPredictions__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
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

- (id)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data
{
  filterCopy = filter;
  dataCopy = data;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = MEMORY[0x1E695E0F8];
  currentConnection = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke;
  v15[3] = &unk_1E7C8F808;
  v15[4] = self;
  v11 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57___DASScheduler_currentAllocations_timeFilter_bgsqlData___block_invoke_349;
  v14[3] = &unk_1E7C8F8D0;
  v14[4] = self;
  v14[5] = &v16;
  [v11 currentAllocations:allocations timeFilter:filterCopy bgsqlData:dataCopy withHandler:v14];

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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27___DASScheduler_statistics__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
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

- (id)inspect:(id)inspect
{
  inspectCopy = inspect;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25___DASScheduler_inspect___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __25___DASScheduler_inspect___block_invoke_353;
  v9[3] = &unk_1E7C8F430;
  v9[4] = &v11;
  [v6 inspect:inspectCopy withHandler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)resubmitRunningTasks:(id)tasks
{
  tasksCopy = tasks;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38___DASScheduler_resubmitRunningTasks___block_invoke;
  v11 = &unk_1E7C8F858;
  selfCopy = self;
  v13 = tasksCopy;
  v6 = tasksCopy;
  v7 = [currentConnection remoteObjectProxyWithErrorHandler:&v8];
  [v7 resubmitRunningTasks:{v6, v8, v9, v10, v11, selfCopy}];
}

- (void)forceResetOfResultIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___DASScheduler_forceResetOfResultIdentifier___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 forceResetOfResultIdentifier:identifierCopy];
}

- (id)queryStatusOfResultIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___DASScheduler_queryStatusOfResultIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = identifierCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (id)queryDependenciesOfTaskIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51___DASScheduler_queryDependenciesOfTaskIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = identifierCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27___DASScheduler_allBudgets__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
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

- (double)balanceForBudgetWithName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DASScheduler_balanceForBudgetWithName___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = nameCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (void)setBalance:(double)balance forBudgetWithName:(id)name
{
  nameCopy = name;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __46___DASScheduler_setBalance_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  selfCopy = self;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 setBalance:v8 forBudgetWithName:{balance, v10, v11, v12, v13, selfCopy}];
}

- (void)decrementBy:(double)by forBudgetWithName:(id)name
{
  nameCopy = name;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___DASScheduler_decrementBy_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  selfCopy = self;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 decrementBy:v8 forBudgetWithName:{by, v10, v11, v12, v13, selfCopy}];
}

- (void)setCapacity:(double)capacity forBudgetWithName:(id)name
{
  nameCopy = name;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___DASScheduler_setCapacity_forBudgetWithName___block_invoke;
  v13 = &unk_1E7C8F858;
  selfCopy = self;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v10];
  [v9 setCapacity:v8 forBudgetWithName:{capacity, v10, v11, v12, v13, selfCopy}];
}

- (id)policies
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __25___DASScheduler_policies__block_invoke;
  v8[3] = &unk_1E7C8F808;
  v8[4] = self;
  v4 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v8];
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

- (id)evaluatePolicies:(id)policies
{
  policiesCopy = policies;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34___DASScheduler_evaluatePolicies___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = policiesCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (BOOL)evaluateAllActivitiesWithHandle:(id)handle
{
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke;
  v9[3] = &unk_1E7C8F948;
  v9[4] = self;
  v9[5] = &v10;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___DASScheduler_evaluateAllActivitiesWithHandle___block_invoke_361;
  v8[3] = &unk_1E7C8F970;
  v8[4] = self;
  v8[5] = &v10;
  [v6 evaluateAllActivities:handleCopy handler:v8];

  LOBYTE(self) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return self;
}

- (id)runProceedableActivities:(id)activities
{
  activitiesCopy = activities;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42___DASScheduler_runProceedableActivities___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = activitiesCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
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

- (id)blockingPoliciesWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48___DASScheduler_blockingPoliciesWithParameters___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48___DASScheduler_blockingPoliciesWithParameters___block_invoke_363;
  v9[3] = &unk_1E7C8F430;
  v9[4] = &v11;
  [v6 blockingPoliciesWithParameters:parametersCopy handler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (id)activityContainsOverrides:(id)overrides
{
  overridesCopy = overrides;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___DASScheduler_activityContainsOverrides___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43___DASScheduler_activityContainsOverrides___block_invoke_364;
  v9[3] = &unk_1E7C8F8A8;
  v9[4] = &v11;
  [v6 activityContainsOverrides:overridesCopy handler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)submitRateLimitConfiguration:(id)configuration
{
  configurationCopy = configuration;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___DASScheduler_submitRateLimitConfiguration___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46___DASScheduler_submitRateLimitConfiguration___block_invoke_367;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  [v6 submitRateLimitConfiguration:v7 handler:v8];
}

- (void)pauseWithParameters:(id)parameters
{
  parametersCopy = parameters;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37___DASScheduler_pauseWithParameters___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37___DASScheduler_pauseWithParameters___block_invoke_368;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = parametersCopy;
  v7 = parametersCopy;
  [v6 pauseWithParameters:v7 handler:v8];
}

- (void)addPauseExceptParameter:(id)parameter
{
  parameterCopy = parameter;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41___DASScheduler_addPauseExceptParameter___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41___DASScheduler_addPauseExceptParameter___block_invoke_369;
  v8[3] = &unk_1E7C8F998;
  v8[4] = self;
  v9 = parameterCopy;
  v7 = parameterCopy;
  [v6 addPauseExceptParameter:v7 handler:v8];
}

- (void)runActivitiesWithDelayedStart:(id)start
{
  v49 = *MEMORY[0x1E69E9840];
  startCopy = start;
  v5 = [MEMORY[0x1E695DFA8] set];
  v32 = [startCopy mutableCopy];
  v33 = [MEMORY[0x1E695DFA8] set];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = startCopy;
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
        submittedActivities = selfCopy->_submittedActivities;
        uuid = [v10 uuid];
        v13 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:uuid];

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
          v15 = selfCopy->_submittedActivities;
          uuid2 = [v10 uuid];
          [(NSMutableDictionary *)v15 removeObjectForKey:uuid2];
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
        delayedStartTasks = selfCopy->_delayedStartTasks;
        uuid3 = [v20 uuid];
        [(NSMutableDictionary *)delayedStartTasks setObject:v20 forKeyedSubscript:uuid3];

        runQueue = [v20 handlerQueue];
        v24 = runQueue;
        if (!runQueue)
        {
          runQueue = selfCopy->_runQueue;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __47___DASScheduler_runActivitiesWithDelayedStart___block_invoke;
        block[3] = &unk_1E7C8F1A0;
        block[4] = selfCopy;
        block[5] = v20;
        dispatch_async(runQueue, block);
      }

      v17 = [v30 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v17);
  }

  objc_sync_exit(selfCopy);
  if ([v32 count])
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
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
    [(_DASScheduler *)selfCopy runActivities:v33];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)runActivities:(id)activities
{
  v71 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [MEMORY[0x1E695DFA8] set];
  v42 = [activitiesCopy mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = activitiesCopy;
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
        submittedActivities = selfCopy->_submittedActivities;
        uuid = [v10 uuid];
        v13 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:uuid];

        if (v13)
        {
          [v5 addObject:v13];
          [v42 removeObject:v13];
          v14 = selfCopy->_submittedActivities;
          uuid2 = [v10 uuid];
          [(NSMutableDictionary *)v14 removeObjectForKey:uuid2];
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
        startedActivities = selfCopy->_startedActivities;
        uuid3 = [v19 uuid];
        [(NSMutableDictionary *)startedActivities setObject:v19 forKeyedSubscript:uuid3];

        handlerQueue = [v19 handlerQueue];
        runQueue = handlerQueue;
        if (!handlerQueue)
        {
          runQueue = selfCopy->_runQueue;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __31___DASScheduler_runActivities___block_invoke;
        block[3] = &unk_1E7C8F9E8;
        block[4] = v19;
        v53 = date;
        v54 = selfCopy;
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
    backgroundTaskSchedulerDelegate = [(_DASScheduler *)selfCopy backgroundTaskSchedulerDelegate];
    [backgroundTaskSchedulerDelegate scheduler:selfCopy handleLaunchForActivities:v24];
  }

  [v25 minusSet:v24];

  objc_sync_exit(selfCopy);
  if ([v25 count])
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
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

          [(_DASScheduler *)selfCopy activityCanceled:*(*(&v44 + 1) + 8 * m)];
        }

        v36 = [v35 countByEnumeratingWithState:&v44 objects:v63 count:16];
      }

      while (v36);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)suspendActivities:(id)activities
{
  v52 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = [activitiesCopy mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = activitiesCopy;
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
        startedActivities = selfCopy->_startedActivities;
        uuid = [v12 uuid];
        v15 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:uuid];

        if (v15)
        {
          [v5 removeObject:v15];
          suspendRequestDate = [v15 suspendRequestDate];
          v17 = suspendRequestDate == 0;

          if (v17)
          {
            handlerQueue = [v15 handlerQueue];
            runQueue = handlerQueue;
            if (!handlerQueue)
            {
              runQueue = selfCopy->_runQueue;
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __35___DASScheduler_suspendActivities___block_invoke;
            block[3] = &unk_1E7C8F9E8;
            v39 = v15;
            v40 = selfCopy;
            v41 = v12;
            dispatch_async(runQueue, block);

            dasFrameworkLog = v39;
          }

          else
          {
            dasFrameworkLog = [(_DASScheduler *)selfCopy dasFrameworkLog];
            if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v33;
              v47 = v15;
              _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "Already requested suspension for %{public}@", buf, 0xCu);
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
    backgroundTaskSchedulerDelegate = [(_DASScheduler *)selfCopy backgroundTaskSchedulerDelegate];
    [backgroundTaskSchedulerDelegate scheduler:selfCopy willExpireActivities:v21];
  }

  [v22 minusSet:v21];

  objc_sync_exit(selfCopy);
  if ([v22 count])
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
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

- (void)cancelActivities:(id)activities
{
  v40 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = [activitiesCopy mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = activitiesCopy;
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
        submittedActivities = selfCopy->_submittedActivities;
        uuid = [v11 uuid];
        v14 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:uuid];

        if (v14)
        {
          goto LABEL_9;
        }

        startedActivities = selfCopy->_startedActivities;
        uuid2 = [v11 uuid];
        v14 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:uuid2];

        if (v14 || (v17 = selfCopy->_delayedStartTasks, [v11 uuid], v18 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v17, "objectForKeyedSubscript:", v18), v14 = objc_claimAutoreleasedReturnValue(), v18, v14))
        {
LABEL_9:
          v19 = selfCopy->_submittedActivities;
          uuid3 = [v11 uuid];
          [(NSMutableDictionary *)v19 removeObjectForKey:uuid3];

          v21 = selfCopy->_startedActivities;
          uuid4 = [v11 uuid];
          [(NSMutableDictionary *)v21 removeObjectForKey:uuid4];

          delayedStartTasks = selfCopy->_delayedStartTasks;
          uuid5 = [v11 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:uuid5];
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

  objc_sync_exit(selfCopy);
  if ([v5 count])
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
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

- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason
{
  v41 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = [reasonCopy mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = reasonCopy;
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
        submittedActivities = selfCopy->_submittedActivities;
        uuid = [v12 uuid];
        v15 = [(NSMutableDictionary *)submittedActivities objectForKeyedSubscript:uuid];

        if (v15)
        {
          goto LABEL_9;
        }

        startedActivities = selfCopy->_startedActivities;
        uuid2 = [v12 uuid];
        v15 = [(NSMutableDictionary *)startedActivities objectForKeyedSubscript:uuid2];

        if (v15 || (v18 = selfCopy->_delayedStartTasks, [v12 uuid], v19 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v18, "objectForKeyedSubscript:", v19), v15 = objc_claimAutoreleasedReturnValue(), v19, v15))
        {
LABEL_9:
          v20 = selfCopy->_submittedActivities;
          uuid3 = [v12 uuid];
          [(NSMutableDictionary *)v20 removeObjectForKey:uuid3];

          v22 = selfCopy->_startedActivities;
          uuid4 = [v12 uuid];
          [(NSMutableDictionary *)v22 removeObjectForKey:uuid4];

          delayedStartTasks = selfCopy->_delayedStartTasks;
          uuid5 = [v12 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:uuid5];
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

  objc_sync_exit(selfCopy);
  if ([v6 count])
  {
    dasFrameworkLog = selfCopy->_dasFrameworkLog;
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

- (BOOL)wasActivityAllowedToRun:(id)run
{
  runCopy = run;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delayedStartTasks = selfCopy->_delayedStartTasks;
  uuid = [runCopy uuid];
  v8 = [(NSMutableDictionary *)delayedStartTasks objectForKeyedSubscript:uuid];
  LOBYTE(delayedStartTasks) = v8 != 0;

  objc_sync_exit(selfCopy);
  return delayedStartTasks;
}

- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies
{
  v14 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  policiesCopy = policies;
  dasFrameworkLog = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = activityCopy;
    v12 = 2112;
    v13 = policiesCopy;
    _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "Activity: %@ ignoring policies: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)activity:(id)activity blockedOnPolicies:(id)policies
{
  v14 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  policiesCopy = policies;
  dasFrameworkLog = [(_DASScheduler *)self dasFrameworkLog];
  if (os_log_type_enabled(dasFrameworkLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = activityCopy;
    v12 = 2112;
    v13 = policiesCopy;
    _os_log_impl(&dword_1B6E2F000, dasFrameworkLog, OS_LOG_TYPE_DEFAULT, "Activity: %@ blocked on policies: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setMinimumBackgroundFetchInterval:(double)interval forApp:(id)app
{
  appCopy = app;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58___DASScheduler_setMinimumBackgroundFetchInterval_forApp___block_invoke;
  v9[3] = &unk_1E7C8F808;
  v9[4] = self;
  v8 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  [v8 setMinimumBackgroundFetchInterval:appCopy forApp:interval];
}

- (void)endLaunchWithReason:(id)reason forApp:(id)app
{
  appCopy = app;
  reasonCopy = reason;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy endLaunchWithReason:reasonCopy forApp:appCopy];
}

- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler
{
  handlerCopy = handler;
  appCopy = app;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy backgroundAppRefreshEnabledForApp:appCopy withHandler:handlerCopy];
}

- (void)disableAppRefreshForApps:(id)apps
{
  appsCopy = apps;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42___DASScheduler_disableAppRefreshForApps___block_invoke;
  v7[3] = &unk_1E7C8F808;
  v7[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 disableAppRefreshForApps:appsCopy];
}

- (id)submitTaskRequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = requestCopy;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Submitting task request activity: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  date = [MEMORY[0x1E695DF00] date];
  [requestCopy setSubmitDate:date];

  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __35___DASScheduler_submitTaskRequest___block_invoke;
  v13[3] = &unk_1E7C8F948;
  v13[4] = self;
  v13[5] = &buf;
  v8 = [currentConnection remoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35___DASScheduler_submitTaskRequest___block_invoke_376;
  v12[3] = &unk_1E7C8F790;
  v12[4] = &buf;
  [v8 submitTaskRequest:requestCopy withHandler:v12];

  v9 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)getPendingTaskRequestsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61___DASScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7C8FA10;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [currentConnection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61___DASScheduler_getPendingTaskRequestsWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7C8FA38;
  v10 = v6;
  v8 = v6;
  [v7 getPendingTaskRequestsWithCompletionHandler:v9];
}

- (void)cancelTaskRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49___DASScheduler_cancelTaskRequestWithIdentifier___block_invoke_377;
  v8[3] = &unk_1E7C8F1A0;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [v6 cancelTaskRequestWithIdentifier:v7 completionHandler:v8];
}

- (void)setBackgroundTasksSchedulerDelegate:(id)delegate
{
  objc_storeWeak(&self->_backgroundTaskSchedulerDelegate, delegate);

  [(_DASScheduler *)self connectToDaemon:0];
}

- (void)connectToDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  v12 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = daemonCopy;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to daemon; reconnect: %d", buf, 8u);
  }

  if (daemonCopy)
  {
    [(_DASScheduler *)self xpcConnection];
  }

  else
  {
    [(_DASScheduler *)self currentConnection];
  }
  v6 = ;
  remoteObjectProxy = [v6 remoteObjectProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33___DASScheduler_connectToDaemon___block_invoke;
  v9[3] = &unk_1E7C8F0B0;
  v9[4] = self;
  [remoteObjectProxy establishConnection:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)handleLaunchFromDaemonForActivities:(id)activities
{
  v10 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = activitiesCopy;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Handling launch from daemon for activities: %@", &v8, 0xCu);
  }

  backgroundTaskSchedulerDelegate = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];
  [backgroundTaskSchedulerDelegate scheduler:self handleLaunchForActivities:activitiesCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)willExpireBGTaskActivities:(id)activities
{
  v10 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = activitiesCopy;
    _os_log_impl(&dword_1B6E2F000, v5, OS_LOG_TYPE_DEFAULT, "Will expire BGTask activities: %@", &v8, 0xCu);
  }

  backgroundTaskSchedulerDelegate = [(_DASScheduler *)self backgroundTaskSchedulerDelegate];
  [backgroundTaskSchedulerDelegate scheduler:self willExpireActivities:activitiesCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateOngoingTask:(id)task
{
  taskCopy = task;
  if (taskCopy)
  {
    currentConnection = [(_DASScheduler *)self currentConnection];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35___DASScheduler_updateOngoingTask___block_invoke;
    v9[3] = &unk_1E7C8F808;
    v9[4] = self;
    v6 = [currentConnection remoteObjectProxyWithErrorHandler:v9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___DASScheduler_updateOngoingTask___block_invoke_386;
    v7[3] = &unk_1E7C8F1A0;
    v7[4] = self;
    v8 = taskCopy;
    [v6 updateOngoingTask:v8 completionHandler:v7];
  }
}

- (void)updateProgress:(id)progress forOngoingTask:(id)task
{
  progressCopy = progress;
  taskCopy = task;
  v8 = taskCopy;
  if (progressCopy)
  {
    [taskCopy setProgress:progressCopy];
    currentConnection = [(_DASScheduler *)self currentConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47___DASScheduler_updateProgress_forOngoingTask___block_invoke;
    v14[3] = &unk_1E7C8F808;
    v14[4] = self;
    v10 = [currentConnection remoteObjectProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47___DASScheduler_updateProgress_forOngoingTask___block_invoke_387;
    v11[3] = &unk_1E7C8F9E8;
    v11[4] = self;
    v12 = progressCopy;
    v13 = v8;
    [v10 updateProgressForOngoingTask:v13 completionHandler:v11];
  }
}

- (void)continuedProcessingDeviceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___DASScheduler_continuedProcessingDeviceCapabilities___block_invoke;
  v10[3] = &unk_1E7C8F808;
  v10[4] = self;
  v6 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___DASScheduler_continuedProcessingDeviceCapabilities___block_invoke_388;
  v8[3] = &unk_1E7C8FA60;
  v9 = capabilitiesCopy;
  v7 = capabilitiesCopy;
  [v6 continuedProcessingDeviceCapabilities:v8];
}

- (BOOL)acknowledgeSystemTaskLaunchWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65___DASScheduler_acknowledgeSystemTaskLaunchWithIdentifier_error___block_invoke;
  v17[3] = &unk_1E7C8FA88;
  v17[4] = self;
  v8 = identifierCopy;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
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

  if (error)
  {
    *error = v22[5];
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)identifier retryAfter:(double)after
{
  identifierCopy = identifier;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke;
  v13[3] = &unk_1E7C8F858;
  v13[4] = self;
  v8 = identifierCopy;
  v14 = v8;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74___DASScheduler_acknowledgeSystemTaskSuspensionWithIdentifier_retryAfter___block_invoke_391;
  v11[3] = &unk_1E7C8F1A0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 acknowledgeSystemTaskSuspensionWithIdentifier:v10 retryAfter:v11 completionHandler:after];
}

- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96___DASScheduler_handleClientLedSystemTaskExpirationWithIdentifier_retryAfter_completionHandler___block_invoke;
  v14[3] = &unk_1E7C8FAD8;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = identifierCopy;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  [v13 handleClientLedSystemTaskExpirationWithIdentifier:v12 retryAfter:v11 completionHandler:after];
}

- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___DASScheduler_handleClientFailedtoExpireTaskWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  v11 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 handleClientFailedtoExpireTaskWithIdentifier:v10 completionHandler:v9];
}

- (void)submitTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  descriptorCopy = descriptor;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___DASScheduler_submitTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 submitTaskRequestWithIdentifier:v13 descriptor:descriptorCopy completionHandler:v12];
}

- (void)updateTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  descriptorCopy = descriptor;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___DASScheduler_updateTaskRequestWithIdentifier_descriptor_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 updateTaskRequestWithIdentifier:v13 descriptor:descriptorCopy completionHandler:v12];
}

- (void)completeSystemTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke;
  v11[3] = &unk_1E7C8F858;
  v11[4] = self;
  v6 = identifierCopy;
  v12 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___DASScheduler_completeSystemTaskWithIdentifier___block_invoke_392;
  v9[3] = &unk_1E7C8F1A0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 completeSystemTaskWithIdentifier:v8 completionHandler:v9];
}

- (void)unregisterSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___DASScheduler_unregisterSystemTaskWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  v11 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 unregisterSystemTaskWithIdentifier:v10 completionHandler:v9];
}

- (void)resumeTaskSchedulingWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___DASScheduler_resumeTaskSchedulingWithIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_1E7C8FAD8;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = identifierCopy;
  v11 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  [v11 resumeTaskSchedulingWithIdentifier:v10 completionHandler:v9];
}

- (void)reportSystemTaskWithIdentifier:(id)identifier consumedResults:(id)results completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  resultsCopy = results;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___DASScheduler_reportSystemTaskWithIdentifier_consumedResults_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 reportSystemTaskWithIdentifier:v13 consumedResults:resultsCopy completionHandler:v12];
}

- (void)reportSystemTaskWithIdentifier:(id)identifier producedResults:(id)results completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  resultsCopy = results;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___DASScheduler_reportSystemTaskWithIdentifier_producedResults_completionHandler___block_invoke;
  v15[3] = &unk_1E7C8FAD8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v15];
  [v14 reportSystemTaskWithIdentifier:v13 producedResults:resultsCopy completionHandler:v12];
}

- (void)resetResultsForIdentifier:(id)identifier byTaskWithIdentifier:(id)withIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82___DASScheduler_resetResultsForIdentifier_byTaskWithIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_1E7C8FB00;
  v23[4] = self;
  v12 = identifierCopy;
  v24 = v12;
  v13 = withIdentifierCopy;
  v25 = v13;
  v14 = handlerCopy;
  v26 = v14;
  v15 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v23];
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

- (void)reportTaskWorkloadProgress:(id)progress target:(unint64_t)target completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory completionHandler:(id)handler
{
  handlerCopy = handler;
  subCategoryCopy = subCategory;
  progressCopy = progress;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __100___DASScheduler_reportTaskWorkloadProgress_target_completed_category_subCategory_completionHandler___block_invoke;
  v23 = &unk_1E7C8FB50;
  selfCopy = self;
  v25 = handlerCopy;
  v18 = handlerCopy;
  v19 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v20];
  [v19 reportTaskWorkloadProgress:progressCopy target:target completed:completed category:category subCategory:subCategoryCopy completionHandler:{v18, v20, v21, v22, v23, selfCopy}];
}

- (void)resubmitRunningActivities:(id)activities
{
  v25 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  if ([activitiesCopy count])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = activitiesCopy;
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
          delayedStartTasks = selfCopy->_delayedStartTasks;
          uuid = [v10 uuid];
          [(NSMutableDictionary *)delayedStartTasks removeObjectForKey:uuid];

          submittedActivities = selfCopy->_submittedActivities;
          uuid2 = [v10 uuid];
          [(NSMutableDictionary *)submittedActivities removeObjectForKey:uuid2];

          startedActivities = selfCopy->_startedActivities;
          uuid3 = [v10 uuid];
          [(NSMutableDictionary *)startedActivities setObject:v10 forKeyedSubscript:uuid3];
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    objc_sync_exit(selfCopy);
    xpcConnection = [(_DASScheduler *)selfCopy xpcConnection];
    remoteObjectProxy = [xpcConnection remoteObjectProxy];
    [remoteObjectProxy startedActivities:v6];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date error:(id *)error
{
  dateCopy = date;
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke;
  v16[3] = &unk_1E7C8FB78;
  v16[4] = self;
  v16[5] = &v21;
  v16[6] = &v17;
  v12 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65___DASScheduler_reportFeatureCheckpoint_forFeature_atDate_error___block_invoke_400;
  v15[3] = &unk_1E7C8FBA0;
  v15[4] = self;
  v15[5] = &v21;
  v15[6] = &v17;
  [v12 reportFeatureCheckpoint:checkpoint forFeature:feature atDate:dateCopy withHandler:v15];

  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (BOOL)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category error:(id *)error
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke;
  v14[3] = &unk_1E7C8FB78;
  v14[4] = self;
  v14[5] = &v19;
  v14[6] = &v15;
  v10 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___DASScheduler_reportSystemWorkload_ofCategory_error___block_invoke_401;
  v13[3] = &unk_1E7C8FBA0;
  v13[4] = self;
  v13[5] = &v19;
  v13[6] = &v15;
  [v10 reportSystemWorkload:workload ofCategory:category withHandler:v13];

  if (error)
  {
    *error = v20[5];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (BOOL)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task error:(id *)error
{
  taskCopy = task;
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke;
  v14[3] = &unk_1E7C8FB78;
  v14[4] = self;
  v14[5] = &v19;
  v14[6] = &v15;
  v10 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54___DASScheduler_reportCustomCheckpoint_forTask_error___block_invoke_402;
  v13[3] = &unk_1E7C8FBA0;
  v13[4] = self;
  v13[5] = &v19;
  v13[6] = &v15;
  [v10 reportCustomCheckpoint:checkpoint forTask:taskCopy withHandler:v13];

  if (error)
  {
    *error = v20[5];
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v11;
}

- (BOOL)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  qosCopy = qos;
  valueCopy = value;
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke;
  v26[3] = &unk_1E7C8FB78;
  v26[4] = self;
  v26[5] = &v31;
  v26[6] = &v27;
  v22 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v26];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128___DASScheduler_reportThroughputMetricsForIdentifier_taskName_itemCount_totalDuration_qos_workloadCategory_expectedValue_error___block_invoke_403;
  v25[3] = &unk_1E7C8FBA0;
  v25[4] = self;
  v25[5] = &v31;
  v25[6] = &v27;
  [v22 reportThroughputMetricsForIdentifier:identifierCopy taskName:nameCopy itemCount:count totalDuration:qosCopy qos:category workloadCategory:valueCopy expectedValue:duration withHandler:v25];

  if (error)
  {
    *error = v32[5];
  }

  v23 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v23;
}

- (BOOL)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  completedCopy = completed;
  countCopy = count;
  qosCopy = qos;
  valueCopy = value;
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
  currentConnection = [(_DASScheduler *)self currentConnection];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke;
  v27[3] = &unk_1E7C8FB78;
  v27[4] = self;
  v27[5] = &v32;
  v27[6] = &v28;
  v22 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v27];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __132___DASScheduler_reportProgressMetricsForIdentifier_taskName_itemsCompleted_totalItemCount_qos_workloadCategory_expectedValue_error___block_invoke_404;
  v26[3] = &unk_1E7C8FBA0;
  v26[4] = self;
  v26[5] = &v32;
  v26[6] = &v28;
  [v22 reportProgressMetricsForIdentifier:identifierCopy taskName:nameCopy itemsCompleted:completedCopy totalItemCount:countCopy qos:qosCopy workloadCategory:category expectedValue:valueCopy withHandler:v26];

  if (error)
  {
    *error = v33[5];
  }

  v23 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v23;
}

- (void)activityStartedWithParameters:(id)parameters
{
  parametersCopy = parameters;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy activityStartedWithParameters:parametersCopy];
}

- (void)activityStoppedWithParameters:(id)parameters
{
  parametersCopy = parameters;
  currentConnection = [(_DASScheduler *)self currentConnection];
  remoteObjectProxy = [currentConnection remoteObjectProxy];
  [remoteObjectProxy activityStoppedWithParameters:parametersCopy];
}

- (void)prewarmApplication:(id)application
{
  applicationCopy = application;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __36___DASScheduler_prewarmApplication___block_invoke;
  v11 = &unk_1E7C8F858;
  selfCopy = self;
  v13 = applicationCopy;
  v6 = applicationCopy;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v8];
  [v7 prewarmApplication:{v6, v8, v9, v10, v11, selfCopy}];
}

- (void)prewarmSuspendWithHandler:(id)handler
{
  handlerCopy = handler;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __43___DASScheduler_prewarmSuspendWithHandler___block_invoke;
  v11 = &unk_1E7C8FB50;
  selfCopy = self;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:&v8];
  [v7 prewarmSuspendWithHandler:{v6, v8, v9, v10, v11, selfCopy}];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x1E696B0D0];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_1F2EDB780];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (BOOL)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke;
  v18[3] = &unk_1E7C8F858;
  v18[4] = self;
  v9 = nameCopy;
  v19 = v9;
  v10 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59___DASScheduler_deleteLimitForActivity_forLimiterWithName___block_invoke_405;
  v14[3] = &unk_1E7C8FBC8;
  v14[4] = self;
  v11 = activityCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v20;
  [v10 deleteLimitForActivity:v11 forLimiterWithName:v12 handler:v14];

  LOBYTE(currentConnection) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return currentConnection;
}

- (BOOL)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v11 = nameCopy;
  v21 = v11;
  v12 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60___DASScheduler_updateLimit_forActivity_forLimiterWithName___block_invoke_406;
  v16[3] = &unk_1E7C8FBC8;
  v16[4] = self;
  v13 = activityCopy;
  v17 = v13;
  v14 = v11;
  v18 = v14;
  v19 = &v22;
  [v12 updateLimit:v13 forActivity:v14 forLimiterWithName:v16 handler:limit];

  LOBYTE(currentConnection) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return currentConnection;
}

- (id)getLimiterResponseForActivity:(id)activity
{
  activityCopy = activity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47___DASScheduler_getLimiterResponseForActivity___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = activityCopy;
  v15 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
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

- (double)getRuntimeLimit:(id)limit
{
  limitCopy = limit;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0xBFF0000000000000;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __33___DASScheduler_getRuntimeLimit___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = limitCopy;
  v15 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
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

- (id)getElapsedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data
{
  runtimesCopy = runtimes;
  filterCopy = filter;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = runtimesCopy;
  v21 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57___DASScheduler_getElapsedRuntimes_timeFilter_bgsqlData___block_invoke_409;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getElapsedRuntimes:v14 timeFilter:filterCopy bgsqlData:dataCopy handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getEstimatedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data
{
  runtimesCopy = runtimes;
  filterCopy = filter;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = runtimesCopy;
  v21 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59___DASScheduler_getEstimatedRuntimes_timeFilter_bgsqlData___block_invoke_410;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getEstimatedRuntimes:v14 timeFilter:filterCopy bgsqlData:dataCopy handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getConditionsPenalties:(id)penalties
{
  penaltiesCopy = penalties;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40___DASScheduler_getConditionsPenalties___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = penaltiesCopy;
  v15 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
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

- (id)getContentionPenalties:(id)penalties
{
  penaltiesCopy = penalties;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40___DASScheduler_getContentionPenalties___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = penaltiesCopy;
  v15 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
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

- (id)getFeatureTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data
{
  timelinesCopy = timelines;
  filterCopy = filter;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = timelinesCopy;
  v21 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58___DASScheduler_getFeatureTimelines_timeFilter_bgsqlData___block_invoke_413;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getFeatureTimelines:v14 timeFilter:filterCopy bgsqlData:dataCopy handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getActivityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data
{
  timelinesCopy = timelines;
  filterCopy = filter;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = timelinesCopy;
  v21 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59___DASScheduler_getActivityTimelines_timeFilter_bgsqlData___block_invoke_414;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getActivityTimelines:v14 timeFilter:filterCopy bgsqlData:dataCopy handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getEligibilityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data
{
  timelinesCopy = timelines;
  filterCopy = filter;
  dataCopy = data;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke;
  v17[3] = &unk_1E7C8F858;
  v17[4] = self;
  v12 = timelinesCopy;
  v18 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62___DASScheduler_getEligibilityTimelines_timeFilter_bgsqlData___block_invoke_415;
  v16[3] = &unk_1E7C8F8D0;
  v16[4] = self;
  v16[5] = &v19;
  [v13 getEligibilityTimelines:v12 timeFilter:filterCopy bgsqlData:dataCopy handler:v16];

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

- (id)getDeviceConditionTimelines:(id)timelines bgsqlData:(id)data
{
  timelinesCopy = timelines;
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55___DASScheduler_getDeviceConditionTimelines_bgsqlData___block_invoke_416;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getDeviceConditionTimelines:timelinesCopy bgsqlData:dataCopy handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data
{
  metricsCopy = metrics;
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___DASScheduler_getSchedulerEfficiencyMetrics_bgsqlData___block_invoke_417;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getSchedulerEfficiencyMetrics:metricsCopy bgsqlData:dataCopy handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data
{
  metricsCopy = metrics;
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75___DASScheduler_getOvernightIntensiveSchedulerEfficiencyMetrics_bgsqlData___block_invoke_418;
  v12[3] = &unk_1E7C8F8D0;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getOvernightIntensiveSchedulerEfficiencyMetrics:metricsCopy bgsqlData:dataCopy handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getInstallTimeline:(id)timeline bgsqlData:(id)data
{
  timelineCopy = timeline;
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46___DASScheduler_getInstallTimeline_bgsqlData___block_invoke_419;
  v12[3] = &unk_1E7C8F478;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getInstallTimeline:timelineCopy bgsqlData:dataCopy handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getBuddyEvents:(id)events bgsqlData:(id)data
{
  eventsCopy = events;
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke;
  v13[3] = &unk_1E7C8F808;
  v13[4] = self;
  v9 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42___DASScheduler_getBuddyEvents_bgsqlData___block_invoke_420;
  v12[3] = &unk_1E7C8F478;
  v12[4] = self;
  v12[5] = &v14;
  [v9 getBuddyEvents:eventsCopy bgsqlData:dataCopy handler:v12];

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)getEstimatedMADCompletionTimes:(id)times endDate:(id)date bgsqlData:(id)data
{
  timesCopy = times;
  dateCopy = date;
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke;
  v20[3] = &unk_1E7C8F858;
  v20[4] = self;
  v12 = timesCopy;
  v21 = v12;
  v13 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66___DASScheduler_getEstimatedMADCompletionTimes_endDate_bgsqlData___block_invoke_421;
  v17[3] = &unk_1E7C8FC40;
  v17[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = &v22;
  [v13 getEstimatedMADCompletionTimes:v14 endDate:dateCopy bgsqlData:dataCopy handler:v17];

  v15 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v15;
}

- (id)getSortedCandidateActivities:(id)activities
{
  activitiesCopy = activities;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46___DASScheduler_getSortedCandidateActivities___block_invoke;
  v14[3] = &unk_1E7C8F858;
  v14[4] = self;
  v6 = activitiesCopy;
  v15 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
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

- (BOOL)triggerScoreEvaluationAndRunActivities:(id)activities
{
  activitiesCopy = activities;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  currentConnection = [(_DASScheduler *)self currentConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke;
  v13[3] = &unk_1E7C8F858;
  v13[4] = self;
  v6 = activitiesCopy;
  v14 = v6;
  v7 = [currentConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56___DASScheduler_triggerScoreEvaluationAndRunActivities___block_invoke_423;
  v10[3] = &unk_1E7C8FC68;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v12 = &v15;
  [v7 triggerScoreEvaluationAndRunActivities:v8 handler:v10];

  LOBYTE(currentConnection) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return currentConnection;
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