@interface CALNDefaultTimeToLeaveRefreshMonitor
+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)a3;
- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)a3;
- (CALNTimeToLeaveRefreshMonitorDelegate)delegate;
- (void)_refreshTimerFiredForEventExternalURL:(id)a3;
- (void)receivedAlarmNamed:(id)a3;
- (void)removeRefreshTimerForEventExternalURL:(id)a3;
- (void)setUpRefreshTimerWithTriggerDate:(id)a3 eventExternalURL:(id)a4;
@end

@implementation CALNDefaultTimeToLeaveRefreshMonitor

- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNDefaultTimeToLeaveRefreshMonitor;
  v6 = [(CALNDefaultTimeToLeaveRefreshMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
  }

  return v7;
}

- (void)receivedAlarmNamed:(id)a3
{
  v4 = a3;
  if (![(CALNDefaultTimeToLeaveRefreshMonitor *)self isActive])
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
    }

    goto LABEL_17;
  }

  if ([v4 hasPrefix:@"CalendarNotificationRefreshTimer-"])
  {
    v5 = *MEMORY[0x277CF7880];
    [v4 UTF8String];
    v6 = xpc_copy_event();
    v7 = v6;
    if (v6)
    {
      string = xpc_dictionary_get_string(v6, "com.apple.calaccessd.TTLRefreshMonitor.alarm.context.URLString");
      if (string)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        if (v9)
        {
          [(CALNDefaultTimeToLeaveRefreshMonitor *)self _refreshTimerFiredForEventExternalURL:v9];
        }

        else
        {
          v10 = MEMORY[0x245D1CF80](v7);
          v11 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
          }

          free(v10);
        }
      }

      else
      {
        v9 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
        }
      }
    }

    else
    {
      v9 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
      }
    }

LABEL_17:
  }
}

- (void)setUpRefreshTimerWithTriggerDate:(id)a3 eventExternalURL:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    v8 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v9 = [v8 refreshDateWithIdentifier:v7];

    if ([v6 isEqualToDate:v9])
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = v6;
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "A refresh timer with the same trigger date of [%{public}@] has already been set up. Will not set up a new timer. Event external URL: [%{public}@].", &v21, 0x16u);
      }
    }

    else
    {
      v11 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:v7];
      v12 = [v11 UTF8String];

      [v6 timeIntervalSinceNow];
      if (v13 >= 0.0)
      {
        v14 = ((ceil(v13) + time(0)) * 1000000000.0);
        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_date(v10, *MEMORY[0x277CF7888], v14);
        xpc_dictionary_set_string(v10, "com.apple.calaccessd.TTLRefreshMonitor.alarm.context.URLString", [v7 UTF8String]);
        v15 = *MEMORY[0x277CF7880];
        xpc_set_event();
        v16 = MEMORY[0x245D1CF80](v10);
        v17 = +[CALNLogSubsystem alarmEngine];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315138;
          v22 = v16;
          _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Scheduled XPC alarm event: %s.", &v21, 0xCu);
        }

        free(v16);
        v18 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
        [v18 addRefreshDate:v6 withIdentifier:v7];

        v19 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543874;
          v22 = v7;
          v23 = 2114;
          v24 = v6;
          v25 = 2082;
          v26 = v12;
          _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Set up refresh timer. event external url = %{public}@, trigger date = %{public}@, job name = %{public}s", &v21, 0x20u);
        }
      }

      else
      {
        v10 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CALNDefaultTimeToLeaveRefreshMonitor setUpRefreshTimerWithTriggerDate:eventExternalURL:];
        }
      }
    }
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor setUpRefreshTimerWithTriggerDate:eventExternalURL:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeRefreshTimerForEventExternalURL:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    v5 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v6 = [v5 refreshDateWithIdentifier:v4];

    if (v6)
    {
      v7 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:v4];
      v8 = *MEMORY[0x277CF7880];
      [v7 UTF8String];
      xpc_set_event();
      v9 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
      [v9 removeRefreshDateWithIdentifier:v4];

      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = v4;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Removed refresh timer for event with external url = %{public}@", &v12, 0xCu);
      }
    }

    else
    {
      v7 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CALNDefaultTimeToLeaveRefreshMonitor removeRefreshTimerForEventExternalURL:];
      }
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor removeRefreshTimerForEventExternalURL:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTimerFiredForEventExternalURL:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Refresh timer fired for event external url = %{public}@", &v10, 0xCu);
  }

  v6 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 timeToLeaveRefreshMonitor:self refreshTimerFiredForEventExternalURL:v4];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor _refreshTimerFiredForEventExternalURL:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)a3
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "hash")}];
  v4 = [v3 stringValue];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-[%@]", @"CalendarNotificationRefreshTimer-", v4];

  return v5;
}

- (CALNTimeToLeaveRefreshMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receivedAlarmNamed:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)receivedAlarmNamed:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setUpRefreshTimerWithTriggerDate:eventExternalURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_242909000, v1, OS_LOG_TYPE_FAULT, "Time to leave refresh monitor is not registered for alarms. Cannot set up refresh timer for event, event external url = %{public}@, refresh date = %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setUpRefreshTimerWithTriggerDate:eventExternalURL:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Ignoring attempt to set refresh timer for [%{public}@] that would fire in the past [%{public}@].", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeRefreshTimerForEventExternalURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(&dword_242909000, v0, OS_LOG_TYPE_FAULT, "Time to leave refresh monitor is not registered for alarms. Cannot remove refresh timer for event, event external url = %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)removeRefreshTimerForEventExternalURL:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_refreshTimerFiredForEventExternalURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end