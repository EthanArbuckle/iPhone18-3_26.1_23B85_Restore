@interface HDHRBloodPressureJournalTimeZoneObserver
- (BOOL)hasTimeZoneChange;
- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)a3;
- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)a3 userDefaults:(id)a4;
- (id)localTimeZone;
- (id)timeZoneFromDefaults;
- (void)timeZoneDidChange:(id)a3;
- (void)updateDefaultsTimeZone:(id)a3;
- (void)updateTimeZoneIfRequired;
@end

@implementation HDHRBloodPressureJournalTimeZoneObserver

- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v6 = [v4 hkhr_bloodPressureJournalDefaults];
  v7 = [(HDHRBloodPressureJournalTimeZoneObserver *)self initWithProfile:v5 userDefaults:v6];

  return v7;
}

- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)a3 userDefaults:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HDHRBloodPressureJournalTimeZoneObserver;
  v8 = [(HDHRBloodPressureJournalTimeZoneObserver *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeStrong(&v9->_defaults, a4);
    [(HDHRBloodPressureJournalTimeZoneObserver *)v9 updateTimeZoneIfRequired];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel_timeZoneDidChange_ name:*MEMORY[0x277CBE780] object:0];
  }

  return v9;
}

- (void)updateTimeZoneIfRequired
{
  v3 = [(HDHRBloodPressureJournalTimeZoneObserver *)self timeZoneFromDefaults];

  if (!v3)
  {
    v4 = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
    [(HDHRBloodPressureJournalTimeZoneObserver *)self updateDefaultsTimeZone:v4];
  }
}

- (id)localTimeZone
{
  unitTesting_localTimeZone = self->_unitTesting_localTimeZone;
  if (unitTesting_localTimeZone)
  {
    v3 = unitTesting_localTimeZone;
  }

  else
  {
    v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return v3;
}

- (id)timeZoneFromDefaults
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D12EE0]];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithName:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateDefaultsTimeZone:(id)a3
{
  defaults = self->_defaults;
  v4 = [a3 name];
  [(NSUserDefaults *)defaults setObject:v4 forKey:*MEMORY[0x277D12EE0]];
}

- (BOOL)hasTimeZoneChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
  v4 = [(HDHRBloodPressureJournalTimeZoneObserver *)self timeZoneFromDefaults];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v6 = [v4 secondsFromGMT];
  if (v6 == [v3 secondsFromGMT])
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = self;
      v8 = "[%{public}@] No difference in secondsFromGMT.";
LABEL_8:
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (![v5 isEqualToTimeZone:v3])
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    v8 = "[%{public}@] TimeZones are equal.";
    goto LABEL_8;
  }

LABEL_9:

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)timeZoneDidChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZoneDidChange ", buf, 0xCu);
  }

  if ([(HDHRBloodPressureJournalTimeZoneObserver *)self hasTimeZoneChange])
  {
    v5 = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
    [(HDHRBloodPressureJournalTimeZoneObserver *)self updateDefaultsTimeZone:v5];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v7 = [WeakRetained heartHealthProfileExtension];
    v8 = [v7 bloodPressureJournalNotificationManager];

    v15 = 0;
    v9 = [v8 scheduleNotificationsWithReason:4 error:&v15];
    v10 = v15;
    if (v10)
    {
      _HKInitializeLogging();
      v11 = HKLogBloodPressureJournal();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(HDHRBloodPressureJournalTimeZoneObserver *)self timeZoneDidChange:v10, v11];
      }
    }

    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 1024;
      v19 = v9;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed schedule notifications: %{BOOL}d", buf, 0x12u);
    }
  }

  else
  {
    v9 = 0;
  }

  didRegenerateNotificationsHandler = self->_didRegenerateNotificationsHandler;
  if (didRegenerateNotificationsHandler)
  {
    didRegenerateNotificationsHandler[2](didRegenerateNotificationsHandler, v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timeZoneDidChange:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to schedule notifications: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end