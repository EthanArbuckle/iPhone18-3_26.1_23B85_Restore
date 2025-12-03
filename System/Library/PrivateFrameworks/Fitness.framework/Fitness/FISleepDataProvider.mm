@interface FISleepDataProvider
- (BOOL)_isDate:(id)date within24HoursOfDate:(id)ofDate;
- (BOOL)_updateGoodMorningAlertNotificationEnabledIfNeeded:(BOOL)needed;
- (BOOL)_updateLastAlarmWakeUpDateIfNeeded:(id)needed;
- (BOOL)_updateLastGoodMorningDismissedDateIfNeeded:(id)needed;
- (BOOL)isGoodMorningAlertNotificationEnabled;
- (BOOL)isUserAwake;
- (FISleepDataProvider)initWithSleepStore:(id)store delegate:(id)delegate;
- (FISleepUserDay)sleepUserDay;
- (NSDate)lastAlarmWakeUpDate;
- (NSDate)lastGoodMorningDismissedDate;
- (id)_fetchCachedSleepUserDay;
- (void)_cacheSleepUserDay:(id)day;
- (void)_clearCurrentSleepScheduleState;
- (void)_clearSleepUserDay;
- (void)_fetchCachedSleepUserDay;
- (void)_fetchGoodMorningAlertNotificationEnabled;
- (void)_fetchLastAlarmWakeUpDate;
- (void)_fetchLastGoodMorningDismissedDate;
- (void)_initialLoadSleepUserDay;
- (void)_setEmptySleepUserDay:(id)day;
- (void)_setSleepUserDay:(id)day;
- (void)_setSleepUserDayWithStartOfDay:(id)day endOfDay:(id)ofDay;
- (void)_updateCurrentSleepScheduleState;
- (void)_updateSleepUserDay;
- (void)_updateSleepUserDayFromWakeUp:(id)up currentDate:(id)date;
- (void)_updateSleepUserDayFromWindDownOrBedtime:(id)bedtime currentDate:(id)date;
- (void)activate;
- (void)dealloc;
- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change;
- (void)sleepStore:(id)store sleepModeOnDidChange:(BOOL)change;
- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change;
- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change;
- (void)sleepStore:(id)store sleepScheduleStateDidChange:(unint64_t)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation FISleepDataProvider

- (FISleepDataProvider)initWithSleepStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = FISleepDataProvider;
  v9 = [(FISleepDataProvider *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepStore, store);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc(MEMORY[0x277CBEBD0]);
    v12 = [v11 initWithSuiteName:*MEMORY[0x277CCE4C8]];
    userDefaults = v10->_userDefaults;
    v10->_userDefaults = v12;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)activate
{
  [(FISleepDataProvider *)self _fetchGoodMorningAlertNotificationEnabled];
  [(FISleepDataProvider *)self _fetchLastGoodMorningDismissedDate];
  [(FISleepDataProvider *)self _fetchLastAlarmWakeUpDate];
  [(FISleepDataProvider *)self _updateCurrentSleepScheduleState];
  [(FISleepDataProvider *)self _initialLoadSleepUserDay];
  sleepStore = self->_sleepStore;

  [(HKSPSleepStore *)sleepStore addObserver:self];
}

- (void)dealloc
{
  [(HKSPSleepStore *)self->_sleepStore removeObserver:self];
  v3.receiver = self;
  v3.super_class = FISleepDataProvider;
  [(FISleepDataProvider *)&v3 dealloc];
}

- (FISleepUserDay)sleepUserDay
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sleepUserDay;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)lastGoodMorningDismissedDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastGoodMorningDismissedDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isGoodMorningAlertNotificationEnabled
{
  os_unfair_lock_lock(&self->_lock);
  isGoodMorningAlertNotificationEnabled = self->_isGoodMorningAlertNotificationEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return isGoodMorningAlertNotificationEnabled;
}

