@interface HMDDeviceSetupConfiguringController
+ (id)logCategory;
- (BOOL)_shouldRegisterRequest;
- (HMDDeviceSetupConfiguringController)initWithDiagnosticInfoControllerInternal:(id)a3;
- (HMDDeviceSetupConfiguringController)initWithQueue:(id)a3 rpCompanionLinkClientFactory:(id)a4 diagnosticInfoController:(id)a5;
- (id)_activeDevicesWithMediaRouteIdentifier:(id)a3;
- (void)_queryWithRequestID:(id)a3 mediaRouteIdentifier:(id)a4 rpDevice:(id)a5 additionalKeys:(id)a6 withCompletion:(id)a7;
- (void)_registerRequest:(id)a3;
- (void)_registerRequest:(id)a3 after:(int64_t)a4;
- (void)_setupCompanionLinkClient;
- (void)_setupRPClientAfter:(int64_t)a3;
- (void)_tearDownCompanionLinkClient;
- (void)queryConfiguringState:(id)a3 additionalKeys:(id)a4 withCompletion:(id)a5;
- (void)registerRequestID;
- (void)setupRPClient;
@end

@implementation HMDDeviceSetupConfiguringController

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_23(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@device changed from RPClient: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t29_119436 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t29_119436, &__block_literal_global_27_119437);
  }

  v3 = logCategory__hmf_once_v30_119438;

  return v3;
}

- (void)_setupRPClientAfter:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Will setup the RPCompanionLinkClient after %@s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = dispatch_time(0, 1000000000 * a3);
  v11 = [(HMDDeviceSetupConfiguringController *)v6 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDDeviceSetupConfiguringController__setupRPClientAfter___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v6;
  dispatch_after(v10, v11, block);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HMDDeviceSetupConfiguringController__setupRPClientAfter___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Tearing down RP client and setting up again", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _tearDownCompanionLinkClient];
  [*(a1 + 32) _setupCompanionLinkClient];
  result = [*(a1 + 32) _shouldRegisterRequest];
  if (result)
  {
    result = [*(a1 + 32) registerRequestID];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_setupCompanionLinkClient
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDDeviceSetupConfiguringController *)self rpCompanionLinkClientFactory];
  v5 = v4[2]();
  [(HMDDeviceSetupConfiguringController *)self setClient:v5];

  v6 = [(HMDDeviceSetupConfiguringController *)self client];

  if (v6)
  {
    v7 = [(HMDDeviceSetupConfiguringController *)self workQueue];
    v8 = [(HMDDeviceSetupConfiguringController *)self client];
    [v8 setDispatchQueue:v7];

    v9 = [(HMDDeviceSetupConfiguringController *)self client];
    [v9 setControlFlags:14];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = MEMORY[0x277CCABB0];
      v15 = [(HMDDeviceSetupConfiguringController *)v11 client];
      v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "controlFlags")}];
      *buf = 138543618;
      v40 = v13;
      v41 = 2112;
      v42 = v16;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Set up the companion link client, controlFlags = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    objc_initWeak(buf, v11);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke;
    v37[3] = &unk_279732FD8;
    objc_copyWeak(&v38, buf);
    v17 = [(HMDDeviceSetupConfiguringController *)v11 client];
    [v17 setInvalidationHandler:v37];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_19;
    v35[3] = &unk_279732FD8;
    objc_copyWeak(&v36, buf);
    v18 = [(HMDDeviceSetupConfiguringController *)v11 client];
    [v18 setInterruptionHandler:v35];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_20;
    v33[3] = &unk_27972FEB8;
    objc_copyWeak(&v34, buf);
    v19 = [(HMDDeviceSetupConfiguringController *)v11 client];
    [v19 setDeviceFoundHandler:v33];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_22;
    v31[3] = &unk_27972FEB8;
    objc_copyWeak(&v32, buf);
    v20 = [(HMDDeviceSetupConfiguringController *)v11 client];
    [v20 setDeviceLostHandler:v31];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_23;
    v29[3] = &unk_27972FEE0;
    objc_copyWeak(&v30, buf);
    v21 = [(HMDDeviceSetupConfiguringController *)v11 client];
    [v21 setDeviceChangedHandler:v29];

    v22 = [(HMDDeviceSetupConfiguringController *)v11 client];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_25;
    v28[3] = &unk_2797359D8;
    v28[4] = v11;
    [v22 activateWithCompletion:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Cannot create companion link client", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [(HMDDeviceSetupConfiguringController *)v24 _setupRPClientAfter:120];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Queue setup after invalidation.", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _setupRPClientAfter:120];

  v6 = *MEMORY[0x277D85DE8];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_19(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@RPClient was interrupted", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_20(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device Found from RPClient: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_22(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Device lost from RPClient: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __64__HMDDeviceSetupConfiguringController__setupCompanionLinkClient__block_invoke_25(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Error activating RPClient: '%@'", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _setupRPClientAfter:120];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@RPClient activated successfully", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRegisterRequest
{
  v2 = [(HMDDeviceSetupConfiguringController *)self diagnosticInfoController];
  v3 = v2 != 0;

  return v3;
}

