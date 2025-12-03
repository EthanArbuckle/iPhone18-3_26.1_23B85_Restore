@interface CHCoachingDiagnosticManager
- (BOOL)_queue_performRingCompletionDiagnostics;
- (CHCoachingDiagnosticManager)initWithProfile:(id)profile;
- (id)_queue_lastSubmittedDate;
- (id)diagnosticDescription;
- (int64_t)_queue_lastRingCompletionSubmittedIndex;
- (void)_queue_lastRingCompletionSubmittedIndex;
- (void)_queue_lastSubmittedDate;
- (void)_queue_setLastRingCompletionSubmittedIndex:(int64_t)index;
- (void)_queue_setLastSubmittedDate:(id)date;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
@end

@implementation CHCoachingDiagnosticManager

- (CHCoachingDiagnosticManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = CHCoachingDiagnosticManager;
  v5 = [(CHCoachingDiagnosticManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v6];

    [profileCopy registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
  [mEMORY[0x277D10AF8] removeObject:self];

  v4.receiver = self;
  v4.super_class = CHCoachingDiagnosticManager;
  [(CHCoachingDiagnosticManager *)&v4 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  readyCopy = ready;
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__CHCoachingDiagnosticManager_profileDidBecomeReady___block_invoke;
  v21[3] = &unk_278DF0050;
  objc_copyWeak(&v22, &location);
  v5 = MEMORY[0x245D4E260](v21);
  v6 = objc_alloc(MEMORY[0x277D106B0]);
  database = [readyCopy database];
  v8 = HKLogCoachingCategory();
  v9 = [v6 initWithDatabase:database loggingCategory:v8];
  databaseAvailableCondition = self->_databaseAvailableCondition;
  self->_databaseAvailableCondition = v9;

  v11 = objc_alloc(MEMORY[0x277D10B10]);
  v12 = HKLogCoachingCategory();
  v13 = [v11 initWithName:@"com.apple.healthd.coaching-diagnostic" loggingCategory:v12 scheduler:0 handler:v5 condition:self->_databaseAvailableCondition];
  repeatingBackgroundTask = self->_repeatingBackgroundTask;
  self->_repeatingBackgroundTask = v13;

  getRequest = [(HDRepeatingBackgroundTask *)self->_repeatingBackgroundTask getRequest];
  if (!getRequest)
  {
    getRequest = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:@"com.apple.healthd.coaching-diagnostic"];
    [getRequest setPriority:1];
    [getRequest setInterval:28800.0];
    [getRequest setRequiresExternalPower:0];
    [getRequest setRequiresProtectionClass:1];
    v16 = self->_repeatingBackgroundTask;
    v20 = 0;
    v17 = [(HDRepeatingBackgroundTask *)v16 submitRequest:getRequest error:&v20];
    v18 = v20;
    if ((v17 & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = HKLogCoachingCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CHCoachingDiagnosticManager profileDidBecomeReady:];
      }
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __53__CHCoachingDiagnosticManager_profileDidBecomeReady___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__CHCoachingDiagnosticManager_profileDidBecomeReady___block_invoke_2;
    v8[3] = &unk_278DF0028;
    v8[4] = WeakRetained;
    v9 = v4;
    dispatch_async(v7, v8);
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

uint64_t __53__CHCoachingDiagnosticManager_profileDidBecomeReady___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_performRingCompletionDiagnostics] ^ 1;
  v3 = *(*(a1 + 40) + 16);
  v4 = *(a1 + 40);

  return v3(v4, v2, 0);
}

- (BOOL)_queue_performRingCompletionDiagnostics
{
  v26 = *MEMORY[0x277D85DE8];
  if (!FIIsFitnessTrackingEnabled() || ([MEMORY[0x277CCDD30] sharedBehavior], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isStandalonePhoneFitnessMode"), v3, (v4 & 1) == 0))
  {
LABEL_6:
    date = [MEMORY[0x277CBEAA8] date];
    lastRunDate = self->_lastRunDate;
    self->_lastRunDate = date;

    v11 = 1;
    goto LABEL_7;
  }

  v5 = activitySummaryIndexForReporting();
  _queue_lastRingCompletionSubmittedIndex = [(CHCoachingDiagnosticManager *)self _queue_lastRingCompletionSubmittedIndex];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC290];
  v8 = os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT);
  if (v5 == _queue_lastRingCompletionSubmittedIndex)
  {
    if (v8)
    {
      v24 = 134217984;
      v25 = v5;
      _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_DEFAULT, "Not submitting activity summary index %ld; already submitted", &v24, 0xCu);
    }

    goto LABEL_6;
  }

  if (v8)
  {
    v24 = 134217984;
    v25 = v5;
    _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_DEFAULT, "Submitting activity summary index %ld", &v24, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = FIActivitySummaryAnalyticsPayloadForProfileAndSummaryCacheIndex();

  v11 = v15 != 0;
  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_profile);
    HasCompletedWorkoutWithProfile = FIActivitySummaryAnalyticsHasCompletedWorkoutWithProfile();

    v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v15];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:HasCompletedWorkoutWithProfile];
    [v18 setObject:v19 forKey:@"hasCompletedWorkout"];

    FIActivityAnalyticsSubmissionWithPayload();
    [(CHCoachingDiagnosticManager *)self _queue_setLastRingCompletionSubmittedIndex:v5];
    date2 = [MEMORY[0x277CBEAA8] date];
    [(CHCoachingDiagnosticManager *)self _queue_setLastSubmittedDate:date2];

    date3 = [MEMORY[0x277CBEAA8] date];
    v22 = self->_lastRunDate;
    self->_lastRunDate = date3;
  }

  else
  {
    date4 = [MEMORY[0x277CBEAA8] date];
    v18 = self->_lastRunDate;
    self->_lastRunDate = date4;
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)_queue_lastRingCompletionSubmittedIndex
{
  result = self->_lastRingCompletionSubmittedIndex;
  if (!result)
  {
    v4 = MEMORY[0x277D10808];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = 0;
    v6 = [v4 numberForKey:@"CHCoachingDiagnosticLastRingCompletionSubmittedIndexKey" domain:@"com.apple.healthd.coaching-diagnostic" category:100 profile:WeakRetained entity:0 error:&v8];
    v7 = v8;
    self->_lastRingCompletionSubmittedIndex = [v6 longLongValue];

    if (!self->_lastRingCompletionSubmittedIndex && v7)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [CHCoachingDiagnosticManager _queue_lastRingCompletionSubmittedIndex];
      }
    }

    return self->_lastRingCompletionSubmittedIndex;
  }

  return result;
}

