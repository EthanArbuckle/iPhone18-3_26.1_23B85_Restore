@interface HDHRBloodPressureJournalTimeZoneObserver
- (BOOL)hasTimeZoneChange;
- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)profile;
- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)profile userDefaults:(id)defaults;
- (id)localTimeZone;
- (id)timeZoneFromDefaults;
- (void)timeZoneDidChange:(id)change;
- (void)updateDefaultsTimeZone:(id)zone;
- (void)updateTimeZoneIfRequired;
@end

@implementation HDHRBloodPressureJournalTimeZoneObserver

- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CBEBD0];
  profileCopy = profile;
  hkhr_bloodPressureJournalDefaults = [v4 hkhr_bloodPressureJournalDefaults];
  v7 = [(HDHRBloodPressureJournalTimeZoneObserver *)self initWithProfile:profileCopy userDefaults:hkhr_bloodPressureJournalDefaults];

  return v7;
}

- (HDHRBloodPressureJournalTimeZoneObserver)initWithProfile:(id)profile userDefaults:(id)defaults
{
  profileCopy = profile;
  defaultsCopy = defaults;
  v12.receiver = self;
  v12.super_class = HDHRBloodPressureJournalTimeZoneObserver;
  v8 = [(HDHRBloodPressureJournalTimeZoneObserver *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeStrong(&v9->_defaults, defaults);
    [(HDHRBloodPressureJournalTimeZoneObserver *)v9 updateTimeZoneIfRequired];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_timeZoneDidChange_ name:*MEMORY[0x277CBE780] object:0];
  }

  return v9;
}

- (void)updateTimeZoneIfRequired
{
  timeZoneFromDefaults = [(HDHRBloodPressureJournalTimeZoneObserver *)self timeZoneFromDefaults];

  if (!timeZoneFromDefaults)
  {
    localTimeZone = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
    [(HDHRBloodPressureJournalTimeZoneObserver *)self updateDefaultsTimeZone:localTimeZone];
  }
}

- (id)localTimeZone
{
  unitTesting_localTimeZone = self->_unitTesting_localTimeZone;
  if (unitTesting_localTimeZone)
  {
    localTimeZone = unitTesting_localTimeZone;
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  return localTimeZone;
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

- (void)updateDefaultsTimeZone:(id)zone
{
  defaults = self->_defaults;
  name = [zone name];
  [(NSUserDefaults *)defaults setObject:name forKey:*MEMORY[0x277D12EE0]];
}

- (BOOL)hasTimeZoneChange
{
  v14 = *MEMORY[0x277D85DE8];
  localTimeZone = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
  timeZoneFromDefaults = [(HDHRBloodPressureJournalTimeZoneObserver *)self timeZoneFromDefaults];
  v5 = timeZoneFromDefaults;
  if (!timeZoneFromDefaults)
  {
    goto LABEL_10;
  }

  secondsFromGMT = [timeZoneFromDefaults secondsFromGMT];
  if (secondsFromGMT == [localTimeZone secondsFromGMT])
  {
    _HKInitializeLogging();
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      selfCopy2 = self;
      v8 = "[%{public}@] No difference in secondsFromGMT.";
LABEL_8:
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (![v5 isEqualToTimeZone:localTimeZone])
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
    selfCopy2 = self;
    v8 = "[%{public}@] TimeZones are equal.";
    goto LABEL_8;
  }

LABEL_9:

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)timeZoneDidChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogBloodPressureJournal();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZoneDidChange ", buf, 0xCu);
  }

  if ([(HDHRBloodPressureJournalTimeZoneObserver *)self hasTimeZoneChange])
  {
    localTimeZone = [(HDHRBloodPressureJournalTimeZoneObserver *)self localTimeZone];
    [(HDHRBloodPressureJournalTimeZoneObserver *)self updateDefaultsTimeZone:localTimeZone];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    heartHealthProfileExtension = [WeakRetained heartHealthProfileExtension];
    bloodPressureJournalNotificationManager = [heartHealthProfileExtension bloodPressureJournalNotificationManager];

    v15 = 0;
    v9 = [bloodPressureJournalNotificationManager scheduleNotificationsWithReason:4 error:&v15];
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
      selfCopy2 = self;
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