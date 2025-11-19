@interface HKMHSettingsManager
- (BOOL)endOfDayNotificationsEnabled;
- (BOOL)hasAnyMentalHealthNotificationsEnabled;
- (BOOL)hasAnyStateOfMindReminderEnabled;
- (BOOL)hasEverEnabledAStateOfMindReminderNotification;
- (BOOL)middayNotificationsEnabled;
- (BOOL)periodicPromptedAssessmentNotificationsEnabled;
- (HKMHSettingsManager)init;
- (HKMHSettingsManager)initWithUserDefaults:(id)a3;
- (NSArray)customReminderSchedule;
- (id)periodicPromptedAssessmentNotificationTimeOfDay;
- (void)_notificationSettingsDidUpdate;
- (void)_setTestDefaults:(id)a3;
- (void)_startObservingDefaults;
- (void)_stopObservingAllDefaults;
- (void)customReminderSchedule;
- (void)dealloc;
- (void)endOfDayNotificationsEnabled;
- (void)middayNotificationsEnabled;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onboardToPregnancyRecommendedSettings;
- (void)periodicPromptedAssessmentNotificationTimeOfDay;
- (void)periodicPromptedAssessmentNotificationsEnabled;
- (void)setCustomReminderSchedule:(id)a3;
- (void)setPeriodicPromptedAssessmentNotificationTimeOfDay:(id)a3;
@end

@implementation HKMHSettingsManager

- (HKMHSettingsManager)init
{
  v3 = [MEMORY[0x277CBEBD0] hkmh_mentalHealthDefaults];
  v4 = [(HKMHSettingsManager *)self initWithUserDefaults:v3];

  return v4;
}

- (HKMHSettingsManager)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKMHSettingsManager;
  v6 = [(HKMHSettingsManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    v8 = objc_alloc(MEMORY[0x277CCD738]);
    v9 = [v8 initWithName:@"HKMHSettingsManagerObservers" loggingCategory:*MEMORY[0x277CCC2F0]];
    observers = v7->_observers;
    v7->_observers = v9;

    v11 = _NotificationSettingKeys();
    allSettingsToObserve = v7->_allSettingsToObserve;
    v7->_allSettingsToObserve = v11;

    [(HKMHSettingsManager *)v7 _startObservingDefaults];
  }

  return v7;
}

- (void)dealloc
{
  [(HKMHSettingsManager *)self _stopObservingAllDefaults];
  v3.receiver = self;
  v3.super_class = HKMHSettingsManager;
  [(HKMHSettingsManager *)&v3 dealloc];
}

- (BOOL)middayNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 middayNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];
}

- (BOOL)endOfDayNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 endOfDayNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
}

- (NSArray)customReminderSchedule
{
  v2 = [(NSUserDefaults *)self->_userDefaults dataForKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
  if (v2)
  {
    v7 = 0;
    v3 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v2 error:&v7];
    v4 = v7;
    if (!v3)
    {
      _HKInitializeLogging();
      v5 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [(HKMHSettingsManager *)v5 customReminderSchedule];
      }
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)setCustomReminderSchedule:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
    v6 = [MEMORY[0x277CBEB98] setWithObject:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];
    HKSynchronizeNanoPreferencesUserDefaults();
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HKMHSettingsManager setCustomReminderSchedule:v7];
    }
  }
}

- (BOOL)periodicPromptedAssessmentNotificationsEnabled
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
  {
    [(HKMHSettingsManager *)v3 periodicPromptedAssessmentNotificationsEnabled];
  }

  return [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"PeriodicPromptedAssessmentNotificationEnabledKey"];
}

- (void)onboardToPregnancyRecommendedSettings
{
  v8 = *MEMORY[0x277D85DE8];
  if (HKShowSensitiveLogItems())
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v7 = 138543362;
      *&v7[4] = objc_opt_class();
      v5 = *&v7[4];
      _os_log_impl(&dword_25895E000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding to recommended pregnancy settings", v7, 0xCu);
    }
  }

  [(HKMHSettingsManager *)self setPeriodicPromptedAssessmentNotificationsEnabled:1, *v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)periodicPromptedAssessmentNotificationTimeOfDay
{
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleInternalInstall];

  if (v4 && (v5 = MEMORY[0x277CCAAC8], v6 = objc_opt_class(), -[NSUserDefaults dataForKey:](self->_userDefaults, "dataForKey:", @"PeriodicPromptedAssessmentNotificationTimeOfDayOverride"), v7 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:v7 error:0], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEBUG))
    {
      [(HKMHSettingsManager *)v9 periodicPromptedAssessmentNotificationTimeOfDay];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v8 setHour:20];
  }

  return v8;
}

