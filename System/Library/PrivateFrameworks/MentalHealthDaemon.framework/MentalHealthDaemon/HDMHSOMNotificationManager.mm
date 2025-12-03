@interface HDMHSOMNotificationManager
- (BOOL)_shouldEndOfDayBeShiftedToMidnightForDate:(id)date;
- (HDMHSOMNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm typicalDayProvider:(id)provider significantTimeChangeProvider:(id)changeProvider unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed;
- (id)_currentDate;
- (id)_endOfCalendarDayForDate:(id)date;
- (id)_eventsToSchedule;
- (id)_notificationDateComponentsByCategory;
- (id)_requestFromAlarmEvent:(id)event;
- (id)_timeOfDayBasedNotifications;
- (id)scheduledNotificationsWithError:(id *)error;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_enqueueMaintenanceRemovalIfNeeded;
- (void)_queue_removeAllScheduledNotifications;
- (void)_queue_removeAllScheduledNotificationsIfNotEnabled;
- (void)_queue_rescheduleNotifications;
- (void)_queue_runMaintenanceRemoval;
- (void)_queue_start;
- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event;
- (void)_rescheduleNotifications;
- (void)_significantTimeChangeOccurred;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
- (void)typicalDayDidUpdate:(id)update;
@end

@implementation HDMHSOMNotificationManager

- (HDMHSOMNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm typicalDayProvider:(id)provider significantTimeChangeProvider:(id)changeProvider unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed
{
  profileCopy = profile;
  managerCopy = manager;
  alarmCopy = alarm;
  providerCopy = provider;
  changeProviderCopy = changeProvider;
  neededCopy = needed;
  v32.receiver = self;
  v32.super_class = HDMHSOMNotificationManager;
  v19 = [(HDMHSOMNotificationManager *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_profile, profileCopy);
    eventHandlerQueue = [alarmCopy eventHandlerQueue];
    v22 = eventHandlerQueue;
    v30 = providerCopy;
    if (eventHandlerQueue)
    {
      v23 = eventHandlerQueue;
    }

    else
    {
      v23 = HKCreateSerialDispatchQueue();
    }

    queue = v20->_queue;
    v20->_queue = v23;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (!alarmCopy && (isAppleWatch & 1) == 0)
    {
      v27 = objc_alloc(MEMORY[0x277D10838]);
      WeakRetained = objc_loadWeakRetained(&v20->_profile);
      alarmCopy = [v27 initWithProfile:WeakRetained clientIdentifier:@"HDMHSOMNotificationManager" eventHandlerQueue:v20->_queue];
    }

    providerCopy = v30;
    if (neededCopy)
    {
      [(HDMHSOMNotificationManager *)v20 setUnitTest_didEvaluateIfMaintenanceWorkIsNeeded:neededCopy];
    }

    v20->_queue_hasEnqueuedMaintenanceWork = 0;
    objc_storeStrong(&v20->_restorableAlarm, alarmCopy);
    objc_storeStrong(&v20->_significantTimeChangeProvider, changeProvider);
    objc_storeStrong(&v20->_settingsManager, manager);
    objc_storeStrong(&v20->_typicalDayProvider, provider);
    [profileCopy registerProfileReadyObserver:v20 queue:v20->_queue];
  }

  return v20;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v5 = v9;
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating notification manager %p", buf, 0x16u);
  }

  [(HDRestorableAlarm *)self->_restorableAlarm invalidate];
  [(HDMHSignificantTimeChangeProviding *)self->_significantTimeChangeProvider invalidate];
  [(HKMHSettingsManager *)self->_settingsManager removeObserver:self];
  [(HDMHTypicalDayProviding *)self->_typicalDayProvider removeObserver:self];
  v7.receiver = self;
  v7.super_class = HDMHSOMNotificationManager;
  [(HDMHSOMNotificationManager *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_start
{
  OUTLINED_FUNCTION_2(self, a2, a3, 5.8382e-34);
  _os_log_debug_impl(&dword_258977000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] End of Day logging reminder enabled: %{public}@", v4, 0x16u);
}

void __42__HDMHSOMNotificationManager__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
}

- (void)_significantTimeChangeOccurred
{
  v8 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMHSettingsManager *)self->_settingsManager hasAnyStateOfMindReminderEnabled])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *v7 = 138543362;
      *&v7[4] = objc_opt_class();
      v5 = *&v7[4];
      _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rescheduling notifications for significant time change", v7, 0xCu);
    }

    [(HDMHTypicalDayProviding *)self->_typicalDayProvider rebuildTypicalDayProviderForCurrentDate];
    [(HDMHSOMNotificationManager *)self _queue_rescheduleNotifications];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)scheduledNotificationsWithError:(id *)error
{
  v3 = [(HDRestorableAlarm *)self->_restorableAlarm allScheduledEventsWithError:error];
  v4 = [v3 hk_map:&__block_literal_global_0];

  return v4;
}

