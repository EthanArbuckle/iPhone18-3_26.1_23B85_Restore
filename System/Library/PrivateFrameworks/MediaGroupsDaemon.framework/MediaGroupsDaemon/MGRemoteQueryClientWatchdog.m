@interface MGRemoteQueryClientWatchdog
+ (id)watchdogForTarget:(id)a3 dispatchQueue:(id)a4 delegate:(id)a5 usingSession:(id)a6;
- (MGRemoteQueryClient)ping;
- (MGRemoteQueryClientWatchdogDelegate)delegate;
- (NSString)description;
- (id)_initWithTarget:(id)a3 dispatchQueue:(id)a4 delegate:(id)a5 usingSession:(id)a6;
- (id)pingClient;
- (void)_pingFinished:(BOOL)a3;
- (void)_pingStart;
- (void)_timerCancel;
- (void)_timerFired;
- (void)_timerInit;
- (void)_timerReschedule;
- (void)_withPingLock:(id)a3;
- (void)clientInvalidated:(id)a3 withError:(id)a4;
- (void)dealloc;
- (void)reset;
- (void)setPing:(id)a3;
@end

@implementation MGRemoteQueryClientWatchdog

+ (id)watchdogForTarget:(id)a3 dispatchQueue:(id)a4 delegate:(id)a5 usingSession:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithTarget:v13 dispatchQueue:v12 delegate:v11 usingSession:v10];

  return v14;
}

- (id)_initWithTarget:(id)a3 dispatchQueue:(id)a4 delegate:(id)a5 usingSession:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = MGRemoteQueryClientWatchdog;
  v15 = [(MGRemoteQueryClientWatchdog *)&v21 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    v15->_pingLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_target, a3);
    objc_storeStrong(p_isa + 3, a4);
    objc_storeWeak(p_isa + 5, v13);
    objc_storeStrong(p_isa + 6, a6);
    v17 = [p_isa dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__MGRemoteQueryClientWatchdog__initWithTarget_dispatchQueue_delegate_usingSession___block_invoke;
    block[3] = &unk_27989ED90;
    v20 = p_isa;
    dispatch_async(v17, block);
  }

  return p_isa;
}

- (void)dealloc
{
  [(MGRemoteQueryClientWatchdog *)self _timerCancel];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryClientWatchdog;
  [(MGRemoteQueryClientWatchdog *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryClientWatchdog *)self target];
  v7 = [(MGRemoteQueryClientWatchdog *)self timer];
  v8 = [(MGRemoteQueryClientWatchdog *)self pingClient];
  v9 = [v3 stringWithFormat:@"<%@: %p, _target = %@, _timer = %p, _ping = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)reset
{
  v3 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MGRemoteQueryClientWatchdog_reset__block_invoke;
  block[3] = &unk_27989ED90;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)pingClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__MGRemoteQueryClientWatchdog_pingClient__block_invoke;
  v4[3] = &unk_27989EFC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MGRemoteQueryClientWatchdog *)self _withPingLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __41__MGRemoteQueryClientWatchdog_pingClient__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ping];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_timerInit
{
  v3 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);

  objc_storeStrong(&self->_timer, v5);
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __41__MGRemoteQueryClientWatchdog__timerInit__block_invoke;
  v9 = &unk_27989EFE8;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v5, &v6);
  [(MGRemoteQueryClientWatchdog *)self _timerReschedule:v6];
  dispatch_resume(v5);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __41__MGRemoteQueryClientWatchdog__timerInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _timerFired];
    WeakRetained = v2;
  }
}

- (void)_timerReschedule
{
  v3 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  source = [(MGRemoteQueryClientWatchdog *)self timer];
  v4 = dispatch_walltime(0, 900000000000);
  dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_timerCancel
{
  v2 = [(MGRemoteQueryClientWatchdog *)self timer];
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v2);
    v2 = v3;
  }
}

