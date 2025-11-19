@interface HMDAccessoryDiagnosticsManager
- (BOOL)_isRequestSupported:(id)a3;
- (HMDAccessoryDiagnosticsManager)initWithAccessory:(id)a3 service:(id)a4;
- (id)attributeDescriptions;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)a3;
- (void)__fetchCloudDiagnosticsMetadataForAccessory:(id)a3 completion:(id)a4;
- (void)_callCompletionHandler:(id)a3 diagnostics:(id)a4 error:(id)a5;
- (void)_clearCurrentDiagnosticsSession:(id)a3;
- (void)_fetchCloudDiagnosticsMetadata;
- (void)_fetchModelDiagnosticsMetadataForAccessory:(id)a3 withCompletion:(id)a4;
- (void)_handleDiagnosticsTransferRequestWithOptions:(id)a3 completion:(id)a4;
- (void)_handleDiagnosticsTransferWithOptions:(id)a3 completion:(id)a4;
- (void)_invalidateCloudDiagnosticsMetadata;
- (void)_notifyClientsOfDiagnosticsTransferSupportUpdated;
- (void)_readDiagnosticsDataWithCloudKitMetadataRequirement:(BOOL)a3 completion:(id)a4;
- (void)_readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:(id)a3;
- (void)_registerForMessagesAndNotifications;
- (void)_shutDown;
- (void)_start;
- (void)_updateDiagnosticSettings;
- (void)dealloc;
- (void)handleAccessoryConfiguredNotification:(id)a3;
- (void)handleCharacteristicValueUpdatedNotification:(id)a3;
- (void)handleCharacteristicsUpdatedNotification:(id)a3;
- (void)handleDiagnosticsTransferWithOptions:(id)a3 message:(id)a4;
- (void)shutDown;
- (void)start;
@end

@implementation HMDAccessoryDiagnosticsManager

