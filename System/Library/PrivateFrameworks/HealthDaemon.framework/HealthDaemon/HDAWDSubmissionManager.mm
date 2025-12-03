@interface HDAWDSubmissionManager
- (BOOL)_setInt64:(int64_t)int64 keyPrefix:(id)prefix profile:(id)profile date:(id)date error:(id *)error;
- (BOOL)aggregateDatabaseSizeStats:(id)stats;
- (BOOL)runTask:(id)task error:(id *)error;
- (HDAWDSubmissionManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_actions;
- (id)_activitySummaryForActivityCacheIndex:(int64_t)index error:(id *)error;
- (id)_updateDeltaToInt64:(int64_t)int64 forKey:(id)key profile:(id)profile currentDate:(id)date timeInterval:(double)interval error:(id *)error;
- (id)diagnosticDescription;
- (int64_t)_int64ForKeyPrefix:(id)prefix profile:(id)profile date:(id *)date error:(id *)error;
- (int64_t)_manuallyEnteredTypesCountWithTransaction:(id)transaction error:(id *)error;
- (int64_t)_nonAppleSourcesWithDataSince:(id)since transaction:(id)transaction error:(id *)error;
- (uint64_t)_countOfObjectsWithSQLQuery:(uint64_t)query database:(void *)database error:(void *)error bindingHandler:(uint64_t)handler;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
- (void)resetTask:(id)task;
@end

@implementation HDAWDSubmissionManager

- (HDAWDSubmissionManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v51.receiver = self;
  v51.super_class = HDAWDSubmissionManager;
  v6 = [(HDAWDSubmissionManager *)&v51 init];
  if (v6)
  {
    if (!profileCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"HDAWDSubmissionManager.m" lineNumber:448 description:{@"Invalid parameter not satisfying: %@", @"profile"}];
    }

    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeWeak(&v6->_profile, profileCopy);
    v6->_fitnessDailyCollectionEnabledNotifyToken = -1;
    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    array = [MEMORY[0x277CBEB18] array];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    supportsAWDMetricSubmission = [behavior supportsAWDMetricSubmission];

    if (supportsAWDMetricSubmission)
    {
      objc_initWeak(&location, v6);
      v15 = [_HDAWDPeriodicAction alloc];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __42__HDAWDSubmissionManager_initWithProfile___block_invoke;
      v48[3] = &unk_278621628;
      objc_copyWeak(&v49, &location);
      v16 = @"com.apple.healthd.awd-submission-manager.heart-daily-analytics";
      v17 = @"HDAWDSubmissionManager.HeartDailyAnalytics";
      v18 = profileCopy;
      v19 = v48;
      if (v15)
      {
        v52.receiver = v15;
        v52.super_class = _HDAWDPeriodicAction;
        v20 = [(HDAWDSubmissionManager *)&v52 init];
        if (v20)
        {
          v21 = HKCreateSerialDispatchQueue();
          v22 = v20[1]._queue;
          v20[1]._queue = v21;

          v23 = [@"com.apple.healthd.awd-submission-manager.heart-daily-analytics" copy];
          v24 = *MEMORY[0x277D86298];
          v25 = *MEMORY[0x277D862D0];
          v26 = v20[2]._queue;
          v20[2]._queue = v23;

          v20->_fitnessDailyAction = v24;
          *&v20->_started = v25;
          LOBYTE(v20->_testHandler) = 1;
          *&v20[1].super.isa = vdupq_n_s64(1uLL);
          v20[1]._serverConnectionsByComponentId = 0x40C5180000000000;
          v27 = [@"HDAWDSubmissionManager.HeartDailyAnalytics" stringByAppendingString:@".WaitingToRun"];
          profile = v20->_profile;
          v20->_profile = v27;

          v29 = [@"HDAWDSubmissionManager.HeartDailyAnalytics" stringByAppendingString:@".LastSubmissionAttempt"];
          serverConnectionsByComponentId = v20->_serverConnectionsByComponentId;
          v20->_serverConnectionsByComponentId = v29;

          v31 = [@"HDAWDSubmissionManager.HeartDailyAnalytics" stringByAppendingString:@".IntervalCounter"];
          actions = v20->_actions;
          v20->_actions = v31;

          v33 = [@"HDAWDSubmissionManager.HeartDailyAnalytics" stringByAppendingString:@".LastProcessedDate"];
          v34 = v20->_queue;
          v20->_queue = v33;

          objc_storeWeak(&v20[1]._actions, v18);
          v35 = _Block_copy(v19);
          v36 = *&v20[1]._started;
          *&v20[1]._started = v35;

          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v20[2].super.isa = [standardUserDefaults integerForKey:v20->_profile];

          standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v20[2]._serverConnectionsByComponentId = [standardUserDefaults2 integerForKey:v20->_actions];

          standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v40 = [standardUserDefaults3 objectForKey:v20->_serverConnectionsByComponentId];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v20[2]._profile, v40);
          }

          standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v42 = [standardUserDefaults4 objectForKey:v20->_queue];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(&v20[2]._actions, v42);
          }
        }
      }

      else
      {
        v20 = 0;
      }

      [(NSMutableArray *)array addObject:v20];
      objc_storeStrong(&v6->_actions, array);
      v43 = objc_loadWeakRetained(&v6->_profile);
      [v43 registerProfileReadyObserver:v6 queue:v6->_queue];

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
    }

    else
    {
      v44 = v6->_actions;
      v6->_actions = array;
      v45 = array;

      array = objc_loadWeakRetained(&v6->_profile);
      [(NSMutableArray *)array registerProfileReadyObserver:v6 queue:v6->_queue];
    }
  }

  return v6;
}

