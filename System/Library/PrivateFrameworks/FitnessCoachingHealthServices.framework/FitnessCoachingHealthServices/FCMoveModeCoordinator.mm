@interface FCMoveModeCoordinator
- (BOOL)_queue_loadBirthDateComponents;
- (BOOL)_queue_loadMoveModeChangeSample;
- (BOOL)_queue_loadWheelchairUse;
- (FCMoveModeCoordinator)initWithDateProvider:(id)a3 profile:(id)a4 serviceQueue:(id)a5;
- (FCMoveModeCoordinatorDelegate)delegate;
- (double)_delay;
- (id)_birthdayForAge:(int64_t)a3;
- (id)_dateByAddingNumberOfWeeks:(int64_t)a3 toDate:(id)a4;
- (id)_dateForKey:(id)a3;
- (id)_nextActivityMoveModeStartDateForNotificationType:(int64_t)a3;
- (id)_tuesdayAfterDate:(id)a3;
- (id)_tuesdayBeforeDate:(id)a3;
- (id)keyValueDomain;
- (int64_t)_nextActivityMoveModeForNotificationType:(int64_t)a3;
- (int64_t)_queue_determineActivityMoveModeNotificationType;
- (void)_queue_loadBirthDateComponents;
- (void)_queue_loadMoveModeChangeSample;
- (void)_queue_loadWheelchairUse;
- (void)_queue_scheduleNotificationIfNeeded;
- (void)_saveMoveModeChangeSampleForActivityMoveMode:(int64_t)a3 date:(id)a4;
- (void)_setDate:(id)a3 forKey:(id)a4;
- (void)_significantTimeChangeOccurred;
- (void)_userCharacteristicsDidChange;
- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4;
- (void)dealloc;
- (void)notificationPosted:(id)a3 error:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation FCMoveModeCoordinator

- (void)_queue_scheduleNotificationIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  v3 = [(FCMoveModeCoordinator *)self _queue_loadBirthDateComponents];
  v4 = [(FCMoveModeCoordinator *)self _queue_loadMoveModeChangeSample];
  v5 = [(FCMoveModeCoordinator *)self _queue_loadWheelchairUse];
  if (v3 && v4 && v5)
  {
    v6 = [(FCMoveModeCoordinator *)self _queue_determineActivityMoveModeNotificationType];
    if (v6)
    {
      v7 = v6;
      v8 = [(FCMoveModeCoordinator *)self _nextActivityMoveModeForNotificationType:v6];
      v9 = [(FCMoveModeCoordinator *)self _nextActivityMoveModeStartDateForNotificationType:v7];
      [(FCMoveModeCoordinator *)self _delay];
      v11 = [objc_alloc(MEMORY[0x277D09CC8]) initWithNotificationType:v7 nextActivityMoveMode:v8 nextActivityMoveModeStartDate:v9 delay:v10];
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&dword_24B55B000, v12, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator scheduling notification %@", &v16, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained coordinator:self postMoveModeNotification:v11];
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_24B55B000, v14, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator failed to load data", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_loadBirthDateComponents
{
  dispatch_assert_queue_V2(self->_serviceQueue);
  if (self->_birthDateComponents)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained userCharacteristicsManager];
  v11 = 0;
  v7 = [v6 userCharacteristicForType:v4 error:&v11];
  v8 = v11;

  v3 = v7 != 0;
  if (v7)
  {
    birthDateComponents = self->_birthDateComponents;
    self->_birthDateComponents = v7;
    v7 = birthDateComponents;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _queue_loadBirthDateComponents];
    }
  }

  return v3;
}

- (void)_queue_loadBirthDateComponents
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_24B55B000, v0, v1, "FCMoveModeCoordinator failed to get date of birth: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_loadMoveModeChangeSample
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD720] activityMoveModeChangeType];
  v4 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v5 = HDSampleEntityPredicateForStartDate();

  v6 = MEMORY[0x277D10810];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [v6 entityEnumeratorWithType:v3 profile:WeakRetained];

  v9 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104B0] entityClass:objc_opt_class() ascending:0];
  v23[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v8 setOrderingTerms:v10];

  [v8 setPredicate:v5];
  [v8 setLimitCount:1];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v15[4] = &v17;
  v16 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__FCMoveModeCoordinator__queue_loadMoveModeChangeSample__block_invoke;
  v15[3] = &unk_27900B3D8;
  LOBYTE(v10) = [v8 enumerateWithError:&v16 handler:v15];
  v11 = v16;
  v12 = (v11 == 0) | v10;
  if (v12)
  {
    objc_storeStrong(&self->_mostRecentActivityMoveModeChangeSample, v18[5]);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _queue_loadMoveModeChangeSample];
    }
  }

  _Block_object_dispose(&v17, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)_queue_loadWheelchairUse
{
  v3 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB28]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained userCharacteristicsManager];
  v10 = 0;
  v6 = [v5 userCharacteristicForType:v3 error:&v10];
  v7 = v10;

  if (v7)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _queue_loadWheelchairUse];
    }
  }

  else
  {
    v8 = [v6 integerValue];
    if (v8 >= 2)
    {
      if (v8 == 2)
      {
        self->_isWheelchairUser = 1;
      }
    }

    else
    {
      self->_isWheelchairUser = 0;
    }
  }

  return v7 == 0;
}

