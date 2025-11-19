@interface _DKBacklightMonitor
+ (id)_eventWithState:(id)a3;
- (_DKBacklightMonitor)init;
- (id)_lastAliveDate;
- (id)_shutdownDateFromSpringBoard;
- (id)_shutdownDateFromSysctl;
- (id)bootDate;
- (id)checkShutdownConditionOfBacklightStream;
- (id)lastBacklightEvent;
- (id)shutdownDate;
- (id)shutdownHandler;
- (void)_setLastAliveDate:(id)a3;
- (void)_shutdownDateFromSysctl;
- (void)deactivate;
- (void)dealloc;
- (void)donateRetroactiveShutdownBacklightOffEvent;
- (void)donateToBiome:(unint64_t)a3 startDate:(id)a4;
- (void)handleShutdownNotification;
- (void)obtainCurrentValue;
- (void)setShutdownHandler:(id)a3;
- (void)start;
- (void)stop;
- (void)synchronouslyReflectCurrentValue;
@end

@implementation _DKBacklightMonitor

- (void)setShutdownHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42___DKBacklightMonitor_setShutdownHandler___block_invoke;
  v8[3] = &unk_27856F1A0;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  v6 = [v8 copy];
  shutdownHandler = self->_shutdownHandler;
  self->_shutdownHandler = v6;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)shutdownHandler
{
  v2 = MEMORY[0x22AA6AF50](self->_shutdownHandler, a2);

  return v2;
}

- (_DKBacklightMonitor)init
{
  v13.receiver = self;
  v13.super_class = _DKBacklightMonitor;
  v2 = [(_DKMonitor *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(_DKMonitor *)v2 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_DEFAULT, "Enabling Backlight monitor", v12, 2u);
    }

    v5 = BiomeLibrary();
    v6 = [v5 Device];
    v7 = [v6 Display];
    v8 = [v7 Backlight];
    v9 = [v8 source];
    source = v3->_source;
    v3->_source = v9;
  }

  return v3;
}

- (void)dealloc
{
  [(_DKBacklightMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKBacklightMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)_eventWithState:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() indicatesScreenOnWithNotificationState:v3];

  if (v4)
  {
    [MEMORY[0x277CFE1A0] yes];
  }

  else
  {
    [MEMORY[0x277CFE1A0] no];
  }
  v5 = ;
  [_DKBacklightMonitor setIsBacklit:v4];
  v6 = MEMORY[0x277CFE1D8];
  v7 = [MEMORY[0x277CFE298] displayIsBacklit];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEAA8] distantFuture];
  v10 = [v6 eventWithStream:v7 startDate:v8 endDate:v9 value:v5];

  return v10;
}

- (void)obtainCurrentValue
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41___DKBacklightMonitor_obtainCurrentValue__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)donateToBiome:(unint64_t)a3 startDate:(id)a4
{
  v6 = a4;
  [(_DKBacklightMonitor *)self donateRetroactiveShutdownBacklightOffEvent];
  v7 = objc_alloc(MEMORY[0x277CF1098]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v9 = [v7 initWithAbsoluteTimestamp:v6 backlightLevel:v8];

  [(BMSource *)self->_source sendEvent:v9 date:v6];
}

- (void)start
{
  v14.receiver = self;
  v14.super_class = _DKBacklightMonitor;
  if ([(_DKMonitor *)&v14 instantMonitorNeedsActivation])
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __28___DKBacklightMonitor_start__block_invoke;
    v11 = &unk_27856F1C8;
    objc_copyWeak(&v12, &location);
    v3 = MEMORY[0x22AA6AF50](&v8);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 1);

    v6 = [(_DKMonitor *)self queue:v8];
    v7 = dispatch_queue_create_with_target_V2("_DKBacklightMonitor Display Status", v5, v6);

    notify_register_dispatch([@"com.apple.iokit.hid.displayStatus" UTF8String], &self->notifyToken, v7, v3);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  [(_DKBacklightMonitor *)self obtainCurrentValue];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKBacklightMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKBacklightMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  notifyToken = self->notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
    self->notifyToken = 0;
  }
}

- (void)synchronouslyReflectCurrentValue
{
  v3 = [(_DKMonitor *)self currentEvent];

  if (!v3)
  {

    [(_DKBacklightMonitor *)self obtainCurrentValue];
  }
}

- (void)handleShutdownNotification
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [(_DKBacklightMonitor *)self donateToBiome:0 startDate:v3];
}

- (void)donateRetroactiveShutdownBacklightOffEvent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___DKBacklightMonitor_donateRetroactiveShutdownBacklightOffEvent__block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  if (donateRetroactiveShutdownBacklightOffEvent_onceToken != -1)
  {
    dispatch_once(&donateRetroactiveShutdownBacklightOffEvent_onceToken, block);
  }
}

