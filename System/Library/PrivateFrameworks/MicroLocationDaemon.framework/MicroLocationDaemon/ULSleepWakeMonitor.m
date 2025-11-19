@interface ULSleepWakeMonitor
+ (int)_internalSleepWakeStateFromCUSleepWakeState:(int)a3;
- (id)latestEventAfterAddingObserverForEventName:(id)a3;
- (void)startMonitoring:(id)a3;
- (void)stopMonitoring:(id)a3;
@end

@implementation ULSleepWakeMonitor

- (void)startMonitoring:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSleepWakeStateToString_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "ULSleepWakeMonitor, startMonitoring", buf, 2u);
  }

  v7 = objc_opt_new();
  [(ULSleepWakeMonitor *)self setSleepWakeMonitor:v7];

  v8 = [(ULEventMonitor *)self queue];
  v9 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [v9 setDispatchQueue:v8];

  v10 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [v10 setLabel:@"com.apple.milod.ULSleepWakeMonitor"];

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__ULSleepWakeMonitor_startMonitoring___block_invoke;
  v13[3] = &unk_2798D43E8;
  objc_copyWeak(&v14, buf);
  v11 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [v11 setSleepWakeHandler:v13];

  v12 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [v12 activateWithCompletion:0];

  [(ULSleepWakeMonitor *)self setSleepWakeState:30];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __38__ULSleepWakeMonitor_startMonitoring___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didUpdateSleepWakeState:a2];
    if (v7)
    {
      v7[2]();
    }
  }
}

- (void)stopMonitoring:(id)a3
{
  v4 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  if (onceToken_MicroLocation_Default != -1)
  {
    ULSleepWakeStateToString_cold_1();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "ULSleepWakeMonitor, stopMonitoring", v7, 2u);
  }

  v6 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [v6 invalidate];

  [(ULSleepWakeMonitor *)self setSleepWakeMonitor:0];
}

- (id)latestEventAfterAddingObserverForEventName:(id)a3
{
  v4 = a3;
  v5 = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[(ULEvent *)ULSleepWakeEvent];
  v7 = [v4 isEqual:v6];

  if (v7)
  {
    v8 = objc_alloc_init(ULSleepWakeEvent);
    [(ULSleepWakeEvent *)v8 setSleepWakeState:[(ULSleepWakeMonitor *)self sleepWakeState]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int)_internalSleepWakeStateFromCUSleepWakeState:(int)a3
{
  if (a3 == 50)
  {
    v3 = 50;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 40)
  {
    v3 = 40;
  }

  if (a3 == 30)
  {
    v3 = 30;
  }

  if (a3 == 20)
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  if (a3 == 10)
  {
    v4 = 10;
  }

  if (a3 <= 29)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

@end