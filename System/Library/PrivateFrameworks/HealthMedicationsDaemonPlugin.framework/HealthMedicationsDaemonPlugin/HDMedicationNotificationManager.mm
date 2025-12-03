@interface HDMedicationNotificationManager
- (BOOL)_removeAllScheduleItemsNotSentWithTransaction:(uint64_t)transaction error:;
- (BOOL)_removeAllScheduleItemsWithTransaction:(uint64_t)transaction error:;
- (BOOL)_rescheduleMedicationsFromDate:(id)date error:(id *)error;
- (BOOL)_scheduleMedicationsFromDate:(id)date clearNotSentItems:(BOOL)items error:(id *)error;
- (BOOL)_snoozedDoseEventDate:(void *)date forScheduleItem:(void *)item error:;
- (BOOL)rescheduleMedicationsWithError:(id *)error;
- (HDMedicationNotificationManager)init;
- (HDMedicationNotificationManager)initWithProfile:(id)profile userDefaults:(id)defaults alarmQueue:(id)queue restorableAlarm:(id)alarm expirationAlarm:(id)expirationAlarm;
- (double)_followUpDuration;
- (double)_snoozeDuration;
- (id)_activeSchedulesFromDate:(void *)date calendar:(void *)calendar transaction:(uint64_t)transaction error:;
- (id)_alarm:(void *)_alarm filterDueEventsToHandle:(void *)handle date:;
- (id)_expirationEventsToRemoveAtDate:error:;
- (id)_generateScheduleItemsWithSchedules:(void *)schedules fromDate:(void *)date endDate:(void *)endDate calendar:(uint64_t)calendar error:;
- (id)_medicationDoseEventsForScheduleItems:(id *)items transaction:(void *)transaction error:;
- (id)_nextScheduleItemsWithTransaction:(void *)transaction date:(void *)date snoozeFireDates:(uint64_t)dates error:;
- (id)_notInteractedDoseEventsForScheduleItems:(id)items transaction:(id)transaction;
- (id)_notificationSentScheduleItemsWithTransaction:(uint64_t)transaction error:;
- (id)_pruneAllScheduleItemsBefore:(NSObject *)before createDoseEvents:(int)events excludeDoseEventCreationForGivenDate:(void *)date transaction:(void *)transaction error:;
- (id)_removeDeliveredNotificationsLoggedAsTakenOrSkippedNotFromNotificationInterfaceFromDate:(void *)date error:;
- (id)_scheduleItemsNotSentPredicate;
- (id)_scheduleItemsSentPredicate;
- (id)_scheduleItemsWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:;
- (id)_snoozedDoseEventWithScheduleItemIdentifier:(void *)identifier medicationIdentifiers:(uint64_t)identifiers error:;
- (id)_takenOrSkippedAlarmIdentifiersSince:(id *)since error:;
- (id)_takenOrSkippedDoseEventsNearDate:(uint64_t)date error:;
- (id)_takenOrSkippedItemDoseIdentifiersNearDate:(uint64_t)date error:;
- (id)_uniqueDoseIdentifierFromItemIdentifier:(uint64_t)identifier medicationidentifier:;
- (id)pruneAllScheduleItemsBeforeDate:(id)date createDoseEvents:(BOOL)events error:(id *)error;
- (id)unitTesting_activeSchedulesFromDate:(id)date transaction:(id)transaction error:(id *)error;
- (uint64_t)_deleteNotInteractedAndNotLoggedDoseEventFor:(uint64_t)for transaction:(uint64_t)transaction error:;
- (uint64_t)_doseReminderSettingIsDisabled;
- (uint64_t)_followUpNotificationsEnabled;
- (uint64_t)_isDueEventExpired:(void *)expired fromDate:;
- (uint64_t)_isDueEventOnHold:(uint64_t)hold;
- (uint64_t)_notificationIsEnabled;
- (uint64_t)_removeExpirationEventsForIdentifiers:(uint64_t)identifiers error:;
- (uint64_t)_saveNotInteractedDoseEventsForScheduleItems:(void *)items transaction:(uint64_t)transaction error:;
- (uint64_t)_saveScheduleItems:(void *)items notificationSentScheduleItems:(void *)scheduleItems transaction:(void *)transaction error:;
- (uint64_t)_scheduleMedicationsFromDate:(int)date clearNotSentItems:(int)items areDoseRemindersEnabled:(void *)enabled transaction:(char **__ptr32 *)transaction error:;
- (uint64_t)_scheduleRestorableAlarmWithItems:(uint64_t)items date:(void *)date snoozeFireDates:(uint64_t)dates error:;
- (uint64_t)_scheduleRestorableAlarmWithNextScheduleItemsTransaction:(void *)transaction date:(NSObject *)date error:;
- (uint64_t)_schedulingIsEnabled;
- (uint64_t)_takenOrSkippedItemDoseIdentifiers:containsAllItemDoseIdentifiersForItem:;
- (void)_addNotificationObserver:(id)observer;
- (void)_alarm:(void *)_alarm confirmDeliveryByRemovingEvent:;
- (void)_alarm:(void *)_alarm confirmDeliveryByRemovingEvents:;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events date:(id)date;
- (void)_queue_alarm:(void *)_queue_alarm didReceiveDueExpirationEvents:;
@end

@implementation HDMedicationNotificationManager

- (HDMedicationNotificationManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationNotificationManager)initWithProfile:(id)profile userDefaults:(id)defaults alarmQueue:(id)queue restorableAlarm:(id)alarm expirationAlarm:(id)expirationAlarm
{
  profileCopy = profile;
  defaultsCopy = defaults;
  queueCopy = queue;
  alarmCopy = alarm;
  expirationAlarmCopy = expirationAlarm;
  v31.receiver = self;
  v31.super_class = HDMedicationNotificationManager;
  v17 = [(HDMedicationNotificationManager *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_restorableAlarm, alarm);
    objc_storeStrong(&v18->_expirationAlarm, expirationAlarm);
    objc_initWeak(&location, v18);
    restorableAlarm = v18->_restorableAlarm;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __107__HDMedicationNotificationManager_initWithProfile_userDefaults_alarmQueue_restorableAlarm_expirationAlarm___block_invoke;
    v28[3] = &unk_2796CDC00;
    objc_copyWeak(&v29, &location);
    [(HDRestorableAlarm *)restorableAlarm beginReceivingEventsWithHandler:v28];
    expirationAlarm = v18->_expirationAlarm;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __107__HDMedicationNotificationManager_initWithProfile_userDefaults_alarmQueue_restorableAlarm_expirationAlarm___block_invoke_2;
    v26[3] = &unk_2796CDC00;
    objc_copyWeak(&v27, &location);
    [(HDRestorableAlarm *)expirationAlarm beginReceivingEventsWithHandler:v26];
    v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    dateAnchor = v18->_dateAnchor;
    v18->_dateAnchor = v21;

    v23 = objc_alloc_init(MEMORY[0x277CCD0A0]);
    calendarCache = v18->_calendarCache;
    v18->_calendarCache = v23;

    objc_storeStrong(&v18->_userDefaults, defaults);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __107__HDMedicationNotificationManager_initWithProfile_userDefaults_alarmQueue_restorableAlarm_expirationAlarm___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [MEMORY[0x277CBEAA8] now];
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5 date:v7];
}

void __107__HDMedicationNotificationManager_initWithProfile_userDefaults_alarmQueue_restorableAlarm_expirationAlarm___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(HDMedicationNotificationManager *)WeakRetained _queue_alarm:v6 didReceiveDueExpirationEvents:v5];
}