- (FCMoveModeCoordinator)initWithDateProvider:(id)a3 profile:(id)a4 serviceQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = FCMoveModeCoordinator;
  v12 = [(FCMoveModeCoordinator *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, a3);
    objc_storeWeak(&v13->_profile, v10);
    objc_storeStrong(&v13->_serviceQueue, a5);
    WeakRetained = objc_loadWeakRetained(&v13->_profile);
    v15 = [WeakRetained database];
    [v15 addProtectedDataObserver:v13 queue:v13->_serviceQueue];

    v16 = objc_loadWeakRetained(&v13->_profile);
    [v16 registerProfileReadyObserver:v13 queue:v13->_serviceQueue];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 addObserver:v13 selector:sel__userCharacteristicsDidChange name:*MEMORY[0x277D104E8] object:0];

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v13 selector:sel__significantTimeChangeOccurred name:*MEMORY[0x277CBE580] object:0];

    v19 = objc_loadWeakRetained(&v13->_profile);
    v20 = [v19 dataManager];
    v21 = [MEMORY[0x277CCD720] activityMoveModeChangeType];
    [v20 addObserver:v13 forDataType:v21];
  }

  return v13;
}

- (void)notificationPosted:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v7 = [v5 notificationType];
  if (v7 > 2)
  {
    if ((v7 - 4) < 2)
    {
      [(FCMoveModeCoordinator *)self _setLastModeChangeNotificationDate:v6];
    }

    else if (v7 == 3)
    {
      [(FCMoveModeCoordinator *)self _setLastGraduationNotificationDate:v6];
      v10 = [v5 nextActivityMoveMode];
      v11 = [v5 nextActivityMoveModeStartDate];
      [(FCMoveModeCoordinator *)self _saveMoveModeChangeSampleForActivityMoveMode:v10 date:v11];
    }

    else if (v7 == 6)
    {
      v8 = [v5 nextActivityMoveMode];
      v9 = [v5 nextActivityMoveModeStartDate];
      [(FCMoveModeCoordinator *)self _saveMoveModeChangeSampleForActivityMoveMode:v8 date:v9];

      [(FCMoveModeCoordinator *)self _setLastWheelchairModeChangeNotificationDate:v6];
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      [(FCMoveModeCoordinator *)self _setUpgradeToMoveTimeNotificationDate:v6];
    }

    else if (v7 == 2)
    {
      [(FCMoveModeCoordinator *)self _setLastGraduationNotificationDate:v6];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_FAULT))
    {
      [FCMoveModeCoordinator notificationPosted:error:];
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 removeProtectedDataObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  v6 = [v5 dataManager];
  v7 = [MEMORY[0x277CCD720] activityMoveModeChangeType];
  [v6 removeObserver:self forDataType:v7];

  v8.receiver = self;
  v8.super_class = FCMoveModeCoordinator;
  [(FCMoveModeCoordinator *)&v8 dealloc];
}

- (void)profileDidBecomeReady:(id)a3
{
  v4 = [a3 database];
  v5 = [v4 isProtectedDataAvailable];

  if (v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_24B55B000, v6, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator received daemon ready and protected data is available; scheduling notification if needed", v7, 2u);
    }

    [(FCMoveModeCoordinator *)self _queue_scheduleNotificationIfNeeded];
  }
}