- (void)_timerFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = MGLogForCategory(6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MGRemoteQueryClientWatchdog *)self target];
    v7 = 134218242;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_25863A000, v4, OS_LOG_TYPE_DEFAULT, "%p watchdog fired, pinging target %@", &v7, 0x16u);
  }

  [(MGRemoteQueryClientWatchdog *)self _pingStart];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_pingStart
{
  v3 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__MGRemoteQueryClientWatchdog__pingStart__block_invoke;
  v4[3] = &unk_27989ED90;
  v4[4] = self;
  [(MGRemoteQueryClientWatchdog *)self _withPingLock:v4];
}

void __41__MGRemoteQueryClientWatchdog__pingStart__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) ping];

  if (!v2)
  {
    v3 = +[MGRemoteQueryClientHandlerPing handler];
    v6 = [*(a1 + 32) target];
    v7 = [*(a1 + 32) dispatchQueue];
    v8 = *(a1 + 32);
    v9 = [v8 session];
    v5 = [MGRemoteQueryClient clientWithHandler:v3 target:v6 dispatchQueue:v7 delegate:v8 usingSession:v9];

    [*(a1 + 32) setPing:v5];
    v10 = MGLogForCategory(6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 134218242;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p watchdog pinging with %@", &v13, 0x16u);
    }

    goto LABEL_7;
  }

  v3 = MGLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v4 ping];
    v13 = 134218242;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    _os_log_error_impl(&dword_25863A000, v3, OS_LOG_TYPE_ERROR, "%p watchdog ping already in process with %@", &v13, 0x16u);
LABEL_7:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_pingFinished:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__MGRemoteQueryClientWatchdog__pingFinished___block_invoke;
  v12[3] = &unk_27989ED90;
  v12[4] = self;
  [(MGRemoteQueryClientWatchdog *)self _withPingLock:v12];
  v6 = MGLogForCategory(6);
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = self;
      _os_log_debug_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEBUG, "%p watchdog ping successful", buf, 0xCu);
    }

    [(MGRemoteQueryClientWatchdog *)self _timerReschedule];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [(MGRemoteQueryClientWatchdog *)self target];
      *buf = 134218242;
      v14 = self;
      v15 = 2112;
      v16 = v11;
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, "%p watchdog ping failed for %@", buf, 0x16u);
    }

    v8 = [(MGRemoteQueryClientWatchdog *)self delegate];
    v9 = v8;
    if (v8)
    {
      [v8 watchdogFired:self];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_withPingLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_pingLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_pingLock);
}

- (void)clientInvalidated:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MGRemoteQueryClientWatchdog *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MGRemoteQueryClientWatchdog_clientInvalidated_withError___block_invoke;
  block[3] = &unk_27989F010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__MGRemoteQueryClientWatchdog_clientInvalidated_withError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__MGRemoteQueryClientWatchdog_clientInvalidated_withError___block_invoke_2;
  v10[3] = &unk_27989EEF8;
  v13 = &v14;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v11 = v3;
  v12 = v4;
  [v2 _withPingLock:v10];
  if (*(v15 + 24) == 1)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = MGLogForCategory(6);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        *buf = 134218242;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p watchdog ping failed with error %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) _pingFinished:v5 == 0];
  }

  _Block_object_dispose(&v14, 8);
  v7 = *MEMORY[0x277D85DE8];
}

void __59__MGRemoteQueryClientWatchdog_clientInvalidated_withError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ping];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isEqual:v3];
}

- (MGRemoteQueryClient)ping
{
  os_unfair_lock_assert_owner(&self->_pingLock);
  ping = self->_ping;

  return ping;
}

- (void)setPing:(id)a3
{
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_pingLock);
  ping = self->_ping;
  p_ping = &self->_ping;
  if (ping != v7 && ([(MGRemoteQueryClient *)v7 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(p_ping, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (MGRemoteQueryClientWatchdogDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end