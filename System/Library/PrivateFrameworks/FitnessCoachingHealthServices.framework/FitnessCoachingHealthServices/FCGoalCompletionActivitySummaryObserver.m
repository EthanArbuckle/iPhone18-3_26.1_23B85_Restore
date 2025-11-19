@interface FCGoalCompletionActivitySummaryObserver
- (BOOL)_runGoalCompletionForExerciseWithNewActivitySummary:(id)a3;
- (BOOL)_runGoalCompletionForMoveWithNewActivitySummary:(id)a3;
- (BOOL)_runGoalCompletionForStandWithNewActivitySummary:(id)a3;
- (FCDailyActivityGoalDetectionDelegate)delegate;
- (FCGoalCompletionActivitySummaryObserver)initWithProfile:(id)a3 serviceQueue:(id)a4;
- (void)_runGoalCompletionsForNewActivitySummary:(id)a3 forChangedFields:(unint64_t)a4;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation FCGoalCompletionActivitySummaryObserver

- (FCGoalCompletionActivitySummaryObserver)initWithProfile:(id)a3 serviceQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FCGoalCompletionActivitySummaryObserver;
  v8 = [(FCGoalCompletionActivitySummaryObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_serviceQueue, a4);
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, "Profile ready for activity summary observer", v12, 2u);
    }

    [v6 registerProfileReadyObserver:v9 queue:v9->_serviceQueue];
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained currentActivitySummaryHelper];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = FCGoalCompletionActivitySummaryObserver;
  [(FCGoalCompletionActivitySummaryObserver *)&v5 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "Profile ready for activity summary observer", v7, 2u);
  }

  v6 = [v4 currentActivitySummaryHelper];

  [v6 addObserver:self];
}

- (void)_runGoalCompletionsForNewActivitySummary:(id)a3 forChangedFields:(unint64_t)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  previousActivitySummary = self->_previousActivitySummary;
  if (previousActivitySummary)
  {
    v8 = [(HKActivitySummary *)previousActivitySummary _activitySummaryIndex];
    if (v8 == [(HKActivitySummary *)v6 _activitySummaryIndex])
    {
      v9 = MEMORY[0x277CCC290];
      if ((v4 & 0x4002) != 0)
      {
        [(FCGoalCompletionActivitySummaryObserver *)self _runGoalCompletionForMoveWithNewActivitySummary:v6];
        if ((v4 & 4) != 0)
        {
          goto LABEL_13;
        }

LABEL_10:
        _HKInitializeLogging();
        v20 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          [(FCGoalCompletionActivitySummaryObserver *)v20 _runGoalCompletionsForNewActivitySummary:v21 forChangedFields:v22, v23, v24, v25, v26, v27];
        }

        goto LABEL_14;
      }

      _HKInitializeLogging();
      v12 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        [(FCGoalCompletionActivitySummaryObserver *)v12 _runGoalCompletionsForNewActivitySummary:v13 forChangedFields:v14, v15, v16, v17, v18, v19];
        if ((v4 & 4) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v4 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      [(FCGoalCompletionActivitySummaryObserver *)self _runGoalCompletionForExerciseWithNewActivitySummary:v6];
LABEL_14:
      if ((v4 & 8) != 0)
      {
        [(FCGoalCompletionActivitySummaryObserver *)self _runGoalCompletionForStandWithNewActivitySummary:v6];
      }

      else
      {
        _HKInitializeLogging();
        v28 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          [(FCGoalCompletionActivitySummaryObserver *)v28 _runGoalCompletionsForNewActivitySummary:v29 forChangedFields:v30, v31, v32, v33, v34, v35];
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained concludeGoalDetectionRun];

      goto LABEL_19;
    }
  }

  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_previousActivitySummary;
    v39 = 138412546;
    v40 = v11;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, "FCGoalCompletionActivitySummaryObserver running for goal completions and previous summary (%@) is either nil, doesn't have the same index as newSummary (%@)", &v39, 0x16u);
  }

