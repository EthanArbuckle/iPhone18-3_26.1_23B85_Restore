@interface HDMedicationNotificationSyncManager
- (BOOL)_clearMemoryCache;
- (BOOL)_shouldSendHoldInstructionForNewDoseEvent:(id)event;
- (BOOL)_shouldSendHoldInstructionForOldScheduleItem:(id)item compareWithNewScheduleItem:(id)scheduleItem;
- (HDMedicationNotificationSyncManager)init;
- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension;
- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension notificationSyncClient:(id)client;
- (id)_fetchAllScheduleItemsWithTransaction:(uint64_t)transaction error:;
- (id)_getAndReleaseCachedScheduleItemsForSchedules:(uint64_t)schedules;
- (int64_t)isScheduleItemOnHold:(id)hold errorOut:(id *)out;
- (uint64_t)_hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:(uint64_t)identifier;
- (void)_broadcastNotificationSchedule:(uint64_t)schedule withOldScheduleItem:(void *)item andNewScheduleItem:(void *)scheduleItem;
- (void)_cacheScheduleItems:(void *)items forSchedules:;
- (void)_didRescheduleLocalSchedules:(void *)schedules transaction:;
- (void)_handleDismissInstructions;
- (void)_handleHoldInstructions;
- (void)_handleScheduleItemsChangeForSchedule:(id)schedule withOldScheduleItems:(id)items andNewScheduleItems:(id)scheduleItems;
- (void)_updateNotificationSentTimeForScheduleItemIdentifier:(uint64_t)identifier;
- (void)_willRescheduleLocalSchedules:(void *)schedules transaction:;
- (void)doseEventsAdded:(id)added;
- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action;
- (void)scheduleManager:(id)manager transaction:(id)transaction didReschedule:(id)reschedule;
- (void)scheduleManager:(id)manager transaction:(id)transaction willReschedule:(id)reschedule;
@end

@implementation HDMedicationNotificationSyncManager

- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension
{
  v4 = MEMORY[0x277D107B8];
  extensionCopy = extension;
  v6 = [v4 alloc];
  profile = [extensionCopy profile];
  v8 = *MEMORY[0x277CCE3D8];
  v9 = HKCreateSerialDispatchQueue();
  v10 = [v6 initWithProfile:profile clientIdentifier:v8 queue:v9];

  v11 = [(HDMedicationNotificationSyncManager *)self initWithProfileExtension:extensionCopy notificationSyncClient:v10];
  return v11;
}

- (HDMedicationNotificationSyncManager)initWithProfileExtension:(id)extension notificationSyncClient:(id)client
{
  extensionCopy = extension;
  clientCopy = client;
  v22.receiver = self;
  v22.super_class = HDMedicationNotificationSyncManager;
  v8 = [(HDMedicationNotificationSyncManager *)&v22 init];
  if (v8)
  {
    profile = [extensionCopy profile];
    objc_storeWeak(&v8->_profile, profile);

    objc_storeStrong(&v8->_notificationSyncClient, client);
    [(HDNotificationSyncClient *)v8->_notificationSyncClient setDelegate:v8];
    WeakRetained = objc_loadWeakRetained(&v8->_profile);
    notificationManager = [WeakRetained notificationManager];
    notificationManager = v8->_notificationManager;
    v8->_notificationManager = notificationManager;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scheduleDict = v8->_scheduleDict;
    v8->_scheduleDict = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    broadcastedScheduleItemIdentifiers = v8->_broadcastedScheduleItemIdentifiers;
    v8->_broadcastedScheduleItemIdentifiers = v15;

    *&v8->_scheduleDictLock._os_unfair_lock_opaque = 0;
    v17 = objc_loadWeakRetained(&v8->_profile);
    syncIdentityManager = [v17 syncIdentityManager];
    syncIdentityManager = v8->_syncIdentityManager;
    v8->_syncIdentityManager = syncIdentityManager;

    medicationScheduleManager = [extensionCopy medicationScheduleManager];
    [medicationScheduleManager registerSynchronousObserver:v8];
  }

  return v8;
}

- (HDMedicationNotificationSyncManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (int64_t)isScheduleItemOnHold:(id)hold errorOut:(id *)out
{
  holdCopy = hold;
  v7 = [(HDNotificationSyncClient *)self->_notificationSyncClient notificationHoldInstructionsWithError:out];
  _HKInitializeLogging();
  v8 = HKLogMedication();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v10 = HKLogMedication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(HDMedicationNotificationSyncManager *)self isScheduleItemOnHold:v7 errorOut:v10];
    }
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CCD6C0] categoryIdentifierFromScheduleItemIdentifier:holdCopy];
    if ([v7 containsObject:v11])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)scheduleManager:(id)manager transaction:(id)transaction willReschedule:(id)reschedule
{
  v17 = *MEMORY[0x277D85DE8];
  rescheduleCopy = reschedule;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v13 = 138543618;
    v14 = v10;
    v15 = 2048;
    v16 = [rescheduleCopy count];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will reschedule for %ld local schedules", &v13, 0x16u);
  }

  [(HDMedicationNotificationSyncManager *)self _willRescheduleLocalSchedules:rescheduleCopy transaction:transactionCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)scheduleManager:(id)manager transaction:(id)transaction didReschedule:(id)reschedule
{
  v17 = *MEMORY[0x277D85DE8];
  rescheduleCopy = reschedule;
  transactionCopy = transaction;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v13 = 138543618;
    v14 = v10;
    v15 = 2048;
    v16 = [rescheduleCopy count];
    _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did reschedule for %ld local schedules", &v13, 0x16u);
  }

  [(HDMedicationNotificationSyncManager *)self _didRescheduleLocalSchedules:rescheduleCopy transaction:transactionCopy];
  v12 = *MEMORY[0x277D85DE8];
}

void __80__HDMedicationNotificationSyncManager__didRescheduleLocalSchedules_transaction___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = *(a1 + 40);
        v10 = [v8 UUID];
        v11 = [v10 UUIDString];
        v12 = [v9 objectForKeyedSubscript:v11];

        if (v12)
        {
          [*(a1 + 48) _handleScheduleItemsChangeForSchedule:v8 withOldScheduleItems:v12 andNewScheduleItems:*(a1 + 56)];
        }

        else
        {
          _HKInitializeLogging();
          v13 = HKLogMedication();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 48);
            v15 = objc_opt_class();
            v20 = v15;
            v16 = [v8 UUID];
            v17 = [v16 UUIDString];
            *buf = v19;
            v26 = v15;
            v27 = 2114;
            v28 = v17;
            _os_log_error_impl(&dword_25181C000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Weird, beforeChangeItems is nil. scheduleUUID=[%{public}@]", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HDMedicationNotificationSyncManager__fetchAllScheduleItemsWithTransaction_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];

  return 1;
}