- (NSDate)lastAlarmWakeUpDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastAlarmWakeUpDate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isUserAwake
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentSleepScheduleState == 1;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_initialLoadSleepUserDay
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_24B35E000, v4, OS_LOG_TYPE_DEFAULT, "Sleep data provider - initial load sleep user day", &v23, 2u);
  }

  _fetchCachedSleepUserDay = [(FISleepDataProvider *)self _fetchCachedSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentDate = [WeakRetained currentDate];
  v8 = [currentDate dateByAddingTimeInterval:-600.0];

  creationDate = [_fetchCachedSleepUserDay creationDate];
  LOBYTE(currentDate) = [creationDate hk_isAfterOrEqualToDate:v8];

  v10 = objc_loadWeakRetained(&self->_delegate);
  currentCalendar = [v10 currentCalendar];
  creationDate2 = [_fetchCachedSleepUserDay creationDate];
  v13 = [currentCalendar isDateInToday:creationDate2];

  v14 = (_fetchCachedSleepUserDay != 0) & v13 & currentDate;
  _HKInitializeLogging();
  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    creationDate3 = [_fetchCachedSleepUserDay creationDate];
    v23 = 138412546;
    v24 = creationDate3;
    v25 = 1024;
    LODWORD(v26) = v14;
    _os_log_impl(&dword_24B35E000, v16, OS_LOG_TYPE_DEFAULT, "Sleep data provider - cached sleep user day creation date %@; is valid %d", &v23, 0x12u);
  }

  if (v14)
  {
    _HKInitializeLogging();
    v18 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      startOfDay = [_fetchCachedSleepUserDay startOfDay];
      endOfDay = [_fetchCachedSleepUserDay endOfDay];
      v23 = 138412546;
      v24 = startOfDay;
      v25 = 2112;
      v26 = endOfDay;
      _os_log_impl(&dword_24B35E000, v19, OS_LOG_TYPE_DEFAULT, "Sleep data provider - cached sleep user day start of day (%@) end of day (%@)", &v23, 0x16u);
    }

    if ([_fetchCachedSleepUserDay isEmpty])
    {
      [(FISleepDataProvider *)self _setEmptySleepUserDay:_fetchCachedSleepUserDay];
    }

    else
    {
      [(FISleepDataProvider *)self _setSleepUserDay:_fetchCachedSleepUserDay];
    }
  }

  else
  {
    [(FISleepDataProvider *)self _updateSleepUserDay];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateSleepUserDay
{
  v26 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC290];
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v4, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updating sleep user day", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentDate = [WeakRetained currentDate];

  sleepStore = self->_sleepStore;
  v21 = 0;
  v8 = [(HKSPSleepStore *)sleepStore nextEventDueAfterDate:currentDate error:&v21];
  v9 = v21;
  v10 = v9;
  if (!v8 || v9)
  {
    _HKInitializeLogging();
    v15 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      localizedDescription = [v10 localizedDescription];
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = localizedDescription;
      v18 = "Sleep data provider - did not find sleep event (%@) error (%@)";
LABEL_16:
      _os_log_impl(&dword_24B35E000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
    }

LABEL_17:
    [(FISleepDataProvider *)self _clearSleepUserDay];
    goto LABEL_20;
  }

  dueDate = [v8 dueDate];
  v12 = [(FISleepDataProvider *)self _isDate:dueDate within24HoursOfDate:currentDate];

  if (!v12)
  {
    _HKInitializeLogging();
    v19 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v19;
      localizedDescription = [v8 dueDate];
      *buf = 138412546;
      v23 = localizedDescription;
      v24 = 2112;
      v25 = currentDate;
      v18 = "Sleep data provider - next event (%@) > 24 hours from current date (%@)";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  identifier = [v8 identifier];
  _HKInitializeLogging();
  v14 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = identifier;
    _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updating with identifier %@", buf, 0xCu);
  }

  if (identifier == *MEMORY[0x277D621E0])
  {
    [(FISleepDataProvider *)self _updateSleepUserDayFromWakeUp:v8 currentDate:currentDate];
  }

  else if (identifier == *MEMORY[0x277D621F0] || identifier == *MEMORY[0x277D621B8])
  {
    [(FISleepDataProvider *)self _updateSleepUserDayFromWindDownOrBedtime:v8 currentDate:currentDate];
  }

LABEL_20:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateSleepUserDayFromWakeUp:(id)up currentDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  upCopy = up;
  dateCopy = date;
  sleepStore = self->_sleepStore;
  dueDate = [upCopy dueDate];
  v23 = 0;
  v10 = [(HKSPSleepStore *)sleepStore nextEventDueAfterDate:dueDate error:&v23];
  v11 = v23;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      localizedDescription = [v11 localizedDescription];
      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = localizedDescription;
      v16 = "Sleep data provider - error fetching next event after wake up (%@) error (%@)";
LABEL_11:
      _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  dueDate2 = [v10 dueDate];
  v18 = [(FISleepDataProvider *)self _isDate:dueDate2 within24HoursOfDate:dateCopy];

  if (!v18)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v21;
      localizedDescription = [v10 dueDate];
      *buf = 138412546;
      v25 = localizedDescription;
      v26 = 2112;
      v27 = dateCopy;
      v16 = "Sleep data provider - next event after wake up (%@) > 24 hours from current date (%@)";
      goto LABEL_11;
    }

