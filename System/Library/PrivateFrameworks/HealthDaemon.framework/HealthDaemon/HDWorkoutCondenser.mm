@interface HDWorkoutCondenser
+ (BOOL)_condenseAndUpdateWorkout:(void *)workout configuration:(void *)configuration error:;
+ (BOOL)coalesceCumulativeDatumsInDatumsCollection:(id)collection;
+ (BOOL)coalesceHeartRateDatumsInDatumsCollection:(id)collection;
+ (id)_insertValuesForSeries:(void *)series quantityType:(void *)type startTime:(void *)time values:(void *)values provenance:(void *)provenance configuration:(void *)configuration transaction:(void *)transaction countOut:(uint64_t)self0 error:;
+ (id)_workoutEntitiesRequiringCondensationWithProfile:(uint64_t)profile limit:(char)limit allowRecondensation:(void *)recondensation analyticsAccumulator:(uint64_t)accumulator error:;
+ (id)condensableQuantityTypes;
+ (id)seriesSyncIdentifierForEntity:(id)entity workout:(id)workout transaction:(id)transaction error:(id *)error;
+ (uint64_t)_condenseSamplesWithQuantityType:(void *)type workout:(void *)workout entity:(void *)entity configuration:(void *)configuration transaction:(double *)transaction error:;
+ (uint64_t)_deleteSamplesWithUUIDData:(void *)data configuration:(uint64_t)configuration error:;
+ (uint64_t)_finishSeries:(uint64_t)series quantityType:(void *)type baseMetadata:(void *)metadata workout:(void *)workout UUIDDataToDelete:(void *)delete configuration:(void *)configuration transaction:(void *)transaction error:(void *)error;
+ (void)_predicateForFirstPartyWorkoutSources:(uint64_t)sources error:;
+ (void)_workoutEntitiesRequiringCondensationWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:;
- (BOOL)condenseWorkout:(id)workout error:(id *)error;
- (HDWorkoutCondenser)initWithProfile:(id)profile;
- (id)condensableWorkoutsWithError:(id *)error;
- (id)condensedWorkoutsWithError:(id *)error;
- (void)_performPeriodicActivityWithBatchLimit:(void *)limit completion:;
- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion;
- (void)dealloc;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
@end

@implementation HDWorkoutCondenser

- (HDWorkoutCondenser)initWithProfile:(id)profile
{
  v41 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v36.receiver = self;
  v36.super_class = HDWorkoutCondenser;
  v5 = [(HDWorkoutCondenser *)&v36 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    *&v6->_minimumSeriesSize = xmmword_2291816A0;
    v6->_deletedSamplesThreshold = 30000;
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    features = [behavior features];
    workoutCondensationOnLocking = [features workoutCondensationOnLocking];

    if (workoutCondensationOnLocking)
    {
      objc_initWeak(&location, v6);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __38__HDWorkoutCondenser_initWithProfile___block_invoke;
      aBlock[3] = &unk_278624EB0;
      objc_copyWeak(&v34, &location);
      v14 = _Block_copy(aBlock);
      v15 = objc_alloc(MEMORY[0x277D10B10]);
      v16 = HKLogCondenser();
      daemon2 = [profileCopy daemon];
      systemScheduler = [daemon2 systemScheduler];
      v19 = [v15 initWithName:@"com.apple.healthd.HDWorkoutCondenser-activity" loggingCategory:v16 scheduler:systemScheduler handler:v14 condition:0];
      repeatingBackgroundTask = v6->_repeatingBackgroundTask;
      v6->_repeatingBackgroundTask = v19;

      getRequest = [(HDRepeatingBackgroundTask *)v6->_repeatingBackgroundTask getRequest];
      if (!getRequest)
      {
        getRequest = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:@"com.apple.healthd.HDWorkoutCondenser-activity"];
        [getRequest setRequiresProtectionClass:2];
        [getRequest setInterval:14400.0];
        [getRequest interval];
        [getRequest setMinDurationBetweenInstances:v22 * 0.8];
        [getRequest setPriority:2];
        [getRequest setRequiresNetworkConnectivity:1];
        v23 = v6->_repeatingBackgroundTask;
        v32 = 0;
        [(HDRepeatingBackgroundTask *)v23 submitRequest:getRequest error:&v32];
        v24 = v32;
        if (v24)
        {
          _HKInitializeLogging();
          v25 = HKLogCondenser();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v38 = v6;
            v39 = 2114;
            v40 = v24;
            _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Unable to submitRequest: %{public}@", buf, 0x16u);
          }
        }
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = [HDPeriodicActivity alloc];
      v27 = HKLogCondenser();
      v28 = [(HDPeriodicActivity *)v26 initWithProfile:profileCopy name:@"com.apple.healthd.HDWorkoutCondenser-activity" interval:v6 delegate:v27 loggingCategory:*MEMORY[0x277D86298]];
      periodicActivity = v6->_periodicActivity;
      v6->_periodicActivity = v28;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void __38__HDWorkoutCondenser_initWithProfile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__HDWorkoutCondenser_initWithProfile___block_invoke_2;
  v9[3] = &unk_278624E88;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = v6;
  v10 = v8;
  [(HDWorkoutCondenser *)WeakRetained _performPeriodicActivityWithBatchLimit:v9 completion:?];

  objc_destroyWeak(&v11);
}

void __38__HDWorkoutCondenser_initWithProfile___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HDStringFromPeriodicActivityResult(a2);
  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v13 = 138543874;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: HDRepeatingBackgroundTask performed condensing: %@ : %@", &v13, 0x20u);
    }
  }

  if (a2 <= 3)
  {
    v11 = qword_2291816E8[a2];
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performPeriodicActivityWithBatchLimit:(void *)limit completion:
{
  limitCopy = limit;
  if (self)
  {
    dispatch_assert_queue_not_V2(*(self + 8));
    v6 = *(self + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke;
    block[3] = &unk_278613968;
    block[4] = self;
    dispatch_sync(v6, block);
    _HKInitializeLogging();
    v7 = HKLogCondenser();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogCondenser();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Maintenance operation enqueued", buf, 2u);
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_400;
    v14[3] = &unk_27862E460;
    v14[4] = self;
    v16 = a2;
    v15 = limitCopy;
    v10 = [HDMaintenanceOperation maintenanceOperationWithName:@"Workout Condensing" asynchronousBlock:v14];
    WeakRetained = objc_loadWeakRetained((self + 64));
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v10];
  }
}

- (void)dealloc
{
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDWorkoutCondenser;
  [(HDWorkoutCondenser *)&v3 dealloc];
}

- (void)condenseWorkoutsForReason:(int64_t)reason workoutBatchLimit:(int64_t)limit completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDWorkoutCondenser_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke;
  v11[3] = &unk_27862E280;
  limitCopy = limit;
  reasonCopy = reason;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

void __77__HDWorkoutCondenser_condenseWorkoutsForReason_workoutBatchLimit_completion___block_invoke(void *a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v4 = a1[6];
  v3 = a1[7];
  v5 = HKStringFromWorkoutCondenserReason();
  v79 = [v2 stringWithFormat:@"Condense workouts (%ld, %@)", v4, v5];

  _HKInitializeLogging();
  v6 = HKLogCondenser();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v79;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v80 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1[4] activityName:@"condenseWorkouts"];
  v8 = objc_alloc_init(_HDWorkoutCondenserAnalyticsAccumulator);
  v9 = a1[4];
  v10 = a1[6];
  v82 = 0;
  v11 = v8;
  if (v9)
  {
    dispatch_assert_queue_V2(*(v9 + 8));
    WeakRetained = objc_loadWeakRetained((v9 + 64));
    v13 = [WeakRetained daemon];
    v14 = [v13 behavior];
    v15 = [v14 performsWorkoutCondensation];

    if ((v15 & 1) == 0)
    {
      _HKInitializeLogging();
      v32 = HKLogCondenser();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);

      if (v33)
      {
        v34 = HKLogCondenser();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_INFO, "Workout condenser is not enabled", buf, 2u);
        }
      }

      v31 = 1;
      goto LABEL_15;
    }

    v16 = *(v9 + 24);
    v17 = *(v9 + 24);
    *(v9 + 24) = 0;

    if (!v16)
    {
      v18 = objc_loadWeakRetained((v9 + 64));
      v19 = [v18 database];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v83[0] = 0;
      v16 = [v19 takeAccessibilityAssertionWithOwnerIdentifier:v21 timeout:v83 error:300.0];
      v22 = v83[0];

      if (!v16)
      {
        _HKInitializeLogging();
        v74 = HKLogCondenser();
        v75 = os_log_type_enabled(v74, OS_LOG_TYPE_INFO);

        if (v75)
        {
          v76 = HKLogCondenser();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_228986000, v76, OS_LOG_TYPE_INFO, "Workout condenser cannot run without access to protected data", buf, 2u);
          }
        }

        v77 = v22;
        v25 = v77;
        if (v77)
        {
          v78 = v77;
          v82 = v25;
        }

        v30 = 0;
        goto LABEL_9;
      }
    }

    v23 = v11;
    v24 = *(v9 + 8);
    v25 = v16;
    dispatch_assert_queue_V2(v24);
    v26 = objc_alloc_init(HDMutableDatabaseTransactionContext);
    [(HDMutableDatabaseTransactionContext *)v26 setCacheScope:1];
    [(HDMutableDatabaseTransactionContext *)v26 addAccessibilityAssertion:v25];

    v27 = objc_loadWeakRetained((v9 + 64));
    v28 = [v27 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __110__HDWorkoutCondenser__queue_condenseWorkoutsWithAccessibilityAssertion_batchLimit_analyticsAccumulator_error___block_invoke;
    v86 = &unk_27862E2F8;
    v87 = v9;
    v89 = v10;
    v29 = v23;
    v88 = v29;
    v30 = [v28 performWithTransactionContext:v26 error:&v82 block:buf];

    [v25 invalidate];
LABEL_9:
    buf[0] = v30;

    v31 = buf[0];
LABEL_15:
    v81 = v31;
    goto LABEL_16;
  }

  v81 = 0;
