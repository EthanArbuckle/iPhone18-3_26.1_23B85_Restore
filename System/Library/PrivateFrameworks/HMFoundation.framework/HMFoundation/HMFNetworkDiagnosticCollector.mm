@interface HMFNetworkDiagnosticCollector
+ (id)logCategory;
- (HMFNetworkDiagnosticCollector)initWithQueue:(id)a3;
- (HMFNetworkDiagnosticCollector)initWithQueue:(id)a3 discoveryTimeout:(double)a4 resolveTimeout:(double)a5 diagnosticTimeout:(double)a6 serviceTypes:(id)a7;
- (id)activeDevices;
- (id)devices;
- (id)diagnosticReport;
- (id)discoverDevicesWithTimeout:(double)a3;
- (id)networkDiagnostics;
- (id)resolveDevicesWithAddressType:(unint64_t)a3 timeout:(double)a4;
- (id)run;
- (id)startDiagnosticsWithTimeout:(double)a3;
- (id)workContext;
- (void)browser:(id)a3 didFindNetworkService:(id)a4;
- (void)browser:(id)a3 didLoseNetworkService:(id)a4;
- (void)browser:(id)a3 didStartBrowsingForServiceType:(id)a4;
- (void)browser:(id)a3 didStopBrowsingForServiceType:(id)a4;
- (void)browser:(id)a3 didUpdateNetworkService:(id)a4;
- (void)diagnostic:(id)a3 didCompleteWithError:(id)a4;
- (void)diagnostic:(id)a3 didStartWithDevice:(id)a4;
- (void)stop;
@end

@implementation HMFNetworkDiagnosticCollector

- (HMFNetworkDiagnosticCollector)initWithQueue:(id)a3 discoveryTimeout:(double)a4 resolveTimeout:(double)a5 diagnosticTimeout:(double)a6 serviceTypes:(id)a7
{
  v13 = a3;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = HMFNetworkDiagnosticCollector;
  v15 = [(HMFNetworkDiagnosticCollector *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a3);
    objc_storeStrong(&v16->_serviceTypes, a7);
    v17 = [[HMFNetworkBrowser alloc] initWithQueue:v13 domain:@"local" serviceTypes:v14];
    browser = v16->_browser;
    v16->_browser = v17;

    [(HMFNetworkBrowser *)v16->_browser setDelegate:v16];
    v16->_discoveryTimeout = a4;
    v16->_diagnosticTimeout = a6;
    v16->_resolveTimeout = a5;
  }

  return v16;
}

- (HMFNetworkDiagnosticCollector)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = +[HMFNetworkServiceInfo defaultServiceTypes];
  v6 = [(HMFNetworkDiagnosticCollector *)self initWithQueue:v4 discoveryTimeout:v5 resolveTimeout:5.0 diagnosticTimeout:10.0 serviceTypes:30.0];

  return v6;
}

- (id)networkDiagnostics
{
  if (_MergedGlobals_3_8 != -1)
  {
    dispatch_once(&_MergedGlobals_3_8, &__block_literal_global_26);
  }

  v3 = qword_280AFC370;

  return v3;
}

void __51__HMFNetworkDiagnosticCollector_networkDiagnostics__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = qword_280AFC370;
  qword_280AFC370 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMFNetworkDiagnosticCollector_workContext__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  if (qword_280AFC378 != -1)
  {
    dispatch_once(&qword_280AFC378, block);
  }

  return qword_280AFC380;
}

void __44__HMFNetworkDiagnosticCollector_workContext__block_invoke(uint64_t a1)
{
  v2 = [HMFDispatchContext alloc];
  v5 = [*(a1 + 32) workQueue];
  v3 = [(HMFDispatchContext *)v2 initWithQueue:v5];
  v4 = qword_280AFC380;
  qword_280AFC380 = v3;
}

