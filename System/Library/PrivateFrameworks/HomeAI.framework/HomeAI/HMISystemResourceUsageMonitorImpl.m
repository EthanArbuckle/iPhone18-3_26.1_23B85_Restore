@interface HMISystemResourceUsageMonitorImpl
- (HMISystemResourceUsage)currentSystemResourceUsage;
- (HMISystemResourceUsageMonitorDelegate)delegate;
- (HMISystemResourceUsageMonitorImpl)initWithProductClass:(int64_t)a3 workQueue:(id)a4;
- (float)maxAnalysisFPS;
- (unint64_t)maxNumberOfAnalyzers;
- (void)setDelegate:(id)a3;
- (void)start;
@end

@implementation HMISystemResourceUsageMonitorImpl

- (HMISystemResourceUsageMonitorImpl)initWithProductClass:(int64_t)a3 workQueue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HMISystemResourceUsageMonitorImpl;
  v8 = [(HMISystemResourceUsageMonitorImpl *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_workQueue, a4);
    if (a3 == 3)
    {
      v10 = [[HMISystemResourceUsageMonitoriPad alloc] initWithWorkQueue:v7];
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [v6 setDelegate:v4];
}

- (HMISystemResourceUsageMonitorDelegate)delegate
{
  v3 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  v5 = [v4 delegate];

  return v5;
}

- (void)start
{
  v3 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [v4 start];
}

- (HMISystemResourceUsage)currentSystemResourceUsage
{
  v3 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  v5 = [v4 currentSystemResourceUsage];

  return v5;
}

- (unint64_t)maxNumberOfAnalyzers
{
  v3 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  v5 = [v4 maxNumberOfAnalyzers];

  return v5;
}

- (float)maxAnalysisFPS
{
  v3 = [(HMISystemResourceUsageMonitorImpl *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMISystemResourceUsageMonitorImpl *)self resourceUsageMonitor];
  [v4 maxAnalysisFPS];
  v6 = v5;

  return v6;
}

@end