- (BOOL)rescheduleMedicationsWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling medications", &v10, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v7 = [(HDMedicationNotificationManager *)self _rescheduleMedicationsFromDate:date error:error];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_rescheduleMedicationsFromDate:(id)date error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  _HKInitializeLogging();
  v7 = HKLogMedication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = dateCopy;
    _os_log_impl(&dword_25181C000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling medications from date: %{public}@", &v11, 0x16u);
  }

  v8 = [(HDMedicationNotificationManager *)self _scheduleMedicationsFromDate:dateCopy clearNotSentItems:1 error:error];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_scheduleMedicationsFromDate:(id)date clearNotSentItems:(BOOL)items error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  areDoseRemindersEnabled = [(HDMedicationNotificationManager *)self areDoseRemindersEnabled];
  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HKStringFromBool();
    v12 = HKStringFromBool();
    *buf = 138544130;
    selfCopy = self;
    v25 = 2114;
    v26 = dateCopy;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling medications from date: %{public}@, clearItems: %{public}@, areDoseRemindersEnabled: %{public}@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HDMedicationNotificationManager__scheduleMedicationsFromDate_clearNotSentItems_error___block_invoke;
  v19[3] = &unk_2796CDC28;
  v19[4] = self;
  v20 = dateCopy;
  itemsCopy = items;
  v22 = areDoseRemindersEnabled;
  v15 = dateCopy;
  v16 = [(HDHealthEntity *)HDMedicationScheduleItemEntity performWriteTransactionWithHealthDatabase:database error:error block:v19];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events date:(id)date
{
  v67 = *MEMORY[0x277D85DE8];
  _queue_alarmCopy = _queue_alarm;
  eventsCopy = events;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v10 = HKLogMedication();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    *buf = 138543874;
    selfCopy4 = self;
    v63 = 2114;
    v64 = v11;
    v65 = 2114;
    v66 = eventsCopy;
    _os_log_impl(&dword_25181C000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %{public}@", buf, 0x20u);
  }

  if (([(HDMedicationNotificationManager *)self _notificationIsEnabled]& 1) != 0)
  {
    v46 = eventsCopy;
    [(HDMedicationNotificationManager *)self _alarm:_queue_alarmCopy filterDueEventsToHandle:eventsCopy date:dateCopy];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v59 = 0u;
    v52 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (!v52)
    {
      goto LABEL_34;
    }

    v49 = *v57;
    selfCopy2 = self;
    v51 = _queue_alarmCopy;
    while (1)
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * i);
        _HKInitializeLogging();
        v14 = HKLogMedication();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          *buf = 138543618;
          selfCopy4 = v15;
          v63 = 2114;
          v64 = v13;
          v16 = v15;
          _os_log_impl(&dword_25181C000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling due event: %{public}@", buf, 0x16u);
        }

        eventIdentifier = [v13 eventIdentifier];
        scheduleItemIdentifier = [v13 scheduleItemIdentifier];
        v19 = [scheduleItemIdentifier isEqualToString:eventIdentifier];

        if (v19)
        {
          isFollowUpNotificationEvent = 0;
LABEL_18:
          isCriticalNotificationEvent = 0;
          goto LABEL_19;
        }

        isFollowUpNotificationEvent = [v13 isFollowUpNotificationEvent];
        isCriticalNotificationEvent = [v13 isCriticalNotificationEvent];
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        notificationManager = [WeakRetained notificationManager];
        areHealthCriticalAlertsAuthorized = [notificationManager areHealthCriticalAlertsAuthorized];

        if (isCriticalNotificationEvent && (areHealthCriticalAlertsAuthorized & 1) == 0)
        {
          _HKInitializeLogging();
          v25 = HKLogMedication();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HKSensitiveLogItem();
            *buf = 138543618;
            selfCopy4 = self;
            v63 = 2114;
            v64 = v26;
            _os_log_impl(&dword_25181C000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Critical alerts are unauthorized for a critical due event: %{public}@. Falling back to time-sensitive", buf, 0x16u);
          }

          goto LABEL_18;
        }

LABEL_19:
        clientOptions = [v13 clientOptions];
        v28 = MEMORY[0x277D115E8];
        scheduleItemIdentifier2 = [v13 scheduleItemIdentifier];
        dueDate = [v13 dueDate];
        v31 = [v28 notificationNotMissedWithScheduleItemIdentifier:scheduleItemIdentifier2 dueDate:dueDate isBatchingDoses:clientOptions & 1 isCritical:isCriticalNotificationEvent isFollowUp:isFollowUpNotificationEvent];

        if (v31)
        {
          v33 = [MEMORY[0x277CE1FC0] hkmd_requestForNotification:v31];
          _HKInitializeLogging();
          v34 = HKLogMedication();
          self = selfCopy2;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy4 = selfCopy2;
            v63 = 2114;
            v64 = v33;
            _os_log_impl(&dword_25181C000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting notification with request: %{public}@", buf, 0x16u);
          }

          v35 = objc_loadWeakRetained(&selfCopy2->_profile);
          notificationManager2 = [v35 notificationManager];
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __73__HDMedicationNotificationManager__queue_alarm_didReceiveDueEvents_date___block_invoke;
          v54[3] = &unk_2796CDC50;
          v54[4] = selfCopy2;
          v55 = eventIdentifier;
          [notificationManager2 postNotificationWithRequest:v33 completion:v54];

          v37 = objc_loadWeakRetained(&selfCopy2->_profile);
          healthMedicationsProfileExtension = [v37 healthMedicationsProfileExtension];
          medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

          if (isFollowUpNotificationEvent)
          {
            v40 = 0;
          }

          else
          {
            scheduleItemIdentifier3 = [v13 scheduleItemIdentifier];
            v53 = 0;
            v42 = [medicationScheduleManager updateNotificationSent:1 scheduleItemIdentifier:scheduleItemIdentifier3 error:&v53];
            v40 = v53;

            if ((v42 & 1) == 0)
            {
              _HKInitializeLogging();
              v43 = HKLogMedication();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                selfCopy4 = selfCopy2;
                v63 = 2114;
                v64 = v40;
                _os_log_error_impl(&dword_25181C000, v43, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to update notification sent to YES: %{public}@", buf, 0x16u);
              }
            }
          }

          _queue_alarmCopy = v51;
          [(HDMedicationNotificationManager *)selfCopy2 _alarm:v51 confirmDeliveryByRemovingEvent:v13];
        }

        else
        {
          _HKInitializeLogging();
          v32 = HKLogMedication();
          self = selfCopy2;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy4 = selfCopy2;
            v63 = 2114;
            v64 = eventIdentifier;
            _os_log_error_impl(&dword_25181C000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to make the notification object for due item identifier: %{public}@", buf, 0x16u);
          }

          _queue_alarmCopy = v51;
          [(HDMedicationNotificationManager *)selfCopy2 _alarm:v51 confirmDeliveryByRemovingEvent:v13];
        }
      }

      v52 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (!v52)
      {
LABEL_34:

        eventsCopy = v46;
        goto LABEL_38;
      }
    }
  }

  _HKInitializeLogging();
  v44 = HKLogMedication();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy4 = self;
    _os_log_impl(&dword_25181C000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications are disabled. Removing alarmEvents.", buf, 0xCu);
  }

  [(HDMedicationNotificationManager *)self _alarm:_queue_alarmCopy confirmDeliveryByRemovingEvents:eventsCopy];
LABEL_38:

  v45 = *MEMORY[0x277D85DE8];
}

void __73__HDMedicationNotificationManager__queue_alarm_didReceiveDueEvents_date___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  WeakRetained = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_25181C000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did successfully post notification for due item: %{public}@", &v15, 0x16u);
    }

    v10 = MEMORY[0x277D11560];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v11 = [WeakRetained notificationManager];
    v12 = [v11 areHealthNotificationsAuthorized];
    v13 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v10 submitNotificationSentMetricWithHealthNotificationsAuthorizedStatus:v12 dataSource:v13];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __73__HDMedicationNotificationManager__queue_alarm_didReceiveDueEvents_date___block_invoke_cold_1(a1);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HDMedicationNotificationManager__alarm_filterDueEventsToHandle_date___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dueDate];
  v6 = [v4 dueDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __102__HDMedicationNotificationManager__saveScheduleItems_notificationSentScheduleItems_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __96__HDMedicationNotificationManager__nextScheduleItemsWithTransaction_date_snoozeFireDates_error___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (([HDMedicationNotificationManager _takenOrSkippedItemDoseIdentifiers:containsAllItemDoseIdentifiersForItem:]& 1) == 0)
  {
    [*(a1 + 48) addObject:v3];
    v8 = *(a1 + 32);
    v26 = 0;
    v27 = 0;
    v9 = [(HDMedicationNotificationManager *)v8 _snoozedDoseEventDate:v3 forScheduleItem:&v26 error:?];
    v10 = v27;
    v11 = v26;
    if (v9)
    {
      if (v10)
      {
        [*(a1 + 32) _snoozeDuration];
        v12 = [v10 dateByAddingTimeInterval:?];
        if (([v12 hk_isAfterOrEqualToDate:*(a1 + 56)]& 1) == 0 && !HDIsUnitTesting())
        {
          goto LABEL_17;
        }

        v13 = *(a1 + 64);
        v14 = [v3 identifier];
        [v13 setObject:v12 forKeyedSubscript:v14];

        _HKInitializeLogging();
        v15 = HKLogMedication();
        LODWORD(v14) = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (!v14)
        {
          goto LABEL_17;
        }

        v16 = HKLogMedication();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *(a1 + 32);
          v18 = [v3 identifier];
          v19 = HKSensitiveLogItem();
          v20 = HKSensitiveLogItem();
          *buf = 138543874;
          v29 = v17;
          v30 = 2114;
          v31 = v19;
          v32 = 2114;
          v33 = v20;
          _os_log_impl(&dword_25181C000, v16, OS_LOG_TYPE_INFO, "[%{public}@] Will add alarm for snoozed item identifier: %{public}@ snoozeFireDate: %{public}@", buf, 0x20u);
        }

        goto LABEL_16;
      }

      _HKInitializeLogging();
      v23 = HKLogMedication();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);

      if (!v24)
      {
LABEL_18:

        goto LABEL_2;
      }

      v12 = HKLogMedication();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v25 = *(a1 + 32);
        v22 = [v3 identifier];
        v16 = HKSensitiveLogItem();
        *buf = 138543618;
        v29 = v25;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_INFO, "[%{public}@] No snooze dose event found for item identifier: %{public}@", buf, 0x16u);
        goto LABEL_15;
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = HKLogMedication();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v22 = [v3 identifier];
        v16 = HKSensitiveLogItem();
        *buf = 138543874;
        v29 = v21;
        v30 = 2114;
        v31 = v16;
        v32 = 2114;
        v33 = v11;
        _os_log_error_impl(&dword_25181C000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to query snoozed date for item identifier: %{public}@ error: %{public}@", buf, 0x20u);
LABEL_15:

LABEL_16:
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_2:

  v6 = *MEMORY[0x277D85DE8];
  return 1;
}

id __84__HDMedicationNotificationManager__takenOrSkippedItemDoseIdentifiersNearDate_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 scheduleItemIdentifier];
  v5 = [v3 medicationIdentifier];

  v6 = [(HDMedicationNotificationManager *)v2 _uniqueDoseIdentifierFromItemIdentifier:v4 medicationidentifier:v5];

  return v6;
}

