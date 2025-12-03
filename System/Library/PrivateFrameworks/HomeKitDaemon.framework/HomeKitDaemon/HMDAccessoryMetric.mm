@interface HMDAccessoryMetric
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDAccessoryMetric)initWithAccessory:(id)accessory;
- (id)logIdentifier;
- (void)_initDiagnosticCounters;
- (void)submitMetricAndStop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAccessoryMetric

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryMetric *)self accessory];
  v3 = MEMORY[0x277CCACA8];
  name = [accessory name];
  identifier = [accessory identifier];
  v6 = [v3 stringWithFormat:@"%@ : %@", name, identifier];

  return v6;
}

- (void)timerDidFire:(id)fire
{
  v53 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  accessory = [(HMDAccessoryMetric *)self accessory];
  accessoryMetricTimer = [(HMDAccessoryMetric *)self accessoryMetricTimer];

  if (accessoryMetricTimer == fireCopy)
  {
    sessionMetric = [(HMDAccessoryMetric *)self sessionMetric];
    [sessionMetric submitMetric];

    sessionMetric2 = [(HMDAccessoryMetric *)self sessionMetric];
    [sessionMetric2 resetSessionMetric];

    if (!accessory)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Accessory disappeared, stopping accessory metric timer", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      accessoryMetricTimer2 = [(HMDAccessoryMetric *)selfCopy accessoryMetricTimer];
      [accessoryMetricTimer2 cancel];

      [(HMDAccessoryMetric *)selfCopy setAccessoryMetricTimer:0];
    }

    diagnosticsMetric = [(HMDAccessoryMetric *)self diagnosticsMetric];
    collectMetric = [diagnosticsMetric collectMetric];

    previousDiagnosticMetrics = [(HMDAccessoryMetric *)self previousDiagnosticMetrics];

    v17 = 0;
    if (previousDiagnosticMetrics && collectMetric)
    {
      v42 = accessory;
      v43 = fireCopy;
      v17 = [collectMetric mutableCopy];
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
            v23 = [collectMetric objectForKeyedSubscript:v22];
            [(HMDAccessoryMetric *)self previousDiagnosticMetrics];
            v25 = v24 = self;
            v26 = [v25 objectForKeyedSubscript:v22];

            v27 = MEMORY[0x277CCABB0];
            intValue = [v23 intValue];
            v29 = intValue - [v26 intValue];
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

      accessory = v42;
      fireCopy = v43;
    }

    [(HMDAccessoryMetric *)self setPreviousDiagnosticMetrics:collectMetric];
    if ([v17 count])
    {
      v32 = MEMORY[0x277CCABB0];
      diagnosticsMetric2 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      metricCollectionStartTime = [diagnosticsMetric2 metricCollectionStartTime];
      [metricCollectionStartTime timeIntervalSinceNow];
      LODWORD(v36) = llround(fabs(v35));
      v37 = [v32 numberWithInt:v36];
      [v17 setObject:v37 forKeyedSubscript:@"HMMTRAccessoryDiagnosticLogEventDurationInSeconds"];

      diagnosticsMetric3 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      [diagnosticsMetric3 submitMetric:v17];

      date = [MEMORY[0x277CBEAA8] date];
      diagnosticsMetric4 = [(HMDAccessoryMetric *)self diagnosticsMetric];
      [diagnosticsMetric4 setMetricCollectionStartTime:date];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)submitMetricAndStop
{
  sessionMetric = [(HMDAccessoryMetric *)self sessionMetric];
  [sessionMetric submitMetric];

  accessoryMetricTimer = [(HMDAccessoryMetric *)self accessoryMetricTimer];
  [accessoryMetricTimer suspend];
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

  previousDiagnosticMetrics = [(HMDAccessoryMetric *)self previousDiagnosticMetrics];
  v14 = [previousDiagnosticMetrics count];

  if (!v14)
  {
    diagnosticsMetric = [(HMDAccessoryMetric *)self diagnosticsMetric];
    metric = [diagnosticsMetric metric];
    [(HMDAccessoryMetric *)self setPreviousDiagnosticMetrics:metric];

    date = [MEMORY[0x277CBEAA8] date];
    diagnosticsMetric2 = [(HMDAccessoryMetric *)self diagnosticsMetric];
    [diagnosticsMetric2 setMetricCollectionStartTime:date];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryMetric)initWithAccessory:(id)accessory
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v25.receiver = self;
  v25.super_class = HMDAccessoryMetric;
  v5 = [(HMDAccessoryMetric *)&v25 init];
  if (v5)
  {
    v6 = dispatch_queue_create("Session Metrics", 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v6;

    objc_storeWeak(&v5->_accessory, accessoryCopy);
    v8 = [[HMDAccessorySessionMetric alloc] initWithAccessory:accessoryCopy workQueue:v5->_workQueue];
    sessionMetric = v5->_sessionMetric;
    v5->_sessionMetric = v8;

    v10 = [[HMDAccessoryDiagnosticsMetric alloc] initWithAccessory:accessoryCopy];
    diagnosticsMetric = v5->_diagnosticsMetric;
    v5->_diagnosticsMetric = v10;

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v13 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDAccessorySessionMetricSubmissionInterval"];
    numberValue = [v13 numberValue];

    if (numberValue)
    {
      [numberValue floatValue];
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