@interface FCGoalCompletionCoordinator
- (BOOL)_goalTypeAllowed:(int64_t)a3;
- (BOOL)runDailyGoalCompletionDetectionForGoalType:(int64_t)a3 activitySummaryIndex:(int64_t)a4 previousValue:(double)a5 currentValue:(double)a6 goalValue:(double)a7 shouldAlert:(BOOL)a8 goalMetHandler:(id)a9;
- (FCGoalCompletionCoordinator)initWithProfile:(id)a3 goalCompletionStore:(id)a4 serviceQueue:(id)a5;
- (FCGoalCompletionCoordinator)initWithProfile:(id)a3 serviceQueue:(id)a4;
- (FCGoalCompletionCoordinatorDelegate)delegate;
- (int64_t)_activitySummaryIndexForDate:(id)a3;
- (void)concludeGoalDetectionRun;
- (void)notificationPosted:(id)a3;
@end

@implementation FCGoalCompletionCoordinator

- (FCGoalCompletionCoordinator)initWithProfile:(id)a3 serviceQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FCGoalCompletionCoordinator;
  v8 = [(FCGoalCompletionCoordinator *)&v11 init];
  if (v8)
  {
    v9 = [[FCGoalCompletionStore alloc] initWithProfile:v6];
    v8 = [(FCGoalCompletionCoordinator *)v8 initWithProfile:v6 goalCompletionStore:v9 serviceQueue:v7];
  }

  return v8;
}

- (FCGoalCompletionCoordinator)initWithProfile:(id)a3 goalCompletionStore:(id)a4 serviceQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FCGoalCompletionCoordinator;
  v11 = [(FCGoalCompletionCoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_goalCompletionStore, a4);
    objc_storeWeak(&v12->_profile, v8);
    objc_storeStrong(&v12->_serviceQueue, a5);
  }

  return v12;
}

- (void)notificationPosted:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "Removing goal completion types for content %@", &v10, 0xCu);
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = [v4 completedGoalTypes];
  v8 = [v6 setWithArray:v7];

  -[FCGoalCompletionCoordinator notificationPostedForGoalTypes:activitySummaryIndex:](self, "notificationPostedForGoalTypes:activitySummaryIndex:", v8, [v4 activitySummaryIndex]);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)runDailyGoalCompletionDetectionForGoalType:(int64_t)a3 activitySummaryIndex:(int64_t)a4 previousValue:(double)a5 currentValue:(double)a6 goalValue:(double)a7 shouldAlert:(BOOL)a8 goalMetHandler:(id)a9
{
  v9 = a8;
  v42 = *MEMORY[0x277D85DE8];
  v16 = a9;
  if (![(FCGoalCompletionCoordinator *)self _goalTypeAllowed:a3])
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 67109120;
      *&v39[4] = a3;
      _os_log_impl(&dword_24B55B000, v21, OS_LOG_TYPE_DEFAULT, "Goal type %d not allowed on device", v39, 8u);
    }

    goto LABEL_12;
  }

  if (a5 >= a7)
  {
    [(FCGoalCompletionStore *)self->_goalCompletionStore addDailyGoalTypePreviouslyMet:a3 activitySummaryIndex:a4];
  }

  v17 = v16[2](v16, a5, a7);
  v18 = v16[2](v16, a6, a7);
  v19 = v18;
  if ((v17 & 1) != 0 || !v18)
  {
    _HKInitializeLogging();
    v22 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEBUG))
    {
      [FCGoalCompletionCoordinator runDailyGoalCompletionDetectionForGoalType:v17 activitySummaryIndex:v19 previousValue:v22 currentValue:? goalValue:? shouldAlert:? goalMetHandler:?];
    }

