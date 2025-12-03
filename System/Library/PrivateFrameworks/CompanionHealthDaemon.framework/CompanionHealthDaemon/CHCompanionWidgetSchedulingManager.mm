@interface CHCompanionWidgetSchedulingManager
- (CHCompanionWidgetSchedulingManager)initWithProfile:(id)profile;
- (int64_t)_currentWheelchairUse;
- (void)_currentWheelchairUse;
- (void)_donateRelevance;
- (void)_reloadWidgetTimelines;
- (void)_startObservingEffort;
- (void)_startObservingStandalonePhoneFitnessMode;
- (void)_startObservingUserCharacteristics;
- (void)_startObservingWorkouts;
- (void)_stopObservingEffort;
- (void)_stopObservingStandalonePhoneFitnessMode;
- (void)_stopObservingUserCharacteristics;
- (void)_stopObservingWorkouts;
- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)userCharacteristicsManager:(id)manager didUpdateUserProfile:(id)profile;
@end

@implementation CHCompanionWidgetSchedulingManager

- (CHCompanionWidgetSchedulingManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = CHCompanionWidgetSchedulingManager;
  v5 = [(CHCompanionWidgetSchedulingManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    [profileCopy registerProfileReadyObserver:v6 queue:0];

    v8 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(CHCompanionWidgetSchedulingManager *)self _stopObservingWorkouts];
  [(CHCompanionWidgetSchedulingManager *)self _stopObservingUserCharacteristics];
  [(CHCompanionWidgetSchedulingManager *)self _stopObservingStandalonePhoneFitnessMode];
  [(CHCompanionWidgetSchedulingManager *)self _stopObservingEffort];
  v3.receiver = self;
  v3.super_class = CHCompanionWidgetSchedulingManager;
  [(CHCompanionWidgetSchedulingManager *)&v3 dealloc];
}

- (void)_startObservingWorkouts
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  [dataManager addObserver:self forDataType:workoutType];
}

- (void)_startObservingEffort
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  associationManager = [WeakRetained associationManager];
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
  [associationManager addObserver:self forDataType:v5];

  v8 = objc_loadWeakRetained(&self->_profile);
  associationManager2 = [v8 associationManager];
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  [associationManager2 addObserver:self forDataType:v7];
}

- (void)_stopObservingEffort
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  associationManager = [WeakRetained associationManager];
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
  [associationManager removeObserver:self forDataType:v5];

  v8 = objc_loadWeakRetained(&self->_profile);
  associationManager2 = [v8 associationManager];
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB68]];
  [associationManager2 removeObserver:self forDataType:v7];
}

- (void)_stopObservingWorkouts
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  [dataManager removeObserver:self forDataType:workoutType];
}

- (void)_startObservingUserCharacteristics
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  [userCharacteristicsManager addProfileObserver:self];
}

- (void)_stopObservingUserCharacteristics
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  [userCharacteristicsManager removeProfileObserver:self];
}

- (void)_startObservingStandalonePhoneFitnessMode
{
  objc_initWeak(&location, self);
  v3 = *MEMORY[0x277CCCE08];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__CHCompanionWidgetSchedulingManager__startObservingStandalonePhoneFitnessMode__block_invoke;
  v6[3] = &unk_278DF00A8;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v3, &self->_standalonePhoneFitnessModeChangeToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __79__CHCompanionWidgetSchedulingManager__startObservingStandalonePhoneFitnessMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_243CCD000, v2, OS_LOG_TYPE_DEFAULT, "CHCompanionWidgetSchedulingManager did receive HKStandalonePhoneFitnessModeDidUpdateNotification notification", v3, 2u);
    }

    [WeakRetained _reloadWidgetTimelines];
  }
}

- (void)_stopObservingStandalonePhoneFitnessMode
{
  standalonePhoneFitnessModeChangeToken = self->_standalonePhoneFitnessModeChangeToken;
  if (standalonePhoneFitnessModeChangeToken != -1)
  {
    notify_cancel(standalonePhoneFitnessModeChangeToken);
  }
}