- (id)run
{
  v3 = [(HMFNetworkDiagnosticCollector *)self workContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__HMFNetworkDiagnosticCollector_run__block_invoke;
  v6[3] = &unk_2786E7630;
  v6[4] = self;
  v4 = [HMFFuture inContext:v3 perform:v6];

  return v4;
}

uint64_t __36__HMFNetworkDiagnosticCollector_run__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 discoveryTimeout];
  v3 = [v2 discoverDevicesWithTimeout:?];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__HMFNetworkDiagnosticCollector_run__block_invoke_2;
  v12[3] = &unk_2786E7328;
  v12[4] = *(a1 + 32);
  v4 = [v3 then:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__HMFNetworkDiagnosticCollector_run__block_invoke_3;
  v11[3] = &unk_2786E7630;
  v11[4] = *(a1 + 32);
  v5 = [v4 finally:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HMFNetworkDiagnosticCollector_run__block_invoke_4;
  v10[3] = &unk_2786E7630;
  v10[4] = *(a1 + 32);
  v6 = [v5 finally:v10];

  v7 = v6;
  if (!v7)
  {
    _HMFPreconditionFailure(@"future");
  }

  v8 = v7;

  return 3;
}

uint64_t __36__HMFNetworkDiagnosticCollector_run__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [v4 resolveTimeout];
  v5 = [v4 resolveDevicesWithAddressType:2 timeout:?];
  if (!v5)
  {
    _HMFPreconditionFailure(@"future");
  }

  v6 = v5;

  return 3;
}

uint64_t __36__HMFNetworkDiagnosticCollector_run__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 diagnosticTimeout];
  v2 = [v1 startDiagnosticsWithTimeout:?];
  if (!v2)
  {
    _HMFPreconditionFailure(@"future");
  }

  v3 = v2;

  return 3;
}

- (void)stop
{
  v3 = [(HMFNetworkDiagnosticCollector *)self currentDiagnostics];
  [v3 na_each:&__block_literal_global_11_0];

  v4 = [(HMFNetworkDiagnosticCollector *)self devices];
  [v4 na_each:&__block_literal_global_14];
}

- (id)devices
{
  v2 = [(HMFNetworkDiagnosticCollector *)self browser];
  v3 = [v2 foundNetworkServices];

  return v3;
}

- (id)activeDevices
{
  v2 = [(HMFNetworkDiagnosticCollector *)self devices];
  v3 = [v2 na_filter:&__block_literal_global_17];

  return v3;
}

- (id)discoverDevicesWithTimeout:(double)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [(HMFNetworkDiagnosticCollector *)self serviceTypes];
  v6 = [v5 count];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier(v8);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@=> Run browse with %@ services and timeout: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [(HMFNetworkDiagnosticCollector *)v8 browser];
    v15 = [v14 startBrowsingWithTimeout:a3];
  }

  else
  {
    if (v10)
    {
      v16 = HMFGetLogIdentifier(v8);
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Nothing to do, no service types provided", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v15 = +[HMFFuture futureWithNoValue];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)resolveDevicesWithAddressType:(unint64_t)a3 timeout:(double)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [(HMFNetworkDiagnosticCollector *)self activeDevices];
  v8 = [v7 count];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier(v10);
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      *buf = 138543874;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@=> Run resolve with %@ devices and timeout: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__HMFNetworkDiagnosticCollector_resolveDevicesWithAddressType_timeout___block_invoke;
    v23[3] = &unk_2786E76B8;
    v24 = v16;
    v25 = a3;
    v26 = a4;
    v17 = v16;
    [v7 na_each:v23];
    v18 = [HMFFuture allSettled:v17];
    v19 = [v18 ignoreResult];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier(v10);
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_ERROR, "%{public}@No devices to resolve", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v19 = +[HMFFuture futureWithNoValue];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

void __71__HMFNetworkDiagnosticCollector_resolveDevicesWithAddressType_timeout___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resolveAddressWithAddressType:*(a1 + 40) timeout:0 receivedDataHandler:*(a1 + 48)];
  [v2 addObject:v3];
}

- (id)startDiagnosticsWithTimeout:(double)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(HMFNetworkDiagnosticCollector *)self activeDevices];
  v6 = [v5 count];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(v8);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
      *buf = 138543874;
      v30 = v11;
      v31 = 2114;
      v32 = v12;
      v33 = 2114;
      v34 = v13;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@=> Run diagnostics with %{public}@ devices and timeout: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [(HMFNetworkDiagnosticCollector *)v8 networkDiagnostics];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __61__HMFNetworkDiagnosticCollector_startDiagnosticsWithTimeout___block_invoke;
    v26 = &unk_2786E7708;
    v27 = v5;
    v28 = v8;
    v15 = [v14 na_flatMap:&v23];
    currentDiagnostics = v8->_currentDiagnostics;
    v8->_currentDiagnostics = v15;

    v17 = [(HMFNetworkDiagnosticCollector *)v8 currentDiagnostics:v23];
    v18 = [HMFNetworkDiagnostic runDiagnostics:v17 timeout:a3];

    v19 = v27;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier(v8);
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_ERROR, "%{public}@No devices to run diagnostics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v18 = [HMFFuture futureWithError:v19];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