id __62__HDMHSOMNotificationManager_scheduledNotificationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D28098];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 eventIdentifier];

  v6 = [v4 initWithCategory:v5];

  return v6;
}

- (id)_currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (void)settingsManagerDidUpdateNotificationSettings:(id)settings
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  hasAnyStateOfMindReminderEnabled = [(HKMHSettingsManager *)self->_settingsManager hasAnyStateOfMindReminderEnabled];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT);
  if (hasAnyStateOfMindReminderEnabled)
  {
    if (v6)
    {
      v7 = v5;
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v8 = *&v12[4];
      _os_log_impl(&dword_258977000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification settings changed: rescheduling notifications", v12, 0xCu);
    }

    [(HDMHSOMNotificationManager *)self _rescheduleNotifications];
  }

  else
  {
    if (v6)
    {
      v9 = v5;
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v10 = *&v12[4];
      _os_log_impl(&dword_258977000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifications not enabled", v12, 0xCu);
    }

    [(HDMHSOMNotificationManager *)self _queue_removeAllScheduledNotifications];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_requestFromAlarmEvent:(id)event
{
  eventCopy = event;
  eventIdentifier = [eventCopy eventIdentifier];
  v6 = *MEMORY[0x277D28020];
  v7 = [eventIdentifier containsString:*MEMORY[0x277D28020]];

  if ((v7 & 1) == 0)
  {
    eventIdentifier2 = [eventCopy eventIdentifier];
    v6 = *MEMORY[0x277D28030];
    v9 = [eventIdentifier2 containsString:*MEMORY[0x277D28030]];

    if ((v9 & 1) == 0)
    {
      eventIdentifier3 = [eventCopy eventIdentifier];
      v6 = *MEMORY[0x277D28028];
      v11 = [eventIdentifier3 containsString:*MEMORY[0x277D28028]];

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  v12 = MEMORY[0x277CE1FC0];
  dueDate = [eventCopy dueDate];
  v14 = [v12 hkmh_requestForCategoryIdentifier:v6 date:dueDate];

  if (!v14)
  {
LABEL_5:
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [(HDMHSOMNotificationManager *)v15 _requestFromAlarmEvent:eventCopy];
    }

    v14 = 0;
  }

  return v14;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v42 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2F0];
  v7 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    *buf = 138543874;
    v37 = v9;
    v38 = 2114;
    v39 = v12;
    v40 = 2112;
    v41 = eventsCopy;
    _os_log_impl(&dword_258977000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  firstObject = [eventsCopy firstObject];
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  chamomile = [features chamomile];

  if (chamomile)
  {
    if (([(HKMHSettingsManager *)self->_settingsManager hasAnyStateOfMindReminderEnabled]& 1) != 0)
    {
      currentDueDate = [firstObject currentDueDate];
      v19 = [currentDueDate hk_isBeforeDate:v13];

      if (!v19)
      {
        [(HDMHSOMNotificationManager *)self _removeRelatedDeliveredHDMHNotificationsForEvent:firstObject];
        v29 = [(HDMHSOMNotificationManager *)self _requestFromAlarmEvent:firstObject];
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        notificationManager = [WeakRetained notificationManager];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __63__HDMHSOMNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke;
        v34[3] = &unk_2798AAD48;
        v34[4] = self;
        v35 = v29;
        v32 = v29;
        [notificationManager postNotificationWithRequest:v32 completion:v34];

        goto LABEL_14;
      }

      _HKInitializeLogging();
      v20 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = objc_opt_class();
        *buf = 138543618;
        v37 = v22;
        v38 = 2112;
        v39 = firstObject;
        v23 = v22;
        v24 = "[%{public}@] Skipping sending notification for event due more than one day ago: %@";
LABEL_12:
        _os_log_impl(&dword_258977000, v21, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v27;
        v28 = objc_opt_class();
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = firstObject;
        v23 = v28;
        v24 = "[%{public}@] Skipping sending notification for event; SOM notifications are not enabled and supported: %@";
        goto LABEL_12;
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v25;
      v26 = objc_opt_class();
      *buf = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = firstObject;
      v23 = v26;
      v24 = "[%{public}@] Skipping sending notification for event; feature flag is not enabled: %@";
      goto LABEL_12;
    }
  }

LABEL_14:

  v33 = *MEMORY[0x277D85DE8];
}

void __63__HDMHSOMNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HDMHSOMNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_317;
    block[3] = &unk_2798AAB58;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      __63__HDMHSOMNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(a1, v8, v5);
    }
  }
}

- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event
{
  stateOfMindNotificationCategories = [MEMORY[0x277D28098] stateOfMindNotificationCategories];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  [notificationManager removeDeliveredNotificationsWithIdentifiers:stateOfMindNotificationCategories];
}

- (void)_queue_rescheduleNotifications
{
  restorableAlarm = self->_restorableAlarm;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HDMHSOMNotificationManager__queue_rescheduleNotifications__block_invoke;
  v3[3] = &unk_2798AAD70;
  v3[4] = self;
  [(HDRestorableAlarm *)restorableAlarm checkForDueEventsWithCompletion:v3];
}

void __60__HDMHSOMNotificationManager__queue_rescheduleNotifications__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = a4;
  if ((a3 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      __60__HDMHSOMNotificationManager__queue_rescheduleNotifications__block_invoke_cold_1(a1, v7);
    }
  }

  [*(a1 + 32) _rescheduleNotifications];
}

- (void)_rescheduleNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error scheduling new events: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_eventsToSchedule
{
  v43 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  _currentDate = [(HDMHSOMNotificationManager *)self _currentDate];
  selfCopy = self;
  _notificationDateComponentsByCategory = [(HDMHSOMNotificationManager *)self _notificationDateComponentsByCategory];
  v5 = 0;
  *&v6 = 138543618;
  v27 = v6;
  do
  {
    v29 = v5;
    v33 = _currentDate;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = _notificationDateComponentsByCategory;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [hk_gregorianCalendar nextDateAfterDate:v33 matchingComponents:v12 options:{1024, v27}];
          if (!v13)
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC2F0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
            {
              v22 = v20;
              v23 = objc_opt_class();
              *buf = v27;
              v39 = v23;
              v40 = 2112;
              v41 = v12;
              v24 = v23;
              _os_log_error_impl(&dword_258977000, v22, OS_LOG_TYPE_ERROR, "[%{public}@] Next Date nil for scheduleTime: %@", buf, 0x16u);
            }

            goto LABEL_15;
          }

          v14 = v13;
          v15 = [v7 objectForKeyedSubscript:v12];
          v16 = -[HDMHNotification initWithFireOnDayIndex:dateComponents:category:]([HDMHNotification alloc], "initWithFireOnDayIndex:dateComponents:category:", [v14 hk_dayIndexWithCalendar:hk_gregorianCalendar], v12, v15);
          restorableAlarm = selfCopy->_restorableAlarm;
          eventIdentifier = [(HDMHNotification *)v16 eventIdentifier];
          v19 = [(HDRestorableAlarm *)restorableAlarm eventWithIdentifier:eventIdentifier dueDate:v14 eventOptions:0];

          if (v19)
          {
            [v31 addObject:v19];
            [v30 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v21 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v21 setDay:1];
    _currentDate = [hk_gregorianCalendar dateByAddingComponents:v21 toDate:v33 options:0];

    v5 = v29 + 1;
  }

  while (v29 != 6);

  v25 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_notificationDateComponentsByCategory
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (([(HKMHSettingsManager *)self->_settingsManager middayNotificationsEnabled]& 1) != 0 || [(HKMHSettingsManager *)self->_settingsManager endOfDayNotificationsEnabled])
  {
    _timeOfDayBasedNotifications = [(HDMHSOMNotificationManager *)self _timeOfDayBasedNotifications];
    [v3 addEntriesFromDictionary:_timeOfDayBasedNotifications];
  }

  customReminderSchedule = [(HKMHSettingsManager *)self->_settingsManager customReminderSchedule];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [customReminderSchedule countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = *MEMORY[0x277D28020];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(customReminderSchedule);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 isEnabled])
        {
          dateComponents = [v11 dateComponents];
          v13 = [v3 objectForKeyedSubscript:dateComponents];

          if (!v13)
          {
            dateComponents2 = [v11 dateComponents];
            [v3 setObject:v9 forKey:dateComponents2];
          }
        }
      }

      v7 = [customReminderSchedule countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    *buf = 138543362;
    v28 = v17;
    v18 = v17;
    _os_log_impl(&dword_258977000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calculated all notification date components.", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__HDMHSOMNotificationManager__notificationDateComponentsByCategory__block_invoke;
  v22[3] = &unk_2798AAD98;
  v22[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v22];
  v19 = [v3 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __67__HDMHSOMNotificationManager__notificationDateComponentsByCategory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = objc_opt_class();
    v11 = v10;
    v13 = 138544130;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    v17 = 2048;
    v18 = [v5 hour];
    v19 = 2048;
    v20 = [v5 minute];
    _os_log_impl(&dword_258977000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Type: %@, Time: %ld:%ld", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_timeOfDayBasedNotifications
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  userStartOfDay = [(HDMHTypicalDayProviding *)self->_typicalDayProvider userStartOfDay];
  userEndOfDay = [(HDMHTypicalDayProviding *)self->_typicalDayProvider userEndOfDay];
  if ([userEndOfDay hk_isBeforeDate:userStartOfDay])
  {
    v7 = [MEMORY[0x277CCA968] localizedStringFromDate:userStartOfDay dateStyle:1 timeStyle:1];
    v8 = [MEMORY[0x277CCA968] localizedStringFromDate:userStartOfDay dateStyle:1 timeStyle:1];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_FAULT))
    {
      v19 = v9;
      v21 = 138543874;
      v22 = objc_opt_class();
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v20 = v22;
      _os_log_fault_impl(&dword_258977000, v19, OS_LOG_TYPE_FAULT, "[%{public}@] inferredStartOfDay is later than inferredEndOfDay. \n StartOfDay:%@ \n EndOfDay:%@", &v21, 0x20u);
    }

LABEL_11:
    goto LABEL_12;
  }

  if ([(HKMHSettingsManager *)self->_settingsManager middayNotificationsEnabled])
  {
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:userStartOfDay endDate:userEndOfDay];
    [v10 duration];
    v12 = [userStartOfDay dateByAddingTimeInterval:v11 * 0.5];
    v13 = [currentCalendar components:96 fromDate:v12];
    [v3 setObject:*MEMORY[0x277D28030] forKey:v13];
  }

  if ([(HKMHSettingsManager *)self->_settingsManager endOfDayNotificationsEnabled])
  {
    v7 = userEndOfDay;
    if ([(HDMHSOMNotificationManager *)self _shouldEndOfDayBeShiftedToMidnightForDate:v7])
    {
      v14 = [(HDMHSOMNotificationManager *)self _endOfCalendarDayForDate:userStartOfDay];

      v7 = v14;
    }

    v15 = [v7 dateByAddingTimeInterval:-1200.0];
    v16 = [currentCalendar components:96 fromDate:v15];
    [v3 setObject:*MEMORY[0x277D28028] forKey:v16];

    goto LABEL_11;
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_shouldEndOfDayBeShiftedToMidnightForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  hk_gregorianCalendar = [v3 hk_gregorianCalendar];
  v6 = [hk_gregorianCalendar startOfDayForDate:dateCopy];
  v7 = [v6 dateByAddingTimeInterval:10800.0];
  v8 = [dateCopy hk_isBeforeDate:v7];

  return v8;
}

- (id)_endOfCalendarDayForDate:(id)date
{
  v3 = MEMORY[0x277CBEA80];
  dateCopy = date;
  hk_gregorianCalendar = [v3 hk_gregorianCalendar];
  v6 = [hk_gregorianCalendar startOfDayForDate:dateCopy];

  v7 = [hk_gregorianCalendar dateByAddingUnit:16 value:1 toDate:v6 options:0];

  return v7;
}

- (void)_queue_removeAllScheduledNotificationsIfNotEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMHSettingsManager *)self->_settingsManager hasAnyStateOfMindReminderEnabled])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v8 = 138543362;
      v9 = objc_opt_class();
      v5 = v9;
      _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Aborting maintenance removal of notifications because notifications are enabled", &v8, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    [(HDMHSOMNotificationManager *)self _queue_removeAllScheduledNotifications];
  }
}

