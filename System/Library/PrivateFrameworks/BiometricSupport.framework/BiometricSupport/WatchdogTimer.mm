@interface WatchdogTimer
+ (id)watchdogWithName:(const char *)name;
- (WatchdogTimer)initWithName:(const char *)name timeout:(unsigned int)timeout;
- (void)cancel;
- (void)dealloc;
@end

@implementation WatchdogTimer

- (void)dealloc
{
  [(WatchdogTimer *)self cancel];
  v3.receiver = self;
  v3.super_class = WatchdogTimer;
  [(WatchdogTimer *)&v3 dealloc];
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  if (WeakRetained)
  {
    obj = _watchdogTimerItems;
    objc_sync_enter(obj);
    v4 = _watchdogTimerItems;
    v5 = objc_loadWeakRetained(&self->_item);
    [v4 removeObject:v5];

    if (![_watchdogTimerItems count])
    {
      dispatch_suspend(_watchdogTimerSource);
    }

    objc_storeWeak(&self->_item, 0);
    objc_sync_exit(obj);
  }
}

+ (id)watchdogWithName:(const char *)name
{
  v3 = [[WatchdogTimer alloc] initWithName:name timeout:60];

  return v3;
}

- (WatchdogTimer)initWithName:(const char *)name timeout:(unsigned int)timeout
{
  v11.receiver = self;
  v11.super_class = WatchdogTimer;
  v5 = [(WatchdogTimer *)&v11 init];
  if (v5)
  {
    if (initWithName_timeout__onceToken != -1)
    {
      [WatchdogTimer initWithName:timeout:];
    }

    v6 = objc_alloc_init(WatchdogTimerItem);
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
    [(WatchdogTimerItem *)v6 setName:v7];

    v8 = mach_absolute_time();
    [(WatchdogTimerItem *)v6 setStartTime:v8];
    [(WatchdogTimerItem *)v6 setEndTime:nanosecondsToAbsolute() + v8];
    objc_storeWeak(&v5->_item, v6);
    v9 = _watchdogTimerItems;
    objc_sync_enter(v9);
    [_watchdogTimerItems addObject:v6];
    if ([_watchdogTimerItems count] == 1)
    {
      dispatch_resume(_watchdogTimerSource);
    }

    objc_sync_exit(v9);
  }

  return v5;
}

void __38__WatchdogTimer_initWithName_timeout___block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = _watchdogTimerItems;
  _watchdogTimerItems = v0;

  v2 = dispatch_queue_create("com.apple.biometrickitd.watchdogQueue", 0);
  v3 = _watchdogTimerQueue;
  _watchdogTimerQueue = v2;

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _watchdogTimerQueue);
  v5 = _watchdogTimerSource;
  _watchdogTimerSource = v4;

  v6 = _watchdogTimerSource;
  v7 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v6, v7, 0x3B9ACA00uLL, 0);
  v8 = _watchdogTimerSource;

  dispatch_source_set_event_handler(v8, &__block_literal_global_27);
}

void __38__WatchdogTimer_initWithName_timeout___block_invoke_2()
{
  v20 = *MEMORY[0x277D85DE8];
  obj = _watchdogTimerItems;
  objc_sync_enter(obj);
  v0 = mach_absolute_time();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = _watchdogTimerItems;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v2)
  {
    v3 = *v14;
    v4 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if ([v6 endTime] <= v0)
        {
          v7 = MEMORY[0x277CCACA8];
          v8 = [v6 name];
          [v6 startTime];
          v9 = [v7 stringWithFormat:@"Watchdog timer fired for '%@' after %f seconds", v8, absoluteToNanoseconds() / 1000000000.0];

          if (__osLog)
          {
            v10 = __osLog;
          }

          else
          {
            v10 = v4;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v18 = v9;
            _os_log_impl(&dword_223E00000, v10, OS_LOG_TYPE_FAULT, "%{public}@\n", buf, 0xCu);
          }

          [v6 setEndTime:-1];
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v2);
  }

  objc_sync_exit(obj);
  v11 = *MEMORY[0x277D85DE8];
}

@end