LABEL_12:
    [(FISleepDataProvider *)self _clearSleepUserDay];
    goto LABEL_13;
  }

  dueDate3 = [upCopy dueDate];
  dueDate4 = [v10 dueDate];
  [(FISleepDataProvider *)self _setSleepUserDayWithStartOfDay:dueDate3 endOfDay:dueDate4];

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateSleepUserDayFromWindDownOrBedtime:(id)bedtime currentDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  sleepStore = self->_sleepStore;
  v26 = 0;
  v7 = [(HKSPSleepStore *)sleepStore sleepScheduleModelWithError:&v26];
  v8 = v26;
  if (!v8)
  {
    v13 = [v7 previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:dateCopy];
    if (v13)
    {
      if ([(FISleepDataProvider *)self _isDate:v13 within24HoursOfDate:dateCopy])
      {
        v14 = self->_sleepStore;
        v25 = 0;
        v15 = [(HKSPSleepStore *)v14 nextEventDueAfterDate:v13 error:&v25];
        v9 = v25;
        if (v9)
        {
          _HKInitializeLogging();
          v16 = *MEMORY[0x277CCC290];
          if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
            localizedDescription = [v9 localizedDescription];
            *buf = 138412290;
            v28 = localizedDescription;
            _os_log_impl(&dword_24B35E000, v17, OS_LOG_TYPE_DEFAULT, "Sleep data provider - error fetching next event after previous wake up event (%@)", buf, 0xCu);
          }

          [(FISleepDataProvider *)self _clearSleepUserDay];
        }

        else
        {
          dueDate = [v15 dueDate];
          [(FISleepDataProvider *)self _setSleepUserDayWithStartOfDay:v13 endOfDay:dueDate];
        }

        goto LABEL_17;
      }

      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v13;
        v29 = 2112;
        v30 = dateCopy;
        _os_log_impl(&dword_24B35E000, v22, OS_LOG_TYPE_DEFAULT, "Sleep data provider - previous wake up event before wind down or bedtime (%@) > 24 hours from current date (%@)", buf, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC290];
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        localizedDescription2 = [0 localizedDescription];
        *buf = 138412546;
        v28 = 0;
        v29 = 2112;
        v30 = localizedDescription2;
        _os_log_impl(&dword_24B35E000, v20, OS_LOG_TYPE_DEFAULT, "Sleep data provider - error fetching next event after 24 hours before wind down or bedtime (%@) error (%@)", buf, 0x16u);
      }
    }

    [(FISleepDataProvider *)self _clearSleepUserDay];
    v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v9 = v8;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    localizedDescription3 = [v9 localizedDescription];
    *buf = 138412290;
    v28 = localizedDescription3;
    _os_log_impl(&dword_24B35E000, v11, OS_LOG_TYPE_DEFAULT, "Sleep data provider - error fetching sleep model for wind down or bedtime event error (%@)", buf, 0xCu);
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_clearSleepUserDay
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24B35E000, v3, OS_LOG_TYPE_DEFAULT, "Sleep data provider - clearing sleep user start of day", v5, 2u);
  }

  initEmptySleepUserDay = [[FISleepUserDay alloc] initEmptySleepUserDay];
  [(FISleepDataProvider *)self _setEmptySleepUserDay:initEmptySleepUserDay];
}

