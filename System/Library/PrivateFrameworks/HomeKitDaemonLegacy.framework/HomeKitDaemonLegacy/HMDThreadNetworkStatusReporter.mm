@interface HMDThreadNetworkStatusReporter
+ (id)logCategory;
- (HMDHome)home;
- (HMDThreadNetworkStatusReporter)initWithHome:(id)a3;
- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)a3;
- (void)_registerForThreadNetworkEvents;
- (void)_runThreadNetworkStateCapture;
- (void)_runThreadNetworkStatusPeriodicUpdate;
- (void)_scheduleThreadNetworkStatusPeriodicUpdate;
- (void)_unregisterForThreadNetworkEvents;
- (void)registerForThreadNetworkEvents;
- (void)run;
- (void)threadBTCallStateChange:(id)a3;
- (void)threadNetworkStateChange:(id)a3;
- (void)threadPeripheralDeviceNodeTypeChange:(id)a3;
- (void)threadPreferredNetworkUpdated:(id)a3;
- (void)threadWakeOnDeviceConnectionStateChange:(id)a3;
- (void)unregisterForThreadNetworkEvents;
@end

@implementation HMDThreadNetworkStatusReporter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_runThreadNetworkStateCapture
{
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(HMDThreadNetworkStatusReporter *)self threadRadioClient];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__HMDThreadNetworkStatusReporter__runThreadNetworkStateCapture__block_invoke;
  v5[3] = &unk_279723938;
  objc_copyWeak(&v6, &location);
  [v4 triggerThreadNetworkStateCaptureWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __63__HMDThreadNetworkStatusReporter__runThreadNetworkStateCapture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v8;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Periodic Thread network health reporting failed with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v9 = [WeakRetained home];
      v10 = [v9 homeManager];
      v11 = [v10 metricsManager];
      v12 = [v11 threadNetworkObserver];

      [v12 generateLogForPeriodicReport:v5];
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138546178;
        v23 = v21;
        v24 = 2048;
        v25 = [v5 reportDuration];
        v26 = 2048;
        v27 = [v5 numAdvertisedBRs];
        v28 = 2048;
        v29 = [v5 numAppleBRs];
        v30 = 2048;
        v31 = [v5 numThirdPartyBRs];
        v32 = 2048;
        v33 = [v5 numThreadNetworks];
        v34 = 2048;
        v35 = [v5 maxSimuIPPrefixesDetected];
        v36 = 2048;
        v37 = [v5 txTotal];
        v38 = 2048;
        v39 = [v5 txSuccess];
        v40 = 2048;
        v41 = [v5 txDelayAvg];
        v42 = 2048;
        v43 = [v5 rxTotal];
        v44 = 2048;
        v45 = [v5 rxSuccess];
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Periodic Thread network health reporting - duration=%ld BRs:(T=%ld A=%ld 3=%ld) Ntwk:(#=%ld IPpfx=%ld) Tx:(T=%ld S=%ld AvgDelay=%ld) Rx:(T=%ld S=%ld)", buf, 0x7Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfThreadNetworkIsRunningWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[HMDThreadNetworkMetadataStore defaultStore];
  v7 = v6;
  if (v6)
  {
    [v6 checkIfThreadNetworkIsRunningWithCompletion:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@No thread network metadata store", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v4[2](v4, 0, v12);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForThreadNetworkEvents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDThreadNetworkStatusReporter *)v5 home];
    v9 = [v8 name];
    v14 = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@_unregisterForThreadNetworkEvents for home %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [(HMDThreadNetworkStatusReporter *)v5 threadRadioClient];
  [v10 unregisterForThreadNetworkEvents:v5];

  v11 = [(HMDThreadNetworkStatusReporter *)v5 home];
  v12 = v11;
  if (v11)
  {
    [v11 onThreadNetworkConnectionStateChange:1];
    [v12 onThreadNetworkNodeTypeStateChange:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForThreadNetworkEvents
{
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDThreadNetworkStatusReporter_unregisterForThreadNetworkEvents__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_registerForThreadNetworkEvents
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [(HMDThreadNetworkStatusReporter *)v5 home];
    v9 = [v8 name];
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@_registerForThreadNetworkEvents for home %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [(HMDThreadNetworkStatusReporter *)v5 threadRadioClient];
  [v10 registerForThreadNetworkEvents:v5];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerForThreadNetworkEvents
{
  objc_initWeak(&location, self);
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HMDThreadNetworkStatusReporter_registerForThreadNetworkEvents__block_invoke;
  v4[3] = &unk_279732FD8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __64__HMDThreadNetworkStatusReporter_registerForThreadNetworkEvents__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerForThreadNetworkEvents];
}

- (void)threadBTCallStateChange:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v22 = 138543874;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    v26 = 2048;
    v27 = [v4 callState];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadBTCallStateChange - received event %@, value %ld", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDThreadNetworkStatusReporter *)v6 home];
  if (v9)
  {
    v10 = [v4 callState];
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = 1;
LABEL_14:
        [v9 onThreadNetworkCallStateChange:v11];
        goto LABEL_15;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unexpected event %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    v11 = 0;
    goto LABEL_14;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v6;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v4 callState];
    v22 = 138543874;
    v23 = v15;
    v24 = 2112;
    v25 = v4;
    v26 = 2048;
    v27 = v16;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadBTCallStateChange event %@, value %ld", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)threadPreferredNetworkUpdated:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 eventValue];
    v20 = 138543874;
    v21 = v8;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadPreferredNetworkUpdated - received event %@, value %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDThreadNetworkStatusReporter *)v6 home];
  if (v10)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      v11 = [v4 eventValue];

      if (v11)
      {
        v12 = [v4 eventValue];
        v13 = [v12 copy];
        [v10 saveAndSyncWithThreadOperationalDataset:v13];
      }
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 eventValue];
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadPreferredNetworkUpdated event %@, value %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)threadPeripheralDeviceNodeTypeChange:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    v20 = 2048;
    v21 = [v4 peripheralDeviceNodeType];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadPeripheralDeviceNodeTypeChange - received event %@, peripheral nodeType %ld", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDThreadNetworkStatusReporter *)v6 home];
  v10 = v9;
  if (v9)
  {
    [v9 onThreadNetworkPeripheralDeviceNodeTypeChange:v4];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadPeripheralDeviceNodeTypeChange event", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)threadWakeOnDeviceConnectionStateChange:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 eMACAddressAsString];
    v17 = 138544130;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v9;
    v23 = 2048;
    v24 = [v4 connectionState];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadWakeOnDeviceConnectionStateChange - received event %@, eMACAddress %@, connectionState %ld", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDThreadNetworkStatusReporter *)v6 home];
  v11 = v10;
  if (v10)
  {
    [v10 onThreadNetworkWakeOnDeviceConnectionStateChange:v4];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No linked home, dropping threadWakeOnDeviceConnectionStateChange event", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)threadNetworkStateChange:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138544130;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
    v25 = 2048;
    v26 = [v4 eventType];
    v27 = 2048;
    v28 = [v4 eventValue];
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@threadNetworkStateChange - received event %@, type %ld, value %ld", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDThreadNetworkStatusReporter *)v6 home];
  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v4 eventType];
      v16 = [v4 eventValue];
      v21 = 138544130;
      v22 = v14;
      v23 = 2112;
      v24 = v4;
      v25 = 2048;
      v26 = v15;
      v27 = 2048;
      v28 = v16;
      v17 = "%{public}@No linked home, dropping threadNetworkStateChange event %@, type %ld, value %ld";
      v18 = v13;
      v19 = 42;
LABEL_12:
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, v17, &v21, v19);
    }

LABEL_13:

    objc_autoreleasePoolPop(v11);
    goto LABEL_14;
  }

  v10 = [v4 eventType];
  if (v10 == 1)
  {
    [v9 onThreadNetworkNodeTypeStateChange:{objc_msgSend(v4, "eventValue")}];
    goto LABEL_14;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v4;
      v17 = "%{public}@Unexpected event %@";
      v18 = v13;
      v19 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  [v9 onThreadNetworkConnectionStateChange:{objc_msgSend(v4, "eventValue")}];
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_runThreadNetworkStatusPeriodicUpdate
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[HMDThreadNetworkMetadataStore defaultStore];
  if (v4)
  {
    v5 = [(HMDThreadNetworkStatusReporter *)self home];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v5 threadOperationalDataset];
    }

    else
    {
      v6 = 0;
    }

    objc_initWeak(location, self);
    v7 = [v5 doesHomeContainResident];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke;
    v22[3] = &unk_279723910;
    objc_copyWeak(&v24, location);
    v8 = v5;
    v23 = v8;
    [v4 retrieveMetadata:v6 homeHasResident:v7 completion:v22];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_2;
    v19[3] = &unk_279725BE0;
    objc_copyWeak(&v21, location);
    v9 = v8;
    v20 = v9;
    [(HMDThreadNetworkStatusReporter *)self _checkIfThreadNetworkIsRunningWithCompletion:v19];
    [(HMDThreadNetworkStatusReporter *)self _runThreadNetworkStateCapture];
    v10 = dispatch_time(0, 60000000000 * [(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins]);
    v11 = [(HMDThreadNetworkStatusReporter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_3;
    block[3] = &unk_279732FD8;
    objc_copyWeak(&v18, location);
    dispatch_after(v10, v11, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);

    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@No thread network metadata store", location, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if (v9)
      {
        [v4 setThreadPreferredNetworkExists:1];
        if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
        {
          v5 = [v9 operationalDataset];

          if (v5)
          {
            v6 = *(a1 + 32);
            v7 = [v9 operationalDataset];
            v8 = [v7 copy];
            [v6 saveAndSyncWithThreadOperationalDataset:v8];
          }
        }
      }

      else
      {
        [v4 setThreadPreferredNetworkExists:0];
      }
    }
  }
}

