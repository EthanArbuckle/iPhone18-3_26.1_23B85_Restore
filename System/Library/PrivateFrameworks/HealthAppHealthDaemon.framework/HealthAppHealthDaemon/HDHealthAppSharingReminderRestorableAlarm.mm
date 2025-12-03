@interface HDHealthAppSharingReminderRestorableAlarm
- (HDDaemon)daemon;
- (HDHealthAppSharingReminderRestorableAlarm)initWithDaemon:(id)daemon;
- (id)currentDate;
- (id)nextSharingReminderDateFromDate:(id)date;
- (id)sharingReminderDate;
- (id)sharingReminderFallbackNotificationDate:(id)date;
- (id)sharingReminderRefreshIntervalDateComponents;
- (void)_handleCompletionWithAlarmEvent:(id)event success:(BOOL)success error:(id)error restorableAlarmManager:(id)manager completion:(id)completion;
- (void)handleAlarmEvent:(id)event restorableAlarmManager:(id)manager completion:(id)completion;
- (void)removeScheduledAlarmWithRestorableAlarmManager:(id)manager;
- (void)scheduleAlarmWithFallbackDate:(id)date restorableAlarmManager:(id)manager;
- (void)setUnitTest_userNotificationCenter:(id)center;
- (void)sharingReminderDate;
@end

@implementation HDHealthAppSharingReminderRestorableAlarm

- (HDHealthAppSharingReminderRestorableAlarm)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v16.receiver = self;
  v16.super_class = HDHealthAppSharingReminderRestorableAlarm;
  v5 = [(HDHealthAppSharingReminderRestorableAlarm *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
    v7 = objc_alloc(MEMORY[0x277D10718]);
    primaryProfile = [daemonCopy primaryProfile];
    v9 = [v7 initWithCategory:1 domainName:@"HDHealthAppDaemonExtension" profile:primaryProfile];
    sharingKeyValueDomain = v6->_sharingKeyValueDomain;
    v6->_sharingKeyValueDomain = v9;

    v11 = [_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc];
    primaryProfile2 = [daemonCopy primaryProfile];
    v13 = [(HDHealthAppNotificationManager *)v11 initWithProfile:primaryProfile2];
    notificationManager = v6->_notificationManager;
    v6->_notificationManager = v13;
  }

  return v6;
}