- (void)_clearCurrentDiagnosticsSession:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDAccessoryDiagnosticsManagerInternal *)v8 currentDiagnosticsSession];
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Clear current session: %@ with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [(HMDAccessoryDiagnosticsManagerInternal *)v8 currentDiagnosticsSession];
    [v12 shutDown];

    [(HMDAccessoryDiagnosticsManagerInternal *)v8 setCurrentDiagnosticsSession:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_readDiagnosticsDataWithCloudKitMetadataRequirement:(BOOL)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Read diagnostics data for session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke;
  v17[3] = &unk_27972D478;
  objc_copyWeak(&v19, buf);
  v15 = v6;
  v18 = v15;
  v20 = a3;
  [v10 readDataWithCompletion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v11);

  if (v7)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v15;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics data read failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    [v13 _clearCurrentDiagnosticsSession:v7];
    (*(*(a1 + 32) + 16))();
  }

  else if (*(a1 + 48) == 1)
  {
    v16 = [WeakRetained accessory];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke_37;
    v27[3] = &unk_27972D450;
    objc_copyWeak(&v31, (a1 + 40));
    v30 = *(a1 + 32);
    v28 = v8;
    v29 = v9;
    [WeakRetained _fetchModelDiagnosticsMetadataForAccessory:v16 withCompletion:v27];

    objc_destroyWeak(&v31);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = WeakRetained;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v18 currentDiagnosticsSession];
      *buf = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Diagnostics metadata not required for session:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = objc_alloc(MEMORY[0x277CD16E0]);
    v23 = [MEMORY[0x277CBEBC0] URLWithString:&stru_286509E58];
    v24 = [MEMORY[0x277CBEBC0] URLWithString:&stru_286509E58];
    v25 = [v22 initWithSnapshotPath:v8 urlParameters:v9 privacyPolicyURL:v23 uploadDestination:v24 consentVersion:&unk_286629278 uploadType:&unk_286629278];

    [v18 _clearCurrentDiagnosticsSession:0];
    (*(*(a1 + 32) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetching cloud metadata from model failed with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [v10 _clearCurrentDiagnosticsSession:v6];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x277CD16E0]);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [v5 privacyPolicyURL];
    v16 = [v5 uploadDestination];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "consentVersion")}];
    v27 = v5;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "uploadType")}];
    v19 = [v26 initWithSnapshotPath:v13 urlParameters:v14 privacyPolicyURL:v15 uploadDestination:v16 consentVersion:v17 uploadType:v18];

    v20 = objc_autoreleasePoolPush();
    v21 = WeakRetained;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v21 currentDiagnosticsSession];
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Diagnostics data read completed for session:%@ metadata:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [v21 _clearCurrentDiagnosticsSession:0];
    (*(*(a1 + 48) + 16))();

    v5 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiagnosticsTransferRequestWithOptions:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Attempting to start diagnostics transfer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if ([(HMDAccessoryDiagnosticsManager *)v10 _isRequestSupported:v6])
  {
    v13 = [(HMDAccessoryDiagnosticsManager *)v10 diagnosticsSettings];
    v14 = [v13 transport];
    v15 = v14 == @"DataStream";

    if (v15)
    {
      v28 = [(HMDAccessoryDiagnosticsManagerInternal *)v10 currentDiagnosticsSession];

      if (v28)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v10;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v32;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@A session is already opened", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
        v7[2](v7, v33, 0);
      }

      else if ([(HMDAccessoryDiagnosticsManager *)v10 cloudFetchCompleted])
      {
        v34 = [HMDAccessoryDiagnosticsSession alloc];
        v35 = [(HMDAccessoryDiagnosticsManagerInternal *)v10 accessory];
        v36 = [(HMDAccessoryDiagnosticsManager *)v10 diagnosticsSettings];
        v37 = [(HMDAccessoryDiagnosticsSession *)v34 initWithAccessory:v35 settings:v36];
        [(HMDAccessoryDiagnosticsManagerInternal *)v10 setCurrentDiagnosticsSession:v37];

        v38 = objc_autoreleasePoolPush();
        v39 = v10;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          v42 = [(HMDAccessoryDiagnosticsManagerInternal *)v39 currentDiagnosticsSession];
          *buf = 138543618;
          v54 = v41;
          v55 = 2112;
          v56 = v42;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Setting up a diagnostics transfer session: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        objc_initWeak(buf, v39);
        v43 = [(HMDAccessoryDiagnosticsManagerInternal *)v39 currentDiagnosticsSession];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __90__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferRequestWithOptions_completion___block_invoke;
        v49[3] = &unk_279731AF8;
        objc_copyWeak(&v52, buf);
        v51 = v7;
        v50 = v6;
        [v43 setUpWithOptions:v50 completion:v49];

        objc_destroyWeak(&v52);
        objc_destroyWeak(buf);
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v10;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v47;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Diagnostic cloud metadata not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v44);
        if (![(HMDAccessoryDiagnosticsManager *)v45 cloudFetchInProgress])
        {
          [(HMDAccessoryDiagnosticsManager *)v45 _fetchCloudDiagnosticsMetadata];
        }

        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        v7[2](v7, v48, 0);
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v20;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Transport is not data stream, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v7[2](v7, v21, 0);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v10;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer failed as the request is not supported.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v7[2](v7, v26, 0);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __90__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferRequestWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [WeakRetained currentDiagnosticsSession];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v5)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup data transfer session with error: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [v11 _clearCurrentDiagnosticsSession:v5];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v20;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Diagnostics transfer session was setup successfully", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v21 = *(a1 + 32);
      if (v21)
      {
        v22 = [v21 metadataRequired];
      }

      else
      {
        v22 = 1;
      }

      [v11 _readDiagnosticsDataWithCloudKitMetadataRequirement:v22 completion:*(a1 + 40)];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = WeakRetained;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup data transfer session, current diagnostics session is nil", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
    [v16 _clearCurrentDiagnosticsSession:v19];
    (*(*(a1 + 40) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsService];
  v7 = [v6 findCharacteristicWithType:*MEMORY[0x277CCFAD8]];

  if (v7)
  {
    v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
    v9 = [v7 value];

    if (v9)
    {
      [(HMDAccessoryDiagnosticsManager *)self _updateDiagnosticSettings];
    }

    else if ([v8 isReachable])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v8 identifier];
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempting to read and update the diagnostic settings for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [HMDCharacteristicRequest requestWithCharacteristic:v7];
      objc_initWeak(buf, v12);
      v23 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v18 = [(HMDAccessoryDiagnosticsManagerInternal *)v12 workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __95__HMDAccessoryDiagnosticsManager__readRequiredDiagnosticCharacteristicsIfNeededWithCompletion___block_invoke;
      v20[3] = &unk_2797351F8;
      objc_copyWeak(&v22, buf);
      v21 = v4;
      [v8 readCharacteristicValues:v17 source:1020 queue:v18 completionHandler:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);

      goto LABEL_10;
    }

    (*(v4 + 2))(v4, 0);
LABEL_10:

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v4 + 2))(v4, v10);

