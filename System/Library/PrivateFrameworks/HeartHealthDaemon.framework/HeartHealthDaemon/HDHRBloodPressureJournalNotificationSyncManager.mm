@interface HDHRBloodPressureJournalNotificationSyncManager
- (HDHRBloodPressureJournalNotificationSyncManager)initWithProfile:(id)a3;
- (id)_identifiersForHoldInstructionsFrom:(id)a3 journal:(id)a4;
- (int64_t)isAlarmEventWithIdentifiersOnHold:(id)a3 journalIdentifier:(id)a4 error:(id *)a5;
- (int64_t)isAlarmEventWithJournalIdentifierOnHold:(id)a3 error:(id *)a4;
- (int64_t)isAlarmEventWithNotificationIdentifierOnHold:(id)a3 error:(id *)a4;
- (unint64_t)bloodPressureJournalsClosed:(id)a3;
- (unint64_t)bloodPressureSamplesAdded:(id)a3 forJournal:(id)a4;
- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4;
@end

@implementation HDHRBloodPressureJournalNotificationSyncManager

- (HDHRBloodPressureJournalNotificationSyncManager)initWithProfile:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDHRBloodPressureJournalNotificationSyncManager;
  v5 = [(HDHRBloodPressureJournalNotificationSyncManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = objc_alloc(MEMORY[0x277D107B8]);
    v8 = *MEMORY[0x277CCBFF8];
    v9 = HKCreateSerialDispatchQueue();
    v10 = [v7 initWithProfile:v4 clientIdentifier:v8 queue:v9];
    notificationSyncClient = v6->_notificationSyncClient;
    v6->_notificationSyncClient = v10;

    [(HDNotificationSyncClient *)v6->_notificationSyncClient setDelegate:v6];
  }

  return v6;
}

- (id)_identifiersForHoldInstructionsFrom:(id)a3 journal:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    *&v10 = 138543874;
    v20 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [HDHRBloodPressureJournalNotificationIdentifier identifierFromBPSample:v14 journal:v6, v20];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 identifierString];
          [v7 addObject:v17];
        }

        else
        {
          _HKInitializeLogging();
          v17 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = self;
            v28 = 2114;
            v29 = v14;
            v30 = 2114;
            v31 = v6;
            _os_log_error_impl(&dword_229486000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Could not make identifier for sample [%{public}@] and  journal [%{public}@].", buf, 0x20u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)bloodPressureSamplesAdded:(id)a3 forJournal:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(HDHRBloodPressureJournalNotificationSyncManager *)self _identifiersForHoldInstructionsFrom:a3 journal:a4];
  v6 = [v5 allObjects];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:2 alarmEventIdentifier:v12];
        _HKInitializeLogging();
        v14 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 categoryIdentifier];
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v15;
        }

        notificationSyncClient = self->_notificationSyncClient;
        v23 = 0;
        v17 = [(HDNotificationSyncClient *)notificationSyncClient sendNotificationInstruction:v13 criteria:0 error:&v23];
        v18 = v23;
        if (v17)
        {
          ++v9;
        }

        else
        {
          _HKInitializeLogging();
          v19 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v29 = self;
            v30 = 2114;
            v31 = v12;
            v32 = 2114;
            v33 = v18;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (unint64_t)bloodPressureJournalsClosed:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v25;
    *&v5 = 138543874;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) UUID];
        v11 = [v10 UUIDString];

        v12 = [objc_alloc(MEMORY[0x277CCD6C0]) initWithAction:2 journalIdentifier:v11];
        _HKInitializeLogging();
        v13 = HKLogBloodPressureJournal();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 categoryIdentifier];
          *buf = 138543618;
          v29 = self;
          v30 = 2114;
          v31 = v14;
        }

        notificationSyncClient = self->_notificationSyncClient;
        v23 = 0;
        v16 = [(HDNotificationSyncClient *)notificationSyncClient sendNotificationInstruction:v12 criteria:0 error:&v23];
        v17 = v23;
        if (v16)
        {
          ++v7;
        }

        else
        {
          _HKInitializeLogging();
          v18 = HKLogBloodPressureJournal();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v29 = self;
            v30 = 2114;
            v31 = v11;
            v32 = 2114;
            v33 = v17;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)isAlarmEventWithNotificationIdentifierOnHold:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDNotificationSyncClient *)self->_notificationSyncClient notificationHoldInstructionsWithError:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CCD6C0] categoryIdentifierFromAlarmEventIdentifier:v6];
    if ([v7 containsObject:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)isAlarmEventWithJournalIdentifierOnHold:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDNotificationSyncClient *)self->_notificationSyncClient notificationHoldInstructionsWithError:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CCD6C0] categoryIdentifierFromJournalIdentifier:v6];
    if ([v7 containsObject:v8])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)isAlarmEventWithIdentifiersOnHold:(id)a3 journalIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HDNotificationSyncClient *)self->_notificationSyncClient notificationHoldInstructionsWithError:a5];
  if (v10)
  {
    v11 = [MEMORY[0x277CCD6C0] categoryIdentifierFromJournalIdentifier:v9];
    v12 = [MEMORY[0x277CCD6C0] categoryIdentifierFromAlarmEventIdentifier:v8];
    if ([v10 containsObject:v12])
    {
      v13 = 1;
    }

    else if ([v10 containsObject:v11])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)notificationSyncClient:(id)a3 didReceiveInstructionWithAction:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogBloodPressureJournal();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);

  if (v6)
  {
    v7 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromHKNotificationInstructionAction();
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_INFO, "[%{public}@] Notification Sync Client didReceiveInstructionWithAction %{public}@", buf, 0x16u);
    }
  }

  notificationSyncClient = self->_notificationSyncClient;
  v16 = 0;
  v10 = [(HDNotificationSyncClient *)notificationSyncClient notificationHoldInstructionsWithError:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [MEMORY[0x277CCD6C0] notificationIdentifiersFromCategoryIdentifiers:v10];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained notificationManager];
    [v14 removeDeliveredNotificationsWithIdentifiers:v12];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogBloodPressureJournal();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HDHRBloodPressureJournalNotificationSyncManager *)self notificationSyncClient:v11 didReceiveInstructionWithAction:v12];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(os_log_t)log didReceiveInstructionWithAction:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@]: Could not fetch notification hold instructions Error: %{public}@ ", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end