- (void)database:(id)a3 protectedDataDidBecomeAvailable:(BOOL)a4
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator protected data did become available; scheduling notification if needed", v6, 2u);
  }

  [(FCMoveModeCoordinator *)self _queue_scheduleNotificationIfNeeded];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v5, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator received new activity move mode change sample", buf, 2u);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FCMoveModeCoordinator_samplesAdded_anchor___block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (void)_saveMoveModeChangeSampleForActivityMoveMode:(int64_t)a3 date:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  dateProvider = self->_dateProvider;
  v6 = a4;
  v7 = [(FCCDateProvider *)dateProvider coachingCalendar];
  v8 = [v7 hk_startOfDateByAddingDays:1 toDate:v6];

  v9 = [v7 components:*MEMORY[0x277CCE1D0] fromDate:v8];
  v10 = FIActivityMoveModeChangeSampleForDateComponents();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = [WeakRetained dataManager];
  v15[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [v12 insertDataObjects:v13 error:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)_queue_determineActivityMoveModeNotificationType
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  v3 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v4 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  birthDateComponents = self->_birthDateComponents;
  v6 = FIAgeInYearsForDateOfBirthComponentsWithCurrentDateAndCalendar();
  v7 = MEMORY[0x277CCC290];
  if (!v6)
  {
    _HKInitializeLogging();
    v22 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      v23 = "FCMoveModeCoordinator - age unknown for move mode notification";
LABEL_45:
      _os_log_impl(&dword_24B55B000, v22, OS_LOG_TYPE_DEFAULT, v23, &v46, 2u);
    }

LABEL_46:
    v29 = 0;
    goto LABEL_78;
  }

  v8 = v6;
  mostRecentActivityMoveModeChangeSample = self->_mostRecentActivityMoveModeChangeSample;
  if (!mostRecentActivityMoveModeChangeSample)
  {
    v24 = 0;
    v10 = 1;
    goto LABEL_31;
  }

  v10 = [(HKCategorySample *)mostRecentActivityMoveModeChangeSample value];
  v11 = [(HKCategorySample *)self->_mostRecentActivityMoveModeChangeSample startDate];
  [v11 timeIntervalSinceReferenceDate];

  v12 = _HKActivityCacheDateComponentsFromCacheIndex();
  v13 = [v4 dateFromComponents:v12];
  v14 = [(FCMoveModeCoordinator *)self _lastModeChangeNotificationDate];
  _HKInitializeLogging();
  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138543618;
    v47 = v13;
    v48 = 2114;
    v49 = v14;
    _os_log_impl(&dword_24B55B000, v15, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - mostRecentMoveModeChangeDate (%{public}@) lastChangeNotificationDate (%{public}@)", &v46, 0x16u);
  }

  [v13 timeIntervalSinceReferenceDate];
  v17 = v16;
  [v14 timeIntervalSinceReferenceDate];
  if (v17 <= v18)
  {

    if (v10 == 2)
    {
      if (self->_isWheelchairUser)
      {
        v19 = [(FCMoveModeCoordinator *)self _lastWheelchairModeChangeNotificationDate];
        if (!v19 || ![v4 isDateInToday:v19])
        {
          _HKInitializeLogging();
          v39 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_24B55B000, v39, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - user switched to wheelchair mode and needs a move mode change notification", &v46, 2u);
          }

          v29 = 6;
          goto LABEL_77;
        }

        _HKInitializeLogging();
        v20 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_56:
          v29 = 0;
LABEL_77:

          goto LABEL_78;
        }

        v46 = 138543362;
        v47 = v19;
        v21 = "FCMoveModeCoordinator - user switched to wheelchair mode but has already been notified about mode change (%{public}@)";
LABEL_55:
        _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, v21, &v46, 0xCu);
        goto LABEL_56;
      }

      v24 = 1;
      v10 = 2;
    }

    else
    {
      v24 = 0;
    }