uint64_t __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!a3)
  {
    if (WeakRetained)
    {
      WeakRetained = *(a1 + 32);
      if (WeakRetained)
      {
        v9 = v7;
        WeakRetained = [WeakRetained setThreadNetworkIsUp:a2];
        v7 = v9;
      }
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v7);
}

void __71__HMDThreadNetworkStatusReporter__runThreadNetworkStatusPeriodicUpdate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runThreadNetworkStatusPeriodicUpdate];
}

- (void)_scheduleThreadNetworkStatusPeriodicUpdate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (![(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins])
  {
    v4 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v5 = [v4 preferenceForKey:@"ThreadNetworkHealthReportingPeriodInMinutes"];
    v6 = [v5 numberValue];

    if ([v6 intValue] < 1)
    {
      v7 = 240;
    }

    else
    {
      v7 = [v6 unsignedIntValue];
    }

    [(HMDThreadNetworkStatusReporter *)self setThreadNetworkPeriodicCheckFrequencyInMins:v7];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2048;
      v16 = [(HMDThreadNetworkStatusReporter *)v9 threadNetworkPeriodicCheckFrequencyInMins];
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling start of periodic Thread network health reporting (for every %lu minutes)", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadNetworkStatusReporter *)v9 _runThreadNetworkStatusPeriodicUpdate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  if (![(HMDThreadNetworkStatusReporter *)self threadNetworkPeriodicCheckFrequencyInMins])
  {
    objc_initWeak(&location, self);
    v3 = [(HMDThreadNetworkStatusReporter *)self workQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __37__HMDThreadNetworkStatusReporter_run__block_invoke;
    v4[3] = &unk_279732FD8;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __37__HMDThreadNetworkStatusReporter_run__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleThreadNetworkStatusPeriodicUpdate];
    WeakRetained = v2;
  }
}

- (HMDThreadNetworkStatusReporter)initWithHome:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMDThreadNetworkStatusReporter;
  v5 = [(HMDThreadNetworkStatusReporter *)&v14 init];
  if (v5)
  {
    v6 = HMFDispatchQueueName();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_get_global_queue(25, 0);
    v9 = dispatch_queue_create_with_target_V2(v6, v7, v8);
    workQueue = v5->_workQueue;
    v5->_workQueue = v9;

    objc_storeWeak(&v5->_home, v4);
    v5->_threadNetworkPeriodicCheckFrequencyInMins = 0;
    v11 = objc_opt_new();
    threadRadioClient = v5->_threadRadioClient;
    v5->_threadRadioClient = v11;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_18295 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_18295, &__block_literal_global_18296);
  }

  v3 = logCategory__hmf_once_v1_18297;

  return v3;
}

uint64_t __45__HMDThreadNetworkStatusReporter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_18297;
  logCategory__hmf_once_v1_18297 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end