LABEL_11:
  v19 = *MEMORY[0x277D85DE8];
}

void __95__HMDAccessoryDiagnosticsManager__readRequiredDiagnosticCharacteristicsIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v5);

    v6 = [v11 firstObject];
    v7 = [v6 error];

    if (!v7)
    {
      [v4 _updateDiagnosticSettings];
    }

    v8 = *(a1 + 32);
    v9 = [v6 error];
    (*(v8 + 16))(v8, v9);
  }

  else
  {
    v10 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 16))(v10, v6);
  }
}

- (BOOL)_isRequestSupported:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
  v6 = [v5 currentSnapshot];

  if (v6)
  {
    if (v4)
    {
      v7 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
      v8 = [v7 currentSnapshot];

      v9 = [v4 logSize];
      if (!v9 || (v10 = v9, [v8 options], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "value"), v11, v10, (v12 & 2) != 0))
      {
        v23 = [v4 delay];
        if (!v23 || (v24 = v23, [v8 options], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "value"), v25, v24, (v26 & 1) != 0))
        {
          if (![v4 recordAudio] || (objc_msgSend(v8, "audioDiagnostics"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "value"), v32, (v33 & 1) != 0))
          {
            if (![v4 enableAudioClips] || (objc_msgSend(v8, "audioDiagnostics"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "value"), v35, (v36 & 2) != 0))
            {
              if ([v4 snapshotType] != 1 || (objc_msgSend(v8, "type"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "value"), v38, (v39 & 1) != 0))
              {
                if ([v4 snapshotType] != 2 || (objc_msgSend(v8, "type"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "value"), v41, (v42 & 2) != 0))
                {
                  v22 = 1;
                  goto LABEL_35;
                }

                v13 = objc_autoreleasePoolPush();
                v43 = self;
                v15 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = HMFGetLogIdentifier();
                  v46 = 138543362;
                  v47 = v16;
                  v17 = "%{public}@ADK snapshot requested, but not supported on the accessory.";
                  goto LABEL_33;
                }
              }

              else
              {
                v13 = objc_autoreleasePoolPush();
                v40 = self;
                v15 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = HMFGetLogIdentifier();
                  v46 = 138543362;
                  v47 = v16;
                  v17 = "%{public}@Manufacturer snapshot requested, but not supported on the accessory.";
                  goto LABEL_33;
                }
              }
            }

            else
            {
              v13 = objc_autoreleasePoolPush();
              v37 = self;
              v15 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = HMFGetLogIdentifier();
                v46 = 138543362;
                v47 = v16;
                v17 = "%{public}@Audio clips requested, but not supported on the accessory.";
                goto LABEL_33;
              }
            }
          }

          else
          {
            v13 = objc_autoreleasePoolPush();
            v34 = self;
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = HMFGetLogIdentifier();
              v46 = 138543362;
              v47 = v16;
              v17 = "%{public}@Audio recording requested, but not supported on the accessory.";
              goto LABEL_33;
            }
          }
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          v27 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = HMFGetLogIdentifier();
            v46 = 138543362;
            v47 = v16;
            v17 = "%{public}@Delay requested, but not supported on the accessory.";
            goto LABEL_33;
          }
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = HMFGetLogIdentifier();
          v46 = 138543362;
          v47 = v16;
          v17 = "%{public}@Custom max log size requested, but not supported on the accessory.";
LABEL_33:
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, v17, &v46, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v13);
      v22 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@No options selected, default request will be issued.", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v22 = 1;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Diagnostic settings not configured yet", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = 0;
  }

LABEL_36:

  v44 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_notifyClientsOfDiagnosticsTransferSupportUpdated
{
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4 = [v5 supportedDiagnostics];
  [(HMDAccessoryDiagnosticsManagerInternal *)self notifyClientsOfSupportedDiagnostics:v4];
}