- (void)_queue_removeAllScheduledNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error removing all scheduled notifications: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)typicalDayDidUpdate:(id)update
{
  dispatch_assert_queue_V2(self->_queue);

  [(HDMHSOMNotificationManager *)self _rescheduleNotifications];
}

- (void)profileDidBecomeReady:(id)ready
{
  queue = self->_queue;
  readyCopy = ready;
  dispatch_assert_queue_V2(queue);
  [(HDMHSOMNotificationManager *)self _queue_start];
  database = [readyCopy database];

  LODWORD(readyCopy) = [database isProtectedDataAvailable];
  if (readyCopy)
  {

    [(HDMHSOMNotificationManager *)self _queue_enqueueMaintenanceRemovalIfNeeded];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database2 = [WeakRetained database];
    v9 = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HDMHSOMNotificationManager_profileDidBecomeReady___block_invoke;
    v10[3] = &unk_2798AAB58;
    v10[4] = self;
    [database2 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v9 block:v10];
  }
}

- (void)_queue_enqueueMaintenanceRemovalIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_hasEnqueuedMaintenanceWork || ([(HKMHSettingsManager *)self->_settingsManager hasAnyStateOfMindReminderEnabled]& 1) != 0)
  {

    [(HDMHSOMNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:0];
  }

  else
  {
    v3 = MEMORY[0x277D10748];
    maintenanceOperationName = [(HDMHSOMNotificationManager *)self maintenanceOperationName];
    queue = self->_queue;
    v10[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke;
    v11[3] = &unk_2798AAB58;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2;
    v10[3] = &unk_2798AAB58;
    v6 = [v3 maintenanceOperationWithName:maintenanceOperationName queue:queue synchronousBlock:v11 canceledBlock:v10];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v6];

    self->_queue_hasEnqueuedMaintenanceWork = 1;
    [(HDMHSOMNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:1];
  }
}

void __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
  {
    __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2_cold_1(a1, v2);
  }
}