- (void)_setEmptySleepUserDay:(id)day
{
  dayCopy = day;
  os_unfair_lock_lock(&self->_lock);
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(FISleepDataProvider *)self _cacheSleepUserDay:dayCopy];
}

- (void)_setSleepUserDayWithStartOfDay:(id)day endOfDay:(id)ofDay
{
  v15 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  ofDayCopy = ofDay;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = dayCopy;
    v13 = 2112;
    v14 = ofDayCopy;
    _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "Sleep data provider - setting sleep user start of day (%@) end of day (%@)", &v11, 0x16u);
  }

  v9 = [[FISleepUserDay alloc] initWithStartOfDay:dayCopy endOfDay:ofDayCopy];
  [(FISleepDataProvider *)self _setSleepUserDay:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setSleepUserDay:(id)day
{
  dayCopy = day;
  os_unfair_lock_lock(&self->_lock);
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = dayCopy;
  v6 = dayCopy;

  os_unfair_lock_unlock(&self->_lock);
  [(FISleepDataProvider *)self _cacheSleepUserDay:v6];
}

- (void)_fetchLastGoodMorningDismissedDate
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep event record (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLastGoodMorningDismissedDateIfNeeded:(id)needed
{
  v15 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSDate *)self->_lastGoodMorningDismissedDate isEqualToDate:neededCopy];
  if (!v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      lastGoodMorningDismissedDate = self->_lastGoodMorningDismissedDate;
      v11 = 138412546;
      v12 = lastGoodMorningDismissedDate;
      v13 = 2112;
      v14 = neededCopy;
      _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep data provider - last good morning dismissed date (%@ -> %@)", &v11, 0x16u);
    }

    objc_storeStrong(&self->_lastGoodMorningDismissedDate, needed);
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (void)_fetchGoodMorningAlertNotificationEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep schedule model (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateGoodMorningAlertNotificationEnabledIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  isGoodMorningAlertNotificationEnabled = self->_isGoodMorningAlertNotificationEnabled;
  if (isGoodMorningAlertNotificationEnabled != neededCopy)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_isGoodMorningAlertNotificationEnabled;
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = neededCopy;
      _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updated good morning alert notification enabled (%d -> %d)", v10, 0xEu);
    }

    self->_isGoodMorningAlertNotificationEnabled = neededCopy;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
  return isGoodMorningAlertNotificationEnabled != neededCopy;
}

- (void)_fetchLastAlarmWakeUpDate
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep event record for wake up date (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLastAlarmWakeUpDateIfNeeded:(id)needed
{
  v15 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSDate *)self->_lastAlarmWakeUpDate isEqualToDate:neededCopy];
  if (!v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      lastAlarmWakeUpDate = self->_lastAlarmWakeUpDate;
      v11 = 138412546;
      v12 = lastAlarmWakeUpDate;
      v13 = 2112;
      v14 = neededCopy;
      _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updated last alarm wake up date (%@ -> %@)", &v11, 0x16u);
    }

    objc_storeStrong(&self->_lastAlarmWakeUpDate, needed);
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (void)_updateCurrentSleepScheduleState
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep schedule state update, setting state to disabled (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_clearCurrentSleepScheduleState
{
  os_unfair_lock_lock(&self->_lock);
  self->_currentSleepScheduleState = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_fetchCachedSleepUserDay
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"cachedSleepUserDay"];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB98];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v5 = [v3 setWithArray:v4];

    v10 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v5 fromData:v2 error:&v10];
    v7 = v10;
    if (v7)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
      {
        [FISleepDataProvider _fetchCachedSleepUserDay];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_cacheSleepUserDay:(id)day
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:day requiringSecureCoding:1 error:&v6];
  v5 = v6;
  if (v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [FISleepDataProvider _cacheSleepUserDay:];
    }
  }

  [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"cachedSleepUserDay"];
}

- (BOOL)_isDate:(id)date within24HoursOfDate:(id)ofDate
{
  result = 0;
  if (date)
  {
    if (ofDate)
    {
      [date timeIntervalSinceDate:ofDate];
      return fabs(v5) <= 86400.0;
    }
  }

  return result;
}