- (void)_updateDiagnosticSettings
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsService];
  v5 = [v4 findCharacteristicWithType:*MEMORY[0x277CCFAD8]];

  v6 = [v5 value];

  if (v6)
  {
    v7 = MEMORY[0x277CFEC68];
    v8 = [v5 value];
    v53 = 0;
    v9 = [v7 parsedFromData:v8 error:&v53];
    v10 = v53;

    v11 = [v9 format];
    if (v11 || ([v9 type], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v9, "options"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v36 = [v9 audioDiagnostics];

      if (!v36)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v52 = v10;
          [(HMDAccessoryDiagnosticsManagerInternal *)v38 accessory];
          v41 = v50 = v37;
          v42 = [v41 name];
          v43 = [(HMDAccessoryDiagnosticsManagerInternal *)v38 accessory];
          v44 = [v43 uuid];
          v45 = [v44 UUIDString];
          *buf = 138544130;
          v55 = v40;
          v56 = 2112;
          v57 = v42;
          v58 = 2112;
          v59 = v45;
          v60 = 2112;
          v61 = v52;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse accessory supported diagnostics snapshot (%@/%@) with error: %@", buf, 0x2Au);

          v37 = v50;
          v10 = v52;
        }

        objc_autoreleasePoolPop(v37);
        goto LABEL_10;
      }
    }

    v12 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
    v13 = [v12 currentSnapshot];
    v14 = [v13 isEqual:v9];

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        v48 = [(HMDAccessoryDiagnosticsManagerInternal *)v16 accessory];
        v18 = [v48 name];
        [(HMDAccessoryDiagnosticsManagerInternal *)v16 accessory];
        v47 = v49 = v15;
        [v47 uuid];
        v19 = v51 = v10;
        v20 = [v19 UUIDString];
        v21 = [(HMDAccessoryDiagnosticsManager *)v16 diagnosticsSettings];
        v22 = [v21 currentSnapshot];
        *buf = 138544386;
        v55 = v46;
        v56 = 2112;
        v57 = v18;
        v58 = 2112;
        v59 = v20;
        v23 = v20;
        v60 = 2112;
        v61 = v22;
        v62 = 2112;
        v63 = v9;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating accessory diagnostics snapshot for %@/%@: %@ -> %@", buf, 0x34u);

        v10 = v51;
        v15 = v49;
      }

      objc_autoreleasePoolPop(v15);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [(HMDAccessoryDiagnosticsManager *)v16 _clearCurrentDiagnosticsSession:v24];

      v25 = [(HMDAccessoryDiagnosticsManager *)v16 diagnosticsSettings];
      [v25 setCurrentSnapshot:v9];

      [(HMDAccessoryDiagnosticsManager *)v16 _notifyClientsOfDiagnosticsTransferSupportUpdated];
    }

LABEL_10:

    goto LABEL_14;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [(HMDAccessoryDiagnosticsManagerInternal *)v27 accessory];
    v31 = [v30 name];
    v32 = [(HMDAccessoryDiagnosticsManagerInternal *)v27 accessory];
    v33 = [v32 uuid];
    v34 = [v33 UUIDString];
    *buf = 138543874;
    v55 = v29;
    v56 = 2112;
    v57 = v31;
    v58 = 2112;
    v59 = v34;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@No diagnostics supported configuration (%@/%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
LABEL_14:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessagesAndNotifications
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_handleCharacteristicsUpdatedNotification_ name:@"kHMDNotificationCharacteristicsUpdated" object:v3];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_handleCharacteristicValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:v3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:v3];

  v7 = [v3 findCharacteristicType:*MEMORY[0x277CCFAD8] forServiceType:*MEMORY[0x277CD0E28]];
  v8 = v7;
  if (v7)
  {
    v25[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    v10 = [(HMDAccessoryDiagnosticsManagerInternal *)self clientIdentifier];
    [v3 setNotificationsEnabled:1 forCharacteristics:v9 clientIdentifier:v10];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v3 name];
      v16 = [v3 uuid];
      v17 = [v16 UUIDString];
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Expected diagnostics characteristic not present for accessory(%@/%@)", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_shutDown
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessoryDiagnosticsManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryDiagnosticsManager *)v5 _clearCurrentDiagnosticsSession:0];
  [(HMDAccessoryDiagnosticsManager *)v5 setDiagnosticsSettings:0];
  [(HMDAccessoryDiagnosticsManager *)v5 setDidShutDown:1];
  [(HMDAccessoryDiagnosticsManager *)v5 _notifyClientsOfDiagnosticsTransferSupportUpdated];
  [(HMDAccessoryDiagnosticsManager *)v5 _invalidateCloudDiagnosticsMetadata];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessoryDiagnosticsManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryDiagnosticsManager *)v5 _registerForMessagesAndNotifications];
  v8 = [HMDAccessoryDiagnosticsSettings alloc];
  v9 = [(HMDAccessoryDiagnosticsManager *)v5 diagnosticsService];
  v10 = [(HMDAccessoryDiagnosticsSettings *)v8 initWithService:v9];
  [(HMDAccessoryDiagnosticsManager *)v5 setDiagnosticsSettings:v10];

  [(HMDAccessoryDiagnosticsManager *)v5 _updateDiagnosticSettings];
  [(HMDAccessoryDiagnosticsManager *)v5 _fetchCloudDiagnosticsMetadata];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiagnosticsTransferWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v8);

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferWithOptions_completion___block_invoke;
  v11[3] = &unk_2797346E0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(HMDAccessoryDiagnosticsManager *)self _readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required diagnostic characteristics. Error: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [WeakRetained _handleDiagnosticsTransferRequestWithOptions:*(a1 + 32) completion:*(a1 + 40)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDiagnosticsTransferWithOptions:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke_2;
  v3[3] = &unk_27972D428;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _handleDiagnosticsTransferWithOptions:v2 completion:v3];
}

