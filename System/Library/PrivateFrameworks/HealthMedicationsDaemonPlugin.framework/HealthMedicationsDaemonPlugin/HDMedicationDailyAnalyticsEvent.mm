@interface HDMedicationDailyAnalyticsEvent
- (HDMedicationDailyAnalyticsEvent)initWithProfile:(id)profile;
- (id)_fetchDeviceContextAnalytics;
- (id)_fetchNotificationSettingsAnalyticsWithDataSource:(id)source includingCriticalMedsCount:(BOOL)count;
- (id)_isImproveHealthRecordsAllowedPayloadWithDataSource:(id)source;
- (id)_lifestyleInteractionsAnalyticsPayload;
- (id)_readValueFromKeyValueDomainForKey:(id)key;
- (id)_reminderAnalyticsPayload;
- (id)_userCharacteristicsAnalyticsPayloadWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source;
- (void)_fetchDeviceContextAnalytics;
@end

@implementation HDMedicationDailyAnalyticsEvent

- (HDMedicationDailyAnalyticsEvent)initWithProfile:(id)profile
{
  profileCopy = profile;
  v27.receiver = self;
  v27.super_class = HDMedicationDailyAnalyticsEvent;
  v5 = [(HDMedicationDailyAnalyticsEvent *)&v27 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    healthMedicationsProfileExtension = [profileCopy healthMedicationsProfileExtension];
    medicationUserDefaults = [healthMedicationsProfileExtension medicationUserDefaults];
    medicationsUserDefaults = v6->_medicationsUserDefaults;
    v6->_medicationsUserDefaults = medicationUserDefaults;

    v10 = [MEMORY[0x277D10718] hdmd_defaultDomainWithProfile:profileCopy];
    medicationsKeyValueDomain = v6->_medicationsKeyValueDomain;
    v6->_medicationsKeyValueDomain = v10;

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    calendar = v6->_calendar;
    v6->_calendar = currentCalendar;

    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v6->_currentDate;
    v6->_currentDate = date;

    v16 = [objc_alloc(MEMORY[0x277D115D8]) initWithUserDefaults:v6->_medicationsUserDefaults];
    criticalNotificationsStore = v6->_criticalNotificationsStore;
    v6->_criticalNotificationsStore = v16;

    v18 = [[HDMedicationDoseEventDailyAnalytics alloc] initWithProfile:profileCopy calendar:v6->_calendar currentDate:v6->_currentDate];
    doseEventAnalytics = v6->_doseEventAnalytics;
    v6->_doseEventAnalytics = v18;

    v20 = [[HDMedicationUserDomainConceptDailyAnalytics alloc] initWithProfile:profileCopy medicationsKeyValueDomain:v6->_medicationsKeyValueDomain calendar:v6->_calendar currentDate:v6->_currentDate];
    medicationConceptAnalytics = v6->_medicationConceptAnalytics;
    v6->_medicationConceptAnalytics = v20;

    v22 = [[HDMedicationOntologyDailyAnalytics alloc] initWithProfile:profileCopy];
    ontologyAnalytics = v6->_ontologyAnalytics;
    v6->_ontologyAnalytics = v22;

    v24 = [[HDMedicationScheduleDailyAnalytics alloc] initWithProfile:profileCopy];
    scheduleAnalytics = v6->_scheduleAnalytics;
    v6->_scheduleAnalytics = v24;
  }

  return v6;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = MEMORY[0x277CCABB0];
  environmentDataSource = [sourceCopy environmentDataSource];
  v9 = [v7 numberWithBool:{objc_msgSend(environmentDataSource, "isImproveHealthAndActivityEnabled")}];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
  notificationManager = [medicationScheduleManager notificationManager];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(notificationManager, "areDoseRemindersEnabled")}];
  [v6 setObject:v14 forKeyedSubscript:@"hasMedsNotificationsEnabled"];

  v15 = objc_loadWeakRetained(&self->_profile);
  notificationManager2 = [v15 notificationManager];

  if (notificationManager2)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(notificationManager2, "areHealthNotificationsAuthorized")}];
    [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCB7A8]];
  }

  environmentDataSource2 = [sourceCopy environmentDataSource];
  activePairedDeviceProductType = [environmentDataSource2 activePairedDeviceProductType];

  if (activePairedDeviceProductType)
  {
    [v6 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];
  }

  v20 = [(HDMedicationDailyAnalyticsEvent *)self _isImproveHealthRecordsAllowedPayloadWithDataSource:sourceCopy];
  [v6 hk_addEntriesFromNonNilDictionary:v20];

  v21 = [(HDMedicationDoseEventDailyAnalytics *)self->_doseEventAnalytics makeUnrestrictedEventPayloadWithDataSource:sourceCopy error:0];
  [v6 hk_addEntriesFromNonNilDictionary:v21];

  v22 = [(HDMedicationUserDomainConceptDailyAnalytics *)self->_medicationConceptAnalytics makeUnrestrictedEventPayloadWithDataSource:sourceCopy error:0];
  [v6 hk_addEntriesFromNonNilDictionary:v22];

  v23 = [(HDMedicationOntologyDailyAnalytics *)self->_ontologyAnalytics makeUnrestrictedEventPayloadWithDataSource:sourceCopy error:0];
  [v6 hk_addEntriesFromNonNilDictionary:v23];

  v24 = [(HDMedicationScheduleDailyAnalytics *)self->_scheduleAnalytics makeUnrestrictedEventPayloadWithDataSource:sourceCopy error:0];
  [v6 hk_addEntriesFromNonNilDictionary:v24];

  _fetchDeviceContextAnalytics = [(HDMedicationDailyAnalyticsEvent *)self _fetchDeviceContextAnalytics];
  [v6 hk_addEntriesFromNonNilDictionary:_fetchDeviceContextAnalytics];

  v26 = [(HDMedicationDailyAnalyticsEvent *)self _fetchNotificationSettingsAnalyticsWithDataSource:sourceCopy includingCriticalMedsCount:0];
  [v6 hk_addEntriesFromNonNilDictionary:v26];

  return v6;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v5 = MEMORY[0x277CBEB38];
  sourceCopy = source;
  v7 = objc_alloc_init(v5);
  v8 = [(HDMedicationDailyAnalyticsEvent *)self _userCharacteristicsAnalyticsPayloadWithDataSource:sourceCopy];
  [v7 addEntriesFromDictionary:v8];

  _lifestyleInteractionsAnalyticsPayload = [(HDMedicationDailyAnalyticsEvent *)self _lifestyleInteractionsAnalyticsPayload];
  [v7 addEntriesFromDictionary:_lifestyleInteractionsAnalyticsPayload];

  _reminderAnalyticsPayload = [(HDMedicationDailyAnalyticsEvent *)self _reminderAnalyticsPayload];
  [v7 addEntriesFromDictionary:_reminderAnalyticsPayload];

  v11 = [(HDMedicationDoseEventDailyAnalytics *)self->_doseEventAnalytics makeIHAGatedEventPayloadWithDataSource:sourceCopy error:0];
  [v7 hk_addEntriesFromNonNilDictionary:v11];

  v12 = [(HDMedicationUserDomainConceptDailyAnalytics *)self->_medicationConceptAnalytics makeIHAGatedEventPayloadWithDataSource:sourceCopy error:0];
  [v7 hk_addEntriesFromNonNilDictionary:v12];

  v13 = [(HDMedicationOntologyDailyAnalytics *)self->_ontologyAnalytics makeIHAGatedEventPayloadWithDataSource:sourceCopy error:0];
  [v7 hk_addEntriesFromNonNilDictionary:v13];

  v14 = [(HDMedicationScheduleDailyAnalytics *)self->_scheduleAnalytics makeIHAGatedEventPayloadWithDataSource:sourceCopy error:0];
  [v7 hk_addEntriesFromNonNilDictionary:v14];

  v15 = [(HDMedicationDailyAnalyticsEvent *)self _fetchNotificationSettingsAnalyticsWithDataSource:sourceCopy includingCriticalMedsCount:1];

  [v7 hk_addEntriesFromNonNilDictionary:v15];

  return v7;
}

