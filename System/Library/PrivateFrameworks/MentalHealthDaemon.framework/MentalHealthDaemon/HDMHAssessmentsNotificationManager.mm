@interface HDMHAssessmentsNotificationManager
- (HDMHAssessmentsNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm promptedAssessmentsManager:(id)assessmentsManager unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed;
- (id)_currentDate;
- (id)_eventsToSchedule;
- (id)_nextBehaviorBasedDateWithError:(id *)error;
- (id)_nextRegularlyScheduledDateWithError:(id *)error;
- (id)_periodicAssessmentEvent;
- (id)_requestFromAlarmEvent:(id)event;
- (id)scheduledNotificationsWithError:(id *)error;
- (void)_periodicAssessmentEvent;
- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events;
- (void)_queue_enqueueMaintenanceRemovalIfNeeded;
- (void)_queue_removeAllScheduledNotifications;
- (void)_queue_removeAllScheduledNotificationsIfNotEnabled;
- (void)_queue_rescheduleNotifications;
- (void)_queue_runMaintenanceRemoval;
- (void)_queue_start;
- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event;
- (void)_rescheduleNotifications;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments;
- (void)settingsManagerDidUpdateNotificationSettings:(id)settings;
@end

@implementation HDMHAssessmentsNotificationManager

- (HDMHAssessmentsNotificationManager)initWithProfile:(id)profile settingsManager:(id)manager restorableAlarm:(id)alarm promptedAssessmentsManager:(id)assessmentsManager unitTest_didEvaluateIfMaintenanceWorkIsNeeded:(id)needed
{
  profileCopy = profile;
  managerCopy = manager;
  alarmCopy = alarm;
  assessmentsManagerCopy = assessmentsManager;
  neededCopy = needed;
  v32.receiver = self;
  v32.super_class = HDMHAssessmentsNotificationManager;
  v17 = [(HDMHAssessmentsNotificationManager *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_profile, profileCopy);
    eventHandlerQueue = [alarmCopy eventHandlerQueue];
    v20 = eventHandlerQueue;
    if (eventHandlerQueue)
    {
      v21 = eventHandlerQueue;
    }

    else
    {
      v21 = HKCreateSerialDispatchQueue();
    }

    queue = v18->_queue;
    v18->_queue = v21;

    v23 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&v18->_profile);
    v25 = [v23 hdmh_mentalHealthSyncedDefaultsDomainWithProfile:WeakRetained];
    assessmentNotificationStateKeyValueDomain = v18->_assessmentNotificationStateKeyValueDomain;
    v18->_assessmentNotificationStateKeyValueDomain = v25;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

    if (!alarmCopy && (isAppleWatch & 1) == 0)
    {
      v29 = objc_alloc(MEMORY[0x277D10838]);
      v30 = objc_loadWeakRetained(&v18->_profile);
      alarmCopy = [v29 initWithProfile:v30 clientIdentifier:@"HDMHAssessmentsNotificationManager" eventHandlerQueue:v18->_queue];
    }

    if (neededCopy)
    {
      [(HDMHAssessmentsNotificationManager *)v18 setUnitTest_didEvaluateIfMaintenanceWorkIsNeeded:neededCopy];
    }

    v18->_queue_hasEnqueuedMaintenanceWork = 0;
    objc_storeStrong(&v18->_restorableAlarm, alarmCopy);
    objc_storeStrong(&v18->_settingsManager, manager);
    objc_storeStrong(&v18->_promptedAssessmentsManager, assessmentsManager);
    [profileCopy registerProfileReadyObserver:v18 queue:v18->_queue];
  }

  return v18;
}

- (void)_queue_start
{
  v5 = @"NO";
  if (a2)
  {
    v5 = @"YES";
  }

  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_258977000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] Assessments notifications enabled: %{public}@", buf, 0x16u);
}