LABEL_12:
    v23 = 0;
    goto LABEL_30;
  }

  if (a3 > 4)
  {
    v20 = @"Unknown";
  }

  else
  {
    v20 = off_27900B3F8[a3];
  }

  v24 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  _HKInitializeLogging();
  v25 = MEMORY[0x277CCC290];
  v26 = *MEMORY[0x277CCC290];
  v27 = os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v27)
    {
      *v39 = 138413314;
      *&v39[4] = v20;
      *&v39[12] = 2048;
      *&v39[14] = a4;
      *&v39[22] = 2048;
      v40 = a5;
      *v41 = 2048;
      *&v41[2] = a6;
      *&v41[10] = 2048;
      *&v41[12] = a7;
      v28 = "Goal type %@ for summary index %lld went from %f to %f; goal is %f";
      v29 = v26;
      v30 = 52;
LABEL_19:
      _os_log_impl(&dword_24B55B000, v29, OS_LOG_TYPE_DEFAULT, v28, v39, v30);
    }
  }

  else if (v27)
  {
    *v39 = 138412290;
    *&v39[4] = v20;
    v28 = "Goal type %@ today value updated";
    v29 = v26;
    v30 = 12;
    goto LABEL_19;
  }

  if ([(FCGoalCompletionStore *)self->_goalCompletionStore isDailyGoalTypeMet:a3 activitySummaryIndex:a4, *v39, *&v39[16], *&v40, *v41, *&v41[16], v42])
  {
    _HKInitializeLogging();
    v31 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      goalCompletionStore = self->_goalCompletionStore;
      v33 = v31;
      v34 = [(FCGoalCompletionStore *)goalCompletionStore allGoalTypesMetForActivitySummaryIndex:a4];
      *v39 = 138543874;
      *&v39[4] = v20;
      *&v39[12] = 2048;
      *&v39[14] = a4;
      *&v39[22] = 2112;
      v40 = *&v34;
      _os_log_impl(&dword_24B55B000, v33, OS_LOG_TYPE_DEFAULT, "Attempted to add goal type %{public}@ that was already added for activitySummaryIndex: %lld; existing set is %@", v39, 0x20u);
    }
  }

  else
  {
    [(FCGoalCompletionStore *)self->_goalCompletionStore addGoalTypeToDailyGoalTypesMet:a3 activitySummaryIndex:a4];
    _HKInitializeLogging();
    v35 = *v25;
    v36 = os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v36)
      {
        *v39 = 138543362;
        *&v39[4] = v20;
        _os_log_impl(&dword_24B55B000, v35, OS_LOG_TYPE_DEFAULT, "Goal type %{public}@ was just met, notifying", v39, 0xCu);
      }

      [(FCGoalCompletionStore *)self->_goalCompletionStore addGoalTypeToNotify:a3 activitySummaryIndex:a4];
    }

    else if (v36)
    {
      *v39 = 138543362;
      *&v39[4] = v20;
      _os_log_impl(&dword_24B55B000, v35, OS_LOG_TYPE_DEFAULT, "Goal type %{public}@ was just met, but we are told not to notify (paused rings)", v39, 0xCu);
    }
  }

  v23 = 1;
LABEL_30:

  v37 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)concludeGoalDetectionRun
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(FCGoalCompletionCoordinator *)self _activitySummaryIndexForDate:v3];

  v5 = [(FCGoalCompletionStore *)self->_goalCompletionStore goalTypesToNotifyForActivitySummaryIndex:v4];
  if ([v5 count])
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v15 = 134217984;
      v16 = [v5 count];
      _os_log_impl(&dword_24B55B000, v7, OS_LOG_TYPE_DEFAULT, "Goal Completion Coordinator requesting notification for %ld completed goal types", &v15, 0xCu);
    }

    v8 = objc_alloc(MEMORY[0x277D09CA0]);
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v5 allObjects];
    v12 = [v8 initWithActivitySummaryIndex:v4 identifier:v10 completedGoalTypes:v11];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained coordinator:self postGoalCompletionNotification:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)_activitySummaryIndexForDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 hk_gregorianCalendar];
  v6 = [v5 components:*MEMORY[0x277CCE1D0] fromDate:v4];

  v7 = _HKCacheIndexFromDateComponents();
  return v7;
}

- (BOOL)_goalTypeAllowed:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained daemon];
  v6 = [v5 behavior];
  if ([v6 isAppleWatch])
  {
    v7 = &unk_285E86A38;
  }

  else
  {
    v7 = &unk_285E86A20;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  return v9;
}

- (FCGoalCompletionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)runDailyGoalCompletionDetectionForGoalType:(os_log_t)log activitySummaryIndex:previousValue:currentValue:goalValue:shouldAlert:goalMetHandler:.cold.1(char a1, char a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = a2 & 1;
  _os_log_debug_impl(&dword_24B55B000, log, OS_LOG_TYPE_DEBUG, "Goal previously met %{BOOL}d, currently met %{BOOL}d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

@end