LABEL_16:

  v35 = v82;
  [v80 invalidate];
  v36 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v37 = HKLogCondenser();
  v38 = v37;
  v39 = v36 - Current;
  if (v81)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v79;
      *&buf[12] = 2048;
      *&buf[14] = v39;
      _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ finished in %0.4f s, Success", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    *&buf[4] = v79;
    *&buf[12] = 2048;
    *&buf[14] = v39;
    *&buf[22] = 2114;
    v86 = v35;
    _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@ finished in %0.4f s, Error: %{public}@", buf, 0x20u);
  }

  v40 = a1[4];
  v42 = a1[6];
  v41 = a1[7];
  v43 = v11;
  v44 = v35;
  if (v40)
  {
    dispatch_assert_queue_V2(*(v40 + 8));
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v86 = __Block_byref_object_copy__194;
    v87 = __Block_byref_object_dispose__194;
    v88 = 0;
    v45 = objc_loadWeakRetained((v40 + 64));
    v46 = [v45 database];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __112__HDWorkoutCondenser__queue_submitAnalyticEventForReason_batchSize_success_duration_analyticsAccumulator_error___block_invoke;
    v83[3] = &unk_278618610;
    v83[4] = buf;
    v84 = 0;
    v47 = [(HDHealthEntity *)HDSourceEntity performReadTransactionWithHealthDatabase:v46 error:&v84 block:v83];
    v48 = v84;

    if (v47)
    {
      v49 = [*(*&buf[8] + 40) integerValue];
      v50 = objc_loadWeakRetained((v40 + 64));
      v51 = [v50 daemon];
      v52 = [v51 analyticsSubmissionCoordinator];
      v53 = v52;
      if (v43)
      {
        workoutsToCondense = v43->_workoutsToCondense;
        workoutsToRecondense = v43->_workoutsToRecondense;
        condensedWorkouts = v43->_condensedWorkouts;
        processedWorkouts = v43->_processedWorkouts;
        createdSeries = v43->_createdSeries;
        deletedSamples = v43->_deletedSamples;
      }

      else
      {
        createdSeries = 0;
        condensedWorkouts = 0;
        workoutsToCondense = 0;
        workoutsToRecondense = 0;
        processedWorkouts = 0;
        deletedSamples = 0;
      }

      [v52 workout_reportWorkoutCondenserEventWithReason:v41 batchSize:v42 hasWatchSource:v49 > 0 duration:v81 success:v44 error:workoutsToCondense workoutsToCondense:v39 workoutsToRecondense:workoutsToRecondense condensedWorkouts:condensedWorkouts processedWorkouts:processedWorkouts createdSeries:createdSeries deletedSamples:deletedSamples];
    }

    else
    {
      _HKInitializeLogging();
      v50 = HKLogCondenser();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *v90 = 138543362;
        v91 = v48;
        _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "Unable to determine if profile has any watch sources: %{public}@", v90, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v60 = a1[4];
  v61 = a1[7];
  v62 = v44;
  if (v60)
  {
    dispatch_assert_queue_V2(*(v60 + 8));
    if (v61)
    {
      v63 = *(v60 + 16);
      if (v81)
      {
        [v63 didPerformActivityWithResult:0 minimumRetryInterval:0 activityStartDate:0 error:*MEMORY[0x277D86298]];
      }

      else
      {
        [v63 didPerformActivityWithResult:2 minimumRetryInterval:0 activityStartDate:v62 error:0.0];
      }
    }
  }

  v64 = a1[4];
  v65 = a1[7];
  v66 = v62;
  if (v64)
  {
    dispatch_assert_queue_V2(*(v64 + 8));
    if ([v66 hk_isErrorInDomain:*MEMORY[0x277CCBDB0] code:6])
    {
      _HKInitializeLogging();
      v67 = HKLogCondenser();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = [v66 description];
        *buf = 138543362;
        *&buf[4] = v68;
        _os_log_error_impl(&dword_228986000, v67, OS_LOG_TYPE_ERROR, "Skipping WorkoutCondenser TTR for error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v69 = [HDTTRPromptController alloc];
      v70 = objc_loadWeakRetained((v64 + 64));
      v71 = HKLogCondenser();
      v67 = [(HDTTRPromptController *)v69 initWithProfile:v70 domainName:@"HDWorkoutCondenser" loggingCategory:v71];

      [v67 setMinimumPromptInterval:604800.0];
      [v67 setMaximumErrorCount:10];
      [v67 setNotificationTitle:@"Health Unable to Compress Older Workouts"];
      [v67 setNotificationMessage:@"Health has run into a number of errors while attempting to compress your older workouts"];
      [v67 setRadarTitle:@"[Database Efficiency] Workout Condenser Problem Detected"];
      [v67 setRadarDescription:@"The workout condenser has failed multiple times since last success"];
      v72 = HKStringFromWorkoutCondenserReason();
      [v67 promptIfRequiredForReason:v72 success:v81 error:v66];
    }
  }

  (*(a1[5] + 16))();
  v73 = *MEMORY[0x277D85DE8];
}

- (BOOL)condenseWorkout:(id)workout error:(id *)error
{
  workoutCopy = workout;
  v7 = objc_alloc_init(_HDWorkoutCondenserAnalyticsAccumulator);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [_HDWorkoutCondensationConfiguration configurationWithProfile:self->_minimumSeriesSize minimumSeriesSize:self->_maximumSeriesSize maximumSeriesSize:self->_deletedSamplesThreshold deletedSampleThreshold:v7 analyticsAccumulator:error error:?];

  if (v9)
  {
    v10 = objc_loadWeakRetained(v9 + 1);
    daemon = [v10 daemon];
    behavior = [daemon behavior];
    features = [behavior features];
    condenseFirstPartyiOSWorkouts = [features condenseFirstPartyiOSWorkouts];

    v14 = objc_loadWeakRetained(&self->_profile);
    v15 = [HDWorkoutCondenser _predicateForFirstPartyWorkoutSources:v14 error:error];

    v16 = MEMORY[0x277D10B70];
    uUID = [workoutCopy UUID];
    v18 = HDDataEntityPredicateForDataUUID();
    v19 = [v16 compoundPredicateWithPredicate:v18 otherPredicate:v15];

    v20 = objc_loadWeakRetained(v9 + 1);
    database = [v20 database];
    v35 = 0;
    v22 = [(HDHealthEntity *)HDWorkoutEntity anyWithPredicate:v19 healthDatabase:database error:&v35];
    v23 = v35;

    if (v22)
    {
      v24 = [HDWorkoutCondenser _condenseAndUpdateWorkout:v22 configuration:v9 error:error];
LABEL_15:

      goto LABEL_16;
    }

    if (v23)
    {
      v23 = v23;
    }

    else
    {
      v25 = @"Unable to locate 1st Party Apple Watch workout entity for condensation with workout with UUID %@ from source %@";
      if (condenseFirstPartyiOSWorkouts)
      {
        v25 = @"Unable to locate 1st Party Apple Watch or 1st party fitnessAppSource workout entity for condensation with workout with UUID %@ from source %@";
      }

      v31 = MEMORY[0x277CCA9B8];
      v33 = v25;
      uUID2 = [workoutCopy UUID];
      uUIDString = [uUID2 UUIDString];
      sourceRevision = [workoutCopy sourceRevision];
      v34 = [v31 hk_error:100 format:{v33, uUIDString, sourceRevision}];

      v23 = v34;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    if (error)
    {
      v29 = v23;
      *error = v23;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  v24 = 0;
LABEL_16:

  return v24;
}

+ (void)_predicateForFirstPartyWorkoutSources:(uint64_t)sources error:
{
  v4 = a2;
  objc_opt_self();
  daemon = [v4 daemon];
  behavior = [daemon behavior];
  features = [behavior features];
  condenseFirstPartyiOSWorkouts = [features condenseFirstPartyiOSWorkouts];

  v9 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
  v10 = v4;
  objc_opt_self();
  sourceManager = [v10 sourceManager];

  v12 = [sourceManager allSourcesForBundleIdentifier:*MEMORY[0x277CCE340] error:sources];

  if ([v12 count])
  {
    v13 = HDDataEntityPredicateForSourceEntitySet(7, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v9 otherPredicate:v13];
  v15 = v14;
  if (condenseFirstPartyiOSWorkouts)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;

  return v16;
}

+ (BOOL)_condenseAndUpdateWorkout:(void *)workout configuration:(void *)configuration error:
{
  v72[13] = *MEMORY[0x277D85DE8];
  v6 = a2;
  workoutCopy = workout;
  objc_opt_self();
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
  if (workoutCopy)
  {
    WeakRetained = objc_loadWeakRetained(workoutCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  v60[0] = 0;
  v10 = [(HDDataEntity *)HDWorkoutEntity objectWithID:v8 encodingOptions:0 profile:WeakRetained error:v60];
  v11 = v60[0];

  if (v10)
  {
    v12 = v10;
    v13 = v6;
    v14 = workoutCopy;
    v58 = objc_opt_self();
    v59 = v12;
    [v12 duration];
    if (workoutCopy)
    {
      v16 = v14[3];
    }

    else
    {
      v16 = 0.0;
    }

    v55 = v11;
    v56 = v10;
    if (v15 >= v16)
    {
      v53 = workoutCopy;
      v54 = v6;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [objc_opt_class() condensableQuantityTypes];
      v24 = [obj countByEnumeratingWithState:&v66 objects:buf count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v67;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v67 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v66 + 1) + 8 * i);
            v60[1] = MEMORY[0x277D85DD0];
            v60[2] = 3221225472;
            v60[3] = __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke;
            v60[4] = &unk_27861A268;
            v29 = v59;
            v61 = v29;
            v62 = v28;
            v30 = v14;
            v63 = v30;
            v65 = v58;
            v31 = v13;
            v64 = v31;
            configurationCopy = configuration;
            v33 = HKWithAutoreleasePool();

            if (!v33)
            {

              v22 = 0;
              workoutCopy = v53;
              v6 = v54;
              goto LABEL_34;
            }

            configuration = configurationCopy;
          }

          v25 = [obj countByEnumeratingWithState:&v66 objects:buf count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      workoutCopy = v53;
      v6 = v54;
    }

    else
    {
    }

    v34 = v13;
    v35 = v14;
    objc_opt_self();
    if (workoutCopy)
    {
      v36 = objc_loadWeakRetained(v35 + 1);
    }

    else
    {
      v36 = 0;
    }

    database = [v36 database];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __76__HDWorkoutCondenser__updateCondenserVersionForWorkout_configuration_error___block_invoke;
    v71 = &unk_278616048;
    v72[0] = v34;
    v38 = v34;
    v39 = [(HDHealthEntity *)HDWorkoutEntity performWriteTransactionWithHealthDatabase:database error:configuration block:buf];

    if (v39)
    {
      v40 = v59;
      objc_opt_self();
      _HKInitializeLogging();
      v41 = HKLogCondenser();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);

      v11 = v55;
      v10 = v56;
      if (v42)
      {
        v43 = HKLogCondenser();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          uUID = [v40 UUID];
          [uUID UUIDString];
          v46 = v45 = workoutCopy;
          [v40 workoutActivityType];
          v47 = _HKWorkoutActivityNameForActivityType();
          [v40 duration];
          v48 = HKDiagnosticStringFromDuration();
          _creationDate = [v40 _creationDate];
          v50 = HKDiagnosticStringFromDate();
          *buf = 138544130;
          *&buf[4] = v46;
          *&buf[12] = 2114;
          *&buf[14] = v47;
          *&buf[22] = 2114;
          v71 = v48;
          LOWORD(v72[0]) = 2114;
          *(v72 + 2) = v50;
          _os_log_impl(&dword_228986000, v43, OS_LOG_TYPE_INFO, "Condensed workout with UUID: %{public}@, type: %{public}@, duration: %{public}@, added: %{public}@", buf, 0x2Au);

          workoutCopy = v45;
          v11 = v55;
          v10 = v56;
        }
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
LABEL_34:
      v11 = v55;
      v10 = v56;
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = HKLogCondenser();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v19 = HKLogCondenser();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        persistentID = [v6 persistentID];
        *buf = 134218242;
        *&buf[4] = persistentID;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "Failed to lookup workout with persistentID %lld: %{public}@", buf, 0x16u);
      }
    }

    v21 = v11;
    v22 = v21 == 0;
    if (v21)
    {
      if (configuration)
      {
        v23 = v21;
        *configuration = v21;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)condensedWorkoutsWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CCD158]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__HDWorkoutCondenser_condensedWorkoutsWithError___block_invoke;
  v11[3] = &unk_27862E2A8;
  v12 = v5;
  v7 = v5;
  LODWORD(error) = [HDWorkoutEntity enumerateCondensedWorkoutsWithPredicate:0 profile:WeakRetained error:error handler:v11];

  if (error)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)condensableWorkoutsWithError:(id *)error
{
  v5 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 workoutEntitiesRequiringCondensationWithProfile:WeakRetained limit:0 allowRecondensation:0 error:error];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCD158]);
    v9 = objc_loadWeakRetained(&self->_profile);
    database = [v9 database];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__HDWorkoutCondenser_condensableWorkoutsWithError___block_invoke;
    v16[3] = &unk_278613218;
    v17 = v7;
    v18 = v8;
    v11 = v8;
    v12 = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database error:error block:v16];

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __51__HDWorkoutCondenser_condensableWorkoutsWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) codableCondensedWorkoutWithTransaction:v5 error:{a3, v16}];
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
        [*(a1 + 40) addWorkouts:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)_workoutEntitiesRequiringCondensationWithProfile:(uint64_t)profile limit:(char)limit allowRecondensation:(void *)recondensation analyticsAccumulator:(uint64_t)accumulator error:
{
  v41[4] = *MEMORY[0x277D85DE8];
  recondensationCopy = recondensation;
  v9 = a2;
  v28 = objc_opt_self();
  v10 = [HDWorkoutCondenser _predicateForFirstPartyWorkoutSources:v9 error:accumulator];
  v11 = HDWorkoutEntityPredicateForWorkoutCondenserVersionLessThan(6);
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10368000.0];
  v13 = HDDataEntityPredicateForCreationDate(3);

  v14 = HDWorkoutEntityPredicateForDuration(6);
  v15 = MEMORY[0x277D10B20];
  v31 = v11;
  v32 = v10;
  v41[0] = v10;
  v41[1] = v11;
  v41[2] = v13;
  v41[3] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v17 = [v15 predicateMatchingAllPredicates:v16];

  v18 = HDWorkoutEntityPredicateForWorkoutCondenserVersionEqualTo(6);
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  database = [v9 database];

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __124__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithProfile_limit_allowRecondensation_analyticsAccumulator_error___block_invoke;
  v33[3] = &unk_27862E320;
  v38 = v28;
  profileCopy = profile;
  v34 = v17;
  v35 = recondensationCopy;
  v21 = v19;
  limitCopy = limit;
  v36 = v21;
  v37 = v18;
  v22 = v18;
  v23 = recondensationCopy;
  v24 = v17;
  LODWORD(v16) = [(HDHealthEntity *)HDWorkoutEntity performReadTransactionWithHealthDatabase:database error:accumulator block:v33];

  if (v16)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)seriesSyncIdentifierForEntity:(id)entity workout:(id)workout transaction:(id)transaction error:(id *)error
{
  entityCopy = entity;
  workoutCopy = workout;
  transactionCopy = transaction;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__194;
  v24 = __Block_byref_object_dispose__194;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__HDWorkoutCondenser_seriesSyncIdentifierForEntity_workout_transaction_error___block_invoke;
  v16[3] = &unk_27862E2D0;
  v18 = &v20;
  selfCopy = self;
  v13 = workoutCopy;
  v17 = v13;
  if ([entityCopy startTimeEndTimeCountForSeriesWithTransaction:transactionCopy error:error handler:v16])
  {
    v14 = v21[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __78__HDWorkoutCondenser_seriesSyncIdentifierForEntity_workout_transaction_error___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  objc_opt_self();
  v10 = MEMORY[0x277CCACA8];
  v11 = [v9 UUID];

  v12 = [v11 UUIDString];
  v13 = [v10 stringWithFormat:@"%ld:%@:%.5f:%.5f:%lld", 6, v12, *&a3, *&a4, a2];

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

uint64_t __110__HDWorkoutCondenser__queue_condenseWorkoutsWithAccessibilityAssertion_batchLimit_analyticsAccumulator_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v5 = [HDWorkoutCondenser _workoutEntitiesRequiringCondensationWithProfile:*(a1 + 48) limit:1 allowRecondensation:*(a1 + 40) analyticsAccumulator:a2 error:?];

  if (v5)
  {
    if ([v5 count])
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 64));
      v26 = [_HDWorkoutCondensationConfiguration configurationWithProfile:v6 minimumSeriesSize:*(*(a1 + 32) + 40) maximumSeriesSize:*(*(a1 + 32) + 48) deletedSampleThreshold:*(*(a1 + 32) + 56) analyticsAccumulator:*(a1 + 40) error:a2];

      v7 = v26;
      if (v26)
      {
        v8 = v5;
        v9 = v26;
        objc_opt_self();
        Current = CFAbsoluteTimeGetCurrent();
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v36 = 0;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        obj = v8;
        v11 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
        if (v11)
        {
          v12 = *v30;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              v28 = v9;
              v15 = HKWithAutoreleasePool();
              if ((v15 & 1) == 0)
              {
                goto LABEL_28;
              }

              v16 = CFAbsoluteTimeGetCurrent() - Current;
              if (v16 > 180.0)
              {
                _HKInitializeLogging();
                v18 = HKLogCondenser();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = *(v34 + 3);
                  *buf = 134218240;
                  v38 = v19;
                  v39 = 2048;
                  v40 = v16;
                  _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "End with early success due to timeout, condensed %ld workouts in %0.4f s", buf, 0x16u);
                }

                goto LABEL_27;
              }

              v17 = v9[7];
              if (v17)
              {
                v17 = v17[7];
              }

              if (v17 >= v9[6])
              {
                _HKInitializeLogging();
                v18 = HKLogCondenser();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = v9[7];
                  v21 = v20;
                  if (v20)
                  {
                    v22 = *(v20 + 7);
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = v34[3];
                  *buf = 134218496;
                  v38 = v22;
                  v39 = 2048;
                  v40 = v23;
                  v41 = 2048;
                  v42 = v16;
                  _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "End with early success due number of deleted samples (%ld), condensed %ld workouts in %0.4f s", buf, 0x20u);
                }

LABEL_27:

LABEL_28:
                goto LABEL_29;
              }
            }

            v11 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
            v15 = 1;
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v15 = 1;
        }