- (id)_userCharacteristicsAnalyticsPayloadWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  healthDataSource = [sourceCopy healthDataSource];
  v20 = 0;
  v7 = [healthDataSource biologicalSexWithError:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogMedication();
    v9 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationDailyAnalyticsEvent _userCharacteristicsAnalyticsPayloadWithDataSource:];
      }

      [v5 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
      v9 = v8;
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(HDMedicationDailyAnalyticsEvent *)self _userCharacteristicsAnalyticsPayloadWithDataSource:v9];
    }

    v8 = 0;
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v19 = v8;
  v14 = [healthDataSource2 ageWithCurrentDate:currentDate error:&v19];
  v15 = v19;

  if (v14)
  {
    v16 = HKMedicationsBucketedDecadeForAge();
    [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_17;
    }

    _HKInitializeLogging();
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDailyAnalyticsEvent _userCharacteristicsAnalyticsPayloadWithDataSource:];
    }

    [v5 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  }

LABEL_17:

  return v5;
}

- (id)_reminderAnalyticsPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSUserDefaults *)self->_medicationsUserDefaults objectForKey:*MEMORY[0x277D11488]];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_currentDate timeIntervalSinceDate:v7];
    v10 = [v8 numberWithInt:v9 <= 86400.0];
    [v3 setObject:v10 forKeyedSubscript:@"hasReceivedMedicationReminderInPast24hrs"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasReceivedMedicationReminderInPast24hrs"];
  }

  v11 = [(NSUserDefaults *)self->_medicationsUserDefaults objectForKey:*MEMORY[0x277D11480]];
  objc_opt_class();
  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = MEMORY[0x277CCABB0];
    [(NSDate *)self->_currentDate timeIntervalSinceDate:v14];
    v17 = [v15 numberWithInt:v16 <= 86400.0];
    [v3 setObject:v17 forKeyedSubscript:@"hasOpenedAppOrLoggedFromMedicationReminderInPast24hrs"];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hasOpenedAppOrLoggedFromMedicationReminderInPast24hrs"];
  }

  return v3;
}