BOOL __42__HDAWDSubmissionManager_initWithProfile___block_invoke(uint64_t a1, void *a2, int a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (!WeakRetained)
  {
    v37 = 0;
    goto LABEL_23;
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v53 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
  v9 = HDHeartDailyAnalyticsProcessingIntervalForCurrentDateAndCalendar(v8, v53);
  v10 = [(_HDAWDPeriodicAction *)v7 lastProcessedDate];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = [v9 startDate];
  v12 = [v10 hk_isBeforeDate:v11];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogAnalytics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

LABEL_14:
      v50 = v10;
      v51 = v8;
      v52 = v7;
      v23 = [HDHeartDailyAnalyticsBuilder alloc];
      v24 = objc_loadWeakRetained(WeakRetained + 1);
      v25 = objc_alloc(MEMORY[0x277CBEBD0]);
      v26 = [v25 initWithSuiteName:*MEMORY[0x277CCE458]];
      v27 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
      v28 = [MEMORY[0x277CBEBD0] hk_remoteFeatureAvailabilityUserDefaults];
      [MEMORY[0x277D2BCF8] sharedInstance];
      v30 = v29 = v9;
      v31 = objc_loadWeakRetained(WeakRetained + 1);
      [v31 notificationManager];
      v32 = v49 = WeakRetained;
      v33 = [v32 areHealthNotificationsAuthorized];
      BYTE1(v48) = HKImproveHealthAndActivityAnalyticsAllowed();
      LOBYTE(v48) = v33;
      v34 = [(HDHeartDailyAnalyticsBuilder *)v23 initWithProfile:v24 calendar:v53 dateInterval:v29 heartRateNotificationsUserDefaults:v26 heartRhythmUserDefaults:v27 remoteFeatureAvailabilityUserDefaults:v28 pairedDeviceRegistry:v30 areHealthNotificationsAuthorized:v48 isHealthDataSubmissionAllowed:?];

      v54 = 0;
      v35 = [(HDHeartDailyAnalyticsBuilder *)v34 heartDailyAnalyticsWithError:&v54];
      v36 = v54;
      v37 = v35 != 0;
      if (v35)
      {
        WeakRetained = v49;
        v38 = objc_loadWeakRetained(v49 + 1);
        v39 = [v38 daemon];
        v40 = [v39 analyticsSubmissionCoordinator];
        [v40 heartDaily_reportHeartDailyAnalytics:v35];

        v41 = [v29 endDate];
        v42 = v41;
        v7 = v52;
        v9 = v29;
        if (v52)
        {
          v43 = v52[12];
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __45___HDAWDPeriodicAction_setLastProcessedDate___block_invoke;
          v56 = &unk_278613920;
          v57 = v52;
          v58 = v41;
          dispatch_async(v43, buf);
        }

        v8 = v51;
      }

      else
      {
        WeakRetained = v49;
        _HKInitializeLogging();
        v42 = HKLogAnalytics();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v46;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          v47 = v46;
          _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "[%{public}@] Error building heart daily analytics: %{public}@", buf, 0x16u);
        }

        v8 = v51;
        v7 = v52;
        v9 = v29;
      }

      v10 = v50;

      goto LABEL_22;
    }

    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v10;
    v14 = *&buf[4];
    v15 = "[%{public}@] Skipping some prior days of HeartDailyAnalytics: last submission was %{public}@";
    v16 = v13;
    v17 = 22;
