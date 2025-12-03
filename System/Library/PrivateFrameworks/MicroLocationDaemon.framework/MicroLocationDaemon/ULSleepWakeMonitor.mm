@interface ULSleepWakeMonitor
+ (int)_internalSleepWakeStateFromCUSleepWakeState:(int)state;
- (id)latestEventAfterAddingObserverForEventName:(id)name;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring:(id)monitoring;
@end

@implementation ULSleepWakeMonitor

- (void)startMonitoring:(id)monitoring
{
  monitoringCopy = monitoring;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

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

  queue2 = [(ULEventMonitor *)self queue];
  sleepWakeMonitor = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [sleepWakeMonitor setDispatchQueue:queue2];

  sleepWakeMonitor2 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [sleepWakeMonitor2 setLabel:@"com.apple.milod.ULSleepWakeMonitor"];

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__ULSleepWakeMonitor_startMonitoring___block_invoke;
  v13[3] = &unk_2798D43E8;
  objc_copyWeak(&v14, buf);
  sleepWakeMonitor3 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [sleepWakeMonitor3 setSleepWakeHandler:v13];

  sleepWakeMonitor4 = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [sleepWakeMonitor4 activateWithCompletion:0];

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

- (void)stopMonitoring:(id)monitoring
{
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

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

  sleepWakeMonitor = [(ULSleepWakeMonitor *)self sleepWakeMonitor];
  [sleepWakeMonitor invalidate];

  [(ULSleepWakeMonitor *)self setSleepWakeMonitor:0];
}

- (id)latestEventAfterAddingObserverForEventName:(id)name
{
  nameCopy = name;
  queue = [(ULEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[(ULEvent *)ULSleepWakeEvent];
  v7 = [nameCopy isEqual:v6];

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

+ (int)_internalSleepWakeStateFromCUSleepWakeState:(int)state
{
  if (state == 50)
  {
    v3 = 50;
  }

  else
  {
    v3 = 0;
  }

  if (state == 40)
  {
    v3 = 40;
  }

  if (state == 30)
  {
    v3 = 30;
  }

  if (state == 20)
  {
    v4 = 20;
  }

  else
  {
    v4 = 0;
  }

  if (state == 10)
  {
    v4 = 10;
  }

  if (state <= 29)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

@end