LABEL_29:

        _Block_object_dispose(&v33, 8);
        v7 = v26;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __124__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithProfile_limit_allowRecondensation_analyticsAccumulator_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = HDSampleEntityOrderingTermsForOldness();
  v10 = [(HDWorkoutCondenser *)v7 _workoutEntitiesRequiringCondensationWithPredicate:v6 limit:v8 orderingTerms:v9 transaction:v5 error:a3];

  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = [v10 count];
  v12 = *(a1 + 40);
  if (v12)
  {
    *(v12 + 16) = v11;
  }

  [*(a1 + 48) addObjectsFromArray:v10];
  if (*(a1 + 80) != 1)
  {
    goto LABEL_13;
  }

  if (!*(a1 + 72))
  {
    v15 = 0;
LABEL_9:
    v17 = *(a1 + 56);
    v16 = *(a1 + 64);
    v18 = HDWorkoutEntityOrderingTermsForCondenserDate();
    v19 = [(HDWorkoutCondenser *)v16 _workoutEntitiesRequiringCondensationWithPredicate:v17 limit:v15 orderingTerms:v18 transaction:v5 error:a3];

    if (v19)
    {
      v20 = [v19 count];
      v21 = *(a1 + 40);
      if (v21)
      {
        *(v21 + 24) = v20;
      }

      [*(a1 + 48) addObjectsFromArray:v19];

      goto LABEL_13;
    }

LABEL_16:
    v26 = 0;
    goto LABEL_17;
  }

  v13 = [*(a1 + 48) count];
  v14 = *(a1 + 72);
  if (v13 < v14)
  {
    v15 = v14 - [*(a1 + 48) count];
    goto LABEL_9;
  }