- (id)_lifestyleInteractionsAnalyticsPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HDMedicationDailyAnalyticsEvent *)self _readValueFromKeyValueDomainForKey:*MEMORY[0x277D11418]];
  [v3 setObject:v4 forKeyedSubscript:@"hasLifestyleInteractionAlcoholEnabled"];

  v5 = [(HDMedicationDailyAnalyticsEvent *)self _readValueFromKeyValueDomainForKey:*MEMORY[0x277D11450]];
  [v3 setObject:v5 forKeyedSubscript:@"hasLifestyleInteractionCannabisEnabled"];

  v6 = [(HDMedicationDailyAnalyticsEvent *)self _readValueFromKeyValueDomainForKey:*MEMORY[0x277D114C0]];
  [v3 setObject:v6 forKeyedSubscript:@"hasLifestyleInteractionTobaccoEnabled"];

  return v3;
}

- (id)_readValueFromKeyValueDomainForKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  medicationsKeyValueDomain = self->_medicationsKeyValueDomain;
  v6 = *MEMORY[0x277D11450];
  v12 = 0;
  v7 = [(HDKeyValueDomain *)medicationsKeyValueDomain numberForKey:v6 error:&v12];
  v8 = v12;
  if (!v7)
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v15 = 2114;
      v16 = keyCopy;
      v17 = 2114;
      v18 = v8;
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_isImproveHealthRecordsAllowedPayloadWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0;
  v27[0] = &v26;
  v27[1] = 0x3032000000;
  v27[2] = __Block_byref_object_copy__7;
  v27[3] = __Block_byref_object_dispose__7;
  v28 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v6 = dispatch_semaphore_create(0);
  healthDataSource = [sourceCopy healthDataSource];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__HDMedicationDailyAnalyticsEvent__isImproveHealthRecordsAllowedPayloadWithDataSource___block_invoke;
  v16[3] = &unk_2796CDE80;
  v18 = &v20;
  v19 = &v26;
  v8 = v6;
  v17 = v8;
  [healthDataSource isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion:v16];

  v9 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    v10 = (v27[0] + 40);
    obj = *(v27[0] + 40);
    [MEMORY[0x277CCA9B8] hk_assignError:&obj code:100 description:@"Timed out calling isImproveHealthRecordsAnalyticsSubmissionAllowedWithCompletion."];
    objc_storeStrong(v10, obj);
  }

  v11 = v21[5];
  if (v11)
  {
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D11420]];
LABEL_5:
    v12 = v5;
    goto LABEL_10;
  }

  if (!*(v27[0] + 40))
  {
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v13 = HKLogMedication();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(HDMedicationDailyAnalyticsEvent *)self _isImproveHealthRecordsAllowedPayloadWithDataSource:v27, v13];
  }

  v12 = 0;