LABEL_31:
    _HKInitializeLogging();
    v30 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 134218240;
      v47 = v10;
      v48 = 2048;
      v49 = v8;
      _os_log_impl(&dword_24B55B000, v30, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - activityMoveModeForToday (%ld) ageInYears (%lu)", &v46, 0x16u);
    }

    if (v8 <= *MEMORY[0x277D095F0])
    {
      v31 = v24;
    }

    else
    {
      v31 = 0;
    }

    if ((v8 <= *MEMORY[0x277D095F0] || v10 == 2) && v31 == 0)
    {
      if (v8 == 17 || v8 == 13)
      {
        _HKInitializeLogging();
        v34 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v46) = 0;
          _os_log_impl(&dword_24B55B000, v34, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - user is in activity move mode graduation year", &v46, 2u);
        }

        v19 = [(FCMoveModeCoordinator *)self _lastGraduationNotificationDate];
        if (!v19 || ![v4 hk_isDate:v19 withinNumberOfCalendarDays:366 ofDate:v3])
        {
          if (v8 == 17)
          {
            v35 = [(FCMoveModeCoordinator *)self _birthdayForAge:18];
            v36 = [(FCMoveModeCoordinator *)self _tuesdayBeforeDate:v35];
            v37 = @"before";
            v29 = 3;
            v38 = @"a mandatory";
          }

          else
          {
            v35 = [(FCMoveModeCoordinator *)self _birthdayForAge:13];
            v36 = [(FCMoveModeCoordinator *)self _tuesdayAfterDate:v35];
            v37 = @"after";
            v29 = 2;
            v38 = @"an";
          }

          _HKInitializeLogging();
          v40 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 138543362;
            v47 = v36;
            _os_log_impl(&dword_24B55B000, v40, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - expected notificationDate (%{public}@)", &v46, 0xCu);
          }

          if (v36 && [v3 hk_isBeforeDate:v36])
          {
            _HKInitializeLogging();
            v41 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138543362;
              v47 = v37;
              _os_log_impl(&dword_24B55B000, v41, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - not enough days %{public}@ birthday to notify about activity move mode graduation", &v46, 0xCu);
            }

            v29 = 0;
          }

          else
          {
            _HKInitializeLogging();
            v42 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138543362;
              v47 = v38;
              _os_log_impl(&dword_24B55B000, v42, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - user needs a notification about %{public}@ activity move mode graduation", &v46, 0xCu);
            }
          }

          goto LABEL_77;
        }

        _HKInitializeLogging();
        v20 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_56;
        }

        v46 = 138543362;
        v47 = v19;
        v21 = "FCMoveModeCoordinator - user has already been notified for move mode for this graduation year (%{public}@)";
        goto LABEL_55;
      }

      if (v8 <= *MEMORY[0x277D095F0] && !self->_isWheelchairUser)
      {
        v19 = [(FCMoveModeCoordinator *)self _upgradeToMoveTimeNotificationDate];
        _HKInitializeLogging();
        v20 = *v7;
        v45 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
        if (!v19)
        {
          if (v45)
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - user is an upgrade user and needs to be notified to upgrade to move time", &v46, 2u);
          }

          v29 = 1;
          goto LABEL_77;
        }

        if (!v45)
        {
          goto LABEL_56;
        }

        v46 = 138543362;
        v47 = v19;
        v21 = "FCMoveModeCoordinator - user is an upgrade to move time user but has already been notified (%{public}@)";
        goto LABEL_55;
      }

      _HKInitializeLogging();
      v22 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      LOWORD(v46) = 0;
      v23 = "FCMoveModeCoordinator - user does not need to be notified";
      goto LABEL_45;
    }

    _HKInitializeLogging();
    v22 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v46) = 0;
      v23 = "FCMoveModeCoordinator - user activity move mode and age in combination that doesn't require any notifying";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v26 = v8 > 0x11 && v10 == 1;
  _HKInitializeLogging();
  v27 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v28 = &stru_285E82B60;
    if (v26)
    {
      v28 = @"mandatory ";
    }

    v46 = 138543362;
    v47 = v28;
    _os_log_impl(&dword_24B55B000, v27, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - user needs a %{public}@move mode change notification", &v46, 0xCu);
  }

  if (v26)
  {
    v29 = 5;
  }

  else
  {
    v29 = 4;
  }

LABEL_78:
  v43 = *MEMORY[0x277D85DE8];
  return v29;
}

- (int64_t)_nextActivityMoveModeForNotificationType:(int64_t)a3
{
  if (a3 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << a3) & 0x6C) != 0)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 2;
  }

  if (a3 == 4)
  {
    mostRecentActivityMoveModeChangeSample = self->_mostRecentActivityMoveModeChangeSample;
    if (!mostRecentActivityMoveModeChangeSample)
    {
      return 1;
    }

    return [(HKCategorySample *)mostRecentActivityMoveModeChangeSample value];
  }

  else
  {
LABEL_10:
    if (a3)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_FAULT))
      {
        [FCMoveModeCoordinator _nextActivityMoveModeForNotificationType:];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_FAULT))
      {
        [FCMoveModeCoordinator _nextActivityMoveModeForNotificationType:];
      }
    }

    return 0;
  }
}

- (id)_nextActivityMoveModeStartDateForNotificationType:(int64_t)a3
{
  if (a3 > 6)
  {
    goto LABEL_7;
  }

  if (((1 << a3) & 0x36) != 0)
  {
LABEL_3:
    v3 = 0;
    goto LABEL_14;
  }

  if (a3 == 3)
  {
    v5 = [(FCMoveModeCoordinator *)self _birthdayForAge:18];
    v6 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
    v7 = [(FCCDateProvider *)self->_dateProvider coachingDate];
    v8 = [v6 startOfDayForDate:v5];
    v9 = [v6 hk_startOfDateByAddingDays:1 toDate:v7];
    v3 = [v8 laterDate:v9];

    goto LABEL_13;
  }

  if (a3 != 6)
  {
LABEL_7:
    if (a3)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_FAULT))
      {
        [FCMoveModeCoordinator _nextActivityMoveModeForNotificationType:];
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_FAULT))
      {
        [FCMoveModeCoordinator _nextActivityMoveModeForNotificationType:];
      }
    }

    goto LABEL_3;
  }

  v5 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  v6 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v3 = [v5 hk_startOfDateByAddingDays:1 toDate:v6];