- (void)scheduleAlarmWithFallbackDate:(id)date restorableAlarmManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  managerCopy = manager;
  sharingReminderDate = [(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderDate];
  if (sharingReminderDate || ([(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderFallbackNotificationDate:dateCopy], (sharingReminderDate = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = sharingReminderDate;
    v10 = [(HDHealthAppSharingReminderRestorableAlarm *)self nextSharingReminderDateFromDate:sharingReminderDate];
    [managerCopy scheduleAlarmEventWithHandler:self dueDate:v10 eventOptions:1];
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      eventIdentifier = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = eventIdentifier;
      _os_log_impl(&dword_22939E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduled alarm event %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppSharingReminderRestorableAlarm scheduleAlarmWithFallbackDate:? restorableAlarmManager:?];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)removeScheduledAlarmWithRestorableAlarmManager:(id)manager
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0FD10];
  managerCopy = manager;
  sharingReminderNotificationIdentifier = [v4 sharingReminderNotificationIdentifier];
  eventIdentifier = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
  v15 = 0;
  [managerCopy removeAlarmEventWithIdentifier:eventIdentifier error:&v15];

  v8 = v15;
  _HKInitializeLogging();
  v9 = HKLogWellnessDashboard();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppSharingReminderRestorableAlarm removeScheduledAlarmWithRestorableAlarmManager:];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    eventIdentifier2 = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = eventIdentifier2;
    _os_log_impl(&dword_22939E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed alarm event %{public}@", buf, 0x16u);
  }

  [(HDHealthAppNotificationManager *)self->_notificationManager removeNotificationWithIdentifier:sharingReminderNotificationIdentifier];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmEvent:(id)event restorableAlarmManager:(id)manager completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  managerCopy = manager;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [eventCopy description];
    *buf = 138543618;
    v38 = v12;
    v39 = 2114;
    v40 = v14;
    _os_log_impl(&dword_22939E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received alarm event %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];

  v17 = [[_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc] initWithProfile:primaryProfile];
  _HKInitializeLogging();
  v18 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    *buf = 138543362;
    v38 = v19;
    v20 = v19;
    _os_log_impl(&dword_22939E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating sharing reminder notification.", buf, 0xCu);
  }

  v36 = 0;
  v21 = [(HDHealthAppNotificationManager *)v17 createSharingReminderNotificationAndReturnError:&v36];
  v22 = v36;
  v23 = v22;
  if (!v21 || v22)
  {
    [(HDHealthAppSharingReminderRestorableAlarm *)self _handleCompletionWithAlarmEvent:eventCopy success:0 error:v22 restorableAlarmManager:managerCopy completion:completionCopy];
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_daemon);
    [v24 primaryProfile];
    v25 = primaryProfile;
    v26 = eventCopy;
    v27 = completionCopy;
    v29 = v28 = managerCopy;
    notificationManager = [v29 notificationManager];

    managerCopy = v28;
    completionCopy = v27;
    eventCopy = v26;
    primaryProfile = v25;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__HDHealthAppSharingReminderRestorableAlarm_handleAlarmEvent_restorableAlarmManager_completion___block_invoke;
    v32[3] = &unk_278658168;
    v32[4] = self;
    v33 = eventCopy;
    v34 = managerCopy;
    v35 = completionCopy;
    [notificationManager postNotificationWithRequest:v21 completion:v32];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletionWithAlarmEvent:(id)event success:(BOOL)success error:(id)error restorableAlarmManager:(id)manager completion:(id)completion
{
  successCopy = success;
  v38 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  errorCopy = error;
  managerCopy = manager;
  completionCopy = completion;
  _HKInitializeLogging();
  v16 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    eventIdentifier = [eventCopy eventIdentifier];
    *buf = 138544130;
    v31 = v17;
    v32 = 2114;
    v33 = eventIdentifier;
    v34 = 1024;
    v35 = successCopy;
    v36 = 2114;
    v37 = errorCopy;
    _os_log_impl(&dword_22939E000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling completion of alarm event %{public}@ success: %d error: %{public}@", buf, 0x26u);
  }

  currentDate = [(HDHealthAppSharingReminderRestorableAlarm *)self currentDate];
  if (successCopy)
  {
    v29 = errorCopy;
    v21 = [(HDHealthAppSharingReminderRestorableAlarm *)self setSharingReminderDate:currentDate error:&v29];
    v22 = v29;

    _HKInitializeLogging();
    v23 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      *buf = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = currentDate;
      v34 = 1026;
      v35 = v21;
      v25 = v24;
      _os_log_impl(&dword_22939E000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated sharing reminder date to %@ successfully: %{public}d", buf, 0x1Cu);
    }

    if (v21)
    {
      v26 = [(HDHealthAppSharingReminderRestorableAlarm *)self nextSharingReminderDateFromDate:currentDate];
      [managerCopy rescheduleAlarmEvent:eventCopy dueDate:v26];
      v27 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = errorCopy;
  }

  _HKInitializeLogging();
  v26 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [HDHealthAppSharingReminderRestorableAlarm _handleCompletionWithAlarmEvent:success:error:restorableAlarmManager:completion:];
  }

  v27 = 0;
LABEL_12:

  completionCopy[2](completionCopy, v27 & successCopy, v22);
  v28 = *MEMORY[0x277D85DE8];
}

- (id)sharingReminderDate
{
  sharingKeyValueDomain = self->_sharingKeyValueDomain;
  v8 = 0;
  v3 = [(HDKeyValueDomain *)sharingKeyValueDomain dateForKey:@"HAHealthAppSharingReminderDateNotifiedKey" error:&v8];
  v4 = v8;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppSharingReminderRestorableAlarm sharingReminderDate];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)sharingReminderFallbackNotificationDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  v8 = [v5 initWithCategory:100 domainName:@"com.apple.Health.SharingEntries" profile:primaryProfile];

  v33 = 0;
  v9 = [v8 dateForKey:@"SharingReminderNotificationDate" error:&v33];
  v10 = v33;
  v11 = v10;
  v12 = 0;
  if (v9)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v32 = 0;
  v14 = [(HDHealthAppSharingReminderRestorableAlarm *)self setSharingReminderDate:v9 error:&v32];
  v15 = v32;
  v16 = v15;
  if (!v14)
  {
    v12 = v15;
LABEL_11:
    currentDate = dateCopy;
    if (!currentDate)
    {
      currentDate = [(HDHealthAppSharingReminderRestorableAlarm *)self currentDate];
      _HKInitializeLogging();
      v21 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = currentDate;
        v23 = v22;
        _os_log_impl(&dword_22939E000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] No fallback date found, using current date as backup to the backup: %@", buf, 0x16u);
      }
    }

    v31 = v12;
    v24 = [(HDHealthAppSharingReminderRestorableAlarm *)self setSharingReminderDate:currentDate error:&v31];
    v16 = v31;

    _HKInitializeLogging();
    v25 = HKLogWellnessDashboard();
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138543618;
        v35 = v27;
        v36 = 2114;
        v37 = currentDate;
        v28 = v27;
        _os_log_impl(&dword_22939E000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set sharing reminder date to fallback date: %{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppSharingReminderRestorableAlarm sharingReminderFallbackNotificationDate:];
    }

    goto LABEL_21;
  }

  _HKInitializeLogging();
  v17 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *buf = 138543618;
    v35 = v18;
    v36 = 2114;
    v37 = v9;
    v19 = v18;
    _os_log_impl(&dword_22939E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set sharing reminder date to existing date: %{public}@", buf, 0x16u);
  }

  currentDate = v9;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return currentDate;
}

- (id)nextSharingReminderDateFromDate:(id)date
{
  dateCopy = date;
  sharingReminderRefreshIntervalDateComponents = [(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderRefreshIntervalDateComponents];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingComponents:sharingReminderRefreshIntervalDateComponents toDate:dateCopy options:0];

  return v7;
}

- (id)sharingReminderRefreshIntervalDateComponents
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setMonth:6];

  return v2;
}

- (id)currentDate
{
  unitTest_currentDate = self->_unitTest_currentDate;
  if (unitTest_currentDate)
  {
    date = unitTest_currentDate;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (void)setUnitTest_userNotificationCenter:(id)center
{
  centerCopy = center;
  v4 = [_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  primaryProfile = [WeakRetained primaryProfile];
  if (centerCopy)
  {
    v7 = [(HDHealthAppNotificationManager *)v4 initWithProfile:primaryProfile userNotificationCenter:centerCopy];
  }

  else
  {
    v7 = [(HDHealthAppNotificationManager *)v4 initWithProfile:primaryProfile];
  }

  notificationManager = self->_notificationManager;
  self->_notificationManager = v7;
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)scheduleAlarmWithFallbackDate:(void *)a1 restorableAlarmManager:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v9 = [a1 eventIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeScheduledAlarmWithRestorableAlarmManager:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v9 = [v1 eventIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletionWithAlarmEvent:success:error:restorableAlarmManager:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sharingReminderDate
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sharingReminderFallbackNotificationDate:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1(v0);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end