LABEL_10:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __87__HDMedicationDailyAnalyticsEvent__isImproveHealthRecordsAllowedPayloadWithDataSource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_fetchDeviceContextAnalytics
{
  v27[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  deviceContextManager = [WeakRetained deviceContextManager];
  v25 = 0;
  v4 = [deviceContextManager numberOfDeviceContextsPerDeviceType:&v25];
  v5 = v25;

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:&unk_2863C2948];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &unk_2863C2960;
    }

    v9 = v8;

    v10 = [v4 objectForKeyedSubscript:&unk_2863C2978];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_2863C2960;
    }

    v13 = v12;

    v14 = [v4 objectForKeyedSubscript:&unk_2863C2990];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &unk_2863C2960;
    }

    v17 = v16;

    v18 = [v4 objectForKeyedSubscript:&unk_2863C29A8];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &unk_2863C2960;
    }

    v21 = v20;

    v26[0] = @"countPairediPhone";
    v26[1] = @"countPairedWatch";
    v27[0] = v9;
    v27[1] = v17;
    v26[2] = @"countPairediPad";
    v26[3] = @"countPairedVisionPro";
    v27[2] = v13;
    v27[3] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationDailyAnalyticsEvent _fetchDeviceContextAnalytics];
    }

    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_fetchNotificationSettingsAnalyticsWithDataSource:(id)source includingCriticalMedsCount:(BOOL)count
{
  countCopy = count;
  v31[4] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = objc_opt_new();
  v7 = [(NSUserDefaults *)self->_medicationsUserDefaults hk_BOOLForKey:*MEMORY[0x277D114A0] defaultValue:1];
  v8 = [(NSUserDefaults *)self->_medicationsUserDefaults BOOLForKey:*MEMORY[0x277D11430]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  areHealthCriticalAlertsAuthorized = [notificationManager areHealthCriticalAlertsAuthorized];

  v12 = *MEMORY[0x277CCB7A0];
  v13 = [(NSUserDefaults *)self->_medicationsUserDefaults objectForKey:*MEMORY[0x277D11458]];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = [(HDMedicationDailyAnalyticsEvent *)self _bucketedWeeksSinceDate:v16 dataSource:sourceCopy];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:v17];

    v12 = v18;
  }

  v30[0] = @"hasTimeZoneChangeNotificationEnabled";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v31[0] = v19;
  v30[1] = @"hasFollowUpRemindersEnabled";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v31[1] = v20;
  v30[2] = @"hasCriticalAlertsNotificationEnabled";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:areHealthCriticalAlertsAuthorized];
  v30[3] = @"weeksSinceFirstEnteredDataTypeRoom";
  v31[2] = v21;
  v31[3] = v12;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  [v6 addEntriesFromDictionary:v22];

  if (countCopy)
  {
    identifiersCount = [(HKMedicationsCriticalNotificationsStore *)self->_criticalNotificationsStore identifiersCount];
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:identifiersCount];
    v25 = HDMedicationDailyAnalyticsBucketForCount(v24);

    [v6 setObject:v25 forKeyedSubscript:@"numberOfCriticalAlertMeds"];
  }

  v26 = [v6 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source
{
  dateCopy = date;
  environmentDataSource = [source environmentDataSource];
  v7 = [environmentDataSource bucketedNumberOfWeeksSinceDate:dateCopy minimumBinningValue:120];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  return integerValue;
}

- (void)_userCharacteristicsAnalyticsPayloadWithDataSource:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error when determining biological sex, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_userCharacteristicsAnalyticsPayloadWithDataSource:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_25181C000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] No error when fetching biological sex but also didn't get object", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_userCharacteristicsAnalyticsPayloadWithDataSource:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Error when determining age, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_isImproveHealthRecordsAllowedPayloadWithDataSource:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_25181C000, a2, a3, "[%{public}@] Failed to get health records opt-in status with error: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDeviceContextAnalytics
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25181C000, v0, v1, "[%{public}@] Failed to get deviceContextsDict with error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end