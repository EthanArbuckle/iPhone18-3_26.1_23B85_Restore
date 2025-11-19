@interface DADBuddyStateObserver
- (DADBuddyStateObserver)initWithQueue:(id)a3;
- (void)buddyDidFinish;
- (void)checkBuddyStatus;
- (void)createPeriodicPollingTimer;
- (void)dealloc;
- (void)start;
- (void)stopWithAssertQueue:(BOOL)a3;
@end

@implementation DADBuddyStateObserver

- (DADBuddyStateObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DADBuddyStateObserver;
  v6 = [(DADBuddyStateObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    buddyStatePollingTimer = v6->_buddyStatePollingTimer;
    v6->_buddyStatePollingTimer = 0;

    objc_storeStrong(&v7->_queue, a3);
    *&v7->_lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
  }

  return v7;
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "DADBuddyStateObserver: Dealloc.", buf, 2u);
  }

  [(DADBuddyStateObserver *)self stopWithAssertQueue:0];
  v5.receiver = self;
  v5.super_class = DADBuddyStateObserver;
  [(DADBuddyStateObserver *)&v5 dealloc];
}

- (void)start
{
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v5))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2424DF000, v3, v5, "DADBuddyStateObserver: Start observing buddy finished notification.", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(DADBuddyStateObserver *)self isRunning])
  {
    v6 = DALoggingwithCategory();
    if (os_log_type_enabled(v6, v5))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2424DF000, v6, v5, "DADBuddyStateObserver: Already observing.", buf, 2u);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v7 = [*MEMORY[0x277D4D9E8] UTF8String];
    queue = self->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __30__DADBuddyStateObserver_start__block_invoke;
    handler[3] = &unk_278D529F0;
    objc_copyWeak(&v13, buf);
    if (notify_register_dispatch(v7, &self->_notifyToken, queue, handler))
    {
      v9 = DALoggingwithCategory();
      v10 = *(v4 + 3);
      if (os_log_type_enabled(v9, v10))
      {
        *v11 = 0;
        _os_log_impl(&dword_2424DF000, v9, v10, "DADBuddyStateObserver: Failed to observe buddy finished notification. Doing periodic polling as a fallback.", v11, 2u);
      }
    }

    [(DADBuddyStateObserver *)self createPeriodicPollingTimer];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __30__DADBuddyStateObserver_start__block_invoke(uint64_t a1)
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_2424DF000, v2, v3, "DADBuddyStateObserver: Received buddy finished notification.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buddyDidFinish];
}

- (void)stopWithAssertQueue:(BOOL)a3
{
  v3 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v5, v6, "DADBuddyStateObserver: Stop observing buddy finished notification.", buf, 2u);
  }

  if (v3)
  {
    dispatch_assert_queue_V2(self->_queue);
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_buddyStatePollingTimer)
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_2424DF000, v7, v6, "DADBuddyStateObserver: Cancelling polling timer.", v11, 2u);
    }

    dispatch_source_cancel(self->_buddyStatePollingTimer);
    buddyStatePollingTimer = self->_buddyStatePollingTimer;
    self->_buddyStatePollingTimer = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (self->_notifyToken != -1)
  {
    v9 = DALoggingwithCategory();
    if (os_log_type_enabled(v9, v6))
    {
      *v10 = 0;
      _os_log_impl(&dword_2424DF000, v9, v6, "DADBuddyStateObserver: Cancelling notification observer.", v10, 2u);
    }

    notify_cancel(self->_notifyToken);
    self->_notifyToken = -1;
  }
}

- (void)createPeriodicPollingTimer
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "DADBuddyStateObserver: Create periodic polling timer.", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (!self->_buddyStatePollingTimer)
  {
    v5 = DALoggingwithCategory();
    if (os_log_type_enabled(v5, v4))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_2424DF000, v5, v4, "DADBuddyStateObserver: Create _buddyStatePollingTimer.", buf, 2u);
    }

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
    buddyStatePollingTimer = self->_buddyStatePollingTimer;
    self->_buddyStatePollingTimer = v6;

    dispatch_source_set_timer(self->_buddyStatePollingTimer, 0, 0xDF8475800uLL, 0x2540BE400uLL);
    objc_initWeak(buf, self);
    v8 = self->_buddyStatePollingTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __51__DADBuddyStateObserver_createPeriodicPollingTimer__block_invoke;
    handler[3] = &unk_278D52A18;
    objc_copyWeak(&v10, buf);
    dispatch_source_set_event_handler(v8, handler);
    dispatch_activate(self->_buddyStatePollingTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __51__DADBuddyStateObserver_createPeriodicPollingTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkBuddyStatus];
}

- (void)checkBuddyStatus
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_2424DF000, v3, v4, "DADBuddyStateObserver: Polling buddy status.", v5, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([objc_opt_class() hasPassedBuddy])
  {
    [(DADBuddyStateObserver *)self buddyDidFinish];
  }
}

- (void)buddyDidFinish
{
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277CF3AF0];
  v5 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v3, v5, "DADBuddyStateObserver: Buddy finished. Stop observing and call handler.", buf, 2u);
  }

  dispatch_assert_queue_V2(self->_queue);
  if ([(DADBuddyStateObserver *)self isRunning])
  {
    [(DADBuddyStateObserver *)self stop];
    v6 = [(DADBuddyStateObserver *)self buddyDidFinishHandler];
    (*(v6 + 16))();
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(v4 + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *v8 = 0;
      _os_log_impl(&dword_2424DF000, v6, v7, "DADBuddyStateObserver: Already stopped. Will skip calling handler.", v8, 2u);
    }
  }
}

@end