- (void)_registerRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDeviceSetupConfiguringController *)self client];

  if (!v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@RPClient is nil", buf, 0xCu);
    }

    v20 = v16;
    goto LABEL_12;
  }

  v7 = [(HMDDeviceSetupConfiguringController *)self diagnosticInfoController];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (!v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@DiagnosticInfoController is nil", buf, 0xCu);
    }

    v20 = v8;
LABEL_12:
    objc_autoreleasePoolPop(v20);
    goto LABEL_13;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [(HMDDeviceSetupConfiguringController *)v9 client];
    v14 = [v13 activeDevices];
    *buf = 138543874;
    v25 = v12;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering request %@ with handler for active devices %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = [(HMDDeviceSetupConfiguringController *)v9 client];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__HMDDeviceSetupConfiguringController__registerRequest___block_invoke;
  v23[3] = &unk_27972BC88;
  v23[4] = v9;
  [v15 registerRequestID:v4 options:0 handler:v23];

LABEL_13:
  v22 = *MEMORY[0x277D85DE8];
}

void __56__HMDDeviceSetupConfiguringController__registerRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *MEMORY[0x277CD0110];
  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v12 = [v7 hmf_arrayForKey:v10 ofClasses:v11];
  v13 = v12;
  v14 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [*(a1 + 32) diagnosticInfoController];
  v17 = [v16 diagnosticInfoDataWithAdditionalKeys:v15];

  if (v17)
  {
    v37[0] = @"HMDDeviceSetupConfiguringControllerTimeStampKey";
    v18 = MEMORY[0x277CCABB0];
    v19 = [MEMORY[0x277CBEAA8] date];
    [v19 timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    v37[1] = *MEMORY[0x277CCFC70];
    v38[0] = v20;
    v38[1] = v17;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v32 = v25;
      v33 = 2112;
      v34 = @"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID";
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Sending response for %@ = %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    (*(v9 + 2))(v9, v21, 0, 0);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Diagnostic info data is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    (*(v9 + 2))(v9, 0, 0, 0);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_activeDevicesWithMediaRouteIdentifier:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDeviceSetupConfiguringController *)self client];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Discovering RPCompanionLinkDevice matching identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDDeviceSetupConfiguringController *)v8 client];
    v13 = [v12 activeDevices];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke;
    v28[3] = &unk_27972FE90;
    v14 = v4;
    v29 = v14;
    v15 = [v13 na_filter:v28];

    v16 = [(HMDDeviceSetupConfiguringController *)v8 client];
    v17 = [v16 activeDevices];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke_2;
    v26 = &unk_27972FE90;
    v27 = v14;
    v18 = [v17 na_filter:&v23];
    v19 = [v15 arrayByAddingObjectsFromArray:{v18, v23, v24, v25, v26}];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@RPClient is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