- (void)_queue_runMaintenanceRemoval
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v7 = 138543362;
    *&v7[4] = objc_opt_class();
    v5 = *&v7[4];
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing maintenance work: notifications not enabled and supported", v7, 0xCu);
  }

  [(HDMHSOMNotificationManager *)self _queue_removeAllScheduledNotificationsIfNotEnabled];
  self->_queue_hasEnqueuedMaintenanceWork = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_requestFromAlarmEvent:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = OUTLINED_FUNCTION_3();
  v14 = [a3 eventIdentifier];
  OUTLINED_FUNCTION_0(&dword_258977000, v7, v8, "[%{public}@] Could not create notification request from event identifier: %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__HDMHSOMNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = *(a1 + 40);
  v11 = 138543874;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  v15 = 2114;
  v16 = a3;
  v9 = v7;
  _os_log_error_impl(&dword_258977000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Error posting user notification for request %@: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HDMHSOMNotificationManager__queue_rescheduleNotifications__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_1(v5);
  OUTLINED_FUNCTION_0(&dword_258977000, v7, v8, "[%{public}@] Error checking for due events before rescheduling: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __70__HDMHSOMNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = 138543362;
  v7 = objc_opt_class();
  v4 = v7;
  _os_log_error_impl(&dword_258977000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Maintenance work canceled", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end