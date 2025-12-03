@interface HMISystemResourceUsageMonitorImpl
- (HMISystemResourceUsage)currentSystemResourceUsage;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (HMISystemResourceUsageMonitorImpl)initWithProductClass:(int64_t)class workQueue:(id)queue;
- (float)maxAnalysisFPS;
- (unint64_t)maxNumberOfAnalyzers;
- (void)setDelegate:(id)delegate;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitorImpl

- (HMISystemResourceUsageMonitorImpl)initWithProductClass:(int64_t)class workQueue:(id)queue
{
  v23 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = HMISystemResourceUsageMonitorImpl;
  v8 = [(HMISystemResourceUsageMonitorImpl *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workQueue, queue);
    if (class == 3)
    {
      v10 = [[HMISystemResourceUsageMonitoriPad alloc] initWithWorkQueue:queueCopy];
      resourceUsageMonitor = v9->_resourceUsageMonitor;
      v9->_resourceUsageMonitor = v10;
    }

    if (!v9->_resourceUsageMonitor)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = HMFProductClassToString();
        *buf = 138543618;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Unsupported product class:%@ for system resource usage monitoring", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    v16 = v9;
  }

  return v9;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [resourceUsageMonitor setDelegate:delegateCopy];
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  delegate = [resourceUsageMonitor delegate];

  return delegate;
}

- (void)start
{
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [resourceUsageMonitor start];
}

- (HMISystemResourceUsage)currentSystemResourceUsage
{
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  currentSystemResourceUsage = [resourceUsageMonitor currentSystemResourceUsage];

  return currentSystemResourceUsage;
}

- (unint64_t)maxNumberOfAnalyzers
{
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  maxNumberOfAnalyzers = [resourceUsageMonitor maxNumberOfAnalyzers];

  return maxNumberOfAnalyzers;
}

- (float)maxAnalysisFPS
{
  workQueue = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  resourceUsageMonitor = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [resourceUsageMonitor maxAnalysisFPS];
  v6 = v5;

  return v6;
}

@end