LABEL_13:
  _HKInitializeLogging();
  v22 = HKLogCondenser();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 48) count];
    v24 = [v10 count];
    v25 = [*(a1 + 48) count];
    v29 = 134218496;
    v30 = v23;
    v31 = 2048;
    v32 = v24;
    v33 = 2048;
    v34 = v25 - [v10 count];
    _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "%ld workouts requiring condensation (%ld uncondensed, %ld recondensable)", &v29, 0x20u);
  }

  v26 = 1;
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (void)_workoutEntitiesRequiringCondensationWithPredicate:(uint64_t)predicate limit:(void *)limit orderingTerms:(void *)terms transaction:(uint64_t)transaction error:
{
  termsCopy = terms;
  limitCopy = limit;
  v12 = a2;
  objc_opt_self();
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [termsCopy databaseForEntityClass:objc_opt_class()];

  v15 = [(HDSQLiteEntity *)HDWorkoutEntity queryWithDatabase:v14 predicate:v12 limit:predicate orderingTerms:limitCopy groupBy:0];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithPredicate_limit_orderingTerms_transaction_error___block_invoke;
  v20[3] = &unk_278615128;
  v21 = v13;
  v16 = v13;
  if ([v15 enumeratePersistentIDsAndProperties:0 error:transaction enumerationHandler:v20])
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

uint64_t __111__HDWorkoutCondenser__workoutEntitiesRequiringCondensationWithPredicate_limit_orderingTerms_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(HDSQLiteEntity *)[HDWorkoutEntity alloc] initWithPersistentID:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

BOOL __60__HDWorkoutCondenser__condenseWorkouts_configuration_error___block_invoke(void *a1, NSObject **a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Condense workout %ld", *(*(a1[6] + 8) + 24)];
  _HKInitializeLogging();
  v5 = HKLogCondenser();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogCondenser();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v28 = v4;
      _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_INFO, "%{public}@ started", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = a1[4];
  if (v9)
  {
    v10 = *(v9 + 56);
    if (v10)
    {
      v10[8] = 0;
    }
  }

  v11 = a1[7];
  v13 = a1[4];
  v12 = a1[5];
  v26 = 0;
  v14 = [(HDWorkoutCondenser *)v11 _condenseAndUpdateWorkout:v12 configuration:v13 error:&v26];
  v15 = v26;
  v16 = CFAbsoluteTimeGetCurrent() - Current;
  _HKInitializeLogging();
  v17 = HKLogCondenser();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

  if (!v14)
  {
    if (v18)
    {
      v20 = HKLogCondenser();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v28 = v4;
        v29 = 2048;
        v30 = v16;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, Error: %{public}@", buf, 0x20u);
      }
    }

    v19 = v15;
    if (v19)
    {
      if (a2)
      {
        v21 = v19;
        *a2 = v19;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_20;
  }

  if (v18)
  {
    v19 = HKLogCondenser();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v28 = v4;
      v29 = 2048;
      v30 = v16;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, Success", buf, 0x16u);
    }

LABEL_20:
  }

  v22 = a1[4];
  if (v22)
  {
    v23 = *(v22 + 56);
    if (v23)
    {
      ++v23[4];
    }
  }

  ++*(*(a1[6] + 8) + 24);

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = [*(a1 + 32) UUID];
  v6 = [v4 stringWithFormat:@"Condense workout (%@) samples with quantity type %@", v5, *(a1 + 40)];

  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@ started", buf, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *(a1 + 48);
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((v11 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v13 = [WeakRetained database];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__HDWorkoutCondenser__condenseWorkout_entity_configuration_error___block_invoke_344;
  v25[3] = &unk_27862C6D8;
  v29 = *(a1 + 64);
  v30 = 0;
  v24 = *(a1 + 32);
  v14 = v24.i64[0];
  v26 = vextq_s8(v24, v24, 8uLL);
  v27 = *(a1 + 56);
  v28 = *(a1 + 48);
  v15 = [(HDHealthEntity *)HDQuantitySampleSeriesEntity performWriteTransactionWithHealthDatabase:v13 error:&v30 block:v25];
  v16 = v30;

  v17 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v18 = HKLogCondenser();
  LODWORD(v13) = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

  if (v13)
  {
    v19 = HKLogCondenser();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138544130;
      v32 = v6;
      v33 = 2048;
      v34 = v17 - Current;
      v35 = 1024;
      v36 = v15;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ finished in %0.4f s, (%{BOOL}d, %{public}@)", buf, 0x26u);
    }
  }

  if (!v15)
  {
    v20 = v16;
    if (v20)
    {
      if (a2)
      {
        v21 = v20;
        *a2 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (uint64_t)_condenseSamplesWithQuantityType:(void *)type workout:(void *)workout entity:(void *)entity configuration:(void *)configuration transaction:(double *)transaction error:
{
  v332 = *MEMORY[0x277D85DE8];
  v11 = a2;
  typeCopy = type;
  workoutCopy = workout;
  entityCopy = entity;
  configurationCopy = configuration;
  v230 = objc_opt_self();
  v253 = 0;
  v254 = &v253;
  v255 = 0x3032000000;
  v256 = __Block_byref_object_copy__194;
  v257 = __Block_byref_object_dispose__194;
  v258 = 0;
  v243 = entityCopy;
  if (entityCopy)
  {
    WeakRetained = objc_loadWeakRetained(entityCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  database = [WeakRetained database];
  v248[0] = MEMORY[0x277D85DD0];
  v248[1] = 3221225472;
  v248[2] = __102__HDWorkoutCondenser__condenseSamplesWithQuantityType_workout_entity_configuration_transaction_error___block_invoke;
  v248[3] = &unk_27862E370;
  v251 = &v253;
  v252 = v230;
  v223 = v11;
  v249 = v223;
  v222 = workoutCopy;
  v250 = v222;
  v16 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:transaction block:v248];

  if (v16)
  {
    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    obj = v254[5];
    v213 = [obj countByEnumeratingWithState:&v244 objects:v288 count:16];
    if (v213)
    {
      v212 = *v245;
      v211 = *MEMORY[0x277D10C08];
      v226 = *MEMORY[0x277CCC520];
      v225 = *MEMORY[0x277CCC528];
      v224 = *MEMORY[0x277CCC530];
      v201 = *MEMORY[0x277CCCB90];
      v203 = *MEMORY[0x277D10A48];
      while (1)
      {
        v233 = 0;
        do
        {
          if (*v245 != v212)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v244 + 1) + 8 * v233);
          v18 = v243;
          v19 = v17;
          v20 = v222;
          v21 = v223;
          objc_opt_self();
          [MEMORY[0x277D10B18] predicateWithProperty:@"provenance" equalToValue:v19];
          v22 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          persistentID = [v20 persistentID];
          v24 = HDAssociationEntityPredicateForChildObjectsAssociatedWithParentObject(persistentID);
          v25 = MEMORY[0x277D10B18];
          v26 = MEMORY[0x277CCABB0];
          code = [v21 code];

          v28 = [v26 numberWithInteger:code];
          v29 = [v25 predicateWithProperty:@"data_type" value:v28 comparisonType:1 influenceIndexUsage:0];

          v30 = MEMORY[0x277D10B20];
          *buf = v29;
          if (v243)
          {
            v31 = v243[2];
          }

          else
          {
            v31 = 0;
          }

          *&buf[8] = v31;
          *&buf[16] = v24;
          v305 = v22;
          v32 = MEMORY[0x277CBEA60];
          v33 = v31;
          v34 = [v32 arrayWithObjects:buf count:4];

          v35 = [v30 predicateMatchingAllPredicates:v34];

          v239 = v20;
          v234 = v21;
          v36 = v35;
          v37 = v18;
          v38 = configurationCopy;
          v39 = v19;
          objc_opt_self();
          v227 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking if workoutEntity (%@) requires processing for quantity type %@ collected by data provenance with ID %@", v239, v234, v39];

          _HKInitializeLogging();
          v40 = HKLogCondenser();
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);

          if (v41)
          {
            v42 = HKLogCondenser();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              *&buf[4] = v227;
              _os_log_debug_impl(&dword_228986000, v42, OS_LOG_TYPE_DEBUG, "%{public}@ started", buf, 0xCu);
            }
          }

          Current = CFAbsoluteTimeGetCurrent();
          v242 = v36;
          v44 = v37;
          v45 = v38;
          objc_opt_self();
          v46 = [v45 databaseForEntityClass:objc_opt_class()];
          v47 = [(HDSQLiteEntity *)HDSampleEntity queryWithDatabase:v46 predicate:v242 limit:v211 orderingTerms:0 groupBy:0];
          *v289 = 0;
          *&v289[8] = v289;
          *&v289[16] = 0x2020000000;
          LOBYTE(v290) = 1;
          *&v259 = 0;
          *(&v259 + 1) = &v259;
          *&v260 = 0x2020000000;
          BYTE8(v260) = 0;
          *&v299 = 0;
          *(&v299 + 1) = &v299;
          v300 = 0x3032000000;
          v301 = __Block_byref_object_copy__194;
          v302 = __Block_byref_object_dispose__194;
          v303 = 0;
          v326 = v226;
          v327 = v225;
          v328 = v224;
          v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v326 count:3];
          v49 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v45];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __77__HDWorkoutCondenser__hasConsistentMetadata_configuration_transaction_error___block_invoke;
          v305 = COERCE_DOUBLE(&unk_27862E398);
          v236 = v44;
          *&v306 = v236;
          v50 = v49;
          *(&v306 + 1) = v50;
          v51 = v48;
          v307 = v51;
          v308 = &v259;
          v309 = &v299;
          v310 = v289;
          if ([v47 enumeratePersistentIDsAndProperties:0 error:transaction enumerationHandler:buf])
          {
            if (*(*&v289[8] + 24))
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }
          }

          else
          {
            v52 = 0;
          }

          _Block_object_dispose(&v299, 8);
          _Block_object_dispose(&v259, 8);
          _Block_object_dispose(v289, 8);

          v53 = CFAbsoluteTimeGetCurrent();
          _HKInitializeLogging();
          v54 = HKLogCondenser();
          v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);

          v56 = v53 - Current;
          if (v55)
          {
            v57 = HKLogCondenser();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              v148 = HKStringFromFailableBooleanResult();
              *buf = 138544130;
              *&buf[4] = v227;
              *&buf[12] = 2048;
              *&buf[14] = v53 - Current;
              *&buf[22] = 2048;
              v305 = v53 - Current;
              LOWORD(v306) = 2114;
              *(&v306 + 2) = v148;
              _os_log_debug_impl(&dword_228986000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ finished consistent metadata check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
            }
          }

          if ((v52 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (v243)
          {
            v58 = objc_loadWeakRetained(v243 + 1);
          }

          else
          {
            v58 = 0;
          }

          daemon = [v58 daemon];
          behavior = [daemon behavior];
          features = [behavior features];
          coalesceCumulativeTypesInWorkoutSeries = [features coalesceCumulativeTypesInWorkoutSeries];

          if (v243)
          {
            v63 = objc_loadWeakRetained(v243 + 1);
          }

          else
          {
            v63 = 0;
          }

          daemon2 = [v63 daemon];
          behavior2 = [daemon2 behavior];
          features2 = [behavior2 features];
          coalesceHeartRatesInWorkoutSeries = [features2 coalesceHeartRatesInWorkoutSeries];

          v68 = 0.0;
          if (![v239 isCondenserVersionLessThan:6 transaction:v45])
          {
            goto LABEL_46;
          }

          if (coalesceCumulativeTypesInWorkoutSeries)
          {
            aggregationStyle = [v234 aggregationStyle];
            if (((aggregationStyle != 0) & coalesceHeartRatesInWorkoutSeries) == 0)
            {
              if (aggregationStyle)
              {
                goto LABEL_46;
              }

              goto LABEL_36;
            }
          }

          else if ((coalesceHeartRatesInWorkoutSeries & 1) == 0)
          {
            goto LABEL_46;
          }

          v70 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v201];
          v71 = [v234 isEqual:v70];

          if (!v71)
          {
            goto LABEL_46;
          }

LABEL_36:
          v72 = CFAbsoluteTimeGetCurrent();
          v73 = v234;
          v74 = v242;
          v75 = v45;
          v76 = objc_opt_self();
          *&v299 = 0;
          *(&v299 + 1) = &v299;
          v300 = 0x2020000000;
          LOBYTE(v301) = 0;
          *v289 = 0;
          *&v289[8] = v289;
          *&v289[16] = 0x2020000000;
          LOBYTE(v290) = 0;
          *&v259 = 0;
          *(&v259 + 1) = &v259;
          v260 = 0x2020000000uLL;
          v326 = 0;
          v327 = &v326;
          v328 = 0x2020000000;
          v329 = 0;
          v282 = 0;
          v283 = &v282;
          v284 = 0x2020000000;
          v285 = 0;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __100__HDWorkoutCondenser__hasNonCoalescedSamplesOrDatumInSeries_enumerationPredicate_transaction_error___block_invoke;
          v305 = COERCE_DOUBLE(&unk_27862E3C0);
          *(&v306 + 1) = v289;
          v77 = v73;
          *&v306 = v77;
          v307 = &v259;
          v308 = &v282;
          v309 = &v326;
          v311 = v76;
          v310 = &v299;
          if ([HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v74 transaction:v75 options:0 error:transaction handler:buf])
          {
            if (*(*(&v299 + 1) + 24))
            {
              v52 = 1;
            }

            else
            {
              v52 = 2;
            }
          }

          else
          {
            v52 = 0;
          }

          _Block_object_dispose(&v282, 8);
          _Block_object_dispose(&v326, 8);
          _Block_object_dispose(&v259, 8);
          _Block_object_dispose(v289, 8);
          _Block_object_dispose(&v299, 8);

          v78 = CFAbsoluteTimeGetCurrent();
          _HKInitializeLogging();
          v79 = HKLogCondenser();
          v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);

          v68 = v78 - v72;
          if (v80)
          {
            v81 = HKLogCondenser();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              v151 = HKStringFromFailableBooleanResult();
              *buf = 138544130;
              *&buf[4] = v227;
              *&buf[12] = 2048;
              *&buf[14] = v78 - v72;
              *&buf[22] = 2048;
              v305 = v56 + v68;
              LOWORD(v306) = 2114;
              *(&v306 + 2) = v151;
              _os_log_debug_impl(&dword_228986000, v81, OS_LOG_TYPE_DEBUG, "%{public}@ finished uncoalesced data check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
            }
          }

          if (v52 >= 2)
          {
LABEL_46:
            v82 = CFAbsoluteTimeGetCurrent();
            v83 = v239;
            v84 = v236;
            v85 = v45;
            v86 = v242;
            objc_opt_self();
            v87 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"hfd_key"];
            v88 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v86 otherPredicate:v87];

            protectedDatabase = [v85 protectedDatabase];

            *buf = 0;
            v90 = [(HDSQLiteEntity *)HDQuantitySampleSeriesEntity countValueForProperty:v203 predicate:v88 database:protectedDatabase error:buf];
            v91 = *buf;

            if (v90)
            {
              integerValue = [v90 integerValue];
              v93 = v243;
              if (v243)
              {
                v93 = v243[4];
              }

              if (integerValue >= v93)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              goto LABEL_60;
            }

            if (v91)
            {
              v91 = v91;
              goto LABEL_55;
            }

            v91 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Error getting count of single value samples associated with workout entity %lld", objc_msgSend(v83, "persistentID")}];
            if (v91)
            {
LABEL_55:
              if (transaction)
              {
                v94 = v91;
                *transaction = v91;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v52 = 0;
LABEL_60:

            v95 = CFAbsoluteTimeGetCurrent();
            _HKInitializeLogging();
            v96 = HKLogCondenser();
            v97 = os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG);

            if (v97)
            {
              v98 = HKLogCondenser();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
              {
                v149 = HKStringFromFailableBooleanResult();
                *buf = 138544130;
                *&buf[4] = v227;
                *&buf[12] = 2048;
                *&buf[14] = v95 - v82;
                *&buf[22] = 2048;
                v305 = v56 + v68 + v95 - v82;
                LOWORD(v306) = 2114;
                *(&v306 + 2) = v149;
                _os_log_debug_impl(&dword_228986000, v98, OS_LOG_TYPE_DEBUG, "%{public}@ finished single value samples check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
              }
            }

            if (v52 >= 2)
            {
              v99 = v86;
              v100 = v84;
              v101 = v85;
              objc_opt_self();
              *&v299 = 0;
              *(&v299 + 1) = &v299;
              v300 = 0x2020000000;
              LOBYTE(v301) = 0;
              *v289 = 0;
              *&v289[8] = v289;
              *&v289[16] = 0x2020000000;
              v290 = 0;
              *&v259 = 0;
              *(&v259 + 1) = &v259;
              *&v260 = 0x2020000000;
              distantPast = [MEMORY[0x277CBEAA8] distantPast];
              [distantPast timeIntervalSinceReferenceDate];
              v104 = v103;

              *(&v260 + 1) = v104;
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __93__HDWorkoutCondenser__hasSamplesThatOverlapInTimeWithEntity_configuration_transaction_error___block_invoke;
              v305 = COERCE_DOUBLE(&unk_27862E3E8);
              *(&v306 + 1) = &v259;
              v307 = &v299;
              v308 = v289;
              v105 = v100;
              *&v306 = v105;
              if ([HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v99 transaction:v101 options:0 error:transaction handler:buf])
              {
                v106 = v243;
                if (v243)
                {
                  v106 = v243[4];
                }

                if (*(*&v289[8] + 24) >= v106)
                {
                  if (*(*(&v299 + 1) + 24))
                  {
                    v52 = 1;
                  }

                  else
                  {
                    v52 = 2;
                  }
                }

                else
                {
                  v52 = 2;
                }
              }

              else
              {
                v52 = 0;
              }

              _Block_object_dispose(&v259, 8);
              _Block_object_dispose(v289, 8);
              _Block_object_dispose(&v299, 8);

              v107 = CFAbsoluteTimeGetCurrent();
              _HKInitializeLogging();
              v108 = HKLogCondenser();
              v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);

              if (v109)
              {
                v110 = HKLogCondenser();
                if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                {
                  v150 = HKStringFromFailableBooleanResult();
                  *buf = 138544130;
                  *&buf[4] = v227;
                  *&buf[12] = 2048;
                  *&buf[14] = v107 - v95;
                  *&buf[22] = 2048;
                  v305 = v56 + v68 + v107 - v82;
                  LOWORD(v306) = 2114;
                  *(&v306 + 2) = v150;
                  _os_log_debug_impl(&dword_228986000, v110, OS_LOG_TYPE_DEBUG, "%{public}@ finished overlapping samples check in %0.5f (total %0.5f): %{public}@", buf, 0x2Au);
                }
              }
            }
          }

LABEL_78:

          if (v52 == 2)
          {
            goto LABEL_152;
          }

          if (!v52)
          {
            goto LABEL_159;
          }

          if (v243)
          {
            v111 = v243[7];
            if (!v111 || (v112 = v111[8], v111, (v112 & 1) == 0))
            {
              v113 = v243[7];
              if (v113)
              {
                ++v113[5];
              }

              v114 = v243[7];
              if (v114)
              {
                v114[8] = 1;
              }
            }
          }

          v115 = v234;
          v116 = typeCopy;
          v235 = v242;
          v117 = v236;
          v118 = v45;
          v228 = objc_opt_self();
          v326 = 0;
          v327 = &v326;
          v328 = 0x3032000000;
          v329 = __Block_byref_object_copy__194;
          v330 = __Block_byref_object_dispose__194;
          v331 = 0;
          v282 = 0;
          v283 = &v282;
          v284 = 0x3032000000;
          v285 = __Block_byref_object_copy__194;
          v286 = __Block_byref_object_dispose__194;
          v287 = 0;
          v325[0] = v226;
          v325[1] = v225;
          v325[2] = v224;
          v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v325 count:3];
          v120 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v118];
          v276 = 0;
          v277 = &v276;
          v278 = 0x3032000000;
          v279 = __Block_byref_object_copy__194;
          v280 = __Block_byref_object_dispose__194;
          v281 = 0;
          v272 = 0;
          v273 = &v272;
          v274 = 0x2020000000;
          v275 = 0xFFEFFFFFFFFFFFFFLL;
          v271[0] = 0;
          v271[1] = v271;
          v271[2] = 0x2020000000;
          v271[3] = 0x8010000000000000;
          v121 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v237 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v122 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v123 = objc_alloc_init(MEMORY[0x277CBEB28]);
          v214 = v115;
          v216 = v120;
          v231 = v119;
          v240 = v117;
          v218 = v116;
          if (v243)
          {
            v124 = objc_loadWeakRetained(v243 + 1);
          }

          else
          {
            v124 = 0;
          }

          daemon3 = [v124 daemon];
          behavior3 = [daemon3 behavior];
          features3 = [behavior3 features];
          coalesceCumulativeTypesInWorkoutSeries2 = [features3 coalesceCumulativeTypesInWorkoutSeries];

          if (v243)
          {
            v129 = objc_loadWeakRetained(v243 + 1);
          }

          else
          {
            v129 = 0;
          }

          daemon4 = [v129 daemon];
          behavior4 = [daemon4 behavior];
          features4 = [behavior4 features];
          coalesceHeartRatesInWorkoutSeries2 = [features4 coalesceHeartRatesInWorkoutSeries];

          v267 = 0;
          v268 = &v267;
          v269 = 0x2020000000;
          v270 = 0;
          v263 = 0;
          v264 = &v263;
          v265 = 0x2020000000;
          v266 = 0;
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __104__HDWorkoutCondenser__processSamplesWithQuantityType_workout_predicate_configuration_transaction_error___block_invoke;
          v305 = COERCE_DOUBLE(&unk_27862E410);
          v315 = &v267;
          v316 = &v326;
          v134 = v118;
          *&v306 = v134;
          v322 = v228;
          v220 = v240;
          *(&v306 + 1) = v220;
          v317 = &v282;
          v210 = v216;
          v307 = v210;
          v209 = v231;
          v308 = v209;
          v232 = v122;
          v309 = v232;
          v217 = v123;
          v310 = v217;
          v241 = v121;
          v311 = v241;
          v135 = v237;
          v312 = v135;
          v318 = v271;
          v319 = &v276;
          v238 = v214;
          v313 = v238;
          v320 = &v272;
          v136 = v218;
          v323 = coalesceCumulativeTypesInWorkoutSeries2;
          v219 = v136;
          v314 = v136;
          v321 = &v263;
          v324 = coalesceHeartRatesInWorkoutSeries2;
          v215 = v134;
          if (![HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v235 transaction:v134 options:0 error:transaction handler:buf])
          {
            _HKInitializeLogging();
            v143 = HKLogCondenser();
            if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_149;
            }

            LODWORD(v299) = 136315138;
            *(&v299 + 4) = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
            v144 = &v299;
            v145 = v143;
            v146 = "Call to enumerator in workout condenser failed in %s";
            goto LABEL_98;
          }

          v137 = [v135 count];
          v138 = [v241 count];
          v139 = [v135 count];
          v140 = [v241 count];
          if (v243)
          {
            v204 = v243[4];
            if (coalesceCumulativeTypesInWorkoutSeries2)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v204 = 0;
            if (coalesceCumulativeTypesInWorkoutSeries2)
            {
LABEL_94:
              v141 = [v238 aggregationStyle] == 0;
              if (!coalesceHeartRatesInWorkoutSeries2)
              {
                goto LABEL_95;
              }

              goto LABEL_106;
            }
          }

          v141 = 0;
          if (!coalesceHeartRatesInWorkoutSeries2)
          {
LABEL_95:
            v142 = 0;
            goto LABEL_107;
          }