id __73__HDMedicationNotificationManager__expirationEventsToRemoveAtDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dueDate];
  v5 = [v4 dateByAddingTimeInterval:-43200.0];
  LODWORD(a1) = [v5 hk_isAfterDate:*(a1 + 32)];

  if (a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __79__HDMedicationNotificationManager__removeExpirationEventsForIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 scheduleItemIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_addNotificationObserver:(id)observer
{
  observerCopy = observer;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  [notificationManager addNotificationObserver:observerCopy];
}

- (id)pruneAllScheduleItemsBeforeDate:(id)date createDoseEvents:(BOOL)events error:(id *)error
{
  dateCopy = date;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HDMedicationNotificationManager_pruneAllScheduleItemsBeforeDate_createDoseEvents_error___block_invoke;
  v15[3] = &unk_2796CDDE8;
  v17 = &v19;
  v15[4] = self;
  v11 = dateCopy;
  v16 = v11;
  eventsCopy = events;
  LODWORD(error) = [(HDHealthEntity *)HDMedicationScheduleItemEntity performWriteTransactionWithHealthDatabase:database error:error block:v15];

  if (error)
  {
    v12 = v20[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)_notInteractedDoseEventsForScheduleItems:(id)items transaction:(id)transaction
{
  v74 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v66 = 0;
  v6 = [HDMedicationNotificationManager _medicationDoseEventsForScheduleItems:itemsCopy transaction:? error:?];
  v7 = 0;
  if (!v6)
  {
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HDMedicationNotificationManager _notInteractedDoseEventsForScheduleItems:? transaction:?];
    }
  }

  selfCopy = self;
  v42 = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v63;
    v13 = *MEMORY[0x277CCC520];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        metadata = [*(*(&v62 + 1) + 8 * i) metadata];
        v16 = [metadata objectForKey:v13];

        if (v16)
        {
          [v9 addObject:v16];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v11);
  }

  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = itemsCopy;
  v46 = [v43 countByEnumeratingWithState:&v58 objects:v72 count:16];
  if (v46)
  {
    v45 = *v59;
    v17 = 0x277CCD000uLL;
    do
    {
      v18 = 0;
      do
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = v18;
        v19 = *(*(&v58 + 1) + 8 * v18);
        identifier = [v19 identifier];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v50 = v19;
        doses = [v19 doses];
        v20 = [doses countByEnumeratingWithState:&v54 objects:v71 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v55;
          v49 = *v55;
          do
          {
            v23 = 0;
            v51 = v21;
            do
            {
              if (*v55 != v22)
              {
                objc_enumerationMutation(doses);
              }

              v24 = *(*(&v54 + 1) + 8 * v23);
              v25 = *(v17 + 1616);
              medicationIdentifier = [v24 medicationIdentifier];
              v27 = [v25 syncIdentifierForScheduleItemIdentifier:identifier medicationIdentifier:medicationIdentifier];

              if (([v9 containsObject:v27] & 1) == 0)
              {
                v28 = [*(v17 + 1616) syncVersionForStatus:1];
                v29 = [*(v17 + 1616) _metadataWithSyncIdentifier:v27 syncVersion:v28 isLastScheduledDose:{objc_msgSend(v24, "isLastScheduledDose")}];
                v30 = *(v17 + 1616);
                medicationIdentifier2 = [v24 medicationIdentifier];
                dose = [v24 dose];
                scheduledDateTime = [v50 scheduledDateTime];
                [v50 scheduledDateTime];
                v35 = v34 = v9;
                v36 = [v30 medicationDoseEventWithLogOrigin:2 scheduleItemIdentifier:identifier medicationIdentifier:medicationIdentifier2 scheduledDoseQuantity:dose doseQuantity:0 scheduledDate:scheduledDateTime startDate:v35 logStatus:1 doseUnitString:0 metadata:v29];

                v9 = v34;
                v17 = 0x277CCD000;
                [v48 addObject:v36];

                v22 = v49;
                v21 = v51;
              }

              ++v23;
            }

            while (v21 != v23);
            v21 = [doses countByEnumeratingWithState:&v54 objects:v71 count:16];
          }

          while (v21);
        }

        v18 = v47 + 1;
      }

      while (v47 + 1 != v46);
      v46 = [v43 countByEnumeratingWithState:&v58 objects:v72 count:16];
    }

    while (v46);
  }

  _HKInitializeLogging();
  v37 = HKLogMedication();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = HKSensitiveLogItem();
    *buf = 138543618;
    v68 = selfCopy;
    v69 = 2114;
    v70 = v38;
    _os_log_impl(&dword_25181C000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}@] Not interacted dose events: %{public}@", buf, 0x16u);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v48;
}

- (double)_followUpDuration
{
  [(NSUserDefaults *)self->_userDefaults doubleForKey:*MEMORY[0x277D11460]];
  if (result == 0.0)
  {
    return 1800.0;
  }

  return result;
}

- (double)_snoozeDuration
{
  [(NSUserDefaults *)self->_userDefaults doubleForKey:*MEMORY[0x277D11468]];
  if (result == 0.0)
  {
    return 600.0;
  }

  return result;
}

- (void)_queue_alarm:(void *)_queue_alarm didReceiveDueExpirationEvents:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  _queue_alarmCopy = _queue_alarm;
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    _HKInitializeLogging();
    v8 = HKLogMedication();
    if (OUTLINED_FUNCTION_25(v8))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(_queue_alarmCopy, "count")}];
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_12();
      _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
    }

    v15 = [_queue_alarmCopy hk_map:&__block_literal_global_8];
    if ([v15 count])
    {
      WeakRetained = objc_loadWeakRetained((self + 8));
      notificationManager = [WeakRetained notificationManager];
      [notificationManager removeDeliveredNotificationsForScheduleItemIdentifiers:v15];

      [(HDMedicationNotificationManager *)self _alarm:v6 confirmDeliveryByRemovingEvents:_queue_alarmCopy];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_doseReminderSettingIsDisabled
{
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D11428];
    v3 = [*(result + 56) objectForKey:*MEMORY[0x277D11428]];
    if (v3)
    {
      areHealthNotificationsAuthorized = [*(v1 + 56) BOOLForKey:v2];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((v1 + 8));
      notificationManager = [WeakRetained notificationManager];
      areHealthNotificationsAuthorized = [notificationManager areHealthNotificationsAuthorized];
    }

    return areHealthNotificationsAuthorized ^ 1u;
  }

  return result;
}