unint64_t __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaRouteIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    if (([v3 statusFlags] & 2) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = ([v3 statusFlags] >> 1) & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t __78__HMDDeviceSetupConfiguringController__activeDevicesWithMediaRouteIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaRouteIdentifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = ([v3 statusFlags] >> 2) & 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_tearDownCompanionLinkClient
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Tearing down the companion link client", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDDeviceSetupConfiguringController *)v5 setClient:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queryWithRequestID:(id)a3 mediaRouteIdentifier:(id)a4 rpDevice:(id)a5 additionalKeys:(id)a6 withCompletion:(id)a7
{
  v50 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  dispatch_assert_queue_V2(v17);

  if (v14)
  {
    v18 = [(HMDDeviceSetupConfiguringController *)self rpCompanionLinkClientFactory];
    v19 = v18[2]();

    if (v19)
    {
      v36 = v13;
      v20 = [(HMDDeviceSetupConfiguringController *)self workQueue];
      [v19 setDispatchQueue:v20];

      [v19 setDestinationDevice:v14];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138544130;
        v43 = v25;
        v44 = 2112;
        v45 = v21;
        v46 = 2112;
        v47 = v12;
        v48 = 2112;
        v49 = v14;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Send (messageRequestID %@) handlerID: %@ message to (device '%@')", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke;
      v37[3] = &unk_279732B10;
      v37[4] = v23;
      v41 = v16;
      v38 = v19;
      v39 = v15;
      v40 = v21;
      v26 = v21;
      [v38 activateWithCompletion:v37];

      v13 = v36;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v34;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot create a RPCompanionLinkClient", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      (*(v16 + 2))(v16, 0, v26);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Device is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    (*(v16 + 2))(v16, 0, v19);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v7;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@There was an error activating: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
    [*(a1 + 40) invalidate];
  }

  else
  {
    v19[0] = @"HMDDeviceSetupConfiguringControllerTimeStampKey";
    v8 = MEMORY[0x277CCABB0];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v19[1] = *MEMORY[0x277CD0110];
    v20[0] = v10;
    v20[1] = *(a1 + 48);
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    objc_initWeak(buf, *(a1 + 32));
    v12 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_12;
    v14[3] = &unk_2797347F8;
    v15 = v12;
    objc_copyWeak(&v18, buf);
    v17 = *(a1 + 64);
    v16 = *(a1 + 56);
    [v15 sendRequestID:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" request:v11 options:0 responseHandler:v14];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [a1[4] invalidate];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_2;
    v15[3] = &unk_279734848;
    v16 = v9;
    v17 = v11;
    v18 = a1[5];
    v21 = a1[6];
    v19 = v7;
    v20 = v8;
    dispatch_async(v12, v15);
  }

  else
  {
    v13 = a1[6];
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v13[2](v13, 0, v14);
  }
}

uint64_t __119__HMDDeviceSetupConfiguringController__queryWithRequestID_mediaRouteIdentifier_rpDevice_additionalKeys_withCompletion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v19 = 138543874;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@(Request %@) failed with error: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 72) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v19 = 138544130;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@(Request %@) sent; response: %@ / options: %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v3);
    v16 = *(a1 + 56);
    v11 = *(*(a1 + 72) + 16);
  }

  result = v11();
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerRequest:(id)a3 after:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
    *buf = 138543874;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Register requestID: %@ after %@ seconds", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = dispatch_time(0, 1000000000 * a4);
  v13 = [(HMDDeviceSetupConfiguringController *)v8 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__HMDDeviceSetupConfiguringController__registerRequest_after___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v8;
  dispatch_after(v12, v13, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)registerRequestID
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(HMDDeviceSetupConfiguringController *)self _shouldRegisterRequest])
  {
    v3 = [(HMDDeviceSetupConfiguringController *)self requestIDRegistrationDelay];
    v4 = *MEMORY[0x277D85DE8];

    [(HMDDeviceSetupConfiguringController *)self _registerRequest:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" after:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@No need to register request", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = *MEMORY[0x277D85DE8];
  }
}

- (void)queryConfiguringState:(id)a3 additionalKeys:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HMDDeviceSetupConfiguringController_queryConfiguringState_additionalKeys_withCompletion___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __91__HMDDeviceSetupConfiguringController_queryConfiguringState_additionalKeys_withCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeDevicesWithMediaRouteIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2 && ![v2 hmf_isEmpty])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Active destination devices: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v10 = [v3 firstObject];
    [v15 _queryWithRequestID:@"com.apple.HomeKit.HMDDeviceSetupConfiguringStateRequestID" mediaRouteIdentifier:v16 rpDevice:v10 additionalKeys:*(a1 + 48) withCompletion:*(a1 + 56)];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@RPClient did not discover peer device for identifier: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v9 + 16))(v9, 0, v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setupRPClient
{
  v3 = [(HMDDeviceSetupConfiguringController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDDeviceSetupConfiguringController_setupRPClient__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (HMDDeviceSetupConfiguringController)initWithQueue:(id)a3 rpCompanionLinkClientFactory:(id)a4 diagnosticInfoController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDDeviceSetupConfiguringController;
  v12 = [(HMDDeviceSetupConfiguringController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_workQueue, a3);
    objc_storeStrong(&v13->_diagnosticInfoController, a5);
    v14 = _Block_copy(v10);
    rpCompanionLinkClientFactory = v13->_rpCompanionLinkClientFactory;
    v13->_rpCompanionLinkClientFactory = v14;

    v13->_requestIDRegistrationDelay = 3;
    v13->_restartRPClientDelay = 120;
  }

  return v13;
}

- (HMDDeviceSetupConfiguringController)initWithDiagnosticInfoControllerInternal:(id)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = a3;
  v7 = dispatch_queue_create("HMDDeviceSetupConfiguringController_Queue", v5);
  v8 = [(HMDDeviceSetupConfiguringController *)self initWithQueue:v7 rpCompanionLinkClientFactory:&__block_literal_global_119429 diagnosticInfoController:v6];

  return v8;
}

id __80__HMDDeviceSetupConfiguringController_initWithDiagnosticInfoControllerInternal___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D44160]);

  return v0;
}

uint64_t __50__HMDDeviceSetupConfiguringController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v30_119438;
  logCategory__hmf_once_v30_119438 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end