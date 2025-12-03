@interface FCMoveModeCoordinator
- (BOOL)_queue_loadBirthDateComponents;
- (BOOL)_queue_loadMoveModeChangeSample;
- (BOOL)_queue_loadWheelchairUse;
- (FCMoveModeCoordinator)initWithDateProvider:(id)provider profile:(id)profile serviceQueue:(id)queue;
- (FCMoveModeCoordinatorDelegate)delegate;
- (double)_delay;
- (id)_birthdayForAge:(int64_t)age;
- (id)_dateByAddingNumberOfWeeks:(int64_t)weeks toDate:(id)date;
- (id)_dateForKey:(id)key;
- (id)_nextActivityMoveModeStartDateForNotificationType:(int64_t)type;
- (id)_tuesdayAfterDate:(id)date;
- (id)_tuesdayBeforeDate:(id)date;
- (id)keyValueDomain;
- (int64_t)_nextActivityMoveModeForNotificationType:(int64_t)type;
- (int64_t)_queue_determineActivityMoveModeNotificationType;
- (void)_queue_loadBirthDateComponents;
- (void)_queue_loadMoveModeChangeSample;
- (void)_queue_loadWheelchairUse;
- (void)_queue_scheduleNotificationIfNeeded;
- (void)_saveMoveModeChangeSampleForActivityMoveMode:(int64_t)mode date:(id)date;
- (void)_setDate:(id)date forKey:(id)key;
- (void)_significantTimeChangeOccurred;
- (void)_userCharacteristicsDidChange;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)notificationPosted:(id)posted error:(id)error;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation FCMoveModeCoordinator