LABEL_106:
          v152 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v201];
          v142 = [v238 isEqual:v152];

LABEL_107:
          v206 = v141 | v142;
          if (v140 + v139 >= v204 || ((v137 != -v138) & (v141 | v142)) != 0)
          {
            v261 = 0u;
            v262 = 0u;
            v259 = 0u;
            v260 = 0u;
            v153 = v241;
            v154 = [v153 countByEnumeratingWithState:&v259 objects:&v299 count:16];
            if (!v154)
            {
              goto LABEL_131;
            }

            v155 = *v260;
            while (1)
            {
              v156 = 0;
              do
              {
                if (*v260 != v155)
                {
                  objc_enumerationMutation(v153);
                }

                v157 = *(*(&v259 + 1) + 8 * v156);
                if (![v135 count])
                {
                  if (v157)
                  {
                    v158 = *(v157 + 4);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  *(v273 + 3) = v158;
                }

                if (v157)
                {
                  v160 = v157[5];
                  v159 = v157[6];
                  v161 = v157[4];
                }

                else
                {
                  v159 = 0.0;
                  v161 = 0.0;
                  v160 = 0.0;
                }

                v162 = [MEMORY[0x277CCD180] datumWithStartTime:v161 value:v159 endTime:v160];
                [v135 addObject:v162];

                if (v141)
                {
                  if ([HDWorkoutCondenser coalesceCumulativeDatumsInDatumsCollection:v135])
                  {
                    goto LABEL_125;
                  }
                }

                else if (v142 && [HDWorkoutCondenser coalesceHeartRateDatumsInDatumsCollection:v135])
                {
LABEL_125:
                  ++v264[3];
                }

                ++v156;
              }

              while (v154 != v156);
              v163 = [v153 countByEnumeratingWithState:&v259 objects:&v299 count:16];
              v154 = v163;
              if (!v163)
              {
LABEL_131:

                [v153 removeAllObjects];
                v200 = [v135 count];
                v164 = v277[5];
                v165 = v283[5];
                v166 = v273[3];
                v167 = v327[5];
                v202 = v219;
                v168 = v238;
                v169 = v165;
                v205 = v217;
                v170 = v220;
                v171 = v215;
                v172 = v167;
                v173 = v135;
                v174 = v164;
                v175 = objc_opt_self();
                v176 = [(HDWorkoutCondenser *)v166 _insertValuesForSeries:v175 quantityType:v174 startTime:v168 values:v173 provenance:v172 configuration:v170 transaction:v171 countOut:0 error:transaction];

                if (v176)
                {
                  v177 = [HDWorkoutCondenser _finishSeries:v175 quantityType:v176 baseMetadata:v168 workout:v169 UUIDDataToDelete:v202 configuration:v205 transaction:v170 error:v171];

                  if (v177)
                  {
                    [v205 setLength:{0, transaction}];
                    break;
                  }
                }

                else
                {
                }

                _HKInitializeLogging();
                v143 = HKLogCondenser();
                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v192 = *transaction;
                  *v289 = 138544130;
                  *&v289[4] = v228;
                  *&v289[12] = 2048;
                  *&v289[14] = v200;
                  *&v289[22] = 2080;
                  v290 = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
                  v291 = 2112;
                  v292 = v192;
                  v144 = v289;
                  v145 = v143;
                  v146 = "%{public}@: Failed to create a series with %ld leftovers after the enumerator of workout condenser in %s with error %@";
                  v147 = 42;
LABEL_148:
                  _os_log_error_impl(&dword_228986000, v145, OS_LOG_TYPE_ERROR, v146, v144, v147);
                }

LABEL_149:
                v191 = 0;
LABEL_150:

                goto LABEL_151;
              }
            }
          }

          if ([v232 hk_countOfUUIDs] && (+[HDWorkoutCondenser _deleteSamplesWithUUIDData:configuration:error:](v228, v232, v220, transaction) & 1) == 0)
          {
            _HKInitializeLogging();
            v143 = HKLogCondenser();
            if (!os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_149;
            }

            *v289 = 136315138;
            *&v289[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]";
            v144 = v289;
            v145 = v143;
            v146 = "Failed to delete old series after enumerator in %s";
LABEL_98:
            v147 = 12;
            goto LABEL_148;
          }

          if (v206)
          {
            v178 = *(v268 + 3);
            v179 = v264[3];
            _HKInitializeLogging();
            v180 = HKLogCondenser();
            v181 = v178 - v179;
            v182 = v179 / v178;
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
            {
              uUID = [v219 UUID];
              uUIDString = [uUID UUIDString];
              v185 = v268[3];
              sourceID = [v327[5] sourceID];
              deviceID = [v327[5] deviceID];
              *v289 = 138413826;
              *&v289[4] = uUIDString;
              *&v289[12] = 2048;
              *&v289[14] = v182;
              *&v289[22] = 2112;
              v290 = v223;
              v291 = 2048;
              v292 = v185;
              v293 = 2048;
              v294 = v181;
              v295 = 2112;
              v296 = sourceID;
              v297 = 2112;
              v298 = deviceID;
              _os_log_impl(&dword_228986000, v180, OS_LOG_TYPE_DEFAULT, "Workout with UUID %@ had a compression rate of %.2f for %@ (%ld samples before, %ld samples after) for data provenance with sourceID %@ and deviceID %@", v289, 0x48u);
            }

            if (v243)
            {
              v143 = objc_loadWeakRetained(v243 + 1);
            }

            else
            {
              v143 = 0;
            }

            daemon5 = [v143 daemon];
            analyticsSubmissionCoordinator = [daemon5 analyticsSubmissionCoordinator];
            identifier = [v238 identifier];
            [analyticsSubmissionCoordinator workout_reportWorkoutCondenserCoalescingCompressionRate:identifier numberOfSamplesBeforeCoalescing:*(v268 + 3) numberOfSamplesAfterCoalescing:v181 compressionRate:v182];

            v191 = 1;
            goto LABEL_150;
          }

          v191 = 1;
