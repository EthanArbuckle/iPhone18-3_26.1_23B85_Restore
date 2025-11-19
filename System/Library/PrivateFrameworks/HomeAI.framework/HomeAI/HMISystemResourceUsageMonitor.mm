@interface HMISystemResourceUsageMonitor
- (HMISystemResourceUsage)currentSystemResourceUsage;
- (HMISystemResourceUsageMonitor)init;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (float)maxAnalysisFPS;
- (unint64_t)maxNumberOfAnalyzers;
- (void)setDelegate:(id)a3;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitor

- (HMISystemResourceUsageMonitor)init
{
  v14.receiver = self;
  v14.super_class = HMISystemResourceUsageMonitor;
  v2 = [(HMISystemResourceUsageMonitor *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0F8E8] productInfo];
    v4 = [v3 productClass];

    v5 = HMIDispatchQueueNameString(v2, 0);
    v6 = [v5 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);

    workQueue = v2->_workQueue;
    v2->_workQueue = v8;
    v10 = v8;

    v11 = [[HMISystemResourceUsageMonitorImpl alloc] initWithProductClass:v4 workQueue:v10];
    systemResourceUsageMonitorImpl = v2->_systemResourceUsageMonitorImpl;
    v2->_systemResourceUsageMonitorImpl = v11;
  }

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMISystemResourceUsageMonitor *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMISystemResourceUsageMonitor_setDelegate___block_invoke;
  v7[3] = &unk_278752818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__HMISystemResourceUsageMonitor_setDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) systemResourceUsageMonitorImpl];
  [v2 setDelegate:v1];
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  v3 = [(HMISystemResourceUsageMonitor *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitor *)self systemResourceUsageMonitorImpl];
  v5 = [v4 delegate];

  return v5;
}

- (HMISystemResourceUsage)currentSystemResourceUsage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(HMISystemResourceUsageMonitor *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMISystemResourceUsageMonitor_currentSystemResourceUsage__block_invoke;
  v6[3] = &unk_278752840;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__HMISystemResourceUsageMonitor_currentSystemResourceUsage__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) systemResourceUsageMonitorImpl];
  v2 = [v5 currentSystemResourceUsage];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)maxNumberOfAnalyzers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(HMISystemResourceUsageMonitor *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMISystemResourceUsageMonitor_maxNumberOfAnalyzers__block_invoke;
  v6[3] = &unk_278752840;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __53__HMISystemResourceUsageMonitor_maxNumberOfAnalyzers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemResourceUsageMonitorImpl];
  *(*(*(a1 + 40) + 8) + 24) = [v2 maxNumberOfAnalyzers];
}

- (float)maxAnalysisFPS
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(HMISystemResourceUsageMonitor *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__HMISystemResourceUsageMonitor_maxAnalysisFPS__block_invoke;
  v6[3] = &unk_278752840;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __47__HMISystemResourceUsageMonitor_maxAnalysisFPS__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) systemResourceUsageMonitorImpl];
  [v3 maxAnalysisFPS];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (void)start
{
  v3 = [(HMISystemResourceUsageMonitor *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMISystemResourceUsageMonitor_start__block_invoke;
  block[3] = &unk_278752868;
  block[4] = self;
  dispatch_async(v3, block);
}

void __38__HMISystemResourceUsageMonitor_start__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) systemResourceUsageMonitorImpl];
  [v1 start];
}

@end