- (void)_handleScheduleItemsChangeForSchedule:(id)schedule withOldScheduleItems:(id)items andNewScheduleItems:(id)scheduleItems
{
  v44 = *MEMORY[0x277D85DE8];
  scheduleCopy = schedule;
  itemsCopy = items;
  scheduleItemsCopy = scheduleItems;
  if ([itemsCopy count])
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = itemsCopy;
    v10 = itemsCopy;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          v16 = [v10 objectForKeyedSubscript:v15];
          v17 = [scheduleItemsCopy objectForKeyedSubscript:v15];
          if (!v17)
          {
            [v32 addObject:v15];
          }

          if ([(HDMedicationNotificationSyncManager *)self _shouldSendHoldInstructionForOldScheduleItem:v16 compareWithNewScheduleItem:v17])
          {
            [HDMedicationNotificationSyncManager _broadcastNotificationSchedule:scheduleCopy withOldScheduleItem:v16 andNewScheduleItem:?];
          }

          else
          {
            _HKInitializeLogging();
            v18 = HKLogMedication();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

            if (v19)
            {
              v20 = HKLogMedication();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v21 = objc_opt_class();
                *buf = 138543874;
                selfCopy = v21;
                v39 = 2114;
                v40 = v16;
                v41 = 2114;
                v42 = v17;
                v22 = v21;
                _os_log_debug_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEBUG, "[%{public}@] Not broadcasting for oldItem=[%{public}@], newItem=[%{public}@]", buf, 0x20u);
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v23 = [v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
        v12 = v23;
      }

      while (v23);
    }

    v24 = v32;
    if ([v32 count])
    {
      _HKInitializeLogging();
      v25 = HKLogMedication();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v39 = 2112;
        v40 = v32;
        _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing delivered notifications from local device for scheduleItemIdentifiers: %@", buf, 0x16u);
      }

      [(HDNotificationManager *)self->_notificationManager removeDeliveredNotificationsForScheduleItemIdentifiers:v32];
    }

    itemsCopy = v30;
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogMedication();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = v26;
      uUID = [scheduleCopy UUID];
      *buf = 138543618;
      selfCopy = v26;
      v39 = 2114;
      v40 = uUID;
      _os_log_impl(&dword_25181C000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] oldItems is empty. scheduleUUID=[%{public}@]", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_clearMemoryCache
{
  os_unfair_lock_lock(&self->_scheduleDictLock);
  [(NSMutableDictionary *)self->_scheduleDict removeAllObjects];
  os_unfair_lock_unlock(&self->_scheduleDictLock);
  os_unfair_lock_lock(&self->_scheduleItemIdentifiersLock);
  [(NSMutableDictionary *)self->_broadcastedScheduleItemIdentifiers removeAllObjects];
  os_unfair_lock_unlock(&self->_scheduleItemIdentifiersLock);
  return 1;
}