LABEL_6:
    _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);

    goto LABEL_7;
  }

  v18 = [v9 startDate];
  v19 = [v10 hk_isAfterDate:v18];

  if (!v19)
  {
    goto LABEL_14;
  }

  _HKInitializeLogging();
  v20 = HKLogAnalytics();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v10;
    v21 = *&buf[4];
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not yet time to submit HeartDailyAnalytics: last submission was %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    _HKInitializeLogging();
    v13 = HKLogAnalytics();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v22 = objc_opt_class();
    *buf = 138543362;
    *&buf[4] = v22;
    v14 = v22;
    v15 = "[%{public}@] This this is a forced submission, so we're submitting anyway";
    v16 = v13;
    v17 = 12;
    goto LABEL_6;
  }

  v37 = 0;
LABEL_22:

LABEL_23:
  v44 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)dealloc
{
  fitnessDailyCollectionEnabledNotifyToken = self->_fitnessDailyCollectionEnabledNotifyToken;
  if (fitnessDailyCollectionEnabledNotifyToken != -1)
  {
    notify_cancel(fitnessDailyCollectionEnabledNotifyToken);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  v7.receiver = self;
  v7.super_class = HDAWDSubmissionManager;
  [(HDAWDSubmissionManager *)&v7 dealloc];
}

- (id)_actions
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__97;
    v9 = __Block_byref_object_dispose__97;
    v10 = 0;
    v1 = *(self + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __34__HDAWDSubmissionManager__actions__block_invoke;
    v4[3] = &unk_278613990;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __34__HDAWDSubmissionManager__actions__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)profileDidBecomeReady:(id)ready
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v4 = self->_actions;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v8 = MEMORY[0x277CCC2B0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (v10)
        {
          _HKInitializeLogging();
          v11 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
          {
            v12 = *(v10 + 160);
            *buf = 138543618;
            v26 = v10;
            v27 = 2114;
            v28 = v12;
            _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ starting", buf, 0x16u);
          }

          v13 = *(v10 + 96);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __29___HDAWDPeriodicAction_start__block_invoke;
          block[3] = &unk_278613968;
          block[4] = v10;
          dispatch_sync(v13, block);
        }
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  self->_started = 1;

  obja = objc_loadWeakRetained(&self->_profile);
  daemon = [obja daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:self->_queue];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v38 = *MEMORY[0x277D85DE8];
  v20 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [(HDAWDSubmissionManager *)self _actions];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = v6;
        if (v6)
        {
          v8 = *(v6 + 20);
          v25 = 0;
          v26 = &v25;
          v27 = 0x2020000000;
          v28 = 0;
          v9 = *(v7 + 12);
          block = MEMORY[0x277D85DD0];
          p_block = 3221225472;
          v33 = __39___HDAWDPeriodicAction_intervalCounter__block_invoke;
          v34 = &unk_278613990;
          v35 = v7;
          v36 = &v25;
          dispatch_sync(v9, &block);
          v10 = *(v26 + 24);
          _Block_object_dispose(&v25, 8);
          v11 = *(v7 + 16);
          block = 0;
          p_block = &block;
          v33 = 0x3032000000;
          v34 = __Block_byref_object_copy__97;
          v35 = __Block_byref_object_dispose__97;
          v36 = 0;
          v12 = *(v7 + 12);
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __49___HDAWDPeriodicAction_lastSubmissionAttemptDate__block_invoke;
          v28 = &unk_278613990;
          v29 = v7;
          v30 = &block;
          dispatch_sync(v12, &v25);
          v13 = *(p_block + 40);
          _Block_object_dispose(&block, 8);
        }

        else
        {
          v11 = 0;
          v8 = 0;
          v10 = 0;
          v13 = 0;
        }

        lastProcessedDate = [(_HDAWDPeriodicAction *)v7 lastProcessedDate];
        [v20 appendFormat:@"%@: counter:%ld waiting:%ld last:%@ processed:%@\n", v8, v10, v11, v13, lastProcessedDate];

        ++v5;
      }

      while (v4 != v5);
      v15 = [obj countByEnumeratingWithState:&v21 objects:v37 count:16];
      v4 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)runTask:(id)task error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(HDAWDSubmissionManager *)self _actions];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v28 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        if (v13)
        {
          v14 = v13[20];
        }

        else
        {
          v14 = 0;
        }

        if ([v14 isEqualToString:taskCopy])
        {
          v16 = v13;

          if (!v13)
          {
            goto LABEL_17;
          }

          if ((*(*(v16 + 14) + 16))())
          {
            [*(v16 + 15) didPerformActivityWithResult:0 minimumRetryInterval:0 activityStartDate:0 error:v16[10]];
            v17 = 0;
            v18 = 1;
            goto LABEL_27;
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ activity %@ failed during forced execution", objc_opt_class(), *(v16 + 20), v25];
          v21 = [MEMORY[0x277CCA9B8] hk_error:100 description:v20];

          [*(v16 + 15) didPerformActivityWithResult:2 minimumRetryInterval:0 activityStartDate:v21 error:v16[10]];
          v17 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Failed to complete task %@", taskCopy}];
          if (v17)
          {
            if (error)
            {
              v22 = v17;
              goto LABEL_23;
            }

            _HKLogDroppedError();
          }

          goto LABEL_26;
        }

        ++v12;
      }

      while (v10 != v12);
      v15 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v10 = v15;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v17 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"AWD task '%@' not found", taskCopy}];
  if (!v17)
  {
    goto LABEL_25;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v19 = v17;
  v16 = 0;
LABEL_23:
  *error = v17;
LABEL_26:

  v18 = 0;
LABEL_27:

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)resetTask:(id)task
{
  v20 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  [(HDAWDSubmissionManager *)self _actions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (v10)
        {
          if ([*(v10 + 160) isEqualToString:taskCopy])
          {
            v12 = *(v10 + 96);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __29___HDAWDPeriodicAction_reset__block_invoke;
            block[3] = &unk_278613968;
            block[4] = v10;
            dispatch_sync(v12, block);
            goto LABEL_15;
          }
        }

        else if ([0 isEqualToString:{taskCopy, v14}])
        {
          goto LABEL_15;
        }

        ++v9;
      }

      while (v7 != v9);
      v11 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      v7 = v11;
    }

    while (v11);
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_countOfObjectsWithSQLQuery:(uint64_t)query database:(void *)database error:(void *)error bindingHandler:(uint64_t)handler
{
  databaseCopy = database;
  errorCopy = error;
  v9 = errorCopy;
  if (query)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HDAWDSubmissionManager__countOfObjectsWithSQLQuery_database_error_bindingHandler___block_invoke;
    v12[3] = &unk_278614620;
    v12[4] = &v13;
    if ([errorCopy executeSQL:databaseCopy error:handler bindingHandler:0 enumerationHandler:v12])
    {
      v10 = v14[3];
    }

    else
    {
      v10 = -1;
      v14[3] = -1;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)_manuallyEnteredTypesCountWithTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  v7 = HDSourceEntityPredicateForSourceWithBundleIdentifier(@"com.apple.Health");
  unprotectedDatabase = [transactionCopy unprotectedDatabase];
  v9 = [HDSourceEntity sourcesWithPredicate:v7 includeDeleted:0 database:unprotectedDatabase error:error];

  if (v9)
  {
    v10 = [v9 hk_map:&__block_literal_global_106];
    v11 = [v10 componentsJoinedByString:{@", "}];

    v22 = MEMORY[0x277CCACA8];
    v21 = +[(HDSQLiteSchemaEntity *)HDSampleEntity];
    +[(HDSQLiteSchemaEntity *)HDDataEntity];
    v12 = v23 = transactionCopy;
    v24 = v7;
    v13 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    v14 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    v15 = +[(HDSQLiteSchemaEntity *)HDMetadataValueEntity];
    v16 = +[(HDSQLiteSchemaEntity *)HDMetadataKeyEntity];
    v17 = [v22 stringWithFormat:@"SELECT COUNT(DISTINCT %@) FROM %@ s INNER JOIN %@ o USING (%@) INNER JOIN %@ ON (o.%@ = %@.rowid) INNER JOIN %@ mv ON (mv.%@ = o.%@) INNER JOIN %@ mk ON (mk.rowid = mv.%@) WHERE (%@ in (%@)) AND mk.%@='%@' AND mv.%@ > 0", @"data_type", v21, v12, @"data_id", v13, @"provenance", v14, v15, @"object_id", @"data_id", v16, @"key_id", @"data_provenances.source_id", v11, @"key", *MEMORY[0x277CCC548], @"numerical_value"];

    transactionCopy = v23;
    protectedDatabase = [v23 protectedDatabase];
    v19 = [HDAWDSubmissionManager _countOfObjectsWithSQLQuery:v17 database:protectedDatabase error:error bindingHandler:?];

    v7 = v24;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

uint64_t __74__HDAWDSubmissionManager__manuallyEnteredTypesCountWithTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

- (int64_t)_nonAppleSourcesWithDataSince:(id)since transaction:(id)transaction error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  sinceCopy = since;
  transactionCopy = transaction;
  v10 = MEMORY[0x277D10B90];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ & %llu) == 0", @"source_options", 2];
  v30[0] = @"source_options";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v13 = [v10 predicateWithSQL:v11 overProperties:v12 values:MEMORY[0x277CBEBF8]];

  unprotectedDatabase = [transactionCopy unprotectedDatabase];
  v15 = [HDSourceEntity sourcesWithPredicate:v13 includeDeleted:0 database:unprotectedDatabase error:error];

  if (v15)
  {
    [v15 hk_map:&__block_literal_global_500];
    v16 = v29 = self;
    v17 = [v16 componentsJoinedByString:{@", "}];

    v28 = MEMORY[0x277CCACA8];
    v18 = +[(HDSQLiteSchemaEntity *)HDDataEntity];
    v19 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    v20 = +[(HDSQLiteSchemaEntity *)HDDataProvenanceEntity];
    [sinceCopy timeIntervalSinceReferenceDate];
    v21 = v17;
    v23 = [v28 stringWithFormat:@"SELECT COUNT(*) FROM(SELECT %@, COUNT(*) AS rows FROM %@ o  INNER JOIN %@ ON (o.%@ = %@.rowid)  WHERE (%@ in (%@))  AND o.%@ > %.0lf GROUP BY %@) WHERE rows > 0", @"data_provenances.source_id", v18, v19, @"provenance", v20, @"data_provenances.source_id", v17, @"creation_date", v22, @"data_provenances.source_id"];

    protectedDatabase = [transactionCopy protectedDatabase];
    v25 = [HDAWDSubmissionManager _countOfObjectsWithSQLQuery:v29 database:v23 error:protectedDatabase bindingHandler:error];
  }

  else
  {
    v25 = -1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __74__HDAWDSubmissionManager__nonAppleSourcesWithDataSince_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

- (int64_t)_int64ForKeyPrefix:(id)prefix profile:(id)profile date:(id *)date error:(id *)error
{
  v29[2] = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  profileCopy = profile;
  if (date)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAWDSubmissionManager.m" lineNumber:749 description:{@"Invalid parameter not satisfying: %@", @"date != NULL"}];

    if (error)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAWDSubmissionManager.m" lineNumber:750 description:{@"Invalid parameter not satisfying: %@", @"error != NULL"}];

LABEL_3:
  v13 = prefixCopy;
  v14 = [v13 stringByAppendingString:@"_DATE"];
  v29[0] = v13;
  v29[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  v16 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity valuesForKeys:v15 domain:@"DATABASE_SIZE" category:0 profile:profileCopy error:error];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:v13];
    v18 = v17;
    if (v17)
    {
      longLongValue = [v17 longLongValue];
    }

    else
    {
      longLongValue = -1;
    }

    v21 = [v16 objectForKeyedSubscript:v14];
    v22 = v21;
    if (v21)
    {
      v23 = MEMORY[0x277CBEAA8];
      [v21 doubleValue];
      v20 = [v23 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    longLongValue = -1;
  }

  v24 = v20;
  *date = v20;

  v25 = *MEMORY[0x277D85DE8];
  return longLongValue;
}

- (BOOL)_setInt64:(int64_t)int64 keyPrefix:(id)prefix profile:(id)profile date:(id)date error:(id *)error
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = prefix;
  v11 = MEMORY[0x277CCABB0];
  dateCopy = date;
  profileCopy = profile;
  prefixCopy = prefix;
  v15 = [v11 numberWithLongLong:int64];
  v25[0] = v15;
  v16 = [prefixCopy stringByAppendingString:@"_DATE"];
  v24[1] = v16;
  v17 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v19 = v18;

  v20 = [v17 numberWithDouble:v19];
  v25[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  LOBYTE(error) = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity setValuesWithDictionary:v21 domain:@"DATABASE_SIZE" category:0 profile:profileCopy error:error];

  v22 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)_updateDeltaToInt64:(int64_t)int64 forKey:(id)key profile:(id)profile currentDate:(id)date timeInterval:(double)interval error:(id *)error
{
  keyCopy = key;
  profileCopy = profile;
  dateCopy = date;
  v28 = 0;
  v17 = [(HDAWDSubmissionManager *)self _int64ForKeyPrefix:keyCopy profile:profileCopy date:&v28 error:error];
  v18 = v28;
  v19 = v18;
  v20 = 0;
  if ((v17 & 0x8000000000000000) == 0 && v18)
  {
    [dateCopy timeIntervalSinceDate:v18];
    if (v21 <= interval + -43200.0)
    {
      v20 = 0;
      if (v21 < interval && v21 >= 0.0)
      {
        v20 = &unk_283CB2460;
        goto LABEL_8;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:(int64 - v17) * interval / v21];
    }
  }

  v27 = 0;
  v22 = [(HDAWDSubmissionManager *)self _setInt64:int64 keyPrefix:keyCopy profile:profileCopy date:dateCopy error:&v27];
  v23 = v27;
  if (!v22)
  {
    v24 = *MEMORY[0x277CCC2B0];
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Saving new 'last' value for %@", keyCopy];
    _HKLogDroppedErrorWithReason();
  }

LABEL_8:

  return v20;
}

- (BOOL)aggregateDatabaseSizeStats:(id)stats
{
  statsCopy = stats;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = HDDatabaseSizeInMB(WeakRetained);

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:HDBucketedDatabaseSizeInMB(v6)];
  [statsCopy setObject:v7 forKeyedSubscript:@"totalDatabaseSize"];

  v8 = MEMORY[0x277CCABB0];
  v9 = objc_loadWeakRetained(&self->_profile);
  v10 = [v8 numberWithLongLong:{HDDatabaseBucketedSizeInMBForDatabaseType(v9, 1, 0)}];
  [statsCopy setObject:v10 forKeyedSubscript:@"unprotectedDatabaseSize"];

  v11 = MEMORY[0x277CCABB0];
  v12 = objc_loadWeakRetained(&self->_profile);
  v13 = [v11 numberWithLongLong:{HDDatabaseBucketedSizeInMBForDatabaseType(v12, 1, 1)}];
  [statsCopy setObject:v13 forKeyedSubscript:@"unprotectedDatabaseWALSize"];

  v14 = MEMORY[0x277CCABB0];
  v15 = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 numberWithLongLong:{HDDatabaseBucketedSizeInMBForDatabaseType(v15, 0, 0)}];
  [statsCopy setObject:v16 forKeyedSubscript:@"protectedDatabaseSize"];

  v17 = MEMORY[0x277CCABB0];
  v18 = objc_loadWeakRetained(&self->_profile);
  v19 = [v17 numberWithLongLong:{HDDatabaseBucketedSizeInMBForDatabaseType(v18, 0, 1)}];
  [statsCopy setObject:v19 forKeyedSubscript:@"protectedDatabaseWALSize"];

  v20 = objc_loadWeakRetained(&self->_profile);
  date = [MEMORY[0x277CBEAA8] date];
  v32 = 0;
  v22 = [(HDAWDSubmissionManager *)self _updateDeltaToInt64:v6 forKey:@"LAST_MONTH_DATABASE_SIZE" profile:v20 currentDate:date timeInterval:&v32 error:2592000.0];
  v23 = v32;

  if (v22)
  {
    [statsCopy setObject:v22 forKeyedSubscript:@"lastMonthDatabaseSizeIncreaseMB"];
  }

  else if (v23)
  {
    v24 = *MEMORY[0x277CCC2B0];
    _HKLogDroppedErrorWithReason();
  }

  v25 = objc_loadWeakRetained(&self->_profile);
  date2 = [MEMORY[0x277CBEAA8] date];
  v31 = v23;
  v27 = [(HDAWDSubmissionManager *)self _updateDeltaToInt64:v6 forKey:@"LAST_WEEK_DATABASE_SIZE" profile:v25 currentDate:date2 timeInterval:&v31 error:604800.0];
  v28 = v31;

  if (v27)
  {
    [statsCopy setObject:v27 forKeyedSubscript:@"lastWeekDatabaseSizeIncreaseMB"];
  }

  else if (v28)
  {
    v29 = *MEMORY[0x277CCC2B0];
    _HKLogDroppedErrorWithReason();
  }

  return 1;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];

  v9 = [(HDAWDSubmissionManager *)self aggregateDatabaseSizeStats:v6];
  v10 = v6;
  if (self)
  {
    v11 = objc_loadWeakRetained(&self->_profile);
    deviceContextManager = [v11 deviceContextManager];
    v39 = 0;
    v13 = [deviceContextManager numberOfDeviceContextsPerDeviceType:&v39];
    v14 = v39;

    if (v14)
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v42 = 2114;
        v43 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get device contexts dictionary for healthd daily analytics: %{public}@", buf, 0x16u);
      }
    }

    v16 = [v13 objectForKeyedSubscript:&unk_283CB2478];
    if (v16)
    {
      v17 = [v13 objectForKeyedSubscript:&unk_283CB2478];
      [v10 setObject:v17 forKeyedSubscript:@"countPairediPhone"];
    }

    else
    {
      [v10 setObject:&unk_283CB2490 forKeyedSubscript:@"countPairediPhone"];
    }

    v18 = [v13 objectForKeyedSubscript:&unk_283CB24A8];
    if (v18)
    {
      v19 = [v13 objectForKeyedSubscript:&unk_283CB24A8];
      [v10 setObject:v19 forKeyedSubscript:@"countPairediPad"];
    }

    else
    {
      [v10 setObject:&unk_283CB2490 forKeyedSubscript:@"countPairediPad"];
    }

    v20 = [v13 objectForKeyedSubscript:&unk_283CB24C0];
    if (v20)
    {
      v21 = [v13 objectForKeyedSubscript:&unk_283CB24C0];
      [v10 setObject:v21 forKeyedSubscript:@"countPairedWatch"];
    }

    else
    {
      [v10 setObject:&unk_283CB2490 forKeyedSubscript:@"countPairedWatch"];
    }

    v22 = [v13 objectForKeyedSubscript:&unk_283CB24D8];
    if (v22)
    {
      v23 = [v13 objectForKeyedSubscript:&unk_283CB24D8];
      [v10 setObject:v23 forKeyedSubscript:@"countPairedVisionPro"];
    }

    else
    {
      [v10 setObject:&unk_283CB2490 forKeyedSubscript:@"countPairedVisionPro"];
    }
  }

  v24 = +[HDDatabaseTransactionContext contextForReadingProtectedData];
  v38 = 0;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __73__HDAWDSubmissionManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke;
  v35 = &unk_278613218;
  selfCopy2 = self;
  v25 = v10;
  v37 = v25;
  v26 = [database performTransactionWithContext:v24 error:&v38 block:&v32 inaccessibilityHandler:0];
  v27 = v38;

  if (self && (v26 & v9 & 1) != 0)
  {
    (*(completionCopy + 2))(completionCopy, v25, 0, 0);
  }

  else
  {
    hk_isDatabaseAccessibilityError = [v27 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC2B0];
    v30 = *MEMORY[0x277CCC2B0];
    if (hk_isDatabaseAccessibilityError)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v42 = 2114;
        v43 = v27;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: Database inaccessible while computing usage metric, will retry: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Failed queries for daily healthd metrics, will retry: %{public}@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 2, v27);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HDAWDSubmissionManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _manuallyEnteredTypesCountWithTransaction:v5 error:a3];
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v14 = 0;
    goto LABEL_4;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = v5;
  v11 = +[(HDSQLiteSchemaEntity *)HDSourceEntity];
  v12 = [v9 stringWithFormat:@"SELECT COUNT(*) FROM %@ WHERE (%@ & %llu) == 0", v11, @"source_options", 2];

  v13 = [v10 unprotectedDatabase];

  v14 = [HDAWDSubmissionManager _countOfObjectsWithSQLQuery:v8 database:v12 error:v13 bindingHandler:a3];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_18:
    v30 = 0;
    goto LABEL_24;
  }

