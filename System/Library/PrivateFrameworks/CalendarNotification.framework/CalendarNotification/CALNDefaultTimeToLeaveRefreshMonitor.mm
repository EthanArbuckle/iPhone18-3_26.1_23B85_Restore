@interface CALNDefaultTimeToLeaveRefreshMonitor
+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)l;
- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)storage;
- (CALNTimeToLeaveRefreshMonitorDelegate)delegate;
- (void)_refreshTimerFiredForEventExternalURL:(id)l;
- (void)receivedAlarmNamed:(id)named;
- (void)removeRefreshTimerForEventExternalURL:(id)l;
- (void)setUpRefreshTimerWithTriggerDate:(id)date eventExternalURL:(id)l;
@end

@implementation CALNDefaultTimeToLeaveRefreshMonitor

- (CALNDefaultTimeToLeaveRefreshMonitor)initWithStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = CALNDefaultTimeToLeaveRefreshMonitor;
  v6 = [(CALNDefaultTimeToLeaveRefreshMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
  }

  return v7;
}

- (void)receivedAlarmNamed:(id)named
{
  namedCopy = named;
  if (![(CALNDefaultTimeToLeaveRefreshMonitor *)self isActive])
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNDefaultTimeToLeaveRefreshMonitor receivedAlarmNamed:];
    }

    goto LABEL_17;
  }

  if ([namedCopy hasPrefix:@"CalendarNotificationRefreshTimer-"])
  {
    v5 = *MEMORY[0x277CF7880];
    [namedCopy UTF8String];
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

- (void)setUpRefreshTimerWithTriggerDate:(id)date eventExternalURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lCopy = l;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    storage = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v9 = [storage refreshDateWithIdentifier:lCopy];

    if ([dateCopy isEqualToDate:v9])
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138543618;
        v22 = dateCopy;
        v23 = 2114;
        v24 = lCopy;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "A refresh timer with the same trigger date of [%{public}@] has already been set up. Will not set up a new timer. Event external URL: [%{public}@].", &v21, 0x16u);
      }
    }

    else
    {
      v11 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:lCopy];
      uTF8String = [v11 UTF8String];

      [dateCopy timeIntervalSinceNow];
      if (v13 >= 0.0)
      {
        v14 = ((ceil(v13) + time(0)) * 1000000000.0);
        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_date(v10, *MEMORY[0x277CF7888], v14);
        xpc_dictionary_set_string(v10, "com.apple.calaccessd.TTLRefreshMonitor.alarm.context.URLString", [lCopy UTF8String]);
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
        storage2 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
        [storage2 addRefreshDate:dateCopy withIdentifier:lCopy];

        v19 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543874;
          v22 = lCopy;
          v23 = 2114;
          v24 = dateCopy;
          v25 = 2082;
          v26 = uTF8String;
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

- (void)removeRefreshTimerForEventExternalURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if ([(CALNDefaultTimeToLeaveRefreshMonitor *)self isRegisteredForAlarms])
  {
    storage = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
    v6 = [storage refreshDateWithIdentifier:lCopy];

    if (v6)
    {
      v7 = [objc_opt_class() _refreshTimerAlarmNameForEventExternalURL:lCopy];
      v8 = *MEMORY[0x277CF7880];
      [v7 UTF8String];
      xpc_set_event();
      storage2 = [(CALNDefaultTimeToLeaveRefreshMonitor *)self storage];
      [storage2 removeRefreshDateWithIdentifier:lCopy];

      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = lCopy;
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

- (void)_refreshTimerFiredForEventExternalURL:(id)l
{
  v12 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = lCopy;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Refresh timer fired for event external url = %{public}@", &v10, 0xCu);
  }

  delegate = [(CALNDefaultTimeToLeaveRefreshMonitor *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate timeToLeaveRefreshMonitor:self refreshTimerFiredForEventExternalURL:lCopy];
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

+ (id)_refreshTimerAlarmNameForEventExternalURL:(id)l
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(l, "hash")}];
  stringValue = [v3 stringValue];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-[%@]", @"CalendarNotificationRefreshTimer-", stringValue];

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