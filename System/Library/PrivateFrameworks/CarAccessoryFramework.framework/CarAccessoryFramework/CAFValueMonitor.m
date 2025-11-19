@interface CAFValueMonitor
- (BOOL)_locked_receivedAllValues;
- (BOOL)receivedAllValues;
- (BOOL)valueReceivedFor:(id)a3;
- (CAFValueMonitor)initWithDelegate:(id)a3;
- (CAFValueMonitorDelegate)delegate;
- (void)monitorForValue:(id)a3;
- (void)setSignaledReadyToMonitor:(BOOL)a3;
- (void)signalReadyToMonitor;
@end

@implementation CAFValueMonitor

- (CAFValueMonitor)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAFValueMonitor;
  v5 = [(CAFValueMonitor *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = objc_opt_new();
    monitoringForValue = v6->_monitoringForValue;
    v6->_monitoringForValue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = [v4 uniqueIdentifier];
    v14 = [v11 stringWithFormat:@"com.apple.CarAccessoryFramework.%@.%@.valueMonitor", v12, v13];
    v15 = dispatch_queue_create([v14 UTF8String], v10);
    monitorQueue = v6->_monitorQueue;
    v6->_monitorQueue = v15;
  }

  return v6;
}

- (BOOL)receivedAllValues
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CAFValueMonitor *)self monitorQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__CAFValueMonitor_receivedAllValues__block_invoke;
  v5[3] = &unk_27890D4F8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __36__CAFValueMonitor_receivedAllValues__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _locked_receivedAllValues];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_locked_receivedAllValues
{
  v3 = [(CAFValueMonitor *)self monitoringForValue];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CAFValueMonitor *)self signaledReadyToMonitor];
  }

  return v4;
}

- (void)monitorForValue:(id)a3
{
  v4 = a3;
  v5 = [(CAFValueMonitor *)self monitorQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CAFValueMonitor_monitorForValue___block_invoke;
  v7[3] = &unk_27890D548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __35__CAFValueMonitor_monitorForValue___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) monitoringForValue];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  [v3 addObject:v5];

  if ([*v2 signaledReadyToMonitor])
  {
    v6 = CAFValueMonitorLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __35__CAFValueMonitor_monitorForValue___block_invoke_cold_1(v2, v4);
    }
  }
}

- (void)signalReadyToMonitor
{
  v3 = [(CAFValueMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CAFValueMonitor_signalReadyToMonitor__block_invoke;
  block[3] = &unk_27890D4D0;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __39__CAFValueMonitor_signalReadyToMonitor__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) signaledReadyToMonitor];
  if ((result & 1) == 0)
  {
    v3 = CAFValueMonitorLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __39__CAFValueMonitor_signalReadyToMonitor__block_invoke_cold_1(v1, v3);
    }

    return [*v1 setSignaledReadyToMonitor:1];
  }

  return result;
}

- (BOOL)valueReceivedFor:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CAFValueMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CAFValueMonitor_valueReceivedFor___block_invoke;
  block[3] = &unk_27890D900;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __36__CAFValueMonitor_valueReceivedFor___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) monitoringForValue];
  v4 = (a1 + 40);
  v5 = [v3 containsObject:*(a1 + 40)];

  v6 = *v2;
  if (v5)
  {
    v7 = [v6 monitoringForValue];
    [v7 removeObject:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _locked_receivedAllValues];
    v8 = CAFValueMonitorLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __36__CAFValueMonitor_valueReceivedFor___block_invoke_cold_1(v2, v4);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [v6 _locked_receivedAllValues];
  }
}

- (void)setSignaledReadyToMonitor:(BOOL)a3
{
  if (self->_signaledReadyToMonitor != a3)
  {
    if (a3)
    {
      self->_signaledReadyToMonitor = a3;
    }

    else
    {
      v3 = CAFGeneralLogging();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [CAFValueMonitor setSignaledReadyToMonitor:v3];
      }
    }
  }
}

- (CAFValueMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __35__CAFValueMonitor_monitorForValue___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  [*a1 signaledReadyToMonitor];
  v6 = *a2;
  v7 = [*a1 monitoringForValue];
  [v7 count];
  OUTLINED_FUNCTION_0_2(&dword_231618000, v8, v9, "%s %@%@ added %@ monitoring.count=%ld ", v10, v11, v12, v13, 2u);

  v14 = *MEMORY[0x277D85DE8];
}

void __39__CAFValueMonitor_signalReadyToMonitor__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  v6 = [*a1 monitoringForValue];
  v7 = [v6 count];
  v8 = [*a1 monitoringForValue];
  v9 = [v8 allObjects];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v12 = 136315906;
  v13 = "[CAFValueMonitor signalReadyToMonitor]_block_invoke";
  v14 = 2112;
  v15 = v5;
  v16 = 2048;
  v17 = v7;
  v18 = 2112;
  v19 = v10;
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "%s %@ %ld [%@]", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

void __36__CAFValueMonitor_valueReceivedFor___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [*a1 delegate];
  v5 = [v4 uniqueIdentifier];
  v6 = [*a1 monitoringForValue];
  [v6 count];
  [*a1 signaledReadyToMonitor];
  v7 = *a2;
  OUTLINED_FUNCTION_0_2(&dword_231618000, v8, v9, "%s %@ count=%ld signaledReadyToMonitor=%@ recieved %@", v10, v11, v12, v13, 2u);

  v14 = *MEMORY[0x277D85DE8];
}

@end