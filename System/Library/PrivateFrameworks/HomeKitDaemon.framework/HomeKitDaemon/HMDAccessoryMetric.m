@interface HMDAccessoryMetric
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDAccessoryMetric)initWithAccessory:(id)a3;
- (id)logIdentifier;
- (void)_initDiagnosticCounters;
- (void)submitMetricAndStop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAccessoryMetric

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 name];
  v5 = [v2 identifier];
  v6 = [v3 stringWithFormat:@"%@ : %@", v4, v5];

  return v6;
}

- (void)timerDidFire:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryMetric *)self accessory];
  v6 = [(HMDAccessoryMetric *)self accessoryMetricTimer];

  if (v6 == v4)
  {
    v7 = [(HMDAccessoryMetric *)self sessionMetric];
    [v7 submitMetric];

    v8 = [(HMDAccessoryMetric *)self sessionMetric];
    [v8 resetSessionMetric];

    if (!v5)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory disappeared, stopping accessory metric timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = [(HMDAccessoryMetric *)v10 accessoryMetricTimer];
      [v13 cancel];

      [(HMDAccessoryMetric *)v10 setAccessoryMetricTimer:0];
    }

    v14 = [(HMDAccessoryMetric *)self diagnosticsMetric];
    v15 = [v14 collectMetric];

    v16 = [(HMDAccessoryMetric *)self previousDiagnosticMetrics];

    v17 = 0;
    if (v16 && v15)
    {
      v42 = v5;
      v43 = v4;
      v17 = [v15 mutableCopy];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [(HMDAccessoryMetric *)self deltaCounters];
      v18 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v45 = *v47;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            v21 = v17;
            if (*v47 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v46 + 1) + 8 * i);
            v23 = [v15 objectForKeyedSubscript:v22];
            [(HMDAccessoryMetric *)self previousDiagnosticMetrics];
            v25 = v24 = self;
            v26 = [v25 objectForKeyedSubscript:v22];

            v27 = MEMORY[0x277CCABB0];
            v28 = [v23 intValue];
            v29 = v28 - [v26 intValue];
            v30 = v27;
            self = v24;
            v31 = [v30 numberWithInt:v29];
            v17 = v21;
            [v21 setObject:v31 forKeyedSubscript:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v19);
      }

      v5 = v42;
      v4 = v43;
    }

    [(HMDAccessoryMetric *)self setPreviousDiagnosticMetrics:v15];
    if ([v17 count])
    {
      v32 = MEMORY[0x277CCABB0];
      v33 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      v34 = [v33 metricCollectionStartTime];
      [v34 timeIntervalSinceNow];
      LODWORD(v36) = llround(fabs(v35));
      v37 = [v32 numberWithInt:v36];
      [v17 setObject:v37 forKeyedSubscript:@"HMMTRAccessoryDiagnosticLogEventDurationInSeconds"];

      v38 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      [v38 submitMetric:v17];

      v39 = [MEMORY[0x277CBEAA8] date];
      v40 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      [v40 setMetricCollectionStartTime:v39];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)submitMetricAndStop
{
  v3 = [(HMDAccessoryMetric *)self sessionMetric];
  [v3 submitMetric];

  v4 = [(HMDAccessoryMetric *)self accessoryMetricTimer];
  [v4 suspend];
}

- (void)_initDiagnosticCounters
{
  v20[16] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D17BC0];
  v20[0] = *MEMORY[0x277D17BB8];
  v20[1] = v3;
  v4 = *MEMORY[0x277D17C20];
  v20[2] = *MEMORY[0x277D17C18];
  v20[3] = v4;
  v5 = *MEMORY[0x277D17C38];
  v20[4] = *MEMORY[0x277D17C30];
  v20[5] = v5;
  v6 = *MEMORY[0x277D17C48];
  v20[6] = *MEMORY[0x277D17C40];
  v20[7] = v6;
  v7 = *MEMORY[0x277D17BE8];
  v20[8] = *MEMORY[0x277D17C50];
  v20[9] = v7;
  v8 = *MEMORY[0x277D17BE0];
  v20[10] = *MEMORY[0x277D17BD8];
  v20[11] = v8;
  v9 = *MEMORY[0x277D17BF8];
  v20[12] = *MEMORY[0x277D17BF0];
  v20[13] = v9;
  v10 = *MEMORY[0x277D17C08];
  v20[14] = *MEMORY[0x277D17C00];
  v20[15] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:16];
  deltaCounters = self->_deltaCounters;
  self->_deltaCounters = v11;

  v13 = [(HMDAccessoryMetric *)self previousDiagnosticMetrics];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = [(HMDAccessoryMetric *)self diagnosticsMetric];
    v16 = [v15 metric];
    [(HMDAccessoryMetric *)self setPreviousDiagnosticMetrics:v16];

    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = [(HMDAccessoryMetric *)self diagnosticsMetric];
    [v18 setMetricCollectionStartTime:v17];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryMetric)initWithAccessory:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HMDAccessoryMetric;
  v5 = [(HMDAccessoryMetric *)&v25 init];
  if (v5)
  {
    v6 = dispatch_queue_create("Session Metrics", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    objc_storeWeak(&v5->_accessory, v4);
    v8 = [[HMDAccessorySessionMetric alloc] initWithAccessory:v4 workQueue:v5->_workQueue];
    sessionMetric = v5->_sessionMetric;
    v5->_sessionMetric = v8;

    v10 = [[HMDAccessoryDiagnosticsMetric alloc] initWithAccessory:v4];
    diagnosticsMetric = v5->_diagnosticsMetric;
    v5->_diagnosticsMetric = v10;

    v12 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v13 = [v12 preferenceForKey:@"HMDAccessorySessionMetricSubmissionInterval"];
    v14 = [v13 numberValue];

    if (v14)
    {
      [v14 floatValue];
      v16 = v15;
    }

    else
    {
      v16 = 14400.0;
    }

    v5->_timerInterval = (v16 + (HMFRandomUInt32() % (v16 * 0.1)));
    v17 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:v5->_timerInterval];
    accessoryMetricTimer = v5->_accessoryMetricTimer;
    v5->_accessoryMetricTimer = v17;

    [(HMFTimer *)v5->_accessoryMetricTimer setDelegateQueue:v5->_workQueue];
    [(HMFTimer *)v5->_accessoryMetricTimer setDelegate:v5];
    [(HMFTimer *)v5->_accessoryMetricTimer resume];
    [(HMDAccessoryMetric *)v5 _initDiagnosticCounters];
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      timerInterval = v5->_timerInterval;
      *buf = 138543618;
      v27 = v21;
      v28 = 2048;
      v29 = timerInterval;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[AccessoryMetric] Initialized session metric for accessory with submission interval: %f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_101180 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_101180, &__block_literal_global_148_101181);
  }

  v3 = logCategory__hmf_once_v5_101182;

  return v3;
}

void __33__HMDAccessoryMetric_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_101182;
  logCategory__hmf_once_v5_101182 = v1;
}

@end