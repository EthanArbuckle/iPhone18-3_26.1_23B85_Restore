@interface HDHealthAppSharingReminderRestorableAlarm
- (HDDaemon)daemon;
- (HDHealthAppSharingReminderRestorableAlarm)initWithDaemon:(id)a3;
- (id)currentDate;
- (id)nextSharingReminderDateFromDate:(id)a3;
- (id)sharingReminderDate;
- (id)sharingReminderFallbackNotificationDate:(id)a3;
- (id)sharingReminderRefreshIntervalDateComponents;
- (void)_handleCompletionWithAlarmEvent:(id)a3 success:(BOOL)a4 error:(id)a5 restorableAlarmManager:(id)a6 completion:(id)a7;
- (void)handleAlarmEvent:(id)a3 restorableAlarmManager:(id)a4 completion:(id)a5;
- (void)removeScheduledAlarmWithRestorableAlarmManager:(id)a3;
- (void)scheduleAlarmWithFallbackDate:(id)a3 restorableAlarmManager:(id)a4;
- (void)setUnitTest_userNotificationCenter:(id)a3;
- (void)sharingReminderDate;
@end

@implementation HDHealthAppSharingReminderRestorableAlarm

- (HDHealthAppSharingReminderRestorableAlarm)initWithDaemon:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDHealthAppSharingReminderRestorableAlarm;
  v5 = [(HDHealthAppSharingReminderRestorableAlarm *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v7 = objc_alloc(MEMORY[0x277D10718]);
    v8 = [v4 primaryProfile];
    v9 = [v7 initWithCategory:1 domainName:@"HDHealthAppDaemonExtension" profile:v8];
    sharingKeyValueDomain = v6->_sharingKeyValueDomain;
    v6->_sharingKeyValueDomain = v9;

    v11 = [_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc];
    v12 = [v4 primaryProfile];
    v13 = [(HDHealthAppNotificationManager *)v11 initWithProfile:v12];
    notificationManager = v6->_notificationManager;
    v6->_notificationManager = v13;
  }

  return v6;
}

- (void)scheduleAlarmWithFallbackDate:(id)a3 restorableAlarmManager:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderDate];
  if (v8 || ([(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderFallbackNotificationDate:v6], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(HDHealthAppSharingReminderRestorableAlarm *)self nextSharingReminderDateFromDate:v8];
    [v7 scheduleAlarmEventWithHandler:self dueDate:v10 eventOptions:1];
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
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

- (void)removeScheduledAlarmWithRestorableAlarmManager:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0FD10];
  v5 = a3;
  v6 = [v4 sharingReminderNotificationIdentifier];
  v7 = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
  v15 = 0;
  [v5 removeAlarmEventWithIdentifier:v7 error:&v15];

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
    v13 = [(HDHealthAppSharingReminderRestorableAlarm *)self eventIdentifier];
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&dword_22939E000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed alarm event %{public}@", buf, 0x16u);
  }

  [(HDHealthAppNotificationManager *)self->_notificationManager removeNotificationWithIdentifier:v6];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleAlarmEvent:(id)a3 restorableAlarmManager:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [v8 description];
    *buf = 138543618;
    v38 = v12;
    v39 = 2114;
    v40 = v14;
    _os_log_impl(&dword_22939E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received alarm event %{public}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v16 = [WeakRetained primaryProfile];

  v17 = [[_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc] initWithProfile:v16];
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
    [(HDHealthAppSharingReminderRestorableAlarm *)self _handleCompletionWithAlarmEvent:v8 success:0 error:v22 restorableAlarmManager:v9 completion:v10];
  }

  else
  {
    v24 = objc_loadWeakRetained(&self->_daemon);
    [v24 primaryProfile];
    v25 = v16;
    v26 = v8;
    v27 = v10;
    v29 = v28 = v9;
    v31 = [v29 notificationManager];

    v9 = v28;
    v10 = v27;
    v8 = v26;
    v16 = v25;

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __96__HDHealthAppSharingReminderRestorableAlarm_handleAlarmEvent_restorableAlarmManager_completion___block_invoke;
    v32[3] = &unk_278658168;
    v32[4] = self;
    v33 = v8;
    v34 = v9;
    v35 = v10;
    [v31 postNotificationWithRequest:v21 completion:v32];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletionWithAlarmEvent:(id)a3 success:(BOOL)a4 error:(id)a5 restorableAlarmManager:(id)a6 completion:(id)a7
{
  v10 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  _HKInitializeLogging();
  v16 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = v17;
    v19 = [v12 eventIdentifier];
    *buf = 138544130;
    v31 = v17;
    v32 = 2114;
    v33 = v19;
    v34 = 1024;
    v35 = v10;
    v36 = 2114;
    v37 = v13;
    _os_log_impl(&dword_22939E000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Handling completion of alarm event %{public}@ success: %d error: %{public}@", buf, 0x26u);
  }

  v20 = [(HDHealthAppSharingReminderRestorableAlarm *)self currentDate];
  if (v10)
  {
    v29 = v13;
    v21 = [(HDHealthAppSharingReminderRestorableAlarm *)self setSharingReminderDate:v20 error:&v29];
    v22 = v29;

    _HKInitializeLogging();
    v23 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      *buf = 138543874;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      v34 = 1026;
      v35 = v21;
      v25 = v24;
      _os_log_impl(&dword_22939E000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updated sharing reminder date to %@ successfully: %{public}d", buf, 0x1Cu);
    }

    if (v21)
    {
      v26 = [(HDHealthAppSharingReminderRestorableAlarm *)self nextSharingReminderDateFromDate:v20];
      [v14 rescheduleAlarmEvent:v12 dueDate:v26];
      v27 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = v13;
  }

  _HKInitializeLogging();
  v26 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [HDHealthAppSharingReminderRestorableAlarm _handleCompletionWithAlarmEvent:success:error:restorableAlarmManager:completion:];
  }

  v27 = 0;
LABEL_12:

  v15[2](v15, v27 & v10, v22);
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

- (id)sharingReminderFallbackNotificationDate:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v7 = [WeakRetained primaryProfile];
  v8 = [v5 initWithCategory:100 domainName:@"com.apple.Health.SharingEntries" profile:v7];

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
    v20 = v4;
    if (!v20)
    {
      v20 = [(HDHealthAppSharingReminderRestorableAlarm *)self currentDate];
      _HKInitializeLogging();
      v21 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *buf = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = v20;
        v23 = v22;
        _os_log_impl(&dword_22939E000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] No fallback date found, using current date as backup to the backup: %@", buf, 0x16u);
      }
    }

    v31 = v12;
    v24 = [(HDHealthAppSharingReminderRestorableAlarm *)self setSharingReminderDate:v20 error:&v31];
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
        v37 = v20;
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

  v20 = v9;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)nextSharingReminderDateFromDate:(id)a3
{
  v4 = a3;
  v5 = [(HDHealthAppSharingReminderRestorableAlarm *)self sharingReminderRefreshIntervalDateComponents];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];

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
    v3 = unitTest_currentDate;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  return v3;
}

- (void)setUnitTest_userNotificationCenter:(id)a3
{
  v9 = a3;
  v4 = [_TtC21HealthAppHealthDaemon30HDHealthAppNotificationManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v6 = [WeakRetained primaryProfile];
  if (v9)
  {
    v7 = [(HDHealthAppNotificationManager *)v4 initWithProfile:v6 userNotificationCenter:v9];
  }

  else
  {
    v7 = [(HDHealthAppNotificationManager *)v4 initWithProfile:v6];
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