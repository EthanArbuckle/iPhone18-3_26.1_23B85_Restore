@interface LKAttentionAwareIdleTimerClient
- (LKAttentionAwareIdleTimerClient)initWithClientDelegate:(id)a3 timeout:(double)a4 queue:(id)a5;
- (LKAttentionAwareIdleTimerDelegate)clientDelegate;
- (void)_wakeupDeviceAfterInterval:(double)a3;
- (void)dealloc;
- (void)pause;
- (void)resume;
@end

@implementation LKAttentionAwareIdleTimerClient

- (LKAttentionAwareIdleTimerClient)initWithClientDelegate:(id)a3 timeout:(double)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = LKAttentionAwareIdleTimerClient;
  v10 = [(LKAttentionAwareIdleTimerClient *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_clientDelegate, v8);
    v11->_timeout = a4;
    objc_storeStrong(&v11->_queue, a5);
  }

  return v11;
}

- (void)dealloc
{
  v3 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25618F000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating attention aware timer...", buf, 2u);
  }

  handle = self->_handle;
  IOPMUnregisterNotification();
  v5.receiver = self;
  v5.super_class = LKAttentionAwareIdleTimerClient;
  [(LKAttentionAwareIdleTimerClient *)&v5 dealloc];
}

- (void)resume
{
  v3 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25618F000, v3, OS_LOG_TYPE_DEFAULT, "Resuming idle timer...", buf, 2u);
  }

  queue = self->_queue;
  [(LKAttentionAwareIdleTimerClient *)self setHandle:IOPMScheduleUserActivityLevelNotificationWithTimeout(), MEMORY[0x277D85DD0], 3221225472, __41__LKAttentionAwareIdleTimerClient_resume__block_invoke, &unk_2798262E0, self, 30];
  if (!self->_handle)
  {
    v5 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(LKAttentionAwareIdleTimerClient *)v5 resume];
    }
  }
}

void __41__LKAttentionAwareIdleTimerClient_resume__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_25618F000, v6, OS_LOG_TYPE_DEFAULT, "Event received: %llu, mostSignificantActivity: %llu", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  if (a2)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      *(v7 + 40) = v8 | 0x8000000000000000;
      ++*(*(a1 + 32) + 40);
    }
  }

  else
  {
    v9 = *(v7 + 16) - *(a1 + 40);
    if (v9 >= 1)
    {
      [v7 _wakeupDeviceAfterInterval:v9];
      v7 = *(a1 + 32);
    }

    v10 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    *(v7 + 40) = v10;
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 24));
    if (v11)
    {
      v12 = LKLogDefault;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEBUG))
      {
        __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_cold_1(v10, v9, v12);
      }

      v13 = dispatch_time(0x8000000000000000, 1000000000 * v9);
      dispatch_source_set_timer(v11, v13, v9, 0);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_3;
      handler[3] = &unk_2798262B8;
      v14 = *(a1 + 32);
      v19 = v10;
      handler[4] = v14;
      v15 = v11;
      v18 = v15;
      dispatch_source_set_event_handler(v15, handler);
      dispatch_resume(v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_3(uint64_t a1)
{
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEBUG))
  {
    __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_3_cold_1(a1, v2);
  }

  dispatch_source_cancel(*(a1 + 40));
  if (*(a1 + 48) == *(*(a1 + 32) + 40))
  {
    v3 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEBUG))
    {
      __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_3_cold_2(v3);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained idleTimerFiredForTimeout:*(*(a1 + 32) + 16)];
  }
}

- (void)pause
{
  handle = self->_handle;
  IOPMUnregisterNotification();

  [(LKAttentionAwareIdleTimerClient *)self setHandle:0];
}

- (void)_wakeupDeviceAfterInterval:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[LKAttentionAwareIdleTimerClient _wakeupDeviceAfterInterval:]";
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "%s %f", buf, 0x16u);
  }

  v12[0] = @"logind";
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{a3, @"scheduledby", @"time"}];
  v11[2] = @"leeway";
  v12[1] = v5;
  v12[2] = &unk_28683CE88;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v7 = IOPMRequestSysWake();
  if (v7)
  {
    v8 = v7;
    v9 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(LKAttentionAwareIdleTimerClient *)v8 _wakeupDeviceAfterInterval:v9];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (LKAttentionAwareIdleTimerDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);

  return WeakRetained;
}

void __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&dword_25618F000, log, OS_LOG_TYPE_DEBUG, "Scheduling dispatch timer #%lu for %lds", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __41__LKAttentionAwareIdleTimerClient_resume__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 40);
  v5 = 134218240;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_25618F000, a2, OS_LOG_TYPE_DEBUG, "dispatch timer fired. Token: %lu, idle timer index: %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_wakeupDeviceAfterInterval:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_25618F000, a2, OS_LOG_TYPE_ERROR, "Failed to request system wake: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end