void __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) shortDescription];
      *buf = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer request failed for message: %@. Error: %@.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  if (v6)
  {
    v15 = *MEMORY[0x277CCEA28];
    v12 = encodeRootObject();
    v16 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v13 = 0;
  }

  [*(a1 + 40) respondWithPayload:v13 error:{v5, v15}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConfiguredNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDAccessoryDiagnosticsManager_handleAccessoryConfiguredNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __72__HMDAccessoryDiagnosticsManager_handleAccessoryConfiguredNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [*(a1 + 40) diagnosticsService];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 supportedDiagnostics];

      if (!v7)
      {
        v8 = *(a1 + 40);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __72__HMDAccessoryDiagnosticsManager_handleAccessoryConfiguredNotification___block_invoke_2;
        v9[3] = &unk_2797359D8;
        v9[4] = v8;
        [v8 _readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:v9];
      }
    }
  }
}

void __72__HMDAccessoryDiagnosticsManager_handleAccessoryConfiguredNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required diagnostic characteristics with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicValueUpdatedNotification:(id)a3
{
  v4 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDAccessoryDiagnosticsManager_handleCharacteristicValueUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)handleCharacteristicsUpdatedNotification:(id)a3
{
  v4 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryDiagnosticsManager_handleCharacteristicsUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)shutDown
{
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDAccessoryDiagnosticsManager_shutDown__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)start
{
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMDAccessoryDiagnosticsManager_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4 = [v3 findCharacteristicType:*MEMORY[0x277CCFAD8] forServiceType:*MEMORY[0x277CD0E28]];
  v5 = v4;
  if (v4)
  {
    v22[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v7 = [(HMDAccessoryDiagnosticsManagerInternal *)self clientIdentifier];
    [v3 setNotificationsEnabled:0 forCharacteristics:v6 clientIdentifier:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not disabling notification since diagnostics snapshot characteristic is not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v15;
    v20 = 2048;
    v21 = v13;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory diagnostics manager: %p destroyed", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17.receiver = v13;
  v17.super_class = HMDAccessoryDiagnosticsManager;
  [(HMDAccessoryDiagnosticsManager *)&v17 dealloc];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryDiagnosticsManager;
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
  v6 = [v4 initWithName:@"Diagnostics Settings" value:v5];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];
  v9 = [v7 initWithName:@"Diagnostics Session" value:v8];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDiagnosticsManager *)self didShutDown];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"didShutDown" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [v3 arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDAccessoryDiagnosticsManager)initWithAccessory:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (v8 && (isKindOfClass & 1) != 0)
  {
    v15.receiver = self;
    v15.super_class = HMDAccessoryDiagnosticsManager;
    v10 = [(HMDAccessoryDiagnosticsManagerInternal *)&v15 initWithAccessory:v8];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_diagnosticsService, a4);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    [(HMDDefaultSimpleDownloader *)v13 .cxx_destruct];
  }

  return result;
}

- (void)_invalidateCloudDiagnosticsMetadata
{
  v3 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  [v3 shutdownForClient:self];
}

- (void)_callCompletionHandler:(id)a3 diagnostics:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDAccessoryDiagnosticsManager_Cloud___callCompletionHandler_diagnostics_error___block_invoke;
  block[3] = &unk_2797355D0;
  v17 = v10;
  v18 = v8;
  v16 = v9;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, block);
}