void __50__HDMHAssessmentsNotificationManager__queue_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_alarm:v6 didReceiveDueEvents:v5];
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
    _os_log_impl(&dword_258977000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating notification manager: %p", buf, 0x16u);
  }

  [(HDRestorableAlarm *)self->_restorableAlarm invalidate];
  [(HKMHSettingsManager *)self->_settingsManager removeObserver:self];
  v7.receiver = self;
  v7.super_class = HDMHAssessmentsNotificationManager;
  [(HDMHAssessmentsNotificationManager *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)scheduledNotificationsWithError:(id *)error
{
  v3 = [(HDRestorableAlarm *)self->_restorableAlarm allScheduledEventsWithError:error];
  v4 = [v3 hk_map:&__block_literal_global_2];

  return v4;
}

id __70__HDMHAssessmentsNotificationManager_scheduledNotificationsWithError___block_invoke(uint64_t a1, void *a2)
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
  hasAnyAssessmentNotificationsEnabled = [(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2F0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT);
  if (hasAnyAssessmentNotificationsEnabled)
  {
    if (v6)
    {
      v7 = v5;
      *v12 = 138543362;
      *&v12[4] = objc_opt_class();
      v8 = *&v12[4];
      _os_log_impl(&dword_258977000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification settings changed: rescheduling notifications", v12, 0xCu);
    }

    [(HDMHAssessmentsNotificationManager *)self _rescheduleNotifications];
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

    [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotifications];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_requestFromAlarmEvent:(id)event
{
  eventCopy = event;
  eventIdentifier = [eventCopy eventIdentifier];
  v5 = *MEMORY[0x277D28038];
  v6 = [eventIdentifier containsString:*MEMORY[0x277D28038]];

  if (!v6 || (v7 = MEMORY[0x277CE1FC0], [eventCopy dueDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "hkmh_requestForCategoryIdentifier:date:", v5, v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _requestFromAlarmEvent:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)_queue_alarm:(id)_queue_alarm didReceiveDueEvents:(id)events
{
  v38 = *MEMORY[0x277D85DE8];
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
    v33 = v9;
    v34 = 2114;
    v35 = v12;
    v36 = 2112;
    v37 = eventsCopy;
    _os_log_impl(&dword_258977000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received %{public}@ due events: %@", buf, 0x20u);
  }

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  firstObject = [eventsCopy firstObject];
  if (([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled]& 1) != 0)
  {
    currentDueDate = [firstObject currentDueDate];
    v16 = [currentDueDate hk_isBeforeDate:v13];

    if (v16)
    {
      _HKInitializeLogging();
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = objc_opt_class();
        *buf = 138543618;
        v33 = v19;
        v34 = 2112;
        v35 = firstObject;
        v20 = v19;
        _os_log_impl(&dword_258977000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notification for event was due more than one day ago: %@", buf, 0x16u);
      }
    }

    [(HDMHAssessmentsNotificationManager *)self _removeRelatedDeliveredHDMHNotificationsForEvent:firstObject];
    v21 = [(HDMHAssessmentsNotificationManager *)self _requestFromAlarmEvent:firstObject];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke;
    v30[3] = &unk_2798AAD48;
    v30[4] = self;
    v31 = v21;
    v24 = v21;
    [notificationManager postNotificationWithRequest:v24 completion:v30];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = firstObject;
      v28 = v27;
      _os_log_impl(&dword_258977000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping sending notification for event; assessment notifications are not enabled and supported: %@", buf, 0x16u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke(uint64_t a1, char a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) content];
    v7 = [v6 categoryIdentifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277D28038]];

    if (v8)
    {
      v9 = (a1 + 32);
      v10 = [*(a1 + 32) _currentDate];
      v11 = *(*(a1 + 32) + 32);
      v26 = 0;
      v12 = [v11 hdmh_setUpdatedPeriodicPromptedAssessmentNotificationFireDate:v10 error:&v26];
      v13 = v26;
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2F0];
      v15 = *MEMORY[0x277CCC2F0];
      if (v12)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *v9;
          v17 = v14;
          v18 = objc_opt_class();
          v19 = v18;
          v20 = HKSensitiveLogItem();
          *buf = 138543618;
          v28 = v18;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&dword_258977000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully saved date fired for periodic prompted assessment notification in key value domain with date: %@", buf, 0x16u);
        }

        [*v9 _triggerImmediateSyncWithReason:@"hdmh_setUpdatedPeriodicPromptedAssessmentNotificationFireDate"];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2((a1 + 32), v14);
      }
    }

    v22 = *(a1 + 32);
    v23 = *(v22 + 24);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_318;
    v25[3] = &unk_2798AAB58;
    v25[4] = v22;
    dispatch_async(v23, v25);
  }

  else
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(a1, v21);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v7 = objc_alloc(MEMORY[0x277CCD140]);
  v8 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v9 = [v7 initWithChangesSyncRequest:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke;
  v11[3] = &unk_2798AAD48;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [cloudSyncManager syncWithRequest:v9 reason:v10 completion:v11];
}

void __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F0];
  v7 = *MEMORY[0x277CCC2F0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v12 = v10;
      _os_log_impl(&dword_258977000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request completed for %{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeRelatedDeliveredHDMHNotificationsForEvent:(id)event
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  assessmentsNotificationCategories = [MEMORY[0x277D28098] assessmentsNotificationCategories];
  [notificationManager removeDeliveredNotificationsWithIdentifiers:assessmentsNotificationCategories];
}

- (void)_queue_rescheduleNotifications
{
  restorableAlarm = self->_restorableAlarm;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__HDMHAssessmentsNotificationManager__queue_rescheduleNotifications__block_invoke;
  v3[3] = &unk_2798AAD70;
  v3[4] = self;
  [(HDRestorableAlarm *)restorableAlarm checkForDueEventsWithCompletion:v3];
}

void __68__HDMHAssessmentsNotificationManager__queue_rescheduleNotifications__block_invoke(uint64_t a1, uint64_t a2, char a3, void *a4)
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
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error scheduling new events: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_eventsToSchedule
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HKMHSettingsManager *)self->_settingsManager periodicPromptedAssessmentNotificationsEnabled])
  {
    _periodicAssessmentEvent = [(HDMHAssessmentsNotificationManager *)self _periodicAssessmentEvent];
    if (_periodicAssessmentEvent)
    {
      [v3 addObject:_periodicAssessmentEvent];
    }
  }

  return v3;
}

- (void)_queue_removeAllScheduledNotificationsIfNotEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled])
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

    [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotifications];
  }
}