- (void)_queue_setLastRingCompletionSubmittedIndex:(int64_t)index
{
  self->_lastRingCompletionSubmittedIndex = index;
  v4 = MEMORY[0x277D10808];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = 0;
  LOBYTE(v4) = [v4 setNumber:v5 forKey:@"CHCoachingDiagnosticLastRingCompletionSubmittedIndexKey" domain:@"com.apple.healthd.coaching-diagnostic" category:100 profile:WeakRetained error:&v8];
  v7 = v8;

  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [CHCoachingDiagnosticManager _queue_setLastRingCompletionSubmittedIndex:];
      }
    }
  }
}

- (id)_queue_lastSubmittedDate
{
  cachedLastSubmittedDate = self->_cachedLastSubmittedDate;
  if (!cachedLastSubmittedDate)
  {
    v4 = MEMORY[0x277D10808];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v10 = 0;
    v6 = [v4 dateForKey:@"HDCoachingDiagnosticLastSubmittedDateKey" domain:@"com.apple.healthd.coaching-diagnostic" category:100 profile:WeakRetained entity:0 error:&v10];
    v7 = v10;
    v8 = self->_cachedLastSubmittedDate;
    self->_cachedLastSubmittedDate = v6;

    if (!self->_cachedLastSubmittedDate)
    {
      if (v7)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
        {
          [CHCoachingDiagnosticManager _queue_lastSubmittedDate];
        }
      }
    }

    cachedLastSubmittedDate = self->_cachedLastSubmittedDate;
  }

  return cachedLastSubmittedDate;
}

- (void)_queue_setLastSubmittedDate:(id)date
{
  dateCopy = date;
  objc_storeStrong(&self->_cachedLastSubmittedDate, date);
  v6 = MEMORY[0x277D10808];
  cachedLastSubmittedDate = self->_cachedLastSubmittedDate;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = 0;
  LOBYTE(cachedLastSubmittedDate) = [v6 setDate:cachedLastSubmittedDate forKey:@"HDCoachingDiagnosticLastSubmittedDateKey" domain:@"com.apple.healthd.coaching-diagnostic" category:100 profile:WeakRetained error:&v10];
  v9 = v10;

  if ((cachedLastSubmittedDate & 1) == 0)
  {
    if (v9)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [CHCoachingDiagnosticManager _queue_setLastRingCompletionSubmittedIndex:];
      }
    }
  }
}

- (id)diagnosticDescription
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CHCoachingDiagnosticManager_diagnosticDescription__block_invoke;
  block[3] = &unk_278DF0078;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v21;
  block[7] = &v11;
  dispatch_sync(queue, block);
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = MEMORY[0x245D4DF30](v22[5]);
  [v4 appendFormat:@"\n\tLast run: %@", v5];

  v6 = FIIsFitnessTrackingEnabled();
  v7 = @"NO";
  if (v6)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    if ([mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode])
    {
      v7 = @"YES";
    }
  }

  [v4 appendFormat:@"\n\tExpected to submit: %@", v7];
  if (v6)
  {
  }

  [v4 appendFormat:@"\n\tLast submitted date: %@", v12[5]];
  if (*(v18 + 24))
  {
    v8 = @"Waiting for next unlock to run";
  }

  else
  {
    v8 = @"Not waiting to run";
  }

  [v4 appendFormat:@"\n\t%@", v8];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v4;
}

void __52__CHCoachingDiagnosticManager_diagnosticDescription__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 32) isConditionMet] ^ 1;
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 40));
  v2 = *(a1[4] + 48);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)profileDidBecomeReady:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Error submitting coaching diagnostic task request: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_lastRingCompletionSubmittedIndex
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Could not read last ring completion submitted index: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setLastRingCompletionSubmittedIndex:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Could not write last submitted date: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_lastSubmittedDate
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Could not read last submitted date: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end