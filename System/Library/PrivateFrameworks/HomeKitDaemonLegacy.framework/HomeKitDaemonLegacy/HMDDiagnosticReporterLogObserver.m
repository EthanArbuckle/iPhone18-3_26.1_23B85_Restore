@interface HMDDiagnosticReporterLogObserver
+ (BOOL)isSupportedEvent:(id)a3;
+ (id)domainForEvent:(id)a3;
+ (id)logCategory;
+ (id)subTypeForEvent:(id)a3;
+ (id)supportedEventClasses;
+ (id)typeForEvent:(id)a3;
- (BOOL)shouldSubmitEvent:(id)a3;
- (HMDDiagnosticReporterLogObserver)initWithLogEventDispatcher:(id)a3;
- (HMMLogEventDispatching)logEventDispatcher;
- (void)observeEvent:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation HMDDiagnosticReporterLogObserver

- (HMMLogEventDispatching)logEventDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventDispatcher);

  return WeakRetained;
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isSupportedEvent:v4])
  {
    v5 = [(HMDDiagnosticReporterLogObserver *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke;
    v6[3] = &unk_2797359B0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldSubmitEvent:*(a1 + 40)])
  {
    v2 = [MEMORY[0x277D0F8E0] processInfo];
    v3 = [*(a1 + 32) reporter];
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() domainForEvent:*(a1 + 40)];
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() typeForEvent:*(a1 + 40)];
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() subTypeForEvent:*(a1 + 40)];
    v10 = [v2 name];
    v11 = [v3 signatureWithDomain:v5 type:v7 subType:v9 detectedProcess:v10 triggerThresholdValues:0];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "identifier")}];
    [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D6B1E0]];

    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

    if (v14)
    {
      [v11 setObject:v14 forKeyedSubscript:@"projectver"];
    }

    if ([*(a1 + 40) conformsToProtocol:&unk_286674308])
    {
      v15 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      [v17 updateDiagnosticReportSignature:v11];
    }

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(a1 + 40);
      *buf = 138543618;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Submitting event: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v26;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Submitting signature: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    objc_initWeak(&location, *(a1 + 32));
    v27 = [*(a1 + 32) reporter];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke_76;
    v35[3] = &unk_2797357F8;
    objc_copyWeak(&v36, &location);
    v28 = [v27 snapshotWithSignature:v11 duration:0 event:0 payload:v35 reply:15.0];

    if ((v28 & 1) == 0)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = *(a1 + 32);
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        v33 = *(a1 + 40);
        *buf = 138543618;
        v39 = v32;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to submit event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __49__HMDDiagnosticReporterLogObserver_observeEvent___block_invoke_76(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submitted event with response: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDDiagnosticReporterLogObserver *)v4 logEventDispatcher];
  [v7 removeObserver:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDDiagnosticReporterLogObserver *)v4 logEventDispatcher];
  v8 = [objc_opt_class() supportedEventClasses];
  [v7 addObserver:v4 forEventClasses:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDDiagnosticReporterLogObserver)initWithLogEventDispatcher:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDDiagnosticReporterLogObserver;
  v5 = [(HMDDiagnosticReporterLogObserver *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_logEventDispatcher, v4);
    v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v8 = [v7 preferenceForKey:@"memoryTriggerSize"];
    v9 = [v8 numberValue];
    v6->_memoryExceptionThreshold = [v9 unsignedIntegerValue];

    v10 = HMDispatchQueueNameString();
    v11 = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(v11, v12);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v13;

    v15 = [objc_alloc(MEMORY[0x277D6AFC8]) initWithQueue:v6->_clientQueue];
    reporter = v6->_reporter;
    v6->_reporter = v15;
  }

  return v6;
}

- (BOOL)shouldSubmitEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  v13 = 1;
  if (v6)
  {
    v8 = [v6 currentMemoryUsage];
    if (v8 < -[HMDDiagnosticReporterLogObserver memoryExceptionThreshold](self, "memoryExceptionThreshold") || ([MEMORY[0x277CBEBD0] standardUserDefaults], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleForKey:", @"HMDDiagnosticReporterMemoryEventReportTime"), v11 = v10, v9, objc_msgSend(MEMORY[0x277CBEAA8], "timeIntervalSinceReferenceDate"), v12 - v11 < 86400.0))
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_192471 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_192471, &__block_literal_global_79);
  }

  v3 = logCategory__hmf_once_v9_192472;

  return v3;
}

uint64_t __47__HMDDiagnosticReporterLogObserver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_192472;
  logCategory__hmf_once_v9_192472 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)subTypeForEvent:(id)a3
{
  v3 = a3;
  if (![v3 conformsToProtocol:&unk_286674308] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v3, "diagnosticReportEventSubType"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v4 = @"Assertion";
    }

    else if (v5 == objc_opt_class())
    {
      v4 = @"Messaging";
    }

    else if (v5 == objc_opt_class())
    {
      v4 = MREExceptionTypeToString();
    }

    else
    {
      v4 = @"Unknown";
    }
  }

  return v4;
}

+ (id)typeForEvent:(id)a3
{
  v3 = a3;
  if (![v3 conformsToProtocol:&unk_286674308] || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v3, "diagnosticReportEventType"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = MEMORY[0x277D6B228];
      goto LABEL_8;
    }

    if (v5 != objc_opt_class())
    {
      v6 = MEMORY[0x277D6B218];
LABEL_8:
      v4 = *v6;
      goto LABEL_10;
    }

    v4 = @"MemoryResourceException";
  }

LABEL_10:

  return v4;
}

+ (id)domainForEvent:(id)a3
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    return @"Performance";
  }

  else
  {
    return @"HomeKit";
  }
}

+ (BOOL)isSupportedEvent:(id)a3
{
  v4 = a3;
  v5 = [a1 supportedEventClasses];
  v6 = objc_opt_class();

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken_192495 != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken_192495, &__block_literal_global_192496);
  }

  v3 = supportedEventClasses_supportedEventClasses_192497;

  return v3;
}

void __57__HMDDiagnosticReporterLogObserver_supportedEventClasses__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = supportedEventClasses_supportedEventClasses_192497;
  supportedEventClasses_supportedEventClasses_192497 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end