LABEL_4:
  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = [v15 dateByAddingTimeInterval:-604800.0];

  v17 = [*(a1 + 32) _nonAppleSourcesWithDataSince:v16 transaction:v5 error:a3];
  if (v17 < 0)
  {
    v30 = 0;
  }

  else
  {
    v32 = v17;
    v33 = v16;
    if (!*(a1 + 32))
    {
      goto LABEL_20;
    }

    v18 = *MEMORY[0x277D10A48];
    v19 = v5;
    v20 = HDSourceEntityPredicateForAppleWatchSources();
    v21 = [v19 unprotectedDatabase];

    v22 = [(HDSQLiteEntity *)HDSourceEntity countValueForProperty:v18 predicate:v20 database:v21 error:a3];

    if (v22)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v22, "integerValue") > 0}];

      if (v23)
      {
        if (v7 >= 0xA)
        {
          v24 = 10;
        }

        else
        {
          v24 = v7;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
        [*(a1 + 40) setObject:v25 forKeyedSubscript:@"manuallyEnteredTypesCount"];

        if (v14 >= 5)
        {
          v26 = 5;
        }

        else
        {
          v26 = v14;
        }

        v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v26];
        [*(a1 + 40) setObject:v27 forKeyedSubscript:@"thirdPartyAppCounts"];

        if (v32 >= 5)
        {
          v28 = 5;
        }

        else
        {
          v28 = v32;
        }

        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
        [*(a1 + 40) setObject:v29 forKeyedSubscript:@"thirdPartyAppsWroteDataCount"];

        [*(a1 + 40) setObject:v23 forKeyedSubscript:@"hasWatchSource"];
        v30 = 1;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
LABEL_20:
      v30 = 0;
      v23 = 0;
    }

    v16 = v33;
  }

LABEL_24:
  return v30;
}

- (id)_activitySummaryForActivityCacheIndex:(int64_t)index error:(id *)error
{
  v7 = [HDActivitySummaryBuilder alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = [(HDActivitySummaryBuilder *)v7 initWithProfile:WeakRetained];

  [(HDActivitySummaryBuilder *)v9 setShouldIncludePrivateProperties:1];
  [(HDActivitySummaryBuilder *)v9 setShouldIncludeStatistics:0];
  [(HDActivitySummaryBuilder *)v9 setOrderByDateAscending:1];
  [(HDActivitySummaryBuilder *)v9 setLimit:1];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__97;
  v19 = __Block_byref_object_dispose__97;
  v20 = 0;
  v10 = HDActivityCacheEntityPredicateForCacheIndex(index, 1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HDAWDSubmissionManager__activitySummaryForActivityCacheIndex_error___block_invoke;
  v14[3] = &unk_278621670;
  v14[4] = &v15;
  if ([(HDActivitySummaryBuilder *)v9 enumerateActivitySummariesWithPredicate:v10 error:error handler:v14])
  {
    v11 = v16[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end