- (void)doseEventsAdded:(id)added
{
  v48 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    *buf = 138543618;
    v42 = v6;
    v43 = 2048;
    v44 = [addedCopy count];
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] New HKMedicationDoseEvents are added. Count: %lu", buf, 0x16u);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = addedCopy;
  v8 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v38;
    *&v9 = 138543874;
    v33 = v9;
    v34 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        if ([(HDMedicationNotificationSyncManager *)self _shouldSendHoldInstructionForNewDoseEvent:v13, v33])
        {
          v14 = objc_alloc(MEMORY[0x277CCD6C0]);
          scheduleItemIdentifier = [v13 scheduleItemIdentifier];
          v16 = [v14 initWithAction:2 scheduleItemIdentifier:scheduleItemIdentifier];

          v17 = objc_alloc(MEMORY[0x277D107A8]);
          uUID = [v13 UUID];
          v19 = [v17 initWithUUID:uUID];

          _HKInitializeLogging();
          v20 = HKLogMedication();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            v22 = v21;
            categoryIdentifier = [v16 categoryIdentifier];
            *buf = 138543618;
            v42 = v21;
            v43 = 2114;
            v44 = categoryIdentifier;

            v11 = v34;
          }

          notificationSyncClient = self->_notificationSyncClient;
          v36 = 0;
          v25 = [(HDNotificationSyncClient *)notificationSyncClient sendNotificationInstruction:v16 criteria:v19 error:&v36];
          v26 = v36;
          if (v25)
          {
            scheduleItemIdentifier2 = [v13 scheduleItemIdentifier];
            [(HDMedicationNotificationSyncManager *)self _updateNotificationSentTimeForScheduleItemIdentifier:scheduleItemIdentifier2];
          }

          else
          {
            _HKInitializeLogging();
            scheduleItemIdentifier2 = HKLogMedication();
            if (os_log_type_enabled(scheduleItemIdentifier2, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_opt_class();
              v29 = v28;
              scheduleItemIdentifier3 = [v13 scheduleItemIdentifier];
              *buf = v33;
              v42 = v28;
              v43 = 2114;
              v44 = scheduleItemIdentifier3;
              v45 = 2114;
              v46 = v26;

              v11 = v34;
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v31 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      v10 = v31;
    }

    while (v31);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(id)client didReceiveInstructionWithAction:(int64_t)action
{
  clientCopy = client;
  switch(action)
  {
    case 3:
      _HKInitializeLogging();
      v7 = HKLogMedication();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [HDMedicationNotificationSyncManager notificationSyncClient:v7 didReceiveInstructionWithAction:?];
      }

      break;
    case 2:
      [(HDMedicationNotificationSyncManager *)self _handleHoldInstructions];
      break;
    case 1:
      [(HDMedicationNotificationSyncManager *)self _handleDismissInstructions];
      break;
  }
}

- (void)_willRescheduleLocalSchedules:(void *)schedules transaction:
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v14 = 0;
    v6 = [(HDMedicationNotificationSyncManager *)self _fetchAllScheduleItemsWithTransaction:schedules error:&v14];
    v7 = v14;
    if (v6)
    {
      [(HDMedicationNotificationSyncManager *)self _cacheScheduleItems:v6 forSchedules:v5];
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v15 = 138543618;
        v16 = v10;
        OUTLINED_FUNCTION_1_5();
        v17 = v7;
        v12 = v11;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v8, v13, "[%{public}@] Fetch schedule items returned nil with error: [%{public}@]", &v15);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_didRescheduleLocalSchedules:(void *)schedules transaction:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  schedulesCopy = schedules;
  if (self)
  {
    v7 = [(HDMedicationNotificationSyncManager *)self _getAndReleaseCachedScheduleItemsForSchedules:v5];
    v23 = 0;
    v8 = [(HDMedicationNotificationSyncManager *)self _fetchAllScheduleItemsWithTransaction:schedulesCopy error:&v23];
    v9 = v23;
    if (v8)
    {
      OUTLINED_FUNCTION_0_3();
      v16 = 3221225472;
      v17 = __80__HDMedicationNotificationSyncManager__didRescheduleLocalSchedules_transaction___block_invoke;
      v18 = &unk_2796CDE38;
      v19 = v5;
      v20 = v7;
      selfCopy = self;
      v22 = v8;
      [schedulesCopy onCommit:v15 orRollback:0];

      v10 = v19;
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v24 = 138543618;
        v25 = v12;
        v26 = 2114;
        v27 = v9;
        v13 = v12;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v10, v14, "[%{public}@] Fetch schedule items returned nil with error: [%{public}@]", &v24);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAllScheduleItemsWithTransaction:(uint64_t)transaction error:
{
  if (self)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a2;
    v6 = objc_alloc_init(v4);
    OUTLINED_FUNCTION_0_3();
    v13 = 3221225472;
    v14 = __83__HDMedicationNotificationSyncManager__fetchAllScheduleItemsWithTransaction_error___block_invoke;
    v15 = &unk_2796CD618;
    v16 = v7;
    v8 = v7;
    LODWORD(transaction) = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:0 orderingTerms:0 transaction:v5 error:transaction enumerationHandler:v12];

    if (transaction)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_cacheScheduleItems:(void *)items forSchedules:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  itemsCopy = items;
  if (self)
  {
    os_unfair_lock_lock((self + 24));
    [*(self + 8) removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(self + 8);
          uUID = [*(*(&v16 + 1) + 8 * v11) UUID];
          uUIDString = [uUID UUIDString];
          [v12 setObject:v5 forKeyedSubscript:uUIDString];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    os_unfair_lock_unlock((self + 24));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_getAndReleaseCachedScheduleItemsForSchedules:(uint64_t)schedules
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (schedules)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    os_unfair_lock_lock((schedules + 24));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          uUID = [*(*(&v15 + 1) + 8 * i) UUID];
          uUIDString = [uUID UUIDString];

          v12 = [*(schedules + 8) objectForKeyedSubscript:uUIDString];
          [v4 setObject:v12 forKeyedSubscript:uUIDString];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [*(schedules + 8) removeAllObjects];
    os_unfair_lock_unlock((schedules + 24));
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_broadcastNotificationSchedule:(uint64_t)schedule withOldScheduleItem:(void *)item andNewScheduleItem:(void *)scheduleItem
{
  v46 = *MEMORY[0x277D85DE8];
  scheduleItemCopy = scheduleItem;
  if (schedule)
  {
    v6 = MEMORY[0x277CCD6C0];
    itemCopy = item;
    v8 = [v6 alloc];
    identifier = [scheduleItemCopy identifier];
    v10 = [v8 initWithAction:2 scheduleItemIdentifier:identifier];

    v11 = MEMORY[0x277CBEAA8];
    [itemCopy creationTimestamp];
    v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
    v13 = [HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria alloc];
    uUID = [itemCopy UUID];

    v15 = [(HDNotificationInstructionModifiedMedicationScheduleNotInDatabaseCriteria *)v13 initWithUUID:uUID modificationDate:v12];
    _HKInitializeLogging();
    v16 = HKLogMedication();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = v17;
      categoryIdentifier = [v10 categoryIdentifier];
      expirationDate = [v10 expirationDate];
      *buf = 138544130;
      v40 = v17;
      OUTLINED_FUNCTION_1_5();
      v41 = categoryIdentifier;
      v42 = v21;
      v43 = v22;
      v44 = v21;
      v45 = v12;
    }

    v23 = *(schedule + 56);
    v38 = 0;
    v24 = [v23 sendNotificationInstruction:v10 criteria:v15 error:&v38];
    v25 = v38;
    if (v24)
    {
      identifier2 = [scheduleItemCopy identifier];
      [(HDMedicationNotificationSyncManager *)schedule _updateNotificationSentTimeForScheduleItemIdentifier:identifier2];
    }

    else
    {
      _HKInitializeLogging();
      identifier2 = HKLogMedication();
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = v33;
        identifier3 = [scheduleItemCopy identifier];
        *buf = 138543874;
        v40 = v33;
        OUTLINED_FUNCTION_1_5();
        v41 = v36;
        v42 = v37;
        v43 = v25;
      }
    }

    _HKInitializeLogging();
    v27 = HKLogMedication();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = v28;
      categoryIdentifier2 = [v10 categoryIdentifier];
      *buf = 138543618;
      v40 = v28;
      OUTLINED_FUNCTION_1_5();
      v41 = v31;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateNotificationSentTimeForScheduleItemIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 28));
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277CBEAA8] now];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];

    [*(identifier + 16) setObject:v6 forKeyedSubscript:v3];
    os_unfair_lock_unlock((identifier + 28));
  }
}

