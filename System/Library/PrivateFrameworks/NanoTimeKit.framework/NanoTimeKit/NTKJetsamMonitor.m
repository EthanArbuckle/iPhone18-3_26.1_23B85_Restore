@interface NTKJetsamMonitor
+ (id)sharedJetsamMonitor;
- (NTKJetsamMonitor)init;
- (void)decrementTransactionCount;
- (void)incrementTransactionCount;
@end

@implementation NTKJetsamMonitor

uint64_t __45__NTKJetsamMonitor_incrementTransactionCount__block_invoke_69(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  [*(*(a1 + 32) + 32) getInfo:v5];
  v2 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 24);
    *buf = 134218496;
    v8 = v3;
    v9 = 2048;
    v10 = vcvts_n_f32_s64(v5[0], 0xAuLL);
    v11 = 2048;
    v12 = vcvts_n_f32_s64(v6, 0xAuLL);
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "NTKJetsamMonitor: %ld transactions, footprint = %.3f, max: %.3f", buf, 0x20u);
  }

  return [*(*(a1 + 32) + 32) resetInterval];
}

+ (id)sharedJetsamMonitor
{
  if (sharedJetsamMonitor_onceToken != -1)
  {
    +[NTKJetsamMonitor sharedJetsamMonitor];
  }

  v3 = sharedJetsamMonitor_monitor;

  return v3;
}

void __39__NTKJetsamMonitor_sharedJetsamMonitor__block_invoke()
{
  if (!sharedJetsamMonitor_monitor)
  {
    v0 = objc_opt_new();
    v1 = sharedJetsamMonitor_monitor;
    sharedJetsamMonitor_monitor = v0;
  }
}

- (NTKJetsamMonitor)init
{
  v7.receiver = self;
  v7.super_class = NTKJetsamMonitor;
  v2 = [(NTKJetsamMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("NTKJetsamMonitorQ", v3);
    monitorQ = v2->_monitorQ;
    v2->_monitorQ = v4;

    v2->_transactionCount = 0;
  }

  return v2;
}

- (void)incrementTransactionCount
{
  monitorQ = self->_monitorQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKJetsamMonitor_incrementTransactionCount__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(monitorQ, block);
}

void __45__NTKJetsamMonitor_incrementTransactionCount__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = v2 + 1;
  if (!v2)
  {
    v4 = objc_opt_new();
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    memset(v16, 0, sizeof(v16));
    [*(*(a1 + 32) + 32) getInfo:v16];
    v7 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = vcvts_n_f32_s64(v16[0], 0xAuLL);
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "NTKJetsamMonitor: start logging, footprint = %.3f", buf, 0xCu);
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 8));
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;

    v11 = *(*(a1 + 32) + 16);
    v12 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v11, v12, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__NTKJetsamMonitor_incrementTransactionCount__block_invoke_69;
    v15[3] = &unk_27877DB10;
    v15[4] = v13;
    dispatch_source_set_event_handler(v14, v15);
    dispatch_resume(*(*(a1 + 32) + 16));
  }
}

- (void)decrementTransactionCount
{
  monitorQ = self->_monitorQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKJetsamMonitor_decrementTransactionCount__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(monitorQ, block);
}

void __45__NTKJetsamMonitor_decrementTransactionCount__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2 <= 0)
  {
    v10 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __45__NTKJetsamMonitor_decrementTransactionCount__block_invoke_cold_1(v10);
    }
  }

  else
  {
    v3 = v2 - 1;
    *(v1 + 24) = v3;
    if (!v3)
    {
      v11[0] = 0;
      v11[1] = 0;
      v12 = 0;
      [*(*(a1 + 32) + 32) getInfo:v11];
      v5 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v14 = vcvts_n_f32_s64(v11[0], 0xAuLL);
        v15 = 2048;
        v16 = vcvts_n_f32_s64(v12, 0xAuLL);
        _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKJetsamMonitor: stop logging, footprint = %.3f, max: %.3f", buf, 0x16u);
      }

      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *(v8 + 32) = 0;
    }
  }
}

@end