LABEL_151:

          _Block_object_dispose(&v263, 8);
          _Block_object_dispose(&v267, 8);

          _Block_object_dispose(v271, 8);
          _Block_object_dispose(&v272, 8);
          _Block_object_dispose(&v276, 8);

          _Block_object_dispose(&v282, 8);
          _Block_object_dispose(&v326, 8);

          if ((v191 & 1) == 0)
          {
LABEL_159:

            goto LABEL_160;
          }

LABEL_152:

          ++v233;
        }

        while (v233 != v213);
        v193 = [obj countByEnumeratingWithState:&v244 objects:v288 count:16];
        v194 = 1;
        v213 = v193;
        if (!v193)
        {
          goto LABEL_161;
        }
      }
    }

    v194 = 1;
  }

  else
  {
    _HKInitializeLogging();
    obj = HKLogCondenser();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      uUID2 = [typeCopy UUID];
      uUIDString2 = [uUID2 UUIDString];
      v197 = *transaction;
      *buf = 138412802;
      *&buf[4] = v223;
      *&buf[12] = 2112;
      *&buf[14] = uUIDString2;
      *&buf[22] = 2114;
      v305 = v197;
      _os_log_error_impl(&dword_228986000, obj, OS_LOG_TYPE_ERROR, "Failed to get data provenances for type %@ in workout with UUID %@ with error: %{public}@", buf, 0x20u);
    }

LABEL_160:
    v194 = 0;
  }

LABEL_161:

  _Block_object_dispose(&v253, 8);
  v198 = *MEMORY[0x277D85DE8];
  return v194;
}

uint64_t __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  v4 = [*(a1 + 40) code];

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnAsInt64()];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v2];

  return 1;
}

BOOL __102__HDWorkoutCondenser__condenseSamplesWithQuantityType_workout_entity_configuration_transaction_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v25 = *(a1 + 32);
  v24 = v5;
  v6 = a2;
  objc_opt_self();
  v27 = MEMORY[0x277CCACA8];
  v7 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v8 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v9 = +[(HDSQLiteSchemaEntity *)HDAssociationEntity];
  v10 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
  v11 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v12 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
  v13 = v6;
  v14 = [v27 stringWithFormat:@"SELECT DISTINCT %@ FROM %@ INNER JOIN %@ ON %@.%@=%@.%@ INNER JOIN %@ USING(%@) WHERE %@=? AND +%@.%@=?", @"provenance", v7, v8, v9, @"source_object_id", v10, @"data_id", v11, @"data_id", @"destination_object_id", v12, @"data_type"];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__194;
  v36 = __Block_byref_object_dispose__194;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [v6 protectedDatabase];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke;
  v29[3] = &unk_278613038;
  v16 = v24;
  v30 = v16;
  v17 = v25;
  v31 = v17;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __80__HDWorkoutCondenser__getProvenancesWithQuantityType_workout_transaction_error___block_invoke_2;
  v28[3] = &unk_278614620;
  v28[4] = &v32;
  if ([v15 executeSQL:v14 error:a3 bindingHandler:v29 enumerationHandler:v28])
  {
    v18 = v33[5];
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  _Block_object_dispose(&v32, 8);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

uint64_t __77__HDWorkoutCondenser__hasConsistentMetadata_configuration_transaction_error___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a1[4];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [WeakRetained metadataManager];
  v12 = [v11 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:a1[5] error:a5];

  if (v12)
  {
    v13 = [v12 mutableCopy];
    [v13 removeObjectsForKeys:a1[6]];
    v14 = a1 + 7;
    if (*(*(a1[7] + 8) + 24) == 1 && ([v13 isEqual:*(*(a1[8] + 8) + 40)] & 1) == 0)
    {
      v15 = 0;
      v14 = a1 + 9;
    }

    else
    {
      objc_storeStrong((*(a1[8] + 8) + 40), v13);
      v15 = 1;
    }

    *(*(*v14 + 8) + 24) = v15;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogCondenser();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218242;
      v20 = a2;
      v21 = 2080;
      v22 = "+[HDWorkoutCondenser _hasConsistentMetadata:configuration:transaction:error:]_block_invoke";
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to get the metadata dictionary of sample with data_id %lld in %s", &v19, 0x16u);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __100__HDWorkoutCondenser__hasNonCoalescedSamplesOrDatumInSeries_enumerationPredicate_transaction_error___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = a1 + 40;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (![*(a1 + 32) aggregationStyle])
    {
      v19 = *(a1 + 80);
      v20 = *(*(*(a1 + 48) + 8) + 24);
      v21 = *(*(*(a1 + 56) + 8) + 24);
      v22 = *(*(*(a1 + 64) + 8) + 24);
      objc_opt_self();
      if (a6 - a5 > 0.0)
      {
        v23 = vabdd_f64(a5, v22);
        v24 = v22 - v20 <= 0.0 || v23 > 0.000011920929;
        if (!v24 && vabdd_f64(a4 / (a6 - a5), v21 / (v22 - v20)) <= 0.0000011920929)
        {
          goto LABEL_19;
        }
      }
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if ([v11 isEqual:v12])
    {
      v13 = *(a1 + 80);
      v14 = *(*(*(a1 + 56) + 8) + 24);
      v15 = *(*(*(a1 + 64) + 8) + 24);
      objc_opt_self();
      v16 = vabdd_f64(a5, v15);

      if (vabdd_f64(a4, v14) <= 0.0000011920929 && v16 < 11.0)
      {
LABEL_19:
        result = 0;
        v10 = a1 + 72;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a5;
  *(*(*(a1 + 64) + 8) + 24) = a6;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  result = 1;
LABEL_12:
  *(*(*v10 + 8) + 24) = 1;
  return result;
}

uint64_t __93__HDWorkoutCondenser__hasSamplesThatOverlapInTimeWithEntity_configuration_transaction_error___block_invoke(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 + 0.00000011920929 < *(*(a1[5] + 8) + 24))
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  *(*(a1[7] + 8) + 24) += a8;
  v8 = a1[4];
  if (v8)
  {
    v8 = *(v8 + 32);
  }

  if (*(*(a1[7] + 8) + 24) >= v8 && (*(*(a1[6] + 8) + 24) & 1) != 0)
  {
    return 0;
  }

  v10 = *(a1[5] + 8);
  v11 = *(v10 + 24);
  if (v11 <= a3)
  {
    v11 = a3;
  }

  *(v10 + 24) = v11;
  return 1;
}

uint64_t __104__HDWorkoutCondenser__processSamplesWithQuantityType_workout_predicate_configuration_transaction_error___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, const unsigned __int8 *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v104 = *MEMORY[0x277D85DE8];
  ++*(*(*(a1 + 112) + 8) + 24);
  v21 = [(HDSQLiteEntity *)[HDQuantitySampleEntity alloc] initWithPersistentID:a2];
  if (!*(*(*(a1 + 120) + 8) + 40))
  {
    v34 = [*(a1 + 32) protectedDatabase];
    v35 = [(HDSQLiteEntity *)v21 valueForProperty:@"provenance" database:v34];

    if (!v35)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a13 code:100 format:{@"Unable to get %@ ID for sample with persistentID %lld", @"provenance", a2}];
      goto LABEL_74;
    }

    v97 = a11;
    v98 = v35;
    v99 = a9;
    v101 = a13;
    v36 = *(a1 + 168);
    v38 = *(a1 + 32);
    v37 = *(a1 + 40);
    v39 = v21;
    v40 = v21;
    v41 = v37;
    v42 = v38;
    objc_opt_self();
    v43 = [v42 protectedDatabase];
    v44 = [(HDSQLiteEntity *)v40 valueForProperty:@"provenance" database:v43];
    v100 = v39;
    if (v44)
    {
      v96 = v40;
      if (v41)
      {
        WeakRetained = objc_loadWeakRetained(v41 + 1);
      }

      else
      {
        v41 = 0;
        WeakRetained = 0;
      }

      v35 = v98;
      v46 = [WeakRetained dataProvenanceManager];
      v47 = [v46 originProvenanceForPersistentID:v44 transaction:v42 error:v101];

      if (v47)
      {
        v48 = v47;
      }

      a9 = v99;
      v40 = v96;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:v101 code:100 format:{@"Unable to get %@ for persistentID %lld", @"provenance", -[HDSQLiteEntity persistentID](v40, "persistentID")}];
      v47 = 0;
      v35 = v98;
      a9 = v99;
    }

    v84 = *(*(a1 + 120) + 8);
    v85 = *(v84 + 40);
    *(v84 + 40) = v47;

    if (!*(*(*(a1 + 120) + 8) + 40))
    {
      _HKInitializeLogging();
      v86 = HKLogCondenser();
      v21 = v100;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *v103 = 134218242;
        *&v103[4] = a2;
        *&v103[12] = 2080;
        *&v103[14] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
        _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, "Failed to get the data provenance object of the first sample with data_id %lld in %s", v103, 0x16u);
      }

      goto LABEL_74;
    }

    v21 = v100;
    a13 = v101;
    a11 = v97;
  }

  if (!*(*(*(a1 + 128) + 8) + 40))
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = objc_loadWeakRetained((v22 + 8));
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 metadataManager];
    v25 = [v24 metadataForObjectID:a2 baseMetadata:0 keyFilter:0 statement:*(a1 + 48) error:a13];

    if (v25)
    {
      v26 = [v25 mutableCopy];
      [v26 removeObjectsForKeys:*(a1 + 56)];
      v27 = *(*(a1 + 128) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      goto LABEL_7;
    }

    _HKInitializeLogging();
    v35 = HKLogCondenser();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v103 = 134218242;
      *&v103[4] = a2;
      *&v103[12] = 2080;
      *&v103[14] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "Failed to get the metadata dictionary of the sample with data_id %lld in %s", v103, 0x16u);
    }