- (uint64_t)_hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (!identifier)
  {
    v10 = 0;
    goto LABEL_8;
  }

  os_unfair_lock_lock((identifier + 28));
  v4 = [*(identifier + 16) objectForKeyedSubscript:v3];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [v4 doubleValue];
  v9 = v7 - v8;

  if (v9 >= 5.0)
  {
    [*(identifier + 16) removeObjectForKey:v3];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:
  os_unfair_lock_unlock((identifier + 28));

LABEL_8:
  return v10;
}

- (BOOL)_shouldSendHoldInstructionForOldScheduleItem:(id)item compareWithNewScheduleItem:(id)scheduleItem
{
  itemCopy = item;
  scheduleItemCopy = scheduleItem;
  identifier = [itemCopy identifier];
  LOBYTE(self) = [(HDMedicationNotificationSyncManager *)self _hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:identifier];

  if (self)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCD6C0];
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [v10 instructionExpirationDateForDate:v11];

    scheduledDateTime = [itemCopy scheduledDateTime];
    v14 = [v12 hk_isBeforeDate:scheduledDateTime];

    if (v14)
    {
      LOBYTE(v9) = 0;
    }

    else if (scheduleItemCopy)
    {
      doses = [itemCopy doses];
      v16 = [doses count];
      doses2 = [scheduleItemCopy doses];
      if (v16 <= [doses2 count])
      {
        doses3 = [itemCopy doses];
        doses4 = [scheduleItemCopy doses];
        if ([doses3 hk_containsObjectsInArray:doses4])
        {
          scheduledDateTime2 = [itemCopy scheduledDateTime];
          scheduledDateTime3 = [scheduleItemCopy scheduledDateTime];
          v9 = [scheduledDateTime2 isEqual:scheduledDateTime3] ^ 1;
        }

        else
        {
          LOBYTE(v9) = 1;
        }
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (BOOL)_shouldSendHoldInstructionForNewDoseEvent:(id)event
{
  eventCopy = event;
  scheduleItemIdentifier = [eventCopy scheduleItemIdentifier];
  v6 = [(HDMedicationNotificationSyncManager *)self _hasNotificationRecentlyBroadcastedForScheduleItemIdentifier:scheduleItemIdentifier];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    scheduleItemIdentifier2 = [eventCopy scheduleItemIdentifier];
    if (scheduleItemIdentifier2 && ([eventCopy logStatus] == 4 || objc_msgSend(eventCopy, "logStatus") == 5) && objc_msgSend(eventCopy, "logOrigin") == 2)
    {
      hd_dataOriginProvenance = [eventCopy hd_dataOriginProvenance];
      syncIdentity = [hd_dataOriginProvenance syncIdentity];
      currentSyncIdentity = [(HDSyncIdentityManager *)self->_syncIdentityManager currentSyncIdentity];
      entity = [currentSyncIdentity entity];
      v7 = syncIdentity == [entity persistentID];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)_handleDismissInstructions
{
  v30 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling dismiss instructions", buf, 0xCu);
    }

    v3 = *(self + 56);
    v25 = 0;
    v4 = [v3 pendingNotificationDismissInstructionsWithError:&v25];
    v5 = v25;
    if (v4)
    {
      v6 = MEMORY[0x277CCD6C0];
      categoryIdentifiers = [v4 categoryIdentifiers];
      v8 = [v6 scheduleItemIdentifiersFromCategoryIdentifiers:categoryIdentifiers];

      if ([v8 count])
      {
        [*(self + 48) removeDeliveredNotificationsForScheduleItemIdentifiers:v8];
      }

      categoryIdentifiers2 = [v4 categoryIdentifiers];
      v10 = [categoryIdentifiers2 hk_containsObjectPassingTest:&__block_literal_global_9];

      if (v10)
      {
        v11 = *(self + 48);
        v26 = *MEMORY[0x277D11400];
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [v11 removeDeliveredNotificationsForScheduleItemIdentifiers:v12];
      }

      v13 = *(self + 56);
      v24 = v5;
      v14 = [v13 markPendingNotificationInstructionsAsProcessed:v4 error:&v24];
      v15 = v24;

      if ((v14 & 1) == 0)
      {
        _HKInitializeLogging();
        v16 = HKLogMedication();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          objc_opt_class();
          OUTLINED_FUNCTION_3_2();
          v29 = v15;
          v22 = v21;
          OUTLINED_FUNCTION_10_1(&dword_25181C000, v16, v23, "[%{public}@] Mark pending notification instruction as processed failed with error = [%{public}@]", buf);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v8 = HKLogMedication();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        OUTLINED_FUNCTION_3_2();
        v29 = v5;
        v19 = v18;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v8, v20, "[%{public}@] Pending notification dismiss instructions returned nil with error = [%{public}@]", buf);
      }

      v15 = v5;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_handleHoldInstructions
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = HKLogMedication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling hold instructions", buf, 0xCu);
    }

    v3 = *(self + 56);
    v12 = 0;
    v4 = [v3 notificationHoldInstructionsWithError:&v12];
    v5 = v12;
    if (v4)
    {
      v6 = [MEMORY[0x277CCD6C0] scheduleItemIdentifiersFromCategoryIdentifiers:v4];
      [*(self + 48) removeDeliveredNotificationsForScheduleItemIdentifiers:v6];
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogMedication();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        *buf = 138543618;
        selfCopy = v8;
        OUTLINED_FUNCTION_1_5();
        v15 = v5;
        v10 = v9;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v6, v11, "[%{public}@] Notification hold instructions returned nil with error = [%{public}@]", buf);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isScheduleItemOnHold:(NSObject *)a3 errorOut:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2114;
  v10 = a2;
  v5 = v8;
  _os_log_debug_impl(&dword_25181C000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] On hold items: [%{public}@]", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)notificationSyncClient:(uint64_t)a1 didReceiveInstructionWithAction:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  v2 = *MEMORY[0x277D85DE8];
}

@end