- (void)sleepStore:(id)store sleepScheduleDidChange:(id)change
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Sleep store schedule did change; updating sleep data provider and notifying observers", v7, 2u);
  }

  [(FISleepDataProvider *)self _updateSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sleepDataProviderUserDayDidUpdate];
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Sleep store settings did change; updating sleep data provider and notifying observers", v7, 2u);
  }

  [(FISleepDataProvider *)self _updateSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sleepDataProviderUserDayDidUpdate];
}

- (void)sleepStore:(id)store sleepScheduleStateDidChange:(unint64_t)change
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Sleep store state did change; updating sleep data provider and notifying observers", v7, 2u);
  }

  [(FISleepDataProvider *)self _updateCurrentSleepScheduleState];
  [(FISleepDataProvider *)self _updateSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sleepDataProviderUserDayDidUpdate];
}

- (void)sleepStore:(id)store sleepModeOnDidChange:(BOOL)change
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24B35E000, v5, OS_LOG_TYPE_DEFAULT, "Sleep store mode did change; updating sleep data provider and notifying observers", v7, 2u);
  }

  [(FISleepDataProvider *)self _updateSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sleepDataProviderUserDayDidUpdate];
}

- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change
{
  changeCopy = change;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC290];
  v7 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep store record did change; updating sleep data provider and notifying observers", buf, 2u);
  }

  wakeUpAlarmDismissedDate = [changeCopy wakeUpAlarmDismissedDate];
  v9 = [(FISleepDataProvider *)self _updateLastAlarmWakeUpDateIfNeeded:wakeUpAlarmDismissedDate];

  goodMorningDismissedDate = [changeCopy goodMorningDismissedDate];

  v11 = [(FISleepDataProvider *)self _updateLastGoodMorningDismissedDateIfNeeded:goodMorningDismissedDate];
  if (v9)
  {
    _HKInitializeLogging();
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_24B35E000, v12, OS_LOG_TYPE_DEFAULT, "Most recent alarm wake up date did change; notifying observers", v17, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sleepDataProviderLastAlarmWakeUpDateDidChange];
  }

  if (v11)
  {
    _HKInitializeLogging();
    v14 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "Last good morning dismissed date did change; notifying observers", v16, 2u);
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 sleepDataProviderLastGoodMorningDismissedDateDidChange];
  }
}

- (void)sleepStore:(id)store sleepScheduleModelDidChange:(id)change
{
  changeCopy = change;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "Sleep store model did change; updating sleep data provider and notifying observers", v17, 2u);
  }

  sleepEventRecord = [changeCopy sleepEventRecord];
  wakeUpAlarmDismissedDate = [sleepEventRecord wakeUpAlarmDismissedDate];
  v9 = [(FISleepDataProvider *)self _updateLastAlarmWakeUpDateIfNeeded:wakeUpAlarmDismissedDate];

  v10 = -[FISleepDataProvider _updateGoodMorningAlertNotificationEnabledIfNeeded:](self, "_updateGoodMorningAlertNotificationEnabledIfNeeded:", [changeCopy goodMorningAlertNotificationEnabled]);
  sleepEventRecord2 = [changeCopy sleepEventRecord];

  goodMorningDismissedDate = [sleepEventRecord2 goodMorningDismissedDate];
  v13 = [(FISleepDataProvider *)self _updateLastGoodMorningDismissedDateIfNeeded:goodMorningDismissedDate];

  [(FISleepDataProvider *)self _updateSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sleepDataProviderUserDayDidUpdate];

  if (v9)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 sleepDataProviderLastAlarmWakeUpDateDidChange];
  }

  if (v10 || v13)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 sleepDataProviderLastGoodMorningDismissedDateDidChange];
  }
}

- (void)_fetchCachedSleepUserDay
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_24B35E000, v0, OS_LOG_TYPE_ERROR, "Sleep data provider - failed to fetch cached sleep user day %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_cacheSleepUserDay:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_24B35E000, v0, OS_LOG_TYPE_ERROR, "Sleep data provider - failed to cache sleep user day %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end