- (void)_queue_removeAllScheduledNotifications
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error removing all scheduled notifications: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)profileDidBecomeReady:(id)ready
{
  queue = self->_queue;
  readyCopy = ready;
  dispatch_assert_queue_V2(queue);
  [(HDMHAssessmentsNotificationManager *)self _queue_start];
  database = [readyCopy database];

  LODWORD(readyCopy) = [database isProtectedDataAvailable];
  if (readyCopy)
  {

    [(HDMHAssessmentsNotificationManager *)self _queue_enqueueMaintenanceRemovalIfNeeded];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database2 = [WeakRetained database];
    v9 = self->_queue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HDMHAssessmentsNotificationManager_profileDidBecomeReady___block_invoke;
    v10[3] = &unk_2798AAB58;
    v10[4] = self;
    [database2 performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:v9 block:v10];
  }
}

- (void)_queue_enqueueMaintenanceRemovalIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_queue_hasEnqueuedMaintenanceWork || ([(HKMHSettingsManager *)self->_settingsManager hasAnyAssessmentNotificationsEnabled]& 1) != 0)
  {

    [(HDMHAssessmentsNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:0];
  }

  else
  {
    v3 = MEMORY[0x277D10748];
    maintenanceOperationName = [(HDMHAssessmentsNotificationManager *)self maintenanceOperationName];
    queue = self->_queue;
    v10[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke;
    v11[3] = &unk_2798AAB58;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2;
    v10[3] = &unk_2798AAB58;
    v6 = [v3 maintenanceOperationWithName:maintenanceOperationName queue:queue synchronousBlock:v11 canceledBlock:v10];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v6];

    self->_queue_hasEnqueuedMaintenanceWork = 1;
    [(HDMHAssessmentsNotificationManager *)self _unitTest_notifyDidEvaluateIfMaintenanceWorkIsNeeded:1];
  }
}

void __78__HDMHAssessmentsNotificationManager__queue_enqueueMaintenanceRemovalIfNeeded__block_invoke_2(uint64_t a1)
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

  [(HDMHAssessmentsNotificationManager *)self _queue_removeAllScheduledNotificationsIfNotEnabled];
  self->_queue_hasEnqueuedMaintenanceWork = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)promptedAssessmentsManagerDidUpdatePromptedAssessments:(id)assessments
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v8 = 138543362;
    v9 = objc_opt_class();
    v6 = v9;
    _os_log_impl(&dword_258977000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Prompted assessments manager did update", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(HDMHAssessmentsNotificationManager *)self _rescheduleNotifications];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)_nextBehaviorBasedDateWithError:(id *)error
{
  promptedAssessmentsManager = self->_promptedAssessmentsManager;
  v12 = 0;
  v5 = [(HDMHPromptedAssessmentsManaging *)promptedAssessmentsManager promptedAssessmentsWithError:&v12];
  v6 = v12;
  if (v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextBehaviorBasedDateWithError:];
    }

    if (error)
    {
      v7 = v6;
      eligibilityStartDate = 0;
      *error = v6;
    }

    else
    {
      _HKLogDroppedError();
      eligibilityStartDate = 0;
    }
  }

  else
  {
    v9 = [v5 hk_filter:&__block_literal_global_328];
    firstObject = [v9 firstObject];
    eligibilityStartDate = [firstObject eligibilityStartDate];
  }

  return eligibilityStartDate;
}

