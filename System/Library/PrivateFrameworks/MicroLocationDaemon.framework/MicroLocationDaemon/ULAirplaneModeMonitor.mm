@interface ULAirplaneModeMonitor
- (BOOL)_checkAirplaneMode;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)airplaneModeChanged;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULAirplaneModeMonitor

- (void)startMonitoring:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc(MEMORY[0x277CEC5D0]);
  v7 = [(ULEventMonitor *)self queue];
  v8 = [v6 initWithQueue:v7];
  [(ULAirplaneModeMonitor *)self setRadiosPref:v8];

  v9 = [(ULAirplaneModeMonitor *)self radiosPref];
  [v9 setDelegate:self];

  [(ULAirplaneModeMonitor *)self setAirplaneMode:[(ULAirplaneModeMonitor *)self _checkAirplaneMode]];
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULAirplaneModeMonitor startMonitoring:];
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(ULAirplaneModeMonitor *)self airplaneMode];
    v13 = @"NO";
    if (v12)
    {
      v13 = @"YES";
    }

    v15 = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "Start monitoring: %@, airplaneMode: %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopMonitoring:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULAirplaneModeMonitor startMonitoring:];
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Stop monitoring: %@", &v9, 0xCu);
  }

  v7 = [(ULAirplaneModeMonitor *)self radiosPref];
  [v7 setDelegate:0];

  [(ULAirplaneModeMonitor *)self setRadiosPref:0];
  [(ULAirplaneModeMonitor *)self setAirplaneMode:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULAirplaneModeMonitorEventAirplaneMode];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULAirplaneModeMonitorEventAirplaneMode);
    [(ULAirplaneModeMonitorEventAirplaneMode *)v8 setAirplaneMode:[(ULAirplaneModeMonitor *)self airplaneMode]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_checkAirplaneMode
{
  v2 = [(ULAirplaneModeMonitor *)self radiosPref];
  v3 = [v2 airplaneMode];

  return v3;
}

- (void)airplaneModeChanged
{
  v3 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ULAirplaneModeMonitor *)self _checkAirplaneMode];
  if (v4 != [(ULAirplaneModeMonitor *)self airplaneMode])
  {
    [(ULAirplaneModeMonitor *)self setAirplaneMode:v4];
    v5 = objc_alloc_init(ULAirplaneModeMonitorEventAirplaneMode);
    [(ULAirplaneModeMonitorEventAirplaneMode *)v5 setAirplaneMode:v4];
    [(ULEventMonitor *)self postEvent:v5];
  }
}

@end