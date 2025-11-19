@interface CMContinuityCaptureMSNExceptionMonitor
+ (id)sharedMonitor;
+ (void)initialize;
- (id)_init;
- (void)decrementExceptionCountForEntity:(int64_t)a3;
- (void)incrementExceptionCountForEntity:(int64_t)a3;
- (void)reset;
@end

@implementation CMContinuityCaptureMSNExceptionMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedMonitor
{
  if (sharedMonitor_sOnceToken != -1)
  {
    +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sMonitor;

  return v3;
}

uint64_t __55__CMContinuityCaptureMSNExceptionMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sMonitor = [[CMContinuityCaptureMSNExceptionMonitor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CMContinuityCaptureMSNExceptionMonitor;
  v2 = [(CMContinuityCaptureMSNExceptionMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("msn-exception-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    entityExceptions = v2->_entityExceptions;
    v2->_entityExceptions = v5;
  }

  return v2;
}

- (void)incrementExceptionCountForEntity:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureMSNExceptionMonitor_incrementExceptionCountForEntity___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureMSNExceptionMonitor_incrementExceptionCountForEntity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    LOBYTE(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v29 = 0;
      v28 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26 = v7;
      v27 = v7;
      v24 = v7;
      v25 = v7;
      v22 = v7;
      v23 = v7;
      v20 = v7;
      v21 = v7;
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v8 = v3[2];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [v8 addObject:v9];

      if (dword_27ECB4D80)
      {
        v29 = 0;
        v28 = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26 = v11;
        v27 = v11;
        v24 = v11;
        v25 = v11;
        v22 = v11;
        v23 = v11;
        v20 = v11;
        v21 = v11;
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([v3[2] count] == 1)
      {
        if (dword_27ECB4D80)
        {
          v29 = 0;
          v28 = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v26 = v13;
          v27 = v13;
          v24 = v13;
          v25 = v13;
          v22 = v13;
          v23 = v13;
          v20 = v13;
          v21 = v13;
          v14 = v29;
          if (os_log_type_enabled(v12, v28))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v18 = 136315138;
            v19 = "[CMContinuityCaptureMSNExceptionMonitor incrementExceptionCountForEntity:]_block_invoke";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MSNMonitorBeginException();
      }
    }
  }
}

- (void)decrementExceptionCountForEntity:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__CMContinuityCaptureMSNExceptionMonitor_decrementExceptionCountForEntity___block_invoke;
  block[3] = &unk_278D5D2A0;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __75__CMContinuityCaptureMSNExceptionMonitor_decrementExceptionCountForEntity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      v6 = v3[2];
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [v6 removeObject:v7];

      if (dword_27ECB4D80)
      {
        v29 = 0;
        v28 = OS_LOG_TYPE_DEFAULT;
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v26 = v9;
        v27 = v9;
        v24 = v9;
        v25 = v9;
        v22 = v9;
        v23 = v9;
        v20 = v9;
        v21 = v9;
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (![v3[2] count])
      {
        if (dword_27ECB4D80)
        {
          v29 = 0;
          v28 = OS_LOG_TYPE_DEFAULT;
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v26 = v13;
          v27 = v13;
          v24 = v13;
          v25 = v13;
          v22 = v13;
          v23 = v13;
          v20 = v13;
          v21 = v13;
          v14 = v29;
          if (os_log_type_enabled(v12, v28))
          {
            v15 = v14;
          }

          else
          {
            v15 = v14 & 0xFFFFFFFE;
          }

          if (v15)
          {
            v18 = 136315138;
            v19 = "[CMContinuityCaptureMSNExceptionMonitor decrementExceptionCountForEntity:]_block_invoke";
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        MSNMonitorEndException();
      }
    }

    else if (dword_27ECB4D80)
    {
      v29 = 0;
      v28 = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26 = v11;
      v27 = v11;
      v24 = v11;
      v25 = v11;
      v22 = v11;
      v23 = v11;
      v20 = v11;
      v21 = v11;
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (void)reset
{
  if (dword_27ECB4D80)
  {
    v17 = 0;
    v16 = 0;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v4;
    v15 = v4;
    v12 = v4;
    v13 = v4;
    v10 = v4;
    v11 = v4;
    *location = v4;
    v9 = v4;
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_initWeak(location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CMContinuityCaptureMSNExceptionMonitor_reset__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v7, location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(location);
}

void __47__CMContinuityCaptureMSNExceptionMonitor_reset__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] removeAllObjects];
    WeakRetained = v2;
  }
}

@end