- (id)_nextRegularlyScheduledDateWithError:(id *)error
{
  assessmentNotificationStateKeyValueDomain = self->_assessmentNotificationStateKeyValueDomain;
  v18 = 0;
  v6 = [(HDKeyValueDomain *)assessmentNotificationStateKeyValueDomain hdmh_updatedPeriodicPromptedAssessmentNotificationFireDateWithError:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextRegularlyScheduledDateWithError:];
    }

    if (error)
    {
      v14 = v8;
      v15 = 0;
      *error = v8;
      goto LABEL_20;
    }

    _HKLogDroppedError();
    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_17:
    v15 = 0;
    goto LABEL_20;
  }

  promptedAssessmentsManager = self->_promptedAssessmentsManager;
  v17 = 0;
  v11 = [(HDMHPromptedAssessmentsManaging *)promptedAssessmentsManager periodicAssessmentPromptCadenceInDaysWithError:&v17];
  v8 = v17;
  if (v8)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _nextRegularlyScheduledDateWithError:];
    }

    if (error)
    {
      v12 = v8;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v15 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:v11 * 60.0 * 60.0 * 24.0];
LABEL_20:

  return v15;
}

- (id)_periodicAssessmentEvent
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v3 = [(HDMHAssessmentsNotificationManager *)self _nextBehaviorBasedDateWithError:&v29];
  v4 = v29;
  if (v4)
  {
    v5 = v4;
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHAssessmentsNotificationManager _periodicAssessmentEvent];
    }

    v6 = 0;
  }

  else
  {
    v28 = 0;
    v7 = [(HDMHAssessmentsNotificationManager *)self _nextRegularlyScheduledDateWithError:&v28];
    v5 = v28;
    if (v5)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [HDMHAssessmentsNotificationManager _periodicAssessmentEvent];
      }

      v6 = 0;
    }

    else
    {
      v8 = [v3 laterDate:v7];
      _HKInitializeLogging();
      v9 = MEMORY[0x277CCC2F0];
      v10 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = objc_opt_class();
        *buf = 138544130;
        v31 = v12;
        v32 = 2112;
        v33 = v3;
        v34 = 2112;
        v35 = v7;
        v36 = 2112;
        v37 = v8;
        v13 = v12;
        _os_log_impl(&dword_258977000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Behavior Date: %@, Regular Date: %@, Selected Date: %@", buf, 0x2Au);
      }

      if (v8)
      {
        hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
        periodicPromptedAssessmentNotificationTimeOfDay = [(HKMHSettingsManager *)self->_settingsManager periodicPromptedAssessmentNotificationTimeOfDay];
        v16 = [hk_gregorianCalendar dateBySettingHour:objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay minute:"hour") second:objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay ofDate:"minute") options:{objc_msgSend(periodicPromptedAssessmentNotificationTimeOfDay, "second"), v8, 0}];
        v17 = [HDMHNotification alloc];
        v18 = [v8 hk_dayIndexWithCalendar:hk_gregorianCalendar];
        v19 = [(HDMHNotification *)v17 initWithFireOnDayIndex:v18 dateComponents:periodicPromptedAssessmentNotificationTimeOfDay category:*MEMORY[0x277D28038]];
        restorableAlarm = self->_restorableAlarm;
        eventIdentifier = [(HDMHNotification *)v19 eventIdentifier];
        v6 = [(HDRestorableAlarm *)restorableAlarm eventWithIdentifier:eventIdentifier dueDate:v16 eventOptions:0];
      }

      else
      {
        _HKInitializeLogging();
        v22 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = objc_opt_class();
          *buf = 138543362;
          v31 = v24;
          v25 = v24;
          _os_log_impl(&dword_258977000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] No upcoming periodic prompted assessment.", buf, 0xCu);
        }

        v6 = 0;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_requestFromAlarmEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_3();
  v12 = [v0 eventIdentifier];
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Could not create notification request from event identifier: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v14 = *(a1 + 40);
  v6 = v5;
  OUTLINED_FUNCTION_4(&dword_258977000, v7, v8, "[%{public}@] Error posting user notification for request %@: %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __71__HDMHAssessmentsNotificationManager__queue_alarm_didReceiveDueEvents___block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_1(v5);
  OUTLINED_FUNCTION_0(&dword_258977000, v7, v8, "[%{public}@] Error saving date fired for periodic prompted assessment notification in key value domain: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __70__HDMHAssessmentsNotificationManager__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v14 = *(a1 + 40);
  v6 = v5;
  OUTLINED_FUNCTION_4(&dword_258977000, v7, v8, "[%{public}@] Cloud sync request for %{public}@ failed: %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_nextBehaviorBasedDateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error requesting prompted assessments %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_nextRegularlyScheduledDateWithError:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error retrieving cadence in days %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_nextRegularlyScheduledDateWithError:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Error retrieving last fired date for last periodic prompted assessment notification from key value domain: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_periodicAssessmentEvent
{
  OUTLINED_FUNCTION_2_0();
  v13 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_1(v3);
  OUTLINED_FUNCTION_0(&dword_258977000, v5, v6, "[%{public}@] Unable to get next regularlyScheduledDate, not scheduling due to error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end