LABEL_19:
  v37 = self->_previousActivitySummary;
  self->_previousActivitySummary = v6;

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)_runGoalCompletionForMoveWithNewActivitySummary:(id)a3
{
  v4 = a3;
  if ([v4 activityMoveMode] == 2)
  {
    [MEMORY[0x277CCDAB0] minuteUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] kilocalorieUnit];
  }
  v5 = ;
  v6 = FIMoveGoalQuantityForActivitySummary();
  v7 = FIMoveQuantityForActivitySummary();
  previousActivitySummary = self->_previousActivitySummary;
  v9 = FIMoveQuantityForActivitySummary();
  if ([(HKActivitySummary *)self->_previousActivitySummary activityMoveMode]== HKActivityMoveModeAppleMoveTime)
  {
    [MEMORY[0x277CCDAB0] minuteUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] kilocalorieUnit];
  }
  v10 = ;
  [v6 doubleValueForUnit:v5];
  v12 = v11;
  [v7 doubleValueForUnit:v5];
  v14 = v13;
  [v9 doubleValueForUnit:v10];
  v16 = v15;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [WeakRetained runDailyGoalCompletionDetectionForGoalType:1 activitySummaryIndex:objc_msgSend(v4 previousValue:"_activitySummaryIndex") currentValue:objc_msgSend(v4 goalValue:"isPaused") ^ 1 shouldAlert:&__block_literal_global_0 goalMetHandler:{v16, v14, v12}];

  if (v18)
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_24B55B000, v19, OS_LOG_TYPE_DEFAULT, "Move goal complete!", v21, 2u);
    }
  }

  return v18;
}

- (BOOL)_runGoalCompletionForExerciseWithNewActivitySummary:(id)a3
{
  v4 = a3;
  v5 = [v4 appleExerciseTimeGoal];
  v6 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;

  v9 = [(HKActivitySummary *)self->_previousActivitySummary appleExerciseTime];
  v10 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v9 doubleValueForUnit:v10];
  v12 = v11;

  v13 = [v4 appleExerciseTime];
  v14 = [MEMORY[0x277CCDAB0] minuteUnit];
  [v13 doubleValueForUnit:v14];
  v16 = v15;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [v4 _activitySummaryIndex];
  LODWORD(v14) = [v4 isPaused];

  v19 = [WeakRetained runDailyGoalCompletionDetectionForGoalType:2 activitySummaryIndex:v18 previousValue:v14 ^ 1 currentValue:&__block_literal_global_299 goalValue:v12 shouldAlert:v16 goalMetHandler:v8];
  if (v19)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, "Exercise goal complete!", v22, 2u);
    }
  }

  return v19;
}

- (BOOL)_runGoalCompletionForStandWithNewActivitySummary:(id)a3
{
  v4 = a3;
  v5 = [v4 appleStandHoursGoal];
  v6 = [MEMORY[0x277CCDAB0] countUnit];
  [v5 doubleValueForUnit:v6];
  v8 = round(v7);

  v9 = [(HKActivitySummary *)self->_previousActivitySummary appleStandHours];
  v10 = [MEMORY[0x277CCDAB0] countUnit];
  [v9 doubleValueForUnit:v10];
  v12 = round(v11);

  v13 = [v4 appleStandHours];
  v14 = [MEMORY[0x277CCDAB0] countUnit];
  [v13 doubleValueForUnit:v14];
  v16 = round(v15);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = [v4 _activitySummaryIndex];
  LODWORD(v14) = [v4 isPaused];

  v19 = [WeakRetained runDailyGoalCompletionDetectionForGoalType:3 activitySummaryIndex:v18 previousValue:v14 ^ 1 currentValue:&__block_literal_global_301 goalValue:v12 shouldAlert:v16 goalMetHandler:v8];
  if (v19)
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, "Stand goal complete!", v22, 2u);
    }
  }

  return v19;
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v7 = a4;
  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __116__FCGoalCompletionActivitySummaryObserver_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke;
  block[3] = &unk_27900B530;
  v11 = v7;
  v12 = self;
  v13 = a5;
  v9 = v7;
  dispatch_async(serviceQueue, block);
}

void __116__FCGoalCompletionActivitySummaryObserver_currentActivitySummaryHelper_didUpdateTodayActivitySummary_changedFields___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC290];
  v3 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24B55B000, v3, OS_LOG_TYPE_DEFAULT, "FCGoalCompletionActivitySummaryObserver got today activity summary: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5 && ([v5 _isDataLoading] & 1) == 0)
  {
    [*(a1 + 40) _runGoalCompletionsForNewActivitySummary:*(a1 + 32) forChangedFields:*(a1 + 48)];
  }

  else
  {
    _HKInitializeLogging();
    v6 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "FCGoalCompletionActivitySummaryObserver today activity summary is either nil or still loading data", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (FCDailyActivityGoalDetectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end