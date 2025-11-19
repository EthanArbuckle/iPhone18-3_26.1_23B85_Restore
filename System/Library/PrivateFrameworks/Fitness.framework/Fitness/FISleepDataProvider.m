@interface FISleepDataProvider
- (BOOL)_isDate:(id)a3 within24HoursOfDate:(id)a4;
- (BOOL)_updateGoodMorningAlertNotificationEnabledIfNeeded:(BOOL)a3;
- (BOOL)_updateLastAlarmWakeUpDateIfNeeded:(id)a3;
- (BOOL)_updateLastGoodMorningDismissedDateIfNeeded:(id)a3;
- (BOOL)isGoodMorningAlertNotificationEnabled;
- (BOOL)isUserAwake;
- (FISleepDataProvider)initWithSleepStore:(id)a3 delegate:(id)a4;
- (FISleepUserDay)sleepUserDay;
- (NSDate)lastAlarmWakeUpDate;
- (NSDate)lastGoodMorningDismissedDate;
- (id)_fetchCachedSleepUserDay;
- (void)_cacheSleepUserDay:(id)a3;
- (void)_clearCurrentSleepScheduleState;
- (void)_clearSleepUserDay;
- (void)_fetchCachedSleepUserDay;
- (void)_fetchGoodMorningAlertNotificationEnabled;
- (void)_fetchLastAlarmWakeUpDate;
- (void)_fetchLastGoodMorningDismissedDate;
- (void)_initialLoadSleepUserDay;
- (void)_setEmptySleepUserDay:(id)a3;
- (void)_setSleepUserDay:(id)a3;
- (void)_setSleepUserDayWithStartOfDay:(id)a3 endOfDay:(id)a4;
- (void)_updateCurrentSleepScheduleState;
- (void)_updateSleepUserDay;
- (void)_updateSleepUserDayFromWakeUp:(id)a3 currentDate:(id)a4;
- (void)_updateSleepUserDayFromWindDownOrBedtime:(id)a3 currentDate:(id)a4;
- (void)activate;
- (void)dealloc;
- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepModeOnDidChange:(BOOL)a4;
- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepScheduleStateDidChange:(unint64_t)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation FISleepDataProvider

- (FISleepDataProvider)initWithSleepStore:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = FISleepDataProvider;
  v9 = [(FISleepDataProvider *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepStore, a3);
    objc_storeWeak(&v10->_delegate, v8);
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

  v5 = [(FISleepDataProvider *)self _fetchCachedSleepUserDay];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained currentDate];
  v8 = [v7 dateByAddingTimeInterval:-600.0];

  v9 = [v5 creationDate];
  LOBYTE(v7) = [v9 hk_isAfterOrEqualToDate:v8];

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = [v10 currentCalendar];
  v12 = [v5 creationDate];
  v13 = [v11 isDateInToday:v12];

  v14 = (v5 != 0) & v13 & v7;
  _HKInitializeLogging();
  v15 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v5 creationDate];
    v23 = 138412546;
    v24 = v17;
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
      v20 = [v5 startOfDay];
      v21 = [v5 endOfDay];
      v23 = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_24B35E000, v19, OS_LOG_TYPE_DEFAULT, "Sleep data provider - cached sleep user day start of day (%@) end of day (%@)", &v23, 0x16u);
    }

    if ([v5 isEmpty])
    {
      [(FISleepDataProvider *)self _setEmptySleepUserDay:v5];
    }

    else
    {
      [(FISleepDataProvider *)self _setSleepUserDay:v5];
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
  v6 = [WeakRetained currentDate];

  sleepStore = self->_sleepStore;
  v21 = 0;
  v8 = [(HKSPSleepStore *)sleepStore nextEventDueAfterDate:v6 error:&v21];
  v9 = v21;
  v10 = v9;
  if (!v8 || v9)
  {
    _HKInitializeLogging();
    v15 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v10 localizedDescription];
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v17;
      v18 = "Sleep data provider - did not find sleep event (%@) error (%@)";
LABEL_16:
      _os_log_impl(&dword_24B35E000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
    }

LABEL_17:
    [(FISleepDataProvider *)self _clearSleepUserDay];
    goto LABEL_20;
  }

  v11 = [v8 dueDate];
  v12 = [(FISleepDataProvider *)self _isDate:v11 within24HoursOfDate:v6];

  if (!v12)
  {
    _HKInitializeLogging();
    v19 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v19;
      v17 = [v8 dueDate];
      *buf = 138412546;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      v18 = "Sleep data provider - next event (%@) > 24 hours from current date (%@)";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = [v8 identifier];
  _HKInitializeLogging();
  v14 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updating with identifier %@", buf, 0xCu);
  }

  if (v13 == *MEMORY[0x277D621E0])
  {
    [(FISleepDataProvider *)self _updateSleepUserDayFromWakeUp:v8 currentDate:v6];
  }

  else if (v13 == *MEMORY[0x277D621F0] || v13 == *MEMORY[0x277D621B8])
  {
    [(FISleepDataProvider *)self _updateSleepUserDayFromWindDownOrBedtime:v8 currentDate:v6];
  }