LABEL_13:

LABEL_14:

  return v3;
}

- (double)_delay
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"FCMoveModeCoordinatorNotificationDelayOverrideKey"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (void)_userCharacteristicsDidChange
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v3, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator received user characteristics change notification", buf, 2u);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FCMoveModeCoordinator__userCharacteristicsDidChange__block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

uint64_t __54__FCMoveModeCoordinator__userCharacteristicsDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _queue_scheduleNotificationIfNeeded];
}

- (void)_significantTimeChangeOccurred
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B55B000, v3, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator\x1B did receive significant time change notification", buf, 2u);
  }

  serviceQueue = self->_serviceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__FCMoveModeCoordinator__significantTimeChangeOccurred__block_invoke;
  block[3] = &unk_27900B3B0;
  block[4] = self;
  dispatch_async(serviceQueue, block);
}

- (id)_dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(FCMoveModeCoordinator *)self keyValueDomain];
  v10 = 0;
  v6 = [v5 dateForKey:v4 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _dateForKey:];
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)_setDate:(id)a3 forKey:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(FCMoveModeCoordinator *)self keyValueDomain];
  v13 = 0;
  [v8 setDate:v6 forKey:v7 error:&v13];
  v9 = v13;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC290];
  v11 = *MEMORY[0x277CCC290];
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _setDate:forKey:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_24B55B000, v10, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator successfully saved data to key value domain for key %{public}@ date: %{public}@", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)keyValueDomain
{
  keyValueDomain = self->_keyValueDomain;
  if (!keyValueDomain)
  {
    v4 = objc_alloc(MEMORY[0x277D10718]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v6 = [v4 initWithCategory:1 domainName:@"com.apple.nanolifestyle.coaching.activityMoveMode" profile:WeakRetained];
    v7 = self->_keyValueDomain;
    self->_keyValueDomain = v6;

    keyValueDomain = self->_keyValueDomain;
  }

  return keyValueDomain;
}

- (id)_dateByAddingNumberOfWeeks:(int64_t)a3 toDate:(id)a4
{
  v6 = MEMORY[0x277CBEAB8];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  [v8 setCalendar:v9];

  [v8 setWeekOfMonth:1];
  v10 = [v8 hk_dateByAddingInterval:a3 toDate:v7];

  return v10;
}

- (id)_tuesdayBeforeDate:(id)a3
{
  dateProvider = self->_dateProvider;
  v5 = a3;
  v6 = [(FCCDateProvider *)dateProvider coachingCalendar];
  v7 = [v6 hk_startOfWeekWithFirstWeekday:3 beforeDate:v5 addingWeeks:0];
  v8 = [v6 isDate:v5 inSameDayAsDate:v7];

  if (v8)
  {
    v9 = [(FCMoveModeCoordinator *)self _dateByAddingNumberOfWeeks:-1 toDate:v7];

    v7 = v9;
  }

  return v7;
}

- (id)_tuesdayAfterDate:(id)a3
{
  dateProvider = self->_dateProvider;
  v5 = a3;
  v6 = [(FCCDateProvider *)dateProvider coachingCalendar];
  v7 = [v6 hk_startOfWeekWithFirstWeekday:3 beforeDate:v5 addingWeeks:0];

  v8 = [(FCMoveModeCoordinator *)self _dateByAddingNumberOfWeeks:1 toDate:v7];

  return v8;
}

- (id)_birthdayForAge:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v6 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  [v5 setCalendar:v6];

  [v5 setYear:1];
  v7 = [(NSDateComponents *)self->_birthDateComponents date];
  v8 = [v5 hk_dateByAddingInterval:a3 toDate:v7];

  return v8;
}

- (FCMoveModeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_loadMoveModeChangeSample
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_24B55B000, v0, v1, "FCMoveModeCoordinator failed to load most recent activity move mode change sample: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_loadWheelchairUse
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_24B55B000, v0, v1, "FCMoveModeCoordinator failed to get wheelchair use: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dateForKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_24B55B000, v0, v1, "FCMoveModeCoordinator failed to read data from key value domain for key %{public}@. Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setDate:forKey:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_24B55B000, v0, v1, "FCMoveModeCoordinator failed to save data to value domain for key %{public}@. Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end