LABEL_74:
    v59 = 0;
    goto LABEL_75;
  }

LABEL_7:
  v29 = [_HDWorkoutCondenserBufferDatum alloc];
  if (v29 && (*v103 = v29, *&v103[8] = _HDWorkoutCondenserBufferDatum, (v30 = objc_msgSendSuper2(v103, sel_init)) != 0))
  {
    v31 = v30;
    *(v30 + 4) = a6;
    *(v30 + 5) = a7;
    *(v30 + 6) = a5;
    uuid_copy(v30 + 8, a9);
    v32 = 0;
    v31[24] = a11 > 1;
    if (a11 > 1)
    {
      v33 = 64;
      goto LABEL_20;
    }
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

  v33 = 72;
LABEL_20:
  [*(a1 + v33) hk_appendUUIDBytes:a9];
  v49 = *(a1 + 168);
  v50 = *(a1 + 80);
  v35 = v31;
  v51 = v50;
  objc_opt_self();
  v52 = [v51 lastObject];
  v53 = v52;
  if (v52)
  {
    if (v32)
    {
      if (v52[4] != 0.0)
      {
        goto LABEL_28;
      }

      v95 = v52;
      goto LABEL_62;
    }

    if (*(v35 + 4) == v52[4])
    {
      v54 = v52;
      if (*(v35 + 4) != v53[4])
      {
        v94 = [MEMORY[0x277CCA890] currentHandler];
        [v94 handleFailureInMethod:sel_shouldReplaceDatum_ object:v35 file:@"HDWorkoutCondenser.m" lineNumber:2001 description:{@"Invalid parameter not satisfying: %@", @"_startTime == anotherDatum->_startTime"}];
      }

      v55 = *(v35 + 5);
      v56 = v54[5];
      if (v55 < v56)
      {
        goto LABEL_26;
      }

      if (v55 <= v56)
      {
        v89 = *(v35 + 6);
        v90 = v54[6];
        if (v89 < v90)
        {
LABEL_26:

LABEL_27:
          [v51 removeLastObject];
          goto LABEL_28;
        }

        if (v89 <= v90)
        {
          v91 = HKCompareUUIDBytes();

          if (v91 == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

LABEL_62:

      goto LABEL_29;
    }
  }

LABEL_28:
  [v51 addObject:v35];
LABEL_29:

  v57 = [*(a1 + 80) count];
  v58 = *(a1 + 40);
  if (!v58 || v57 >= *(v58 + 32))
  {
    v60 = [*(a1 + 80) firstObject];
    v61 = [*(a1 + 88) count];
    v62 = *(a1 + 40);
    if (v62 && v61 < v62[5] || (!v60 ? (v63 = 0.00000011920929) : (v63 = v60[4] + 0.00000011920929), v63 < *(*(*(a1 + 136) + 8) + 24)))
    {
LABEL_44:
      if (![*(a1 + 88) count])
      {
        if (v60)
        {
          *(*(*(a1 + 152) + 8) + 24) = v60[4];
          v73 = *(v60 + 5);
        }

        else
        {
          *(*(*(a1 + 152) + 8) + 24) = 0;
          v73 = 0;
        }

        *(*(*(a1 + 136) + 8) + 24) = v73;
      }

      v74 = *(*(a1 + 136) + 8);
      v75 = *(v74 + 24);
      if (v60)
      {
        if (v75 < v60[5])
        {
          v75 = v60[5];
        }

        *(v74 + 24) = v75;
        v77 = v60[5];
        v76 = v60[6];
        v78 = v60[4];
      }

      else
      {
        v76 = 0.0;
        if (v75 < 0.0)
        {
          v75 = 0.0;
        }

        *(v74 + 24) = v75;
        v78 = 0.0;
        v77 = 0.0;
      }

      v79 = *(a1 + 88);
      v80 = [MEMORY[0x277CCD180] datumWithStartTime:v78 value:v76 endTime:v77];
      [v79 addObject:v80];

      if ([*(a1 + 96) aggregationStyle] || *(a1 + 176) != 1)
      {
        v81 = *(a1 + 96);
        v82 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
        if (![v81 isEqual:v82])
        {

          goto LABEL_64;
        }

        v83 = *(a1 + 177);

        if (v83 != 1 || ![HDWorkoutCondenser coalesceHeartRateDatumsInDatumsCollection:*(a1 + 88)])
        {
          goto LABEL_64;
        }
      }

      else if (![HDWorkoutCondenser coalesceCumulativeDatumsInDatumsCollection:*(a1 + 88)])
      {
        goto LABEL_64;
      }

      ++*(*(*(a1 + 160) + 8) + 24);
LABEL_64:
      [*(a1 + 80) removeObjectAtIndex:0];
      v59 = 1;
LABEL_65:

      goto LABEL_75;
    }

    v102 = 0;
    v64 = [(HDWorkoutCondenser *)*(*(*(a1 + 152) + 8) + 24) _insertValuesForSeries:*(*(*(a1 + 144) + 8) + 40) quantityType:*(a1 + 96) startTime:*(a1 + 88) values:*(*(*(a1 + 120) + 8) + 40) provenance:v62 configuration:*(a1 + 32) transaction:&v102 countOut:a13 error:?];
    v65 = *(*(a1 + 144) + 8);
    v66 = *(v65 + 40);
    *(v65 + 40) = v64;

    v67 = *(*(*(a1 + 144) + 8) + 40);
    if (v67)
    {
      v68 = *(a1 + 40);
      if (v68)
      {
        v69 = v68[5];
      }

      else
      {
        v69 = 0;
      }

      if (v102 < v69)
      {
        goto LABEL_43;
      }

      v70 = [HDWorkoutCondenser _finishSeries:v67 quantityType:*(a1 + 96) baseMetadata:*(*(*(a1 + 128) + 8) + 40) workout:*(a1 + 104) UUIDDataToDelete:*(a1 + 72) configuration:v68 transaction:*(a1 + 32) error:?];
      [*(*(*(a1 + 128) + 8) + 40) removeObjectsForKeys:{*(a1 + 56), a13}];
      if (v70)
      {
        v71 = *(*(a1 + 144) + 8);
        v72 = *(v71 + 40);
        *(v71 + 40) = 0;

        [*(a1 + 72) setLength:0];
LABEL_43:
        [*(a1 + 88) removeAllObjects];
        goto LABEL_44;
      }

      _HKInitializeLogging();
      v92 = HKLogCondenser();
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
LABEL_83:

        v59 = 0;
        goto LABEL_65;
      }

      *v103 = 136315138;
      *&v103[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      v93 = "Failed to finish a series in the enumerator of workout condenser in %s";
    }

    else
    {
      _HKInitializeLogging();
      v92 = HKLogCondenser();
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *v103 = 136315138;
      *&v103[4] = "+[HDWorkoutCondenser _processSamplesWithQuantityType:workout:predicate:configuration:transaction:error:]_block_invoke";
      v93 = "Failed to insert into series in the enumerator of workout condenser in %s";
    }

    _os_log_error_impl(&dword_228986000, v92, OS_LOG_TYPE_ERROR, v93, v103, 0xCu);
    goto LABEL_83;
  }

  v59 = 1;
LABEL_75:

  v87 = *MEMORY[0x277D85DE8];
  return v59;
}

+ (id)_insertValuesForSeries:(void *)series quantityType:(void *)type startTime:(void *)time values:(void *)values provenance:(void *)provenance configuration:(void *)configuration transaction:(void *)transaction countOut:(uint64_t)self0 error:
{
  outCopy2 = out;
  v64[1] = *MEMORY[0x277D85DE8];
  WeakRetained = series;
  typeCopy = type;
  timeCopy = time;
  valuesCopy = values;
  provenanceCopy = provenance;
  configurationCopy = configuration;
  objc_opt_self();
  if (!WeakRetained)
  {
    v57 = configurationCopy;
    _HKInitializeLogging();
    v22 = HKLogCondenser();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

    if (v23)
    {
      v24 = HKLogCondenser();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        *&buf[4] = typeCopy;
        *&buf[12] = 2048;
        *&buf[14] = [timeCopy count];
        _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "Create series quantityType %{public}@ with %lu values", buf, 0x16u);
      }
    }

    v58 = provenanceCopy;
    v59 = timeCopy;
    if (provenanceCopy)
    {
      WeakRetained = objc_loadWeakRetained(provenanceCopy + 1);
    }

    else
    {
      WeakRetained = 0;
    }

    dataObjectClass = [typeCopy dataObjectClass];
    v26 = MEMORY[0x277CCD7E8];
    canonicalUnit = [typeCopy canonicalUnit];
    v28 = [v26 quantityWithUnit:canonicalUnit doubleValue:0.0];
    v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self];
    v60 = typeCopy;
    v30 = [dataObjectClass _unfrozenQuantitySampleWithQuantityType:typeCopy quantity:v28 startDate:v29 device:0];

    dataManager = [WeakRetained dataManager];
    v64[0] = v30;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    v32 = [HDSourceEntity alloc];
    sourceID = [valuesCopy sourceID];
    v33 = -[HDSQLiteEntity initWithPersistentID:](v32, "initWithPersistentID:", [sourceID longLongValue]);
    v34 = [HDDeviceEntity alloc];
    deviceID = [valuesCopy deviceID];
    v36 = -[HDSQLiteEntity initWithPersistentID:](v34, "initWithPersistentID:", [deviceID longLongValue]);
    sourceVersion = [valuesCopy sourceVersion];
    Current = CFAbsoluteTimeGetCurrent();
    timeZoneName = [valuesCopy timeZoneName];
    if (valuesCopy)
    {
      [valuesCopy operatingSystemVersion];
    }

    else
    {
      memset(buf, 0, 24);
    }

    v40 = [dataManager insertDataObjects:v56 sourceEntity:v33 deviceEntity:v36 sourceVersion:sourceVersion creationDate:timeZoneName timeZone:buf OSVersion:Current error:out];

    if (!v40)
    {
      v51 = 0;
      timeCopy = v59;
      v42 = v60;
      v45 = v57;
      provenanceCopy = v58;
      goto LABEL_26;
    }

    uUID = [v30 UUID];

    WeakRetained = uUID;
    timeCopy = v59;
    typeCopy = v60;
    configurationCopy = v57;
    provenanceCopy = v58;
    outCopy2 = out;
  }

  v42 = typeCopy;
  protectedDatabase = [configurationCopy protectedDatabase];
  v44 = HDDataEntityPredicateForDataUUID();
  v30 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:protectedDatabase predicate:v44 error:outCopy2];

  v45 = configurationCopy;
  if (!v30)
  {
    v51 = 0;
LABEL_26:
    v49 = valuesCopy;
    goto LABEL_27;
  }

  _HKInitializeLogging();
  v46 = HKLogCondenser();
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG);

  if (v47)
  {
    v48 = HKLogCondenser();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v54 = [timeCopy count];
      *buf = 134217984;
      *&buf[4] = v54;
      _os_log_debug_impl(&dword_228986000, v48, OS_LOG_TYPE_DEBUG, "Insert %lu values into series", buf, 0xCu);
    }
  }

  v49 = valuesCopy;
  if ([v30 insertValues:timeCopy transaction:configurationCopy error:outCopy2])
  {
    if (transaction)
    {
      v50 = [v30 countForSeriesWithTransaction:configurationCopy error:outCopy2];
      v51 = v50;
      if (!v50)
      {
        goto LABEL_27;
      }

      *transaction = [v50 integerValue];
    }

    WeakRetained = WeakRetained;
    v51 = WeakRetained;
  }

  else
  {
    v51 = 0;
  }