- (id)lastBacklightEvent
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a2);
  v4 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:1 lastN:0 reversed:1];
  v5 = BiomeLibrary();
  v6 = [v5 Device];
  v7 = [v6 Display];
  v8 = [v7 Backlight];
  v9 = [v8 publisherWithOptions:v4];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41___DKBacklightMonitor_lastBacklightEvent__block_invoke_2;
  v16[3] = &unk_27856F238;
  v16[4] = &v17;
  v10 = [v9 sinkWithCompletion:&__block_literal_global_0 receiveInput:v16];
  v11 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v18[5];
    *buf = 138412546;
    v24 = v3;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_22595A000, v11, OS_LOG_TYPE_DEFAULT, "%@: event:%@", buf, 0x16u);
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)bootDate
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0;
  *v10 = 0x1500000001;
  v7 = 16;
  v8 = 0;
  v2 = sysctl(v10, 2u, &v8, &v7, 0, 0);
  v3 = 0;
  if (v2 != -1 && v8 != 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v9 / 1000000.0 + v8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_shutdownDateFromSysctl
{
  v26[2] = *MEMORY[0x277D85DE8];
  v22 = 8;
  v23 = 0;
  if (sysctlbyname("kern.shutdowntime", &v23, &v22, 0, 0))
  {
    v3 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [_DKBacklightMonitor _shutdownDateFromSysctl];
    }

LABEL_4:

    v4 = 0;
    goto LABEL_11;
  }

  if (!v23)
  {
    v3 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(_DKBacklightMonitor *)v3 _shutdownDateFromSysctl:v8];
    }

    goto LABEL_4;
  }

  v22 = 16;
  if (sysctlbyname("kern.monotonicclock_usecs", v26, &v22, 0, 0))
  {
    v5 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_DKBacklightMonitor _shutdownDateFromSysctl];
    }
  }

  else
  {
    if (v26[0])
    {
      v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(v26[0] - v23) / -1000000.0];
      v5 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v25 = v4;
        _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_INFO, "Elapsed PMU RTC ticks in USecs since shutdown: %{public}@", buf, 0xCu);
      }

      goto LABEL_10;
    }

    v5 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_DKBacklightMonitor *)v5 _shutdownDateFromSysctl:v15];
    }
  }

  v4 = 0;
LABEL_10:

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_shutdownDateFromSpringBoard
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  v4 = [v3 objectForKey:@"SBLastKnownShutdownDate"];
  v5 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_INFO, "SpringBoard shutdown date: %{public}@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)shutdownDate
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(_DKBacklightMonitor *)self _shutdownDateFromSysctl];
  v4 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v22 = 138543362;
    v23 = v3;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_INFO, "Shutdown date from kern.shutdowntime is: %{public}@", &v22, 0xCu);
  }

  v5 = [(_DKBacklightMonitor *)self _lastAliveDate];
  v6 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 138543362;
    v23 = v5;
    _os_log_impl(&dword_22595A000, v6, OS_LOG_TYPE_INFO, "Last alive date is: %{public}@", &v22, 0xCu);
  }

  v7 = v3;
  v8 = v5;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = [v7 laterDate:v8];
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [(_DKBacklightMonitor *)self _shutdownDateFromSpringBoard];
  v13 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v22 = 138543362;
    v23 = v12;
    _os_log_impl(&dword_22595A000, v13, OS_LOG_TYPE_INFO, "Shutdown date from SpringBoard is: %{public}@", &v22, 0xCu);
  }

  v14 = v11;
  v15 = v12;
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      v17 = [v14 laterDate:v15];
    }

    else
    {
      v17 = v14;
    }
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = v18;
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)checkShutdownConditionOfBacklightStream
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a2);
  v4 = [(_DKBacklightMonitor *)self bootDate];
  v5 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_DEFAULT, "%@: bootDate: %@", &v21, 0x16u);
  }

  v6 = [(_DKBacklightMonitor *)self shutdownDate];
  v7 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22595A000, v7, OS_LOG_TYPE_DEFAULT, "%@: shutdownDate is: %@", &v21, 0x16u);
  }

  if (v6)
  {
    [v6 timeIntervalSinceNow];
    if (v8 > 0.0)
    {
      v9 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v3;
        v10 = "%@: Shutdown date is in the future";
LABEL_11:
        _os_log_impl(&dword_22595A000, v9, OS_LOG_TYPE_DEFAULT, v10, &v21, 0xCu);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v9 = [(_DKBacklightMonitor *)self lastBacklightEvent];
    v11 = [(_DKMonitor *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v3;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22595A000, v11, OS_LOG_TYPE_DEFAULT, "%@: lastEvent: %@", &v21, 0x16u);
    }

    if (!v9)
    {
      v14 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v3;
        v16 = "%@: Unable to read last backlight event, will attempt to write event for shutdown date";
        goto LABEL_21;
      }

LABEL_22:

      v17 = v6;
      goto LABEL_30;
    }

    if ([v9 backlightLevel])
    {
      v12 = [v9 absoluteTimestamp];
      v13 = [v4 compare:v12];

      v14 = [(_DKMonitor *)self log];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13 == 1)
      {
        if (v15)
        {
          v21 = 138412290;
          v22 = v3;
          v16 = "%@: the last event has backlight on, written before boot time, will attempt to write event for shutdown date";
LABEL_21:
          _os_log_impl(&dword_22595A000, v14, OS_LOG_TYPE_DEFAULT, v16, &v21, 0xCu);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (v15)
      {
        v21 = 138412290;
        v22 = v3;
        v18 = "%@: the last event has backlight on, written after boot time, no need to write an event";
        goto LABEL_27;
      }
    }

    else
    {
      v14 = [(_DKMonitor *)self log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v3;
        v18 = "%@: the last event has backlight off, no need to write an event";
LABEL_27:
        _os_log_impl(&dword_22595A000, v14, OS_LOG_TYPE_DEFAULT, v18, &v21, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v9 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v3;
    v10 = "%@: Unable to obtain shutdown date";
    goto LABEL_11;
  }

LABEL_29:
  v17 = 0;
LABEL_30:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_lastAliveDate
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"LastAliveDate"];

  return v3;
}

- (void)_setLastAliveDate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_DKMonitor *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_22595A000, v5, OS_LOG_TYPE_DEFAULT, "Setting last alive date: %{public}@", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setObject:v4 forKey:@"LastAliveDate"];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_shutdownDateFromSysctl
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1(&dword_22595A000, v1, v2, "Unable to get kern.monotonicclock_usecs: %{errno}d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end