- (void)_queue_scheduleNotificationIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  _queue_loadBirthDateComponents = [(FCMoveModeCoordinator *)self _queue_loadBirthDateComponents];
  _queue_loadMoveModeChangeSample = [(FCMoveModeCoordinator *)self _queue_loadMoveModeChangeSample];
  _queue_loadWheelchairUse = [(FCMoveModeCoordinator *)self _queue_loadWheelchairUse];
  if (_queue_loadBirthDateComponents && _queue_loadMoveModeChangeSample && _queue_loadWheelchairUse)
  {
    _queue_determineActivityMoveModeNotificationType = [(FCMoveModeCoordinator *)self _queue_determineActivityMoveModeNotificationType];
    if (_queue_determineActivityMoveModeNotificationType)
    {
      v7 = _queue_determineActivityMoveModeNotificationType;
      v8 = [(FCMoveModeCoordinator *)self _nextActivityMoveModeForNotificationType:_queue_determineActivityMoveModeNotificationType];
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
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v11 = 0;
  v7 = [userCharacteristicsManager userCharacteristicForType:v4 error:&v11];
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
  activityMoveModeChangeType = [MEMORY[0x277CCD720] activityMoveModeChangeType];
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v5 = HDSampleEntityPredicateForStartDate();

  v6 = MEMORY[0x277D10810];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = [v6 entityEnumeratorWithType:activityMoveModeChangeType profile:WeakRetained];

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
  userCharacteristicsManager = [WeakRetained userCharacteristicsManager];
  v10 = 0;
  v6 = [userCharacteristicsManager userCharacteristicForType:v3 error:&v10];
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
    integerValue = [v6 integerValue];
    if (integerValue >= 2)
    {
      if (integerValue == 2)
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

- (FCMoveModeCoordinator)initWithDateProvider:(id)provider profile:(id)profile serviceQueue:(id)queue
{
  providerCopy = provider;
  profileCopy = profile;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = FCMoveModeCoordinator;
  v12 = [(FCMoveModeCoordinator *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dateProvider, provider);
    objc_storeWeak(&v13->_profile, profileCopy);
    objc_storeStrong(&v13->_serviceQueue, queue);
    WeakRetained = objc_loadWeakRetained(&v13->_profile);
    database = [WeakRetained database];
    [database addProtectedDataObserver:v13 queue:v13->_serviceQueue];

    v16 = objc_loadWeakRetained(&v13->_profile);
    [v16 registerProfileReadyObserver:v13 queue:v13->_serviceQueue];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel__userCharacteristicsDidChange name:*MEMORY[0x277D104E8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v13 selector:sel__significantTimeChangeOccurred name:*MEMORY[0x277CBE580] object:0];

    v19 = objc_loadWeakRetained(&v13->_profile);
    dataManager = [v19 dataManager];
    activityMoveModeChangeType = [MEMORY[0x277CCD720] activityMoveModeChangeType];
    [dataManager addObserver:v13 forDataType:activityMoveModeChangeType];
  }

  return v13;
}

- (void)notificationPosted:(id)posted error:(id)error
{
  postedCopy = posted;
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  notificationType = [postedCopy notificationType];
  if (notificationType > 2)
  {
    if ((notificationType - 4) < 2)
    {
      [(FCMoveModeCoordinator *)self _setLastModeChangeNotificationDate:coachingDate];
    }

    else if (notificationType == 3)
    {
      [(FCMoveModeCoordinator *)self _setLastGraduationNotificationDate:coachingDate];
      nextActivityMoveMode = [postedCopy nextActivityMoveMode];
      nextActivityMoveModeStartDate = [postedCopy nextActivityMoveModeStartDate];
      [(FCMoveModeCoordinator *)self _saveMoveModeChangeSampleForActivityMoveMode:nextActivityMoveMode date:nextActivityMoveModeStartDate];
    }

    else if (notificationType == 6)
    {
      nextActivityMoveMode2 = [postedCopy nextActivityMoveMode];
      nextActivityMoveModeStartDate2 = [postedCopy nextActivityMoveModeStartDate];
      [(FCMoveModeCoordinator *)self _saveMoveModeChangeSampleForActivityMoveMode:nextActivityMoveMode2 date:nextActivityMoveModeStartDate2];

      [(FCMoveModeCoordinator *)self _setLastWheelchairModeChangeNotificationDate:coachingDate];
    }
  }

  else if (notificationType)
  {
    if (notificationType == 1)
    {
      [(FCMoveModeCoordinator *)self _setUpgradeToMoveTimeNotificationDate:coachingDate];
    }

    else if (notificationType == 2)
    {
      [(FCMoveModeCoordinator *)self _setLastGraduationNotificationDate:coachingDate];
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
  database = [WeakRetained database];
  [database removeProtectedDataObserver:self];

  v5 = objc_loadWeakRetained(&self->_profile);
  dataManager = [v5 dataManager];
  activityMoveModeChangeType = [MEMORY[0x277CCD720] activityMoveModeChangeType];
  [dataManager removeObserver:self forDataType:activityMoveModeChangeType];

  v8.receiver = self;
  v8.super_class = FCMoveModeCoordinator;
  [(FCMoveModeCoordinator *)&v8 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  database = [ready database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];

  if (isProtectedDataAvailable)
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

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
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

- (void)samplesAdded:(id)added anchor:(id)anchor
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

- (void)_saveMoveModeChangeSampleForActivityMoveMode:(int64_t)mode date:(id)date
{
  v15[1] = *MEMORY[0x277D85DE8];
  dateProvider = self->_dateProvider;
  dateCopy = date;
  coachingCalendar = [(FCCDateProvider *)dateProvider coachingCalendar];
  v8 = [coachingCalendar hk_startOfDateByAddingDays:1 toDate:dateCopy];

  v9 = [coachingCalendar components:*MEMORY[0x277CCE1D0] fromDate:v8];
  v10 = FIActivityMoveModeChangeSampleForDateComponents();
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v15[0] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [dataManager insertDataObjects:v13 error:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (int64_t)_queue_determineActivityMoveModeNotificationType
{
  v50 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serviceQueue);
  coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
  coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
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
    value = 1;
    goto LABEL_31;
  }

  value = [(HKCategorySample *)mostRecentActivityMoveModeChangeSample value];
  startDate = [(HKCategorySample *)self->_mostRecentActivityMoveModeChangeSample startDate];
  [startDate timeIntervalSinceReferenceDate];

  v12 = _HKActivityCacheDateComponentsFromCacheIndex();
  v13 = [coachingCalendar dateFromComponents:v12];
  _lastModeChangeNotificationDate = [(FCMoveModeCoordinator *)self _lastModeChangeNotificationDate];
  _HKInitializeLogging();
  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138543618;
    v47 = v13;
    v48 = 2114;
    v49 = _lastModeChangeNotificationDate;
    _os_log_impl(&dword_24B55B000, v15, OS_LOG_TYPE_DEFAULT, "FCMoveModeCoordinator - mostRecentMoveModeChangeDate (%{public}@) lastChangeNotificationDate (%{public}@)", &v46, 0x16u);
  }

  [v13 timeIntervalSinceReferenceDate];
  v17 = v16;
  [_lastModeChangeNotificationDate timeIntervalSinceReferenceDate];
  if (v17 <= v18)
  {

    if (value == 2)
    {
      if (self->_isWheelchairUser)
      {
        _lastWheelchairModeChangeNotificationDate = [(FCMoveModeCoordinator *)self _lastWheelchairModeChangeNotificationDate];
        if (!_lastWheelchairModeChangeNotificationDate || ![coachingCalendar isDateInToday:_lastWheelchairModeChangeNotificationDate])
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
        v47 = _lastWheelchairModeChangeNotificationDate;
        v21 = "FCMoveModeCoordinator - user switched to wheelchair mode but has already been notified about mode change (%{public}@)";
LABEL_55:
        _os_log_impl(&dword_24B55B000, v20, OS_LOG_TYPE_DEFAULT, v21, &v46, 0xCu);
        goto LABEL_56;
      }

      v24 = 1;
      value = 2;
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
      v47 = value;
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

    if ((v8 <= *MEMORY[0x277D095F0] || value == 2) && v31 == 0)
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

        _lastWheelchairModeChangeNotificationDate = [(FCMoveModeCoordinator *)self _lastGraduationNotificationDate];
        if (!_lastWheelchairModeChangeNotificationDate || ![coachingCalendar hk_isDate:_lastWheelchairModeChangeNotificationDate withinNumberOfCalendarDays:366 ofDate:coachingDate])
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

          if (v36 && [coachingDate hk_isBeforeDate:v36])
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
        v47 = _lastWheelchairModeChangeNotificationDate;
        v21 = "FCMoveModeCoordinator - user has already been notified for move mode for this graduation year (%{public}@)";
        goto LABEL_55;
      }

      if (v8 <= *MEMORY[0x277D095F0] && !self->_isWheelchairUser)
      {
        _lastWheelchairModeChangeNotificationDate = [(FCMoveModeCoordinator *)self _upgradeToMoveTimeNotificationDate];
        _HKInitializeLogging();
        v20 = *v7;
        v45 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
        if (!_lastWheelchairModeChangeNotificationDate)
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
        v47 = _lastWheelchairModeChangeNotificationDate;
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

  v26 = v8 > 0x11 && value == 1;
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

- (int64_t)_nextActivityMoveModeForNotificationType:(int64_t)type
{
  if (type > 6)
  {
    goto LABEL_10;
  }

  if (((1 << type) & 0x6C) != 0)
  {
    return 1;
  }

  if (type == 1)
  {
    return 2;
  }

  if (type == 4)
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
    if (type)
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

- (id)_nextActivityMoveModeStartDateForNotificationType:(int64_t)type
{
  if (type > 6)
  {
    goto LABEL_7;
  }

  if (((1 << type) & 0x36) != 0)
  {
LABEL_3:
    v3 = 0;
    goto LABEL_14;
  }

  if (type == 3)
  {
    coachingCalendar2 = [(FCMoveModeCoordinator *)self _birthdayForAge:18];
    coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
    coachingDate = [(FCCDateProvider *)self->_dateProvider coachingDate];
    v8 = [coachingCalendar startOfDayForDate:coachingCalendar2];
    v9 = [coachingCalendar hk_startOfDateByAddingDays:1 toDate:coachingDate];
    v3 = [v8 laterDate:v9];

    goto LABEL_13;
  }

  if (type != 6)
  {
LABEL_7:
    if (type)
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

  coachingCalendar2 = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v3 = [coachingCalendar2 hk_startOfDateByAddingDays:1 toDate:coachingCalendar];
LABEL_13:

LABEL_14:

  return v3;
}

- (double)_delay
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"FCMoveModeCoordinatorNotificationDelayOverrideKey"];

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

- (id)_dateForKey:(id)key
{
  keyCopy = key;
  keyValueDomain = [(FCMoveModeCoordinator *)self keyValueDomain];
  v10 = 0;
  v6 = [keyValueDomain dateForKey:keyCopy error:&v10];
  v7 = v10;
  if (v7)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FCMoveModeCoordinator _dateForKey:];
    }
  }

  else
  {
    distantPast = v6;
  }

  return distantPast;
}

- (void)_setDate:(id)date forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  keyCopy = key;
  keyValueDomain = [(FCMoveModeCoordinator *)self keyValueDomain];
  v13 = 0;
  [keyValueDomain setDate:dateCopy forKey:keyCopy error:&v13];
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
    v15 = keyCopy;
    v16 = 2114;
    v17 = dateCopy;
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

- (id)_dateByAddingNumberOfWeeks:(int64_t)weeks toDate:(id)date
{
  v6 = MEMORY[0x277CBEAB8];
  dateCopy = date;
  v8 = objc_alloc_init(v6);
  coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  [v8 setCalendar:coachingCalendar];

  [v8 setWeekOfMonth:1];
  v10 = [v8 hk_dateByAddingInterval:weeks toDate:dateCopy];

  return v10;
}

- (id)_tuesdayBeforeDate:(id)date
{
  dateProvider = self->_dateProvider;
  dateCopy = date;
  coachingCalendar = [(FCCDateProvider *)dateProvider coachingCalendar];
  v7 = [coachingCalendar hk_startOfWeekWithFirstWeekday:3 beforeDate:dateCopy addingWeeks:0];
  v8 = [coachingCalendar isDate:dateCopy inSameDayAsDate:v7];

  if (v8)
  {
    v9 = [(FCMoveModeCoordinator *)self _dateByAddingNumberOfWeeks:-1 toDate:v7];

    v7 = v9;
  }

  return v7;
}

- (id)_tuesdayAfterDate:(id)date
{
  dateProvider = self->_dateProvider;
  dateCopy = date;
  coachingCalendar = [(FCCDateProvider *)dateProvider coachingCalendar];
  v7 = [coachingCalendar hk_startOfWeekWithFirstWeekday:3 beforeDate:dateCopy addingWeeks:0];

  v8 = [(FCMoveModeCoordinator *)self _dateByAddingNumberOfWeeks:1 toDate:v7];

  return v8;
}

- (id)_birthdayForAge:(int64_t)age
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  coachingCalendar = [(FCCDateProvider *)self->_dateProvider coachingCalendar];
  [v5 setCalendar:coachingCalendar];

  [v5 setYear:1];
  date = [(NSDateComponents *)self->_birthDateComponents date];
  v8 = [v5 hk_dateByAddingInterval:age toDate:date];

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