- (void)_fetchModelDiagnosticsMetadataForAccessory:(id)a3 withCompletion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  v10 = [v6 metadataIdentifier];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Fetching diagnostics parameters locally for accessory with identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, v12);
    v16 = [MEMORY[0x277CBEB98] setWithObject:v10];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __99__HMDAccessoryDiagnosticsManager_Cloud___fetchModelDiagnosticsMetadataForAccessory_withCompletion___block_invoke;
    v20[3] = &unk_279731820;
    objc_copyWeak(&v23, buf);
    v21 = v10;
    v22 = v7;
    [v9 fetchPairedMetadataVersionConfigurationsForAccessories:v16 completion:v20];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to get cloud diagnostics parameters due to failure to derive identifier for accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v7 + 2))(v7, 0, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __99__HMDAccessoryDiagnosticsManager_Cloud___fetchModelDiagnosticsMetadataForAccessory_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v40 = 138543874;
      v41 = v11;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetched accessory metadata for %@ failed with error %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 _callCompletionHandler:*(a1 + 40) diagnostics:0 error:v6];
  }

  else if (v5)
  {
    v13 = [v5 allObjects];
    v14 = [v13 firstObject];

    v15 = [v14 diagnostics];

    v16 = objc_autoreleasePoolPush();
    v17 = WeakRetained;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v14 diagnostics];
        v22 = *(a1 + 32);
        v40 = 138543874;
        v41 = v20;
        v42 = 2112;
        v43 = v21;
        v44 = 2112;
        v45 = v22;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched diagnostics metadata %@ from model for accessory with identifier %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v23 = *(a1 + 40);
      v24 = [v14 diagnostics];
      v25 = v17;
      v26 = v23;
      v27 = v24;
      v28 = 0;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = *(a1 + 32);
        v40 = 138543618;
        v41 = v36;
        v42 = 2112;
        v43 = v37;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics metadata not present in version configuration for accessory %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v38 = *(a1 + 40);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v25 = v17;
      v26 = v38;
      v27 = 0;
      v28 = v24;
    }

    [v25 _callCompletionHandler:v26 diagnostics:v27 error:v28];
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = WeakRetained;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = *(a1 + 32);
      v40 = 138543618;
      v41 = v32;
      v42 = 2112;
      v43 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Fetched accessory metadata for %@ failed due to nil metadata", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v34 = *(a1 + 40);
    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v30 _callCompletionHandler:v34 diagnostics:0 error:v35];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)__fetchCloudDiagnosticsMetadataForAccessory:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke;
  v9[3] = &unk_279735168;
  v10 = v6;
  v11 = v5;
  v9[4] = self;
  v7 = v6;
  v8 = v5;
  [v7 startupForClient:self completion:v9];
}

void __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start up firewall rule manager: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke_4;
    v10[3] = &unk_27972DF20;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v8 fetchCloudChangesWithCompletion:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch changes from firewall rule manager: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fetchCloudDiagnosticsMetadata
{
  [(HMDAccessoryDiagnosticsManager *)self setCloudFetchInProgress:1];
  objc_initWeak(&location, self);
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDAccessoryDiagnosticsManager_Cloud___fetchCloudDiagnosticsMetadata__block_invoke;
  v4[3] = &unk_279734708;
  objc_copyWeak(&v5, &location);
  [(HMDAccessoryDiagnosticsManager *)self __fetchCloudDiagnosticsMetadataForAccessory:v3 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__HMDAccessoryDiagnosticsManager_Cloud___fetchCloudDiagnosticsMetadata__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = v5;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v15 = v9;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud diagnostics metadata with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [v7 setCloudFetchInProgress:0];
    }

    else
    {
      v10 = [WeakRetained workQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71__HMDAccessoryDiagnosticsManager_Cloud___fetchCloudDiagnosticsMetadata__block_invoke_1;
      v12[3] = &unk_2797359B0;
      v12[4] = v5;
      v13 = 0;
      dispatch_async(v10, v12);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HMDAccessoryDiagnosticsManager_Cloud___fetchCloudDiagnosticsMetadata__block_invoke_1(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) accessory];
    v7 = [v6 name];
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@fetching diagnostics cloud metadata for accessory %@ completed with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setCloudFetchCompleted:1];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)a3
{
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4 = [v3 metadataIdentifier];

  if (v4)
  {
    [MEMORY[0x277CBEB98] setWithObject:v4];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v5 = ;

  return v5;
}

@end