id __61__HMFNetworkDiagnosticCollector_startDiagnosticsWithTimeout___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__HMFNetworkDiagnosticCollector_startDiagnosticsWithTimeout___block_invoke_2;
  v5[3] = &unk_2786E76E0;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v5[5] = a2;
  v3 = [v2 na_map:v5];

  return v3;
}

id __61__HMFNetworkDiagnosticCollector_startDiagnosticsWithTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  v7 = [v6 workQueue];
  v8 = [v5 initWithDevice:v4 delegate:v6 queue:v7];

  return v8;
}

- (id)diagnosticReport
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [@"Service Type\t\tDevice ID\t\tCategory\tS#\tC#\tSF\tPing\t\t\t\t Model / Name / Address / Port\t\n" mutableCopy];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"device.serviceInfo.serviceType.length" ascending:1];
  v5 = [(HMFNetworkDiagnosticCollector *)self currentDiagnostics];
  v23[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy_;
  v21[4] = __Block_byref_object_dispose_;
  v8 = [v7 firstObject];
  v9 = [v8 device];
  v10 = [v9 serviceInfo];
  v22 = [v10 serviceType];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __49__HMFNetworkDiagnosticCollector_diagnosticReport__block_invoke;
  v18 = &unk_2786E7730;
  v20 = v21;
  v11 = v3;
  v19 = v11;
  [v7 na_each:&v15];
  v12 = [v11 copy];

  _Block_object_dispose(v21, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __49__HMFNetworkDiagnosticCollector_diagnosticReport__block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 device];
  v4 = [v3 serviceInfo];
  v5 = [v4 serviceType];
  v6 = [v5 isEqualToString:*(*(*(a1 + 40) + 8) + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [v14 device];
    v8 = [v7 serviceInfo];
    v9 = [v8 serviceType];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(a1 + 32) appendFormat:@"\n"];
  }

  v12 = *(a1 + 32);
  v13 = [v14 dumpReport];
  [v12 appendString:v13];
}

- (void)diagnostic:(id)a3 didStartWithDevice:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 addresses];
  v9 = [v8 na_map:&__block_literal_global_36];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v19 = v10;
    v20 = HMFGetLogIdentifier(v11);
    v13 = [v6 shortDescription];
    v14 = [v6 device];
    v15 = [v14 shortDescription];
    v16 = [v9 count];
    if (v16)
    {
      v17 = [v9 componentsJoinedByString:{@", "}];
    }

    else
    {
      v17 = 0;
    }

    *buf = 138544130;
    v22 = v20;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v15;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_INFO, "%{public}@Started %{public}@ with device: %@ and addresses: %{public}@", buf, 0x2Au);
    if (v16)
    {
    }

    v10 = v19;
  }

  objc_autoreleasePoolPop(v10);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)diagnostic:(id)a3 didCompleteWithError:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(v9);
    if (v7)
    {
      v12 = @"❌";
    }

    else
    {
      v12 = @"✅";
    }

    v13 = [v6 shortDescription];
    v14 = [v6 device];
    v15 = [v14 shortDescription];
    v17 = 138544386;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    v23 = 2112;
    v24 = v15;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@%@ Completed %{public}@ for device: %@ with error: %{public}@", &v17, 0x34u);
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didStartBrowsingForServiceType:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(v9);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Browser started browsing for service type: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didStopBrowsingForServiceType:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(v9);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Browser stopped browsing for service type: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didFindNetworkService:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(v9);
    v12 = [v7 shortDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Browser did find network service: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didLoseNetworkService:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(v9);
    v12 = [v7 shortDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Browser did lose network service: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didUpdateNetworkService:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier(v9);
    v12 = [v7 shortDescription];
    v14 = 138543618;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Browser did update network service: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (qword_280AFC388 != -1)
  {
    dispatch_once(&qword_280AFC388, &__block_literal_global_47);
  }

  v3 = qword_280AFC390;

  return v3;
}

uint64_t __44__HMFNetworkDiagnosticCollector_logCategory__block_invoke()
{
  qword_280AFC390 = HMFCreateOSLogHandle(@"HMFNetworkDiagnostic", @"com.apple.HomeKit");

  return MEMORY[0x2821F96F8]();
}

@end