- (uint64_t)_scheduleMedicationsFromDate:(int)date clearNotSentItems:(int)items areDoseRemindersEnabled:(void *)enabled transaction:(char **__ptr32 *)transaction error:
{
  v238 = *MEMORY[0x277D85DE8];
  v12 = a2;
  enabledCopy = enabled;
  if (!self)
  {
    v24 = 0;
    goto LABEL_6;
  }

  _HKInitializeLogging();
  v14 = HKLogMedication();
  v15 = &off_251879000;
  if (OUTLINED_FUNCTION_25(v14))
  {
    v16 = HKStringFromBool();
    OUTLINED_FUNCTION_2_1(5.8383e-34);
    v235 = v12;
    v236 = v17;
    v237 = v18;
    OUTLINED_FUNCTION_12();
    _os_log_impl(v19, v20, v21, v22, v23, 0x20u);
  }

  if ([(HDMedicationNotificationManager *)self _schedulingIsEnabled])
  {
    if (items)
    {
      v232[1] = 0;
      v27 = OUTLINED_FUNCTION_26();
      v30 = [(HDMedicationNotificationManager *)v27 _removeDeliveredNotificationsLoggedAsTakenOrSkippedNotFromNotificationInterfaceFromDate:v28 error:v29];
      v31 = 0;
      _HKInitializeLogging();
      v32 = HKLogMedication();
      v33 = v32;
      if (v30)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_2_1(5.8382e-34);
          v235 = v30;
          OUTLINED_FUNCTION_12();
          _os_log_impl(v35, v36, v37, v38, v39, 0x16u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2_1(5.8382e-34);
        v235 = v31;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v33, v34, "[%{public}@] Failed to remove notifications taken or skipped outside of notification UI: %{public}@", buf);
      }

      v232[0] = v31;
      v40 = [(HDMedicationNotificationManager *)self _removeExpirationEventsForIdentifiers:v30 error:v232];
      v41 = v232[0];

      _HKInitializeLogging();
      v42 = HKLogMedication();
      v43 = v42;
      if (v40)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
          OUTLINED_FUNCTION_1_4(5.8382e-34);
          *(v46 + 14) = v45;
          _os_log_impl(&dword_25181C000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully removed %{public}@ overdue expiration events", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_4(5.8382e-34);
        *(v47 + 14) = v41;
        OUTLINED_FUNCTION_3_1();
        _os_log_error_impl(v48, v49, v50, v51, v52, 0x16u);
      }
    }

    v231[4] = 0;
    v53 = OUTLINED_FUNCTION_17();
    v56 = [(HDMedicationNotificationManager *)v53 _notificationSentScheduleItemsWithTransaction:v54 error:v55];
    v57 = 0;
    v58 = v57;
    if (!v56)
    {
      _HKInitializeLogging();
      v68 = HKLogMedication();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2_1(5.8382e-34);
        v235 = v58;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v68, v86, "[%{public}@] Fetching notification sent schedule items before rescheduling failed with error: %{public}@", buf);
      }

      goto LABEL_31;
    }

    v226 = v57;
    v59 = &off_251879000;
    if (!date)
    {
      goto LABEL_21;
    }

    _HKInitializeLogging();
    v69 = HKLogMedication();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_4_0(5.8381e-34);
      OUTLINED_FUNCTION_23(&dword_25181C000, v69, v70, "[%{public}@] Clearing items", buf);
    }

    v231[3] = 0;
    v71 = OUTLINED_FUNCTION_26();
    v74 = [(HDMedicationNotificationManager *)v71 _pruneAllScheduleItemsBefore:v72 createDoseEvents:1 excludeDoseEventCreationForGivenDate:1 transaction:enabledCopy error:v73];
    v75 = 0;

    if (!v74)
    {
      _HKInitializeLogging();
      v76 = HKLogMedication();
      v58 = v226;
      if (OUTLINED_FUNCTION_21(v76))
      {
        OUTLINED_FUNCTION_2_1(5.8383e-34);
        v235 = v12;
        v236 = v99;
        v237 = v75;
        OUTLINED_FUNCTION_3_1();
        _os_log_error_impl(v100, v101, v102, v103, v104, 0x20u);
      }

      v77 = v75;
      if (v77)
      {
        if (transaction)
        {
          v78 = v77;
          *transaction = v77;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

LABEL_31:
      v24 = 0;
      goto LABEL_32;
    }

    v231[2] = 0;
    v90 = OUTLINED_FUNCTION_26();
    v94 = [(HDMedicationNotificationManager *)v90 _deleteNotInteractedAndNotLoggedDoseEventFor:v91 transaction:v92 error:v93];
    v95 = 0;
    if (v94)
    {
      v231[1] = 0;
      v119 = OUTLINED_FUNCTION_17();
      v122 = [(HDMedicationNotificationManager *)v119 _removeAllScheduleItemsWithTransaction:v120 error:v121];
      v123 = 0;
      if (v122)
      {
        v124 = *(self + 24);
        v231[0] = 0;
        v125 = [v124 removeAllEventsWithError:v231];
        v15 = v231[0];
        if (v125)
        {
          v230[1] = 0;
          OUTLINED_FUNCTION_26();
          v169 = [HDMedicationNotificationManager _expirationEventsToRemoveAtDate:error:];
          v223 = 0;
          v225 = v169;
          if (v169)
          {
            v170 = *(self + 32);
            v230[0] = 0;
            v171 = [v170 removeEvents:v169 error:v230];
            v221 = v230[0];
            v219 = v171;
            if (v171)
            {
              v172 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
              v173 = *(self + 40);
              *(self + 40) = v172;
            }

            else
            {
              _HKInitializeLogging();
              v189 = HKLogMedication();
              if (OUTLINED_FUNCTION_22(v189))
              {
                OUTLINED_FUNCTION_1_4(5.8382e-34);
                *(v210 + 14) = v221;
                OUTLINED_FUNCTION_5_1();
                _os_log_error_impl(v211, v212, v213, v214, v215, 0x16u);
              }

              v190 = v221;
              if (v190)
              {
                if (transaction)
                {
                  v191 = v190;
                  *transaction = v190;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              v233 = 0;
            }

            v59 = &off_251879000;
            if (v219)
            {
LABEL_21:
              v60 = v12;
              v61 = [v60 dateByAddingTimeInterval:1814400.0];
              if ([*(self + 40) hk_isAfterOrEqualToDate:v61])
              {
                _HKInitializeLogging();
                v62 = HKLogMedication();
                v63 = OUTLINED_FUNCTION_24(v62);

                if (v63)
                {
                  v64 = HKLogMedication();
                  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                  {
                    OUTLINED_FUNCTION_4_0(COERCE_FLOAT(*(v59 + 153)));
                    OUTLINED_FUNCTION_11_0(&dword_25181C000, v65, v66, "[%{public}@] Generation window already scheduled.");
                  }
                }

                v233 = v15;
                v67 = v60;
                v58 = v226;
                goto LABEL_27;
              }

              v67 = v60;
              if ([*(self + 40) hk_isAfterOrEqualToDate:v60])
              {
                v67 = *(self + 40);
              }

              [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
              v224 = v229 = 0;
              v79 = [(HDMedicationNotificationManager *)self _activeSchedulesFromDate:v67 calendar:v224 transaction:enabledCopy error:&v229];
              v220 = v229;
              v222 = v79;
              if (!v79)
              {
                _HKInitializeLogging();
                v87 = HKLogMedication();
                if (OUTLINED_FUNCTION_21(v87))
                {
                  OUTLINED_FUNCTION_2_1(5.8382e-34);
                  v235 = v220;
                  OUTLINED_FUNCTION_3_1();
                  _os_log_error_impl(v111, v112, v113, v114, v115, 0x16u);
                }

                v85 = v220;
                v88 = v220;
                v58 = v226;
                if (v88)
                {
                  if (transaction)
                  {
                    v89 = v88;
                    *transaction = v88;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                v233 = 0;
                goto LABEL_60;
              }

              if (![v79 count])
              {
                _HKInitializeLogging();
                v80 = HKLogMedication();
                v81 = OUTLINED_FUNCTION_24(v80);

                if (v81)
                {
                  v82 = HKLogMedication();
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
                  {
                    OUTLINED_FUNCTION_4_0(COERCE_FLOAT(*(v59 + 153)));
                    OUTLINED_FUNCTION_11_0(&dword_25181C000, v83, v84, "[%{public}@] No active schedules.");
                  }
                }

                v233 = v79;
                goto LABEL_50;
              }

              v228 = 0;
              v105 = [(HDMedicationNotificationManager *)self _generateScheduleItemsWithSchedules:v79 fromDate:v67 endDate:v61 calendar:v224 error:&v228];
              v217 = v228;
              v218 = v105;
              if (!v105)
              {
                _HKInitializeLogging();
                v116 = HKLogMedication();
                if (OUTLINED_FUNCTION_21(v116))
                {
                  OUTLINED_FUNCTION_1_4(5.8382e-34);
                  *(v147 + 14) = v217;
                  OUTLINED_FUNCTION_3_1();
                  _os_log_error_impl(v148, v149, v150, v151, v152, 0x16u);
                }

                v117 = v217;
                if (v117)
                {
                  if (transaction)
                  {
                    v118 = v117;
                    *transaction = v117;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }

                v233 = 0;
                goto LABEL_92;
              }

              if (![v105 count])
              {
                _HKInitializeLogging();
                v106 = HKLogMedication();
                v107 = OUTLINED_FUNCTION_24(v106);

                if (v107)
                {
                  v108 = HKLogMedication();
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    OUTLINED_FUNCTION_4_0(COERCE_FLOAT(*(v59 + 153)));
                    OUTLINED_FUNCTION_11_0(&dword_25181C000, v109, v110, "[%{public}@] No generated schedule items.");
                  }
                }

                v233 = v105;
                goto LABEL_92;
              }

              v227 = 0;
              v138 = [(HDMedicationNotificationManager *)self _saveScheduleItems:v105 notificationSentScheduleItems:v56 transaction:enabledCopy error:&v227];
              v216 = v227;
              if (v138)
              {
                v139 = OUTLINED_FUNCTION_17();
                v142 = [(HDMedicationNotificationManager *)v139 _scheduleRestorableAlarmWithNextScheduleItemsTransaction:v140 date:v60 error:v141];
                v143 = 0;
                v144 = v142;
                if (v142)
                {
                  v145 = v61;
                  v146 = *(self + 40);
                  *(self + 40) = v145;
LABEL_134:

                  v233 = v144;
LABEL_92:

LABEL_50:
                  v85 = v220;
                  v58 = v226;
LABEL_60:

LABEL_27:
                  v24 = v233;
LABEL_32:

                  goto LABEL_6;
                }

                _HKInitializeLogging();
                v165 = HKLogMedication();
                if (OUTLINED_FUNCTION_21(v165))
                {
                  OUTLINED_FUNCTION_1_4(5.8382e-34);
                  *(v192 + 14) = v143;
                  OUTLINED_FUNCTION_3_1();
                  _os_log_error_impl(v193, v194, v195, v196, v197, 0x16u);
                }

                v146 = v143;
                if (!v146)
                {
LABEL_133:
                  v143 = v146;
                  goto LABEL_134;
                }

                if (!transaction)
                {
                  _HKLogDroppedError();
                  goto LABEL_133;
                }

                v166 = v146;
LABEL_124:
                *transaction = v146;
                goto LABEL_133;
              }

              _HKInitializeLogging();
              v153 = HKLogMedication();
              if (OUTLINED_FUNCTION_21(v153))
              {
                OUTLINED_FUNCTION_1_4(5.8382e-34);
                *(v154 + 14) = v216;
                OUTLINED_FUNCTION_3_1();
                _os_log_error_impl(v155, v156, v157, v158, v159, 0x16u);
              }

              v160 = OUTLINED_FUNCTION_17();
              v163 = [(HDMedicationNotificationManager *)v160 _removeAllScheduleItemsNotSentWithTransaction:v161 error:v162];
              v143 = 0;
              if (v163)
              {
                v146 = v216;
                if (v146)
                {
                  if (transaction)
                  {
                    v164 = v146;
                    v144 = 0;
                    *transaction = v146;
                    goto LABEL_134;
                  }

                  _HKLogDroppedError();
                }

                v144 = 0;
                goto LABEL_134;
              }

              _HKInitializeLogging();
              v167 = HKLogMedication();
              if (OUTLINED_FUNCTION_21(v167))
              {
                OUTLINED_FUNCTION_1_4(5.8382e-34);
                *(v198 + 14) = v143;
                OUTLINED_FUNCTION_3_1();
                _os_log_error_impl(v199, v200, v201, v202, v203, 0x16u);
              }

              v146 = v143;
              if (v146)
              {
                if (transaction)
                {
                  v168 = v146;
                  v144 = 0;
                  goto LABEL_124;
                }

                _HKLogDroppedError();
              }

              v144 = 0;
              goto LABEL_133;
            }

LABEL_82:
            v24 = 0;
            v58 = v226;
            goto LABEL_32;
          }

          _HKInitializeLogging();
          v186 = HKLogMedication();
          if (OUTLINED_FUNCTION_22(v186))
          {
            OUTLINED_FUNCTION_1_4(5.8382e-34);
            *(v204 + 14) = v223;
            OUTLINED_FUNCTION_5_1();
            _os_log_error_impl(v205, v206, v207, v208, v209, 0x16u);
          }

          v187 = v223;
          if (v187)
          {
            if (transaction)
            {
              v188 = v187;
              *transaction = v187;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }

        else
        {
          _HKInitializeLogging();
          v126 = HKLogMedication();
          if (OUTLINED_FUNCTION_22(v126))
          {
            OUTLINED_FUNCTION_1_4(5.8382e-34);
            *(v180 + 14) = v15;
            OUTLINED_FUNCTION_5_1();
            _os_log_error_impl(v181, v182, v183, v184, v185, 0x16u);
          }

          v127 = v15;
          if (v127)
          {
            if (transaction)
            {
              v128 = v127;
              *transaction = v127;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }
      }

      else
      {
        _HKInitializeLogging();
        v135 = HKLogMedication();
        if (OUTLINED_FUNCTION_22(v135))
        {
          OUTLINED_FUNCTION_1_4(5.8382e-34);
          *(v174 + 14) = v123;
          OUTLINED_FUNCTION_5_1();
          _os_log_error_impl(v175, v176, v177, v178, v179, 0x16u);
        }

        v136 = v123;
        if (v136)
        {
          if (transaction)
          {
            v137 = v136;
            *transaction = v136;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v96 = HKLogMedication();
      if (OUTLINED_FUNCTION_22(v96))
      {
        OUTLINED_FUNCTION_2_1(5.8383e-34);
        v235 = v12;
        v236 = v129;
        v237 = v95;
        OUTLINED_FUNCTION_5_1();
        _os_log_error_impl(v130, v131, v132, v133, v134, 0x20u);
      }

      v97 = v95;
      if (v97)
      {
        if (transaction)
        {
          v98 = v97;
          *transaction = v97;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_82;
  }

  v24 = 1;
LABEL_6:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (uint64_t)_schedulingIsEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    WeakRetained = objc_loadWeakRetained((result + 8));
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    healthAppHiddenOrNotInstalled = [behavior healthAppHiddenOrNotInstalled];

    if (healthAppHiddenOrNotInstalled)
    {
      _HKInitializeLogging();
      v6 = HKLogMedication();
      if (OUTLINED_FUNCTION_28(v6))
      {
        v9 = 138543362;
        v10 = v1;
        OUTLINED_FUNCTION_23(&dword_25181C000, WeakRetained, v7, "[%{public}@] Scheduling disabled. Health app is hidden or not installed.", &v9);
      }

      result = 0;
    }

    else
    {
      result = 1;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_removeDeliveredNotificationsLoggedAsTakenOrSkippedNotFromNotificationInterfaceFromDate:(void *)date error:
{
  if (self)
  {
    v5 = [a2 dateByAddingTimeInterval:-604800.0];
    v6 = [HDMedicationNotificationManager _takenOrSkippedAlarmIdentifiersSince:self error:?];
    v7 = 0;
    v8 = v7;
    if (v6)
    {
      if ([v6 count])
      {
        WeakRetained = objc_loadWeakRetained(self + 1);
        notificationManager = [WeakRetained notificationManager];
        [notificationManager removeDeliveredNotificationsForScheduleItemIdentifiers:v6];
      }

      v11 = v6;
    }

    else
    {
      v12 = v7;
      if (v12)
      {
        if (date)
        {
          v13 = v12;
          *date = v12;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_removeExpirationEventsForIdentifiers:(uint64_t)identifiers error:
{
  v5 = a2;
  if (self)
  {
    v6 = [*(self + 32) allScheduledEventsWithError:identifiers];
    if ([v6 count])
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_9();
      v11 = __79__HDMedicationNotificationManager__removeExpirationEventsForIdentifiers_error___block_invoke;
      v12 = &unk_2796CDDC0;
      v13 = v5;
      v7 = [v6 hk_filter:v10];
      v8 = [*(self + 32) removeEvents:v7 error:identifiers];
    }

    else
    {
      v8 = v6 != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_notificationSentScheduleItemsWithTransaction:(uint64_t)transaction error:
{
  if (self)
  {
    v5 = a2;
    _scheduleItemsSentPredicate = [(HDMedicationNotificationManager *)self _scheduleItemsSentPredicate];
    v7 = [(HDMedicationNotificationManager *)self _scheduleItemsWithPredicate:_scheduleItemsSentPredicate transaction:v5 error:transaction];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_pruneAllScheduleItemsBefore:(NSObject *)before createDoseEvents:(int)events excludeDoseEventCreationForGivenDate:(void *)date transaction:(void *)transaction error:
{
  v52 = *MEMORY[0x277D85DE8];
  v12 = a2;
  dateCopy = date;
  if (self)
  {
    _HKInitializeLogging();
    v14 = HKLogMedication();
    if (OUTLINED_FUNCTION_25(v14))
    {
      v15 = HKStringFromBool();
      v16 = HKStringFromBool();
      OUTLINED_FUNCTION_6_1();
      v47 = v12;
      v48 = v17;
      v49 = v15;
      v50 = v17;
      v51 = v18;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v19, v20, v21, v22, v23, 0x2Au);
    }

    v24 = HDMedicationScheduleItemPredicateForScheduledDateTime(3);
    v25 = v24;
    if (events)
    {
      currentCalendar = [self[6] currentCalendar];
      v27 = [currentCalendar startOfDayForDate:v12];
      v25 = HDMedicationScheduleItemPredicateForScheduledDateTime(3);
    }

    OUTLINED_FUNCTION_27();
    v29 = [(HDMedicationNotificationManager *)self _scheduleItemsWithPredicate:v25 transaction:dateCopy error:v28];
    v30 = v45[1];
    if (v29)
    {
      if (![v29 count] || !before)
      {
LABEL_9:
        if ([HDMedicationScheduleItemEntity deleteMedicationScheduleItemsWithPredicate:v24 transaction:dateCopy error:transaction])
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        goto LABEL_20;
      }

      v45[0] = 0;
      v38 = [(HDMedicationNotificationManager *)self _saveNotInteractedDoseEventsForScheduleItems:v29 transaction:dateCopy error:v45];
      v39 = v45[0];
      v40 = v39;
      if (v38)
      {

        goto LABEL_9;
      }

      _HKInitializeLogging();
      v42 = HKLogMedication();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_6_1();
        v47 = v40;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v42, v44, "[%{public}@] Failed to save Not Interacted Dose Events with error: %{public}@", v46);
      }

      v34 = v40;
      if (v34)
      {
        if (transaction)
        {
          v43 = v34;
          *transaction = v34;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v33 = HKLogMedication();
      if (OUTLINED_FUNCTION_22(v33))
      {
        OUTLINED_FUNCTION_6_1();
        v47 = v30;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, before, v41, "[%{public}@] Failed to fetch schedule items with error: %{public}@", v46);
      }

      v34 = v30;
      if (v34)
      {
        if (transaction)
        {
          v35 = v34;
          *transaction = v34;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v32 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v32 = 0;
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

- (uint64_t)_deleteNotInteractedAndNotLoggedDoseEventFor:(uint64_t)for transaction:(uint64_t)transaction error:
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v7 = *(self + 48);
    v8 = a2;
    currentCalendar = [v7 currentCalendar];
    v10 = [currentCalendar startOfDayForDate:v8];

    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v10 duration:86400.0];
    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    v13 = HDSampleEntityPredicateForDateInterval();

    v14 = HDMedicationDoseEventEntityPredicateForStatuses();
    v15 = HDMedicationDoseEventEntityPredicateForLogOrigin();
    v28[0] = v13;
    v28[1] = v14;
    v28[2] = v15;
    [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_14_0() predicateMatchingAllPredicates:?];

    v23 = 0;
    WeakRetained = objc_loadWeakRetained((self + 8));
    dataManager = [WeakRetained dataManager];
    v19 = [dataManager deleteDataObjectsOfClass:objc_opt_class() predicate:v16 limit:*MEMORY[0x277D10C08] deletedSampleCount:&v23 notifyObservers:1 generateDeletedObjects:1 recursiveDeleteAuthorizationBlock:0 error:transaction];

    _HKInitializeLogging();
    v20 = HKLogMedication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v26 = 2048;
      v27 = v23;
      _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleted %ld 'not interacted' and 'not logged' dose events", buf, 0x16u);
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_removeAllScheduleItemsWithTransaction:(uint64_t)transaction error:
{
  v13 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = a2;
    _HKInitializeLogging();
    v6 = HKLogMedication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      selfCopy = self;
      OUTLINED_FUNCTION_23(&dword_25181C000, v6, v7, "[%{public}@] Removing all schedule items with transaction", &v11);
    }

    v8 = [HDMedicationScheduleItemEntity deleteMedicationScheduleItemsWithPredicate:0 transaction:v5 error:transaction];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_expirationEventsToRemoveAtDate:error:
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  if (v1)
  {
    v4 = [v1[4] allScheduledEventsWithError:v0];
    if (v4)
    {
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_9();
      v7 = __73__HDMedicationNotificationManager__expirationEventsToRemoveAtDate_error___block_invoke;
      v8 = &unk_2796CDD98;
      v9 = v3;
      v1 = [v4 hk_map:v6];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)_activeSchedulesFromDate:(void *)date calendar:(void *)calendar transaction:(uint64_t)transaction error:
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v43 = v8;
  if (self)
  {
    v9 = v8;
    calendarCopy = calendar;
    v11 = [date startOfDayForDate:v9];
    v12 = [v9 dateByAddingTimeInterval:1814400.0];
    v13 = HDMedicationSchedulePredicateForStartDateTime(3);

    v41 = v11;
    HDMedicationSchedulePredicateForEndDateTime(6);
    v57 = v56 = v13;
    v39 = v57;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:2];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_15() predicateMatchingAllPredicates:?];

    HDMedicationSchedulePredicateForNilEndDateTime();
    v40 = v13;
    v55 = v54 = v13;
    v37 = v55;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:2];
    objc_claimAutoreleasedReturnValue();
    v15 = [OUTLINED_FUNCTION_15() predicateMatchingAllPredicates:?];

    v16 = +[HDMedicationScheduleEntity availableSchedulePredicate];
    v17 = MEMORY[0x277D10B20];
    v38 = v14;
    v53[0] = v14;
    v53[1] = v15;
    v36 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v19 = [v17 predicateMatchingAnyPredicates:v18];

    v20 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"schedule_type" values:&unk_2863C2C60];
    v21 = HDMedicationSchedulePredicateForActiveMedications();
    v22 = MEMORY[0x277D10B20];
    v35 = v16;
    v52[0] = v16;
    v52[1] = v20;
    v52[2] = v19;
    v52[3] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    v24 = [v22 predicateMatchingAllPredicates:v23];

    selfCopy = self;
    WeakRetained = objc_loadWeakRetained((self + 8));
    healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
    medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];

    v29 = [medicationScheduleManager medicationSchedulesWithPredicate:v24 transaction:calendarCopy error:transaction];

    _HKInitializeLogging();
    v30 = HKLogMedication();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
      v32 = HKSensitiveLogItem();
      *buf = 138544130;
      v45 = selfCopy;
      v46 = 2114;
      v47 = v43;
      v48 = 2114;
      v49 = v31;
      v50 = 2114;
      v51 = v32;
      _os_log_impl(&dword_25181C000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Active schedules from date: %{public}@, %{public}@ active schedules: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v29 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_generateScheduleItemsWithSchedules:(void *)schedules fromDate:(void *)date endDate:(void *)endDate calendar:(uint64_t)calendar error:
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (self)
  {
    endDateCopy = endDate;
    dateCopy = date;
    schedulesCopy = schedules;
    v15 = [[HDNotificationEngineConfiguration alloc] initWithCalendar:endDateCopy startGenerationDate:schedulesCopy endGenerationDate:dateCopy];

    v16 = [HDMedicationNotificationEngine generateForSchedules:v11 configuration:v15 error:calendar];
    _HKInitializeLogging();
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      v19 = HKSensitiveLogItem();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      v21 = HKSensitiveLogItem();
      v26 = 138544386;
      selfCopy = self;
      OUTLINED_FUNCTION_6_0();
      v28 = v18;
      v29 = v22;
      v30 = v19;
      v31 = v22;
      v32 = v20;
      v33 = v22;
      v34 = v23;
      _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Generated %{public}@ schedule items: %{public}@, for %{public}@ schedules: %{public}@", &v26, 0x34u);
    }
  }

  else
  {
    v16 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (uint64_t)_saveScheduleItems:(void *)items notificationSentScheduleItems:(void *)scheduleItems transaction:(void *)transaction error:
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a2;
  itemsCopy = items;
  scheduleItemsCopy = scheduleItems;
  if (self)
  {
    _HKInitializeLogging();
    v12 = HKLogMedication();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v14 = HKSensitiveLogItem();
      *buf = 138543874;
      selfCopy = self;
      v53 = 2114;
      v54 = v13;
      v55 = 2114;
      v56 = v14;
      _os_log_impl(&dword_25181C000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving %{public}@ schedule items with transaction: %{public}@", buf, 0x20u);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v9;
    v15 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      selfCopy2 = self;
      transactionCopy = transaction;
      v42 = v9;
      v17 = *v47;
      while (2)
      {
        for (i = 0; i != v16; i = (i + 1))
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v46 + 1) + 8 * i);
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __102__HDMedicationNotificationManager__saveScheduleItems_notificationSentScheduleItems_transaction_error___block_invoke;
          v45[3] = &unk_2796CDCB8;
          v45[4] = v19;
          v20 = [itemsCopy hk_firstObjectPassingTest:v45];
          v21 = v19;
          if (v20 && [v20 notificationSent])
          {
            v22 = objc_alloc(MEMORY[0x277D11588]);
            scheduledDateTime = [v21 scheduledDateTime];
            [v21 doses];
            v24 = v17;
            v25 = scheduleItemsCopy;
            v27 = v26 = itemsCopy;
            v28 = [v22 initWithScheduledDateTime:scheduledDateTime notificationSent:1 doses:v27];

            itemsCopy = v26;
            scheduleItemsCopy = v25;
            v17 = v24;

            v21 = v28;
          }

          v44 = 0;
          v29 = [HDMedicationScheduleItemEntity insertMedicationScheduleItem:v21 transaction:scheduleItemsCopy error:&v44];
          v30 = v44;

          if (!v29)
          {
            v32 = itemsCopy;
            _HKInitializeLogging();
            v33 = HKLogMedication();
            if (OUTLINED_FUNCTION_21(v33))
            {
              *buf = 138543618;
              selfCopy = selfCopy2;
              v53 = 2048;
              v54 = v30;
              OUTLINED_FUNCTION_10_1(&dword_25181C000, v16, v34, "[%{public}@] Insert medication schedule items failed with error: %public@", buf);
            }

            v35 = v30;
            v36 = v35;
            v9 = v42;
            if (v35)
            {
              if (transactionCopy)
              {
                v37 = v35;
                *transactionCopy = v36;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v31 = 0;
            itemsCopy = v32;
            goto LABEL_24;
          }
        }

        v16 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v31 = 1;
      v9 = v42;
    }

    else
    {
      v31 = 1;
    }

LABEL_24:
  }

  else
  {
    v31 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)_removeAllScheduleItemsNotSentWithTransaction:(uint64_t)transaction error:
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v6 = a2;
    _HKInitializeLogging();
    v7 = HKLogMedication();
    if (OUTLINED_FUNCTION_25(v7))
    {
      OUTLINED_FUNCTION_12();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }

    _scheduleItemsNotSentPredicate = [(HDMedicationNotificationManager *)self _scheduleItemsNotSentPredicate];
    v14 = [HDMedicationScheduleItemEntity deleteMedicationScheduleItemsWithPredicate:_scheduleItemsNotSentPredicate transaction:v6 error:transaction];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (uint64_t)_scheduleRestorableAlarmWithNextScheduleItemsTransaction:(void *)transaction date:(NSObject *)date error:
{
  v41 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (!self)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v8 = a2;
  _HKInitializeLogging();
  v9 = HKLogMedication();
  if (OUTLINED_FUNCTION_28(v9))
  {
    *buf = 138543362;
    selfCopy2 = self;
    OUTLINED_FUNCTION_23(&dword_25181C000, a2, v10, "[%{public}@] Scheduling restorable alarms with next schedule items", buf);
  }

  v36 = 0;
  v37 = 0;
  v11 = [(HDMedicationNotificationManager *)self _nextScheduleItemsWithTransaction:v8 date:transactionCopy snoozeFireDates:&v37 error:&v36];

  v12 = v37;
  v13 = v36;
  if (!v11)
  {
    _HKInitializeLogging();
    v18 = HKLogMedication();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      v40 = v13;
      OUTLINED_FUNCTION_10_1(&dword_25181C000, v18, v34, "[%{public}@] Failed to fetch the next rescheduled item with error: %{public}@.", buf);
    }

    v17 = v13;
    if (v17)
    {
      if (date)
      {
        v19 = v17;
        v15 = 0;
        *date = v17;
LABEL_16:

        goto LABEL_17;
      }

      _HKLogDroppedError();
    }

    v15 = 0;
    goto LABEL_16;
  }

  if ([v11 count])
  {
    if ([v12 count])
    {
      _HKInitializeLogging();
      v22 = HKLogMedication();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

      if (v23)
      {
        v24 = HKLogMedication();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
          OUTLINED_FUNCTION_7_1();
          v40 = v26;
          _os_log_impl(&dword_25181C000, v24, OS_LOG_TYPE_INFO, "[%{public}@] Snoozed %{public}@ notification with identifiers, removing from Notifications Center", buf, 0x16u);
        }
      }

      WeakRetained = objc_loadWeakRetained((self + 8));
      notificationManager = [WeakRetained notificationManager];
      [v12 allKeys];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14_0() removeDeliveredNotificationsForScheduleItemIdentifiers:?];
    }

    v29 = OUTLINED_FUNCTION_17();
    v15 = [(HDMedicationNotificationManager *)v29 _scheduleRestorableAlarmWithItems:v30 date:transactionCopy snoozeFireDates:v12 error:v31];
    v17 = 0;
    if ((v15 & 1) == 0)
    {
      _HKInitializeLogging();
      v32 = HKLogMedication();
      if (OUTLINED_FUNCTION_22(v32))
      {
        OUTLINED_FUNCTION_7_1();
        v40 = v17;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, &off_251879000, v35, "[%{public}@] Failed to schedule the initial restorable alarm with error: %{public}@.", buf);
      }

      v17 = v17;
      if (v17)
      {
        if (date)
        {
          v33 = v17;
          *date = v17;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_16;
  }

  _HKInitializeLogging();
  v14 = HKLogMedication();
  v15 = 1;
  v16 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

  if (v16)
  {
    v17 = HKLogMedication();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_25181C000, v17, OS_LOG_TYPE_INFO, "[%{public}@] Cannot add next alarm. There are no more schedule items.", buf, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (uint64_t)_notificationIsEnabled
{
  v8 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if (([(HDMedicationNotificationManager *)result _schedulingIsEnabled]& 1) != 0)
    {
      if (![(HDMedicationNotificationManager *)v1 _doseReminderSettingIsDisabled])
      {
        result = 1;
        goto LABEL_7;
      }

      _HKInitializeLogging();
      v2 = HKLogMedication();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v6 = 138543362;
      v7 = v1;
      v4 = "[%{public}@] Notification disabled. Dose reminder is toggled off.";
    }

    else
    {
      _HKInitializeLogging();
      v2 = HKLogMedication();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        result = 0;
        goto LABEL_7;
      }

      v6 = 138543362;
      v7 = v1;
      v4 = "[%{public}@] Notification disabled. Scheduling is disabled.";
    }

    OUTLINED_FUNCTION_23(&dword_25181C000, v2, v3, v4, &v6);
    goto LABEL_6;
  }

LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_alarm:(void *)_alarm confirmDeliveryByRemovingEvents:
{
  v17 = *MEMORY[0x277D85DE8];
  _alarmCopy = _alarm;
  if (self)
  {
    OUTLINED_FUNCTION_27();
    v6 = [a2 removeEvents:_alarmCopy error:?];
    v7 = v12;
    _HKInitializeLogging();
    v8 = HKLogMedication();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy2 = self;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed event: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy2 = self;
      OUTLINED_FUNCTION_8_1();
      v15 = v11;
      v16 = v7;
      _os_log_error_impl(&dword_25181C000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to confirm delivery by removing event for client identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_alarm:(void *)_alarm filterDueEventsToHandle:(void *)handle date:
{
  v41 = *MEMORY[0x277D85DE8];
  v33 = a2;
  _alarmCopy = _alarm;
  handleCopy = handle;
  if (!self)
  {
    v26 = 0;
    v29 = v33;
    goto LABEL_23;
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = _alarmCopy;
  v10 = _alarmCopy;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v36;
  do
  {
    v14 = 0;
    do
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v35 + 1) + 8 * v14);
      if ([(HDMedicationNotificationManager *)self _isDueEventExpired:v15 fromDate:handleCopy])
      {
        _HKInitializeLogging();
        v16 = HKLogMedication();
        if (OUTLINED_FUNCTION_28(v16))
        {
          v17 = objc_opt_class();
          v18 = OUTLINED_FUNCTION_16(v17);
          v19 = _alarmCopy;
          v20 = "[%{public}@] Stale event. Removing alarmEvent: %{public}@";
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      v22 = [(HDMedicationNotificationManager *)self _isDueEventOnHold:v15];
      v21 = v34;
      if (v22)
      {
        _HKInitializeLogging();
        v23 = HKLogMedication();
        if (OUTLINED_FUNCTION_28(v23))
        {
          v24 = objc_opt_class();
          v18 = OUTLINED_FUNCTION_16(v24);
          v19 = _alarmCopy;
          v20 = "[%{public}@] Due event is on-hold: %{public}@";
LABEL_10:
          _os_log_impl(&dword_25181C000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);
        }

LABEL_11:

        v21 = v9;
      }

      [v21 addObject:v15];
      ++v14;
    }

    while (v12 != v14);
    v25 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    v12 = v25;
  }

  while (v25);
LABEL_18:

  v26 = v34;
  [v34 sortUsingComparator:&__block_literal_global_343];
  if ([v34 count] >= 3)
  {
    v27 = [v34 subarrayWithRange:{0, (objc_msgSend(v34, "count") + -2.0)}];
    [v9 addObjectsFromArray:v27];
    v28 = [v34 hk_mutableSubarrayWithRange:{(objc_msgSend(v34, "count") + -2.0), 2}];

    v26 = v28;
  }

  _alarmCopy = v32;
  v29 = v33;
  if ([v9 count])
  {
    [(HDMedicationNotificationManager *)self _alarm:v33 confirmDeliveryByRemovingEvents:v9];
  }

LABEL_23:
  v30 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)_alarm:(void *)_alarm confirmDeliveryByRemovingEvent:
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v10[0] = _alarm;
    v5 = MEMORY[0x277CBEA60];
    _alarmCopy = _alarm;
    v7 = a2;
    v8 = [v5 arrayWithObjects:v10 count:1];

    [(HDMedicationNotificationManager *)self _alarm:v7 confirmDeliveryByRemovingEvents:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_isDueEventExpired:(void *)expired fromDate:
{
  if (result)
  {
    expiredCopy = expired;
    dueDate = [a2 dueDate];
    v6 = [dueDate dateByAddingTimeInterval:43200.0];

    v7 = [v6 hk_isBeforeOrEqualToDate:expiredCopy];
    return v7;
  }

  return result;
}

- (uint64_t)_isDueEventOnHold:(uint64_t)hold
{
  holdCopy = hold;
  v19 = *MEMORY[0x277D85DE8];
  if (hold)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((holdCopy + 8));
    healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
    medicationNotificationSyncManager = [healthMedicationsProfileExtension medicationNotificationSyncManager];

    scheduleItemIdentifier = [v3 scheduleItemIdentifier];

    OUTLINED_FUNCTION_27();
    v8 = [medicationNotificationSyncManager isScheduleItemOnHold:scheduleItemIdentifier errorOut:?];
    v9 = v14;

    if (v8)
    {
      if (v8 != 2)
      {
        holdCopy = 1;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogMedication();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543618;
        v16 = holdCopy;
        v17 = 2114;
        v18 = v9;
        OUTLINED_FUNCTION_10_1(&dword_25181C000, v10, v11, "[%{public}@]: isScheduleItemOnHold returned error=[%{public}@], but treating it as not on hold", &v15);
      }
    }

    holdCopy = 0;
    goto LABEL_9;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return holdCopy;
}

- (id)_scheduleItemsNotSentPredicate
{
  if (self)
  {
    self = HDMedicationScheduleItemPredicateForNotificationSent(MEMORY[0x277CBEC28], 1);
    v1 = vars8;
  }

  return self;
}

- (id)_scheduleItemsSentPredicate
{
  if (self)
  {
    self = HDMedicationScheduleItemPredicateForNotificationSent(MEMORY[0x277CBEC38], 1);
    v1 = vars8;
  }

  return self;
}

- (id)_nextScheduleItemsWithTransaction:(void *)transaction date:(void *)date snoozeFireDates:(uint64_t)dates error:
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  transactionCopy = transaction;
  if (self)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"scheduled_date_time" entityClass:objc_opt_class() ascending:1];
    v13 = transactionCopy;
    v14 = [HDMedicationNotificationManager _takenOrSkippedItemDoseIdentifiersNearDate:self error:?];
    v29 = v14;
    if (v14)
    {
      v27 = transactionCopy;
      v25 = v12;
      v41[0] = v12;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __96__HDMedicationNotificationManager__nextScheduleItemsWithTransaction_date_snoozeFireDates_error___block_invoke;
      v30[3] = &unk_2796CDCE0;
      v30[4] = self;
      v31 = v14;
      v26 = v10;
      v16 = v10;
      v32 = v16;
      v33 = v13;
      v17 = v11;
      v34 = v17;
      v18 = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:0 orderingTerms:v15 transaction:v8 error:dates enumerationHandler:v30];

      if (date)
      {
        v19 = v17;
        *date = v17;
      }

      _HKInitializeLogging();
      v20 = HKLogMedication();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        v22 = HKSensitiveLogItem();
        *buf = 138543874;
        selfCopy = self;
        v37 = 2114;
        v38 = v21;
        v39 = 2114;
        v40 = v22;
        _os_log_impl(&dword_25181C000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Next %{public}@ schedule items: %{public}@", buf, 0x20u);
      }

      transactionCopy = v27;
      if (v18)
      {
        v14 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
      }

      else
      {
        v14 = 0;
      }

      v10 = v26;
      v12 = v25;
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_takenOrSkippedItemDoseIdentifiersNearDate:(uint64_t)date error:
{
  dateCopy = date;
  if (date)
  {
    v2 = [HDMedicationNotificationManager _takenOrSkippedDoseEventsNearDate:date error:?];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v6 = __84__HDMedicationNotificationManager__takenOrSkippedItemDoseIdentifiersNearDate_error___block_invoke;
    v7 = &unk_2796CDD28;
    v8 = dateCopy;
    dateCopy = [v3 hk_mapToSet:v5];
  }

  return dateCopy;
}

- (uint64_t)_takenOrSkippedItemDoseIdentifiers:containsAllItemDoseIdentifiersForItem:
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = v0;
  v5 = v4;
  if (v1)
  {
    doses = [v4 doses];
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v9 = __108__HDMedicationNotificationManager__takenOrSkippedItemDoseIdentifiers_containsAllItemDoseIdentifiersForItem___block_invoke;
    v10 = &unk_2796CDD70;
    v11 = v3;
    v12 = v1;
    v13 = v5;
    v1 = [doses hk_allObjectsPassTest:v8];
  }

  return v1;
}

- (BOOL)_snoozedDoseEventDate:(void *)date forScheduleItem:(void *)item error:
{
  if (!self)
  {
    return 0;
  }

  dateCopy = date;
  doses = [dateCopy doses];
  v9 = [doses hk_map:&__block_literal_global_365];

  identifier = [dateCopy identifier];

  OUTLINED_FUNCTION_27();
  v12 = [(HDMedicationNotificationManager *)self _snoozedDoseEventWithScheduleItemIdentifier:identifier medicationIdentifiers:v9 error:v11];
  v13 = v18;

  if (v12)
  {
    if (a2)
    {
      *a2 = [v12 endDate];
    }

    v14 = 1;
  }

  else
  {
    v15 = v13;
    v14 = v15 == 0;
    if (v15)
    {
      if (item)
      {
        v16 = v15;
        *item = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v14;
}

- (id)_snoozedDoseEventWithScheduleItemIdentifier:(void *)identifier medicationIdentifiers:(uint64_t)identifiers error:
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (self)
  {
    identifierCopy = identifier;
    v8 = HDMedicationDoseEventEntityPredicateForScheduleItemIdentifier();
    v9 = HDMedicationDoseEventEntityPredicateForMedicationIdentifiers();

    v10 = HDMedicationDoseEventEntityPredicateForStatus();
    v11 = HDMedicationDoseEventEntityPredicateForStatus();
    v12 = HDMedicationDoseEventEntityPredicateForStatus();
    v20[0] = v8;
    v20[1] = v9;
    v20[2] = v10;
    v20[3] = v11;
    v20[4] = v12;
    [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
    objc_claimAutoreleasedReturnValue();
    v13 = [OUTLINED_FUNCTION_14_0() predicateMatchingAllPredicates:?];

    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    v15 = MEMORY[0x277D10768];
    WeakRetained = objc_loadWeakRetained((self + 8));
    v17 = [v15 mostRecentSampleWithType:medicationDoseEventType profile:WeakRetained encodingOptions:0 predicate:v13 anchor:0 error:identifiers];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_takenOrSkippedDoseEventsNearDate:(uint64_t)date error:
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (date)
  {
    OUTLINED_FUNCTION_19();
    v5 = v4;
    v6 = [v5 dateByAddingTimeInterval:-86400.0];
    v7 = HDSampleEntityPredicateForEndDate();

    v8 = [v5 dateByAddingTimeInterval:86400.0];

    v9 = HDSampleEntityPredicateForEndDate();

    v22[0] = v7;
    v22[1] = v9;
    [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_13_0() predicateMatchingAllPredicates:?];

    v11 = HDMedicationDoseEventEntityPredicateForStatuses();
    v12 = MEMORY[0x277D10B20];
    v21[0] = v10;
    v21[1] = v11;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v14 = [v12 predicateMatchingAllPredicates:v13];

    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    v16 = MEMORY[0x277D10768];
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v18 = [v16 samplesWithType:medicationDoseEventType profile:WeakRetained encodingOptions:0 predicate:v14 limit:0 anchor:0 error:v1];
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_uniqueDoseIdentifierFromItemIdentifier:(uint64_t)identifier medicationidentifier:
{
  if (self)
  {
    self = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", a2, identifier];
    v3 = vars8;
  }

  return self;
}

uint64_t __108__HDMedicationNotificationManager__takenOrSkippedItemDoseIdentifiers_containsAllItemDoseIdentifiersForItem___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v4 identifier];
  v7 = [v5 medicationIdentifier];

  [(HDMedicationNotificationManager *)v3 _uniqueDoseIdentifierFromItemIdentifier:v6 medicationidentifier:v7];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_15() containsObject:?];

  return v8;
}

- (uint64_t)_scheduleRestorableAlarmWithItems:(uint64_t)items date:(void *)date snoozeFireDates:(uint64_t)dates error:
{
  datesCopy = dates;
  OUTLINED_FUNCTION_19();
  v64 = *MEMORY[0x277D85DE8];
  v57 = v8;
  v9 = v5;
  v10 = v6;
  v56 = v9;
  dateCopy = date;
  if (v6)
  {
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v57, "count")}];
    _followUpNotificationsEnabled = [(HDMedicationNotificationManager *)v6 _followUpNotificationsEnabled];
    v52 = v6;
    if ([v57 count])
    {
      v11 = 0;
      while (1)
      {
        v12 = [v57 objectAtIndexedSubscript:{v11, datesCopy}];
        scheduledDateTime = [v12 scheduledDateTime];
        [v10 _followUpDuration];
        v14 = [scheduledDateTime dateByAddingTimeInterval:?];
        identifier = [v12 identifier];
        v16 = [dateCopy objectForKeyedSubscript:identifier];

        doses = [v12 doses];
        v18 = [doses hk_mapToSet:&__block_literal_global_377];
        v54 = [v18 count];

        v19 = [scheduledDateTime hk_isAfterOrEqualToDate:v56];
        v55 = v16;
        if (!v19)
        {
          break;
        }

        notificationSent = [v12 notificationSent];
        if (v16)
        {
          goto LABEL_9;
        }

        v10 = v52;
        if (notificationSent)
        {
          v21 = 1;
          v58 = scheduledDateTime;
LABEL_18:
          v30 = v10[4];
          identifier2 = [v12 identifier];
          v32 = [scheduledDateTime dateByAddingTimeInterval:43200.0];
          v33 = [v30 medicationExpirationEventWithScheduleItemIdentifier:identifier2 dueDate:v32];

          [v49 addObject:v33];
          goto LABEL_19;
        }

        v28 = scheduledDateTime;
LABEL_17:
        v58 = v28;
        v29 = [v10[3] medicationNotificationEventWithScheduleItem:v12 dueDate:? isFollowUp:? isCritical:? medicationsCount:?];
        [v50 addObject:v29];

        v21 = 0;
        if (v19)
        {
          goto LABEL_18;
        }

LABEL_19:
        v34 = _followUpNotificationsEnabled & [v14 hk_isAfterOrEqualToDate:v56];
        if (v21 && v34)
        {
          if (([v12 notificationSent] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_24:
          doses2 = [v12 doses];
          v36 = [doses2 hk_map:&__block_literal_global_379];

          mEMORY[0x277D115D8] = [MEMORY[0x277D115D8] sharedInstance];
          v38 = [mEMORY[0x277D115D8] containsAtLeastOneOfIdentifiers:v36];

          v39 = [v10[3] medicationNotificationEventWithScheduleItem:v12 dueDate:v14 isFollowUp:1 isCritical:v38 medicationsCount:v54];
          [v50 addObject:v39];

          goto LABEL_25;
        }

        if (v34)
        {
          goto LABEL_24;
        }

LABEL_25:

        if ([v57 count] <= ++v11)
        {
          goto LABEL_26;
        }
      }

      if (!v16)
      {
        v21 = 1;
        v58 = scheduledDateTime;
        v10 = v52;
        goto LABEL_19;
      }

LABEL_9:
      v22 = v16;

      v10 = v52;
      [v52 _snoozeDuration];
      v24 = [v22 dateByAddingTimeInterval:-v23];
      v25 = [v24 hk_isAfterOrEqualToDate:v14];
      v26 = [v22 hk_isAfterOrEqualToDate:v14];
      v58 = v22;
      if (v25)
      {
        v27 = v22;

        v14 = v27;
        v10 = v52;
      }

      if ((v25 | v26) & _followUpNotificationsEnabled)
      {
        v21 = 1;
        if (!v19)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v28 = v58;
      goto LABEL_17;
    }

LABEL_26:
    v40 = [v10[3] scheduleEvents:v50 error:{datesCopy, datesCopy}];
    if (v40)
    {
      v41 = v10[4];
      v59 = 0;
      v42 = [v41 scheduleEvents:v49 error:&v59];
      v43 = v59;
      if ((v42 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = HKLogMedication();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v60 = 138543618;
          v61 = v52;
          v62 = 2114;
          v63 = v43;
          OUTLINED_FUNCTION_10_1(&dword_25181C000, v44, v45, "[%{public}@] Failed to schedule expiration alarms. %{public}@", &v60);
        }
      }
    }
  }

  else
  {
    v40 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v40;
}

- (uint64_t)_followUpNotificationsEnabled
{
  selfCopy = self;
  if (self)
  {
    v2 = *MEMORY[0x277D11430];
    v3 = [*(self + 56) objectForKey:*MEMORY[0x277D11430]];
    if (v3)
    {
      selfCopy = [*(selfCopy + 56) BOOLForKey:v2];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)_takenOrSkippedAlarmIdentifiersSince:(id *)since error:
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (since)
  {
    v3 = HDMedicationDoseEventEntityPredicateForScheduledDate();
    v4 = HDMedicationDoseEventEntityPredicateForStatuses();
    v11[0] = v3;
    v11[1] = v4;
    [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_13_0() predicateMatchingAllPredicates:?];

    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    objc_loadWeakRetained(since + 1);
    v7 = [OUTLINED_FUNCTION_9_0() samplesWithType:? profile:? encodingOptions:? predicate:? limit:? anchor:? error:?];

    v8 = [v7 hk_map:&__block_literal_global_382];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)unitTesting_activeSchedulesFromDate:(id)date transaction:(id)transaction error:(id *)error
{
  OUTLINED_FUNCTION_19();
  v8 = MEMORY[0x277CBEA80];
  v10 = v9;
  v11 = v5;
  autoupdatingCurrentCalendar = [v8 autoupdatingCurrentCalendar];
  v13 = [(HDMedicationNotificationManager *)v6 _activeSchedulesFromDate:v11 calendar:autoupdatingCurrentCalendar transaction:v10 error:error];

  return v13;
}

BOOL __90__HDMedicationNotificationManager_pruneAllScheduleItemsBeforeDate_createDoseEvents_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [(HDMedicationNotificationManager *)*(a1 + 32) _pruneAllScheduleItemsBefore:*(a1 + 56) createDoseEvents:0 excludeDoseEventCreationForGivenDate:a2 transaction:a3 error:?];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)_scheduleItemsWithPredicate:(void *)predicate transaction:(uint64_t)transaction error:
{
  if (self)
  {
    v6 = MEMORY[0x277CBEB18];
    predicateCopy = predicate;
    v8 = a2;
    v9 = objc_alloc_init(v6);
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_9();
    v16 = __81__HDMedicationNotificationManager__scheduleItemsWithPredicate_transaction_error___block_invoke;
    v17 = &unk_2796CD618;
    v18 = v10;
    v11 = v10;
    LODWORD(transaction) = [HDMedicationScheduleItemEntity enumerateItemsWithPredicate:v8 orderingTerms:0 transaction:predicateCopy error:transaction enumerationHandler:v15];

    if (transaction)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)_saveNotInteractedDoseEventsForScheduleItems:(void *)items transaction:(uint64_t)transaction error:
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (self)
  {
    itemsCopy = items;
    _HKInitializeLogging();
    v10 = HKLogMedication();
    if (OUTLINED_FUNCTION_25(v10))
    {
      v4 = HKSensitiveLogItem();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_12();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }

    v16 = [self _notInteractedDoseEventsForScheduleItems:v8 transaction:itemsCopy];

    objc_loadWeakRetained(self + 1);
    v17 = [OUTLINED_FUNCTION_13_0() medicationsAppSourceEntityForProfile:? error:?];

    if (v17)
    {
      WeakRetained = objc_loadWeakRetained(self + 1);
      dataManager = [WeakRetained dataManager];
      v20 = [dataManager insertDataObjects:v16 sourceEntity:v17 deviceEntity:0 sourceVersion:0 creationDate:transaction error:CFAbsoluteTimeGetCurrent()];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_medicationDoseEventsForScheduleItems:(id *)items transaction:(void *)transaction error:
{
  v21 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (items)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = transactionCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          identifier = [*(*(&v16 + 1) + 8 * i) identifier];
          [v4 addObject:identifier];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = HDMedicationDoseEventEntityPredicateForScheduleItemIdentifiers();
    medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
    objc_loadWeakRetained(items + 1);
    v13 = [OUTLINED_FUNCTION_9_0() samplesWithType:? profile:? encodingOptions:? predicate:? limit:? anchor:? error:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __73__HDMedicationNotificationManager__queue_alarm_didReceiveDueEvents_date___block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8 = 138543874;
  v9 = v1;
  OUTLINED_FUNCTION_6_0();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  _os_log_error_impl(&dword_25181C000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to post notification request for due item: %{public}@, error:%{public}@", &v8, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notInteractedDoseEventsForScheduleItems:(uint64_t)a1 transaction:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  OUTLINED_FUNCTION_6_0();
  v6 = v1;
  OUTLINED_FUNCTION_10_1(&dword_25181C000, v2, v2, "[%{public}@] Failed to fetch the existing dose events for schedule item with error: %{public}@.", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

@end