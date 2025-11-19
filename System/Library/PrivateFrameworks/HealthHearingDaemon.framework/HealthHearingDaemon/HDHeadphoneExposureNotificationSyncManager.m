@interface HDHeadphoneExposureNotificationSyncManager
- (BOOL)notifyHAENotificationAddedWithSample:(id)a3 error:(id *)a4;
- (HDHeadphoneExposureNotificationSyncManager)initWithProfile:(id)a3;
- (HDHeadphoneExposureNotificationSyncManager)initWithProfile:(id)a3 notificationSyncClient:(id)a4 notificationManager:(id)a5;
- (id)_computeFireDateFromResetDosageCategoryIdentifier:(id)a3;
- (id)_extractLatestFireDateFromResetDosageEvents:(id)a3;
- (id)_generateResetDosageCategoryIdentifierWithDate:(id)a3;
- (id)_resetDosageEventIdentifiersFromNotificationCategoryIdentifiers:(id)a3;
- (void)_handleDismissNotification;
- (void)_handleResetDosageEventsWithIdentifiers:(id)a3;
- (void)_notifyObserversResetDosageForFireDate:(id)a3;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
@end

@implementation HDHeadphoneExposureNotificationSyncManager

- (HDHeadphoneExposureNotificationSyncManager)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277D107B8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = HKCreateSerialDispatchQueue();
  v8 = [v6 initWithProfile:v5 clientIdentifier:@"com.apple.Health.Hearing.HAE.Notification.SyncManager" queue:v7];

  v9 = [v5 notificationManager];
  v10 = [(HDHeadphoneExposureNotificationSyncManager *)self initWithProfile:v5 notificationSyncClient:v8 notificationManager:v9];

  return v10;
}

- (HDHeadphoneExposureNotificationSyncManager)initWithProfile:(id)a3 notificationSyncClient:(id)a4 notificationManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = HDHeadphoneExposureNotificationSyncManager;
  v11 = [(HDHeadphoneExposureNotificationSyncManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_notificationSyncClient, a4);
    [(HDNotificationSyncClient *)v12->_notificationSyncClient setDelegate:v12];
    objc_storeStrong(&v12->_notificationManager, a5);
    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = [v13 initWithName:@"Headphone Exposure Notification Sync Observers" loggingCategory:*MEMORY[0x277CCC2C8]];
    observers = v12->_observers;
    v12->_observers = v14;
  }

  return v12;
}

- (BOOL)notifyHAENotificationAddedWithSample:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2C8];
  v8 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543362;
    v23 = objc_opt_class();
    v10 = v23;
    _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notify HAE Notification added with sample requested.", buf, 0xCu);
  }

  v11 = [v6 endDate];
  v12 = [v11 dateByAddingTimeInterval:691200.0];

  v13 = [v6 endDate];

  v14 = [(HDHeadphoneExposureNotificationSyncManager *)self _generateResetDosageCategoryIdentifierWithDate:v13];

  v15 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:1 categoryIdentifier:v14 expirationDate:v12];
  notificationSyncClient = self->_notificationSyncClient;
  v21 = 0;
  [(HDNotificationSyncClient *)notificationSyncClient sendNotificationInstruction:v15 criteria:0 error:&v21];
  v17 = v21;
  if (v17)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneExposureNotificationSyncManager notifyHAENotificationAddedWithSample:error:];
    }

    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17 == 0;
}

- (id)_generateResetDosageCategoryIdentifierWithDate:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  [a3 timeIntervalSinceReferenceDate];
  v4 = [v3 numberWithDouble:?];
  v10[0] = @"HDHAENSyncCategoryResetDosageEvent";
  v5 = [v4 stringValue];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v7 = [v6 componentsJoinedByString:@"_"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_computeFireDateFromResetDosageCategoryIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"_"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    [v4 doubleValue];
    v6 = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v6];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneExposureNotificationSyncManager _computeFireDateFromResetDosageCategoryIdentifier:];
    }

    v7 = 0;
  }

  return v7;
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *v12 = 138543362;
    *&v12[4] = objc_opt_class();
    v10 = *&v12[4];
    _os_log_impl(&dword_251764000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] added observer", v12, 0xCu);
  }

  [(HKObserverSet *)self->_observers registerObserver:v7 queue:v6, *v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversResetDosageForFireDate:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__HDHeadphoneExposureNotificationSyncManager__notifyObserversResetDosageForFireDate___block_invoke;
  v7[3] = &unk_2796C6898;
  v8 = v4;
  v6 = v4;
  [(HKObserverSet *)observers notifyObservers:v7];
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 3:
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneExposureNotificationSyncManager notificationSyncClient:v8 didReceiveInstructionWithAction:?];
      }

      break;
    case 2:
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneExposureNotificationSyncManager notificationSyncClient:v7 didReceiveInstructionWithAction:?];
      }

      break;
    case 1:
      [(HDHeadphoneExposureNotificationSyncManager *)self _handleDismissNotification];
      break;
  }
}

- (void)_handleDismissNotification
{
  OUTLINED_FUNCTION_3();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_2(&dword_251764000, v5, v6, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_resetDosageEventIdentifiersFromNotificationCategoryIdentifiers:(id)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [a3 allObjects];
  v10[0] = @"SELF beginswith[c] '";
  v10[1] = @"HDHAENSyncCategoryResetDosageEvent";
  v10[2] = @"'";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v5 = [v4 componentsJoinedByString:&stru_2863A5B20];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:v5];
  v7 = [v3 filteredArrayUsingPredicate:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_handleResetDosageEventsWithIdentifiers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC2C8];
  v6 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *v15 = 138543362;
    *&v15[4] = objc_opt_class();
    v8 = *&v15[4];
    _os_log_impl(&dword_251764000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling reset dosage events from identifiers", v15, 0xCu);
  }

  v9 = [(HDHeadphoneExposureNotificationSyncManager *)self _extractLatestFireDateFromResetDosageEvents:v4, *v15];

  if (v9)
  {
    [(HDHeadphoneExposureNotificationSyncManager *)self _notifyObserversResetDosageForFireDate:v9];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_opt_class();
      *v15 = 138543362;
      *&v15[4] = v12;
      v13 = v12;
      _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Lastest fired date found nil when extracting from category identifiers", v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_extractLatestFireDateFromResetDosageEvents:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v23;
    v10 = MEMORY[0x277CCC2C8];
    *&v6 = 138543619;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [(HDHeadphoneExposureNotificationSyncManager *)self _computeFireDateFromResetDosageCategoryIdentifier:v12, v21];
        if (v13)
        {
          if (!v8 || [v8 hk_isBeforeDate:v13])
          {
            v14 = v13;

            v8 = v14;
          }
        }

        else
        {
          _HKInitializeLogging();
          v15 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = objc_opt_class();
            *buf = v21;
            v27 = v17;
            v28 = 2113;
            v29 = v12;
            v18 = v17;
            _os_log_error_impl(&dword_251764000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Fire date found nil when computing from category identifier, found: %{private}@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)notifyHAENotificationAddedWithSample:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  OUTLINED_FUNCTION_2(&dword_251764000, v5, v6, "[%{public}@] Notification send dismiss instructions returned with error = [%{public}@]", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_computeFireDateFromResetDosageCategoryIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4();
  [v0 count];
  OUTLINED_FUNCTION_2(&dword_251764000, v5, v6, "[%{public}@] Unable to compute fire date from identifier, found %lu components", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(void *)a1 didReceiveInstructionWithAction:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();

  v9 = *MEMORY[0x277D85DE8];
}

@end