- (void)profileDidBecomeReady:(id)ready
{
  [(CHCompanionWidgetSchedulingManager *)self _startObservingWorkouts];
  [(CHCompanionWidgetSchedulingManager *)self _startObservingEffort];
  self->_wheelchairUse = [(CHCompanionWidgetSchedulingManager *)self _currentWheelchairUse];
  [(CHCompanionWidgetSchedulingManager *)self _startObservingUserCharacteristics];

  [(CHCompanionWidgetSchedulingManager *)self _startObservingStandalonePhoneFitnessMode];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  [(CHCompanionWidgetSchedulingManager *)self _reloadWidgetTimelines:added];

  [(CHCompanionWidgetSchedulingManager *)self _donateRelevance];
}

- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor
{
  v31 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  subObjectCopy = subObject;
  _HKInitializeLogging();
  v12 = MEMORY[0x277CCC270];
  v13 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_243CCD000, v13, OS_LOG_TYPE_DEFAULT, "CHCompanionWidgetSchedulingManager associations updated", &v25, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (subObjectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        [CHCompanionWidgetSchedulingManager associationsUpdatedForObject:subObject:type:behavior:objects:anchor:];
      }
    }

    else
    {
      v14 = objectCopy;
      v15 = [MEMORY[0x277CBEAA8] now];
      v16 = [v15 dateByAddingTimeInterval:*MEMORY[0x277D09628]];

      endDate = [v14 endDate];
      v18 = [endDate compare:v16];

      if (v18 == -1)
      {
        _HKInitializeLogging();
        v21 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v23 = v21;
          endDate2 = [v14 endDate];
          v25 = 138543874;
          selfCopy = self;
          v27 = 2114;
          v28 = endDate2;
          v29 = 2114;
          v30 = v16;
          _os_log_error_impl(&dword_243CCD000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Associations Updated, workout's end date %{public}@ is older than lower bound of query range %{public}@", &v25, 0x20u);
        }
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277CFA320]) initWithExtensionBundleIdentifier:@"com.apple.Fitness.FitnessWidget" kind:@"TrainingLoadDayWidget"];
        v20 = [v19 reloadTimelineWithReason:@"new effort data"];
        if (v20)
        {
          _HKInitializeLogging();
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            [CHCompanionWidgetSchedulingManager associationsUpdatedForObject:subObject:type:behavior:objects:anchor:];
          }
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      [CHCompanionWidgetSchedulingManager associationsUpdatedForObject:subObject:type:behavior:objects:anchor:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)userCharacteristicsManager:(id)manager didUpdateUserProfile:(id)profile
{
  v5 = [(CHCompanionWidgetSchedulingManager *)self _currentWheelchairUse:manager];
  if (v5 != self->_wheelchairUse)
  {
    self->_wheelchairUse = v5;
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "Requesting timeline reload due to wheelchair use change.", v7, 2u);
    }

    [(CHCompanionWidgetSchedulingManager *)self _reloadWidgetTimelines];
  }
}

- (int64_t)_currentWheelchairUse
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB28]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v10 = 0;
  v6 = [userCharacteristicsManager userCharacteristicForType:v3 error:&v10];
  v7 = v10;
  integerValue = [v6 integerValue];

  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      [CHCompanionWidgetSchedulingManager _currentWheelchairUse];
    }
  }

  return integerValue;
}

- (void)_reloadWidgetTimelines
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Failed to update Fitness widget with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_donateRelevance
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD3F38]);
  [v2 setWidgetKind:@"com.apple.Fitness"];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1800.0];
  v5 = [objc_alloc(MEMORY[0x277CD3B88]) initWithStartDate:date endDate:v4];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v2 setRelevanceProviders:v6];

  defaultStore = [MEMORY[0x277CD3F40] defaultStore];
  v10 = v2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [defaultStore setRelevantShortcuts:v8 completionHandler:&__block_literal_global];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__CHCompanionWidgetSchedulingManager__donateRelevance__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
  {
    __54__CHCompanionWidgetSchedulingManager__donateRelevance__block_invoke_cold_1();
  }
}

- (void)associationsUpdatedForObject:subObject:type:behavior:objects:anchor:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_243CCD000, v0, v1, "%{public}@: Object is not a Workout: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)associationsUpdatedForObject:subObject:type:behavior:objects:anchor:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_243CCD000, v0, v1, "%{public}@: SubObject is not a WorkoutActivity: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)associationsUpdatedForObject:subObject:type:behavior:objects:anchor:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "CHCompanionWidgetSchedulingManager failed to reload timeline for training load: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_currentWheelchairUse
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Error getting user wheelchair use: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__CHCompanionWidgetSchedulingManager__donateRelevance__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_243CCD000, v0, v1, "Failed to set relevant shortcuts in store with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end