LABEL_27:

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

+ (uint64_t)_finishSeries:(uint64_t)series quantityType:(void *)type baseMetadata:(void *)metadata workout:(void *)workout UUIDDataToDelete:(void *)delete configuration:(void *)configuration transaction:(void *)transaction error:(void *)error
{
  typeCopy = type;
  metadataCopy = metadata;
  workoutCopy = workout;
  deleteCopy = delete;
  configurationCopy = configuration;
  transactionCopy = transaction;
  errorCopy = error;
  objc_opt_self();
  v30 = transactionCopy;
  v31 = errorCopy;
  v32 = typeCopy;
  v33 = workoutCopy;
  v34 = metadataCopy;
  v35 = deleteCopy;
  v21 = configurationCopy;
  v22 = deleteCopy;
  v23 = metadataCopy;
  v24 = workoutCopy;
  v25 = typeCopy;
  v26 = errorCopy;
  v27 = transactionCopy;
  v28 = HKWithAutoreleasePool();

  return v28;
}

+ (uint64_t)_deleteSamplesWithUUIDData:(void *)data configuration:(uint64_t)configuration error:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  dataCopy = data;
  objc_opt_self();
  hk_countOfUUIDs = [v6 hk_countOfUUIDs];
  _HKInitializeLogging();
  v9 = HKLogCondenser();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  if (v10)
  {
    v11 = HKLogCondenser();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v19 = 134217984;
      v20 = hk_countOfUUIDs;
      _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Delete %ld condensed samples", &v19, 0xCu);
    }
  }

  if (dataCopy)
  {
    v12 = dataCopy[7];
    if (v12)
    {
      v12[7] += hk_countOfUUIDs;
    }
  }

  v13 = objc_alloc_init(HDDataDeletionConfiguration);
  [(HDDataDeletionConfiguration *)v13 setFailIfNotFound:0];
  [(HDDataDeletionConfiguration *)v13 setPreserveExactStartAndEndDates:1];
  if (dataCopy)
  {
    WeakRetained = objc_loadWeakRetained(dataCopy + 1);
  }

  else
  {
    WeakRetained = 0;
  }

  dataManager = [WeakRetained dataManager];
  v16 = [dataManager deleteObjectsWithUUIDCollection:v6 configuration:v13 error:configuration];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __119__HDWorkoutCondenser__finishSeries_quantityType_baseMetadata_workout_UUIDDataToDelete_configuration_transaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((v4 + 8));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [*(a1 + 40) protectedDatabase];
  v7 = *(a1 + 48);
  v8 = HDDataEntityPredicateForDataUUID();
  v9 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:v6 predicate:v8 error:a2];

  if (v9)
  {
    v40 = WeakRetained;
    v10 = *(a1 + 88);
    v11 = *(a1 + 72);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v14 = v12;
    v15 = v11;
    v16 = v9;
    v17 = [objc_opt_self() seriesSyncIdentifierForEntity:v16 workout:v15 transaction:v14 error:a2];

    if (v17)
    {
      [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCC520]];
      [v13 setObject:&unk_283CB3FD8 forKeyedSubscript:*MEMORY[0x277CCC528]];
      v18 = v13;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      _HKInitializeLogging();
      v20 = HKLogCondenser();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v22 = HKLogCondenser();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v36 = [*(a1 + 72) UUID];
          v37 = *(a1 + 48);
          *buf = 138543874;
          v44 = v36;
          v45 = 2114;
          v46 = v37;
          v47 = 2114;
          v48 = v18;
          _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "Workout (%{public}@) freeze series %{public}@ with metadata: %{public}@", buf, 0x20u);
        }
      }

      WeakRetained = v40;
      v23 = [HDQuantitySampleSeriesEntity freezeSeriesWithIdentifier:*(a1 + 48) metadata:v18 endDate:0 profile:v40 error:a2];
      if (v23)
      {
        _HKInitializeLogging();
        v24 = HKLogCondenser();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

        if (v25)
        {
          v26 = HKLogCondenser();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v38 = [*(a1 + 72) UUID];
            v39 = [v23 frozenIdentifier];
            *buf = 138543618;
            v44 = v38;
            v45 = 2114;
            v46 = v39;
            _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "Workout (%{public}@) associate series %{public}@", buf, 0x16u);
          }
        }

        v27 = [v23 frozenIdentifier];
        v42 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v29 = [*(a1 + 72) UUID];
        v41 = 0;
        v30 = [HDAssociationEntity associateSampleUUIDs:v28 withSampleUUID:v29 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v41 profile:v40 error:a2];
        v31 = v41;

        if (v30)
        {
          v32 = *(a1 + 32);
          if (v32)
          {
            v33 = *(v32 + 56);
            if (v33)
            {
              ++v33[6];
            }
          }

          v19 = [(HDWorkoutCondenser *)*(a1 + 88) _deleteSamplesWithUUIDData:*(a1 + 32) configuration:a2 error:?];
        }

        else
        {
          v19 = 0;
        }

        WeakRetained = v40;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      WeakRetained = v40;
    }
  }

  else
  {
    v19 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __76__HDWorkoutCondenser__updateCondenserVersionForWorkout_configuration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CBEAA8];
  v6 = a2;
  v7 = [v5 date];
  v8 = [v4 updateCondenserVersion:6 date:v7 transaction:v6 error:a3];

  return v8;
}

+ (id)condensableQuantityTypes
{
  v30[25] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v30[0] = v29;
  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v30[1] = v28;
  v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v30[2] = v27;
  v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v30[3] = v26;
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB48]];
  v30[4] = v25;
  v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v30[5] = v24;
  v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];
  v30[6] = v23;
  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];
  v30[7] = v22;
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
  v30[8] = v21;
  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];
  v30[9] = v20;
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];
  v30[10] = v19;
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
  v30[11] = v18;
  v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];
  v30[12] = v17;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v30[13] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v30[14] = v15;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC90]];
  v30[15] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v30[16] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v30[17] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v30[18] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v30[19] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v30[20] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v30[21] = v8;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];
  v30[22] = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];
  v30[23] = v10;
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];
  v30[24] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:25];

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)coalesceCumulativeDatumsInDatumsCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy count];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    lastObject = [collectionCopy lastObject];
    [lastObject timeInterval];
    v9 = v8;
    [lastObject value];
    v11 = v10;
    [lastObject duration];
    v13 = v9 + v12;
    v14 = [collectionCopy objectAtIndex:v5];
    [v14 timeInterval];
    v16 = v15;
    [v14 value];
    v18 = v17;
    [v14 duration];
    v20 = v19;
    objc_opt_self();
    v6 = 0;
    if (v13 - v9 > 0.0)
    {
      v21 = v16 + v20;
      if (v21 - v16 > 0.0)
      {
        v6 = 0;
        if (vabdd_f64(v9, v21) <= 0.000011920929 && vabdd_f64(v11 / (v13 - v9), v18 / (v21 - v16)) <= 0.0000011920929)
        {
          if (v13 <= v21)
          {
            v22 = v16 + v20;
          }

          else
          {
            v22 = v13;
          }

          [collectionCopy removeObjectsInRange:{objc_msgSend(collectionCopy, "count") - 2, 2}];
          v23 = [MEMORY[0x277CCD180] datumWithStartTime:v16 value:v11 + v18 endTime:v22];
          [collectionCopy addObject:v23];

          v6 = 1;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)coalesceHeartRateDatumsInDatumsCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy count];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    lastObject = [collectionCopy lastObject];
    [lastObject timeInterval];
    v9 = v8;
    [lastObject value];
    v11 = v10;
    [lastObject duration];
    v13 = v12;
    v14 = [collectionCopy objectAtIndex:v5];
    [v14 timeInterval];
    v16 = v15;
    [v14 value];
    v18 = v17;
    [v14 duration];
    v20 = v16 + v19;
    objc_opt_self();
    v21 = vabdd_f64(v11, v18) <= 0.0000011920929;
    v6 = vabdd_f64(v9, v20) < 11.0 && v21;
    if (v6)
    {
      if (v9 + v13 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v9 + v13;
      }

      [collectionCopy removeObjectsInRange:{objc_msgSend(collectionCopy, "count") - 2, 2}];
      v23 = [MEMORY[0x277CCD180] datumWithStartTime:v16 value:v18 endTime:v22];
      [collectionCopy addObject:v23];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

BOOL __112__HDWorkoutCondenser__queue_submitAnalyticEventForReason_batchSize_success_duration_analyticsAccumulator_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D10A48];
  v6 = a2;
  v7 = HDSourceEntityPredicateForAppleWatchSources();
  v8 = [v6 unprotectedDatabase];

  v9 = [(HDSQLiteEntity *)HDSourceEntity countValueForProperty:v5 predicate:v7 database:v8 error:a3];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  v4 = *MEMORY[0x277D86230];
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, v4, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 24) invalidate];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = [WeakRetained database];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v15 = 0;
  v7 = [v3 takeAccessibilityAssertionWithOwnerIdentifier:v6 timeout:&v15 error:300.0];
  v8 = v15;
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = v7;

  if (!*(*(a1 + 32) + 24))
  {
    _HKInitializeLogging();
    v11 = HKLogCondenser();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      v13 = HKLogCondenser();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v17 = v8;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "Unable to get accessibilityAssertion before enqueing maintenance operation: %{public}@", buf, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_400(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogCondenser();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogCondenser();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Maintenance operation running", buf, 2u);
    }
  }

  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_401;
  v10[3] = &unk_27861FA38;
  v10[4] = v7;
  v11 = v3;
  v8 = *(a1 + 48);
  v12 = *(a1 + 40);
  v9 = v3;
  [v7 condenseWorkoutsForReason:0 workoutBatchLimit:v8 completion:v10];
}

void __72__HDWorkoutCondenser__performPeriodicActivityWithBatchLimit_completion___block_invoke_401(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[5];
  v5 = *(v4 + 16);
  v6 = a3;
  v5(v4);
  _HKInitializeLogging();
  v7 = HKLogCondenser();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogCondenser();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Maintenance operation finished", v12, 2u);
    }
  }

  [*(a1[4] + 24) invalidate];
  v10 = a1[4];
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;

  (*(a1[6] + 16))(0.0);
}

@end