LABEL_20:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_updateSleepUserDayFromWakeUp:(id)a3 currentDate:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  sleepStore = self->_sleepStore;
  v9 = [v6 dueDate];
  v23 = 0;
  v10 = [(HKSPSleepStore *)sleepStore nextEventDueAfterDate:v9 error:&v23];
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
      v15 = [v11 localizedDescription];
      *buf = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v15;
      v16 = "Sleep data provider - error fetching next event after wake up (%@) error (%@)";
LABEL_11:
      _os_log_impl(&dword_24B35E000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v17 = [v10 dueDate];
  v18 = [(FISleepDataProvider *)self _isDate:v17 within24HoursOfDate:v7];

  if (!v18)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v21;
      v15 = [v10 dueDate];
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v7;
      v16 = "Sleep data provider - next event after wake up (%@) > 24 hours from current date (%@)";
      goto LABEL_11;
    }

LABEL_12:
    [(FISleepDataProvider *)self _clearSleepUserDay];
    goto LABEL_13;
  }

  v19 = [v6 dueDate];
  v20 = [v10 dueDate];
  [(FISleepDataProvider *)self _setSleepUserDayWithStartOfDay:v19 endOfDay:v20];

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateSleepUserDayFromWindDownOrBedtime:(id)a3 currentDate:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a4;
  sleepStore = self->_sleepStore;
  v26 = 0;
  v7 = [(HKSPSleepStore *)sleepStore sleepScheduleModelWithError:&v26];
  v8 = v26;
  if (!v8)
  {
    v13 = [v7 previousEventWithIdentifier:*MEMORY[0x277D621E0] dueBeforeDate:v5];
    if (v13)
    {
      if ([(FISleepDataProvider *)self _isDate:v13 within24HoursOfDate:v5])
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
            v18 = [v9 localizedDescription];
            *buf = 138412290;
            v28 = v18;
            _os_log_impl(&dword_24B35E000, v17, OS_LOG_TYPE_DEFAULT, "Sleep data provider - error fetching next event after previous wake up event (%@)", buf, 0xCu);
          }

          [(FISleepDataProvider *)self _clearSleepUserDay];
        }

        else
        {
          v23 = [v15 dueDate];
          [(FISleepDataProvider *)self _setSleepUserDayWithStartOfDay:v13 endOfDay:v23];
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
        v30 = v5;
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
        v21 = [0 localizedDescription];
        *buf = 138412546;
        v28 = 0;
        v29 = 2112;
        v30 = v21;
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
    v12 = [v9 localizedDescription];
    *buf = 138412290;
    v28 = v12;
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

  v4 = [[FISleepUserDay alloc] initEmptySleepUserDay];
  [(FISleepDataProvider *)self _setEmptySleepUserDay:v4];
}

- (void)_setEmptySleepUserDay:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(FISleepDataProvider *)self _cacheSleepUserDay:v5];
}