- (void)setPeriodicPromptedAssessmentNotificationTimeOfDay:(id)a3
{
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"PeriodicPromptedAssessmentNotificationTimeOfDayOverride"];
}

- (void)_startObservingDefaults
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++) options:3 context:0, v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingAllDefaults
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_allSettingsToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = objc_opt_class();
    v16 = *MEMORY[0x277CCA300];
    v17 = v15;
    v18 = [v12 objectForKeyedSubscript:v16];
    v19 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138544130;
    v25 = v15;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&dword_25895E000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", buf, 0x2Au);
  }

  v20 = _NotificationSettingKeys();
  v21 = [v20 containsObject:v10];

  if (v21)
  {
    [(HKMHSettingsManager *)self _notificationSettingsDidUpdate];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = HKMHSettingsManager;
    [(HKMHSettingsManager *)&v23 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasAnyMentalHealthNotificationsEnabled
{
  if ([(HKMHSettingsManager *)self hasAnyStateOfMindReminderEnabled])
  {
    return 1;
  }

  return [(HKMHSettingsManager *)self periodicPromptedAssessmentNotificationsEnabled];
}

- (BOOL)hasAnyStateOfMindReminderEnabled
{
  if ([(HKMHSettingsManager *)self middayNotificationsEnabled]|| [(HKMHSettingsManager *)self endOfDayNotificationsEnabled])
  {
    return 1;
  }

  v4 = [(HKMHSettingsManager *)self customReminderSchedule];
  v3 = [v4 count] != 0;

  return v3;
}

- (BOOL)hasEverEnabledAStateOfMindReminderNotification
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];

  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
  v5 = v3 | v4;

  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"StateOfMindLoggingReminderNotificationCustomScheduleKey"];

  return (v5 | v6) != 0;
}

- (void)_notificationSettingsDidUpdate
{
  observers = self->_observers;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__HKMHSettingsManager__notificationSettingsDidUpdate__block_invoke;
  v3[3] = &unk_2798A99F0;
  v3[4] = self;
  [(HKObserverSet *)observers notifyObservers:v3];
}

void __53__HKMHSettingsManager__notificationSettingsDidUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 settingsManagerDidUpdateNotificationSettings:*(a1 + 32)];
  }
}

- (void)_setTestDefaults:(id)a3
{
  v4 = a3;
  [(HKMHSettingsManager *)self _stopObservingAllDefaults];
  userDefaults = self->_userDefaults;
  self->_userDefaults = v4;

  [(HKMHSettingsManager *)self _startObservingDefaults];
}

- (void)middayNotificationsEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"StateOfMindLoggingReminderNotificationMiddayEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Emotion logging enabled: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)endOfDayNotificationsEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"StateOfMindLoggingReminderNotificationEndOfDayEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Emotion logging enabled: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)customReminderSchedule
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1(v2);
  OUTLINED_FUNCTION_3(&dword_25895E000, v4, v5, "[%{public}@] Failed to fetch custom schedule with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setCustomReminderSchedule:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1(v2);
  OUTLINED_FUNCTION_3(&dword_25895E000, v4, v5, "[%{public}@] Failed to write data with error: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)periodicPromptedAssessmentNotificationsEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = *(a2 + 24);
  v6 = v4;
  [v5 BOOLForKey:@"PeriodicPromptedAssessmentNotificationEnabledKey"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25895E000, v7, v8, "[%{public}@] Periodic prompted assessment notifications enabled: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)periodicPromptedAssessmentNotificationTimeOfDay
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1(v2);
  _os_log_debug_impl(&dword_25895E000, v1, OS_LOG_TYPE_DEBUG, "[%{public}@] Using overridden mental health notification time: %{public}@", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end