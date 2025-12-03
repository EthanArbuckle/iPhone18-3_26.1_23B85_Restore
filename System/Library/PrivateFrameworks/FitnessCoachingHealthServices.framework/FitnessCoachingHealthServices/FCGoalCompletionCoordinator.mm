@interface FCGoalCompletionCoordinator
- (BOOL)_goalTypeAllowed:(int64_t)allowed;
- (BOOL)runDailyGoalCompletionDetectionForGoalType:(int64_t)type activitySummaryIndex:(int64_t)index previousValue:(double)value currentValue:(double)currentValue goalValue:(double)goalValue shouldAlert:(BOOL)alert goalMetHandler:(id)handler;
- (FCGoalCompletionCoordinator)initWithProfile:(id)profile goalCompletionStore:(id)store serviceQueue:(id)queue;
- (FCGoalCompletionCoordinator)initWithProfile:(id)profile serviceQueue:(id)queue;
- (FCGoalCompletionCoordinatorDelegate)delegate;
- (int64_t)_activitySummaryIndexForDate:(id)date;
- (void)concludeGoalDetectionRun;
- (void)notificationPosted:(id)posted;
@end

@implementation FCGoalCompletionCoordinator

- (FCGoalCompletionCoordinator)initWithProfile:(id)profile serviceQueue:(id)queue
{
  profileCopy = profile;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = FCGoalCompletionCoordinator;
  v8 = [(FCGoalCompletionCoordinator *)&v11 init];
  if (v8)
  {
    v9 = [[FCGoalCompletionStore alloc] initWithProfile:profileCopy];
    v8 = [(FCGoalCompletionCoordinator *)v8 initWithProfile:profileCopy goalCompletionStore:v9 serviceQueue:queueCopy];
  }

  return v8;
}

- (FCGoalCompletionCoordinator)initWithProfile:(id)profile goalCompletionStore:(id)store serviceQueue:(id)queue
{
  profileCopy = profile;
  storeCopy = store;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = FCGoalCompletionCoordinator;
  v11 = [(FCGoalCompletionCoordinator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_goalCompletionStore, store);
    objc_storeWeak(&v12->_profile, profileCopy);
    objc_storeStrong(&v12->_serviceQueue, queue);
  }

  return v12;
}

- (void)notificationPosted:(id)posted
{
  v12 = *MEMORY[0x277D85DE8];
  postedCopy = posted;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = postedCopy;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "Removing goal completion types for content %@", &v10, 0xCu);
  }

  v6 = MEMORY[0x277CBEB98];
  completedGoalTypes = [postedCopy completedGoalTypes];
  v8 = [v6 setWithArray:completedGoalTypes];

  -[FCGoalCompletionCoordinator notificationPostedForGoalTypes:activitySummaryIndex:](self, "notificationPostedForGoalTypes:activitySummaryIndex:", v8, [postedCopy activitySummaryIndex]);
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)runDailyGoalCompletionDetectionForGoalType:(int64_t)type activitySummaryIndex:(int64_t)index previousValue:(double)value currentValue:(double)currentValue goalValue:(double)goalValue shouldAlert:(BOOL)alert goalMetHandler:(id)handler
{
  alertCopy = alert;
  v42 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (![(FCGoalCompletionCoordinator *)self _goalTypeAllowed:type])
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 67109120;
      *&v39[4] = type;
      _os_log_impl(&dword_24B55B000, v21, OS_LOG_TYPE_DEFAULT, "Goal type %d not allowed on device", v39, 8u);
    }

    goto LABEL_12;
  }

  if (value >= goalValue)
  {
    [(FCGoalCompletionStore *)self->_goalCompletionStore addDailyGoalTypePreviouslyMet:type activitySummaryIndex:index];
  }

  v17 = handlerCopy[2](handlerCopy, value, goalValue);
  v18 = handlerCopy[2](handlerCopy, currentValue, goalValue);
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

  if (type > 4)
  {
    v20 = @"Unknown";
  }

  else
  {
    v20 = off_27900B3F8[type];
  }

  isAppleInternalInstall = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  _HKInitializeLogging();
  v25 = MEMORY[0x277CCC290];
  v26 = *MEMORY[0x277CCC290];
  v27 = os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT);
  if (isAppleInternalInstall)
  {
    if (v27)
    {
      *v39 = 138413314;
      *&v39[4] = v20;
      *&v39[12] = 2048;
      *&v39[14] = index;
      *&v39[22] = 2048;
      valueCopy = value;
      *v41 = 2048;
      *&v41[2] = currentValue;
      *&v41[10] = 2048;
      *&v41[12] = goalValue;
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

  if ([(FCGoalCompletionStore *)self->_goalCompletionStore isDailyGoalTypeMet:type activitySummaryIndex:index, *v39, *&v39[16], *&valueCopy, *v41, *&v41[16], v42])
  {
    _HKInitializeLogging();
    v31 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      goalCompletionStore = self->_goalCompletionStore;
      v33 = v31;
      v34 = [(FCGoalCompletionStore *)goalCompletionStore allGoalTypesMetForActivitySummaryIndex:index];
      *v39 = 138543874;
      *&v39[4] = v20;
      *&v39[12] = 2048;
      *&v39[14] = index;
      *&v39[22] = 2112;
      valueCopy = *&v34;
      _os_log_impl(&dword_24B55B000, v33, OS_LOG_TYPE_DEFAULT, "Attempted to add goal type %{public}@ that was already added for activitySummaryIndex: %lld; existing set is %@", v39, 0x20u);
    }
  }

  else
  {
    [(FCGoalCompletionStore *)self->_goalCompletionStore addGoalTypeToDailyGoalTypesMet:type activitySummaryIndex:index];
    _HKInitializeLogging();
    v35 = *v25;
    v36 = os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT);
    if (alertCopy)
    {
      if (v36)
      {
        *v39 = 138543362;
        *&v39[4] = v20;
        _os_log_impl(&dword_24B55B000, v35, OS_LOG_TYPE_DEFAULT, "Goal type %{public}@ was just met, notifying", v39, 0xCu);
      }

      [(FCGoalCompletionStore *)self->_goalCompletionStore addGoalTypeToNotify:type activitySummaryIndex:index];
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
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(FCGoalCompletionCoordinator *)self _activitySummaryIndexForDate:date];

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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    allObjects = [v5 allObjects];
    v12 = [v8 initWithActivitySummaryIndex:v4 identifier:uUIDString completedGoalTypes:allObjects];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained coordinator:self postGoalCompletionNotification:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)_activitySummaryIndexForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  hk_gregorianCalendar = [v3 hk_gregorianCalendar];
  v6 = [hk_gregorianCalendar components:*MEMORY[0x277CCE1D0] fromDate:dateCopy];

  v7 = _HKCacheIndexFromDateComponents();
  return v7;
}

- (BOOL)_goalTypeAllowed:(int64_t)allowed
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch])
  {
    v7 = &unk_285E86A38;
  }

  else
  {
    v7 = &unk_285E86A20;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:allowed];
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