- (void)_setSleepUserDayWithStartOfDay:(id)a3 endOfDay:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_24B35E000, v8, OS_LOG_TYPE_DEFAULT, "Sleep data provider - setting sleep user start of day (%@) end of day (%@)", &v11, 0x16u);
  }

  v9 = [[FISleepUserDay alloc] initWithStartOfDay:v6 endOfDay:v7];
  [(FISleepDataProvider *)self _setSleepUserDay:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setSleepUserDay:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  sleepUserDay = self->_sleepUserDay;
  self->_sleepUserDay = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_lock);
  [(FISleepDataProvider *)self _cacheSleepUserDay:v6];
}

- (void)_fetchLastGoodMorningDismissedDate
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep event record (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLastGoodMorningDismissedDateIfNeeded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSDate *)self->_lastGoodMorningDismissedDate isEqualToDate:v5];
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
      v14 = v5;
      _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep data provider - last good morning dismissed date (%@ -> %@)", &v11, 0x16u);
    }

    objc_storeStrong(&self->_lastGoodMorningDismissedDate, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (void)_fetchGoodMorningAlertNotificationEnabled
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep schedule model (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateGoodMorningAlertNotificationEnabledIfNeeded:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  isGoodMorningAlertNotificationEnabled = self->_isGoodMorningAlertNotificationEnabled;
  if (isGoodMorningAlertNotificationEnabled != v3)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_isGoodMorningAlertNotificationEnabled;
      v10[0] = 67109376;
      v10[1] = v7;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updated good morning alert notification enabled (%d -> %d)", v10, 0xEu);
    }

    self->_isGoodMorningAlertNotificationEnabled = v3;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x277D85DE8];
  return isGoodMorningAlertNotificationEnabled != v3;
}

- (void)_fetchLastAlarmWakeUpDate
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_24B35E000, v4, v5, "Sleep data provider - failed to fetch current sleep event record for wake up date (%@)", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLastAlarmWakeUpDateIfNeeded:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSDate *)self->_lastAlarmWakeUpDate isEqualToDate:v5];
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
      v14 = v5;
      _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep data provider - updated last alarm wake up date (%@ -> %@)", &v11, 0x16u);
    }

    objc_storeStrong(&self->_lastAlarmWakeUpDate, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
  return !v6;
}

- (void)_updateCurrentSleepScheduleState
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2_0() localizedDescription];
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

- (void)_cacheSleepUserDay:(id)a3
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v6];
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

- (BOOL)_isDate:(id)a3 within24HoursOfDate:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      [a3 timeIntervalSinceDate:a4];
      return fabs(v5) <= 86400.0;
    }
  }

  return result;
}

- (void)sleepStore:(id)a3 sleepScheduleDidChange:(id)a4
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

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
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

- (void)sleepStore:(id)a3 sleepScheduleStateDidChange:(unint64_t)a4
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

- (void)sleepStore:(id)a3 sleepModeOnDidChange:(BOOL)a4
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

- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC290];
  v7 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24B35E000, v7, OS_LOG_TYPE_DEFAULT, "Sleep store record did change; updating sleep data provider and notifying observers", buf, 2u);
  }

  v8 = [v5 wakeUpAlarmDismissedDate];
  v9 = [(FISleepDataProvider *)self _updateLastAlarmWakeUpDateIfNeeded:v8];

  v10 = [v5 goodMorningDismissedDate];

  v11 = [(FISleepDataProvider *)self _updateLastGoodMorningDismissedDateIfNeeded:v10];
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

- (void)sleepStore:(id)a3 sleepScheduleModelDidChange:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_24B35E000, v6, OS_LOG_TYPE_DEFAULT, "Sleep store model did change; updating sleep data provider and notifying observers", v17, 2u);
  }

  v7 = [v5 sleepEventRecord];
  v8 = [v7 wakeUpAlarmDismissedDate];
  v9 = [(FISleepDataProvider *)self _updateLastAlarmWakeUpDateIfNeeded:v8];

  v10 = -[FISleepDataProvider _updateGoodMorningAlertNotificationEnabledIfNeeded:](self, "_updateGoodMorningAlertNotificationEnabledIfNeeded:", [v5 goodMorningAlertNotificationEnabled]);
  v11 = [v5 sleepEventRecord];

  v12 = [v11 goodMorningDismissedDate];
  v13 = [(FISleepDataProvider *)self _updateLastGoodMorningDismissedDateIfNeeded:v12];

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