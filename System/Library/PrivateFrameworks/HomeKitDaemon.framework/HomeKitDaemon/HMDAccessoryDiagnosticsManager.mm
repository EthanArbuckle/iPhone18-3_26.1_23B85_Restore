@interface HMDAccessoryDiagnosticsManager
- (BOOL)_isRequestSupported:(id)supported;
- (HMDAccessoryDiagnosticsManager)initWithAccessory:(id)accessory service:(id)service;
- (id)attributeDescriptions;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager;
- (void)__fetchCloudDiagnosticsMetadataForAccessory:(id)accessory completion:(id)completion;
- (void)_callCompletionHandler:(id)handler diagnostics:(id)diagnostics error:(id)error;
- (void)_clearCurrentDiagnosticsSession:(id)session;
- (void)_fetchCloudDiagnosticsMetadata;
- (void)_fetchModelDiagnosticsMetadataForAccessory:(id)accessory withCompletion:(id)completion;
- (void)_handleDiagnosticsTransferRequestWithOptions:(id)options completion:(id)completion;
- (void)_handleDiagnosticsTransferWithOptions:(id)options completion:(id)completion;
- (void)_invalidateCloudDiagnosticsMetadata;
- (void)_notifyClientsOfDiagnosticsTransferSupportUpdated;
- (void)_readDiagnosticsDataWithCloudKitMetadataRequirement:(BOOL)requirement completion:(id)completion;
- (void)_readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:(id)completion;
- (void)_registerForMessagesAndNotifications;
- (void)_shutDown;
- (void)_start;
- (void)_updateDiagnosticSettings;
- (void)dealloc;
- (void)handleAccessoryConfiguredNotification:(id)notification;
- (void)handleCharacteristicValueUpdatedNotification:(id)notification;
- (void)handleCharacteristicsUpdatedNotification:(id)notification;
- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message;
- (void)shutDown;
- (void)start;
@end

@implementation HMDAccessoryDiagnosticsManager

- (void)_clearCurrentDiagnosticsSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentDiagnosticsSession = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];

  if (currentDiagnosticsSession)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      currentDiagnosticsSession2 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy currentDiagnosticsSession];
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = currentDiagnosticsSession2;
      v18 = 2112;
      v19 = sessionCopy;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Clear current session: %@ with error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    currentDiagnosticsSession3 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy currentDiagnosticsSession];
    [currentDiagnosticsSession3 shutDown];

    [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy setCurrentDiagnosticsSession:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_readDiagnosticsDataWithCloudKitMetadataRequirement:(BOOL)requirement completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  currentDiagnosticsSession = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = currentDiagnosticsSession;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Read diagnostics data for session: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  objc_initWeak(buf, selfCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke;
  v17[3] = &unk_27867F800;
  objc_copyWeak(&v19, buf);
  v15 = completionCopy;
  v18 = v15;
  requirementCopy = requirement;
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics data read failed with error: %@", buf, 0x16u);
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
    v27[2] = __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke_46;
    v27[3] = &unk_27867F7D8;
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Diagnostics metadata not required for session:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = objc_alloc(MEMORY[0x277CD16E0]);
    v23 = [MEMORY[0x277CBEBC0] URLWithString:&stru_283CF9D50];
    v24 = [MEMORY[0x277CBEBC0] URLWithString:&stru_283CF9D50];
    v25 = [v22 initWithSnapshotPath:v8 urlParameters:v9 privacyPolicyURL:v23 uploadDestination:v24 consentVersion:&unk_283E73DA8 uploadType:&unk_283E73DA8];

    [v18 _clearCurrentDiagnosticsSession:0];
    (*(*(a1 + 32) + 16))();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __97__HMDAccessoryDiagnosticsManager__readDiagnosticsDataWithCloudKitMetadataRequirement_completion___block_invoke_46(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetching cloud metadata from model failed with error: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Diagnostics data read completed for session:%@ metadata:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    [v21 _clearCurrentDiagnosticsSession:0];
    (*(*(a1 + 48) + 16))();

    v5 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiagnosticsTransferRequestWithOptions:(id)options completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Attempting to start diagnostics transfer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  if ([(HMDAccessoryDiagnosticsManager *)selfCopy _isRequestSupported:optionsCopy])
  {
    diagnosticsSettings = [(HMDAccessoryDiagnosticsManager *)selfCopy diagnosticsSettings];
    transport = [diagnosticsSettings transport];
    v15 = transport == @"DataStream";

    if (v15)
    {
      currentDiagnosticsSession = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy currentDiagnosticsSession];

      if (currentDiagnosticsSession)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@A session is already opened", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
        completionCopy[2](completionCopy, v33, 0);
      }

      else if ([(HMDAccessoryDiagnosticsManager *)selfCopy cloudFetchCompleted])
      {
        v34 = [HMDAccessoryDiagnosticsSession alloc];
        accessory = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy accessory];
        diagnosticsSettings2 = [(HMDAccessoryDiagnosticsManager *)selfCopy diagnosticsSettings];
        v37 = [(HMDAccessoryDiagnosticsSession *)v34 initWithAccessory:accessory settings:diagnosticsSettings2];
        [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy setCurrentDiagnosticsSession:v37];

        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          currentDiagnosticsSession2 = [(HMDAccessoryDiagnosticsManagerInternal *)v39 currentDiagnosticsSession];
          *buf = 138543618;
          v54 = v41;
          v55 = 2112;
          v56 = currentDiagnosticsSession2;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Setting up a diagnostics transfer session: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        objc_initWeak(buf, v39);
        currentDiagnosticsSession3 = [(HMDAccessoryDiagnosticsManagerInternal *)v39 currentDiagnosticsSession];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __90__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferRequestWithOptions_completion___block_invoke;
        v49[3] = &unk_278685EC0;
        objc_copyWeak(&v52, buf);
        v51 = completionCopy;
        v50 = optionsCopy;
        [currentDiagnosticsSession3 setUpWithOptions:v50 completion:v49];

        objc_destroyWeak(&v52);
        objc_destroyWeak(buf);
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543362;
          v54 = v47;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Diagnostic cloud metadata not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v44);
        if (![(HMDAccessoryDiagnosticsManager *)v45 cloudFetchInProgress])
        {
          [(HMDAccessoryDiagnosticsManager *)v45 _fetchCloudDiagnosticsMetadata];
        }

        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        completionCopy[2](completionCopy, v48, 0);
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v54 = v20;
        v55 = 2112;
        v56 = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Transport is not data stream, error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      completionCopy[2](completionCopy, v21, 0);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer failed as the request is not supported.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    completionCopy[2](completionCopy, v26, 0);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup data transfer session with error: %@", &v24, 0x16u);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Diagnostics transfer session was setup successfully", &v24, 0xCu);
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to setup data transfer session, current diagnostics session is nil", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
    [v16 _clearCurrentDiagnosticsSession:v19];
    (*(*(a1 + 40) + 16))();
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_readRequiredDiagnosticCharacteristicsIfNeededWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  diagnosticsService = [(HMDAccessoryDiagnosticsManager *)self diagnosticsService];
  v7 = [diagnosticsService findCharacteristicWithType:*MEMORY[0x277CCFAD8]];

  if (v7)
  {
    accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
    value = [v7 value];

    if (value)
    {
      [(HMDAccessoryDiagnosticsManager *)self _updateDiagnosticSettings];
    }

    else if ([accessory isReachable])
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        identifier = [accessory identifier];
        *buf = 138543618;
        v25 = v14;
        v26 = 2112;
        v27 = identifier;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempting to read and update the diagnostic settings for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [HMDCharacteristicRequest requestWithCharacteristic:v7];
      objc_initWeak(buf, selfCopy);
      v23 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      workQueue2 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __95__HMDAccessoryDiagnosticsManager__readRequiredDiagnosticCharacteristicsIfNeededWithCompletion___block_invoke;
      v20[3] = &unk_278689410;
      objc_copyWeak(&v22, buf);
      v21 = completionCopy;
      [accessory readCharacteristicValues:v17 source:1020 queue:workQueue2 completionHandler:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);

      goto LABEL_10;
    }

    (*(completionCopy + 2))(completionCopy, 0);
LABEL_10:

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(completionCopy + 2))(completionCopy, v10);

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

- (BOOL)_isRequestSupported:(id)supported
{
  v48 = *MEMORY[0x277D85DE8];
  supportedCopy = supported;
  diagnosticsSettings = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
  currentSnapshot = [diagnosticsSettings currentSnapshot];

  if (currentSnapshot)
  {
    if (supportedCopy)
    {
      diagnosticsSettings2 = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
      currentSnapshot2 = [diagnosticsSettings2 currentSnapshot];

      logSize = [supportedCopy logSize];
      if (!logSize || (v10 = logSize, [currentSnapshot2 options], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "value"), v11, v10, (v12 & 2) != 0))
      {
        delay = [supportedCopy delay];
        if (!delay || (v24 = delay, [currentSnapshot2 options], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "value"), v25, v24, (v26 & 1) != 0))
        {
          if (![supportedCopy recordAudio] || (objc_msgSend(currentSnapshot2, "audioDiagnostics"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "value"), v32, (v33 & 1) != 0))
          {
            if (![supportedCopy enableAudioClips] || (objc_msgSend(currentSnapshot2, "audioDiagnostics"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "value"), v35, (v36 & 2) != 0))
            {
              if ([supportedCopy snapshotType] != 1 || (objc_msgSend(currentSnapshot2, "type"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "value"), v38, (v39 & 1) != 0))
              {
                if ([supportedCopy snapshotType] != 2 || (objc_msgSend(currentSnapshot2, "type"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "value"), v41, (v42 & 2) != 0))
                {
                  v22 = 1;
                  goto LABEL_35;
                }

                v13 = objc_autoreleasePoolPush();
                selfCopy = self;
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
                selfCopy2 = self;
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
              selfCopy3 = self;
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
            selfCopy4 = self;
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
          selfCopy5 = self;
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
        selfCopy6 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = HMFGetLogIdentifier();
          v46 = 138543362;
          v47 = v16;
          v17 = "%{public}@Custom max log size requested, but not supported on the accessory.";
LABEL_33:
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, v17, &v46, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v13);
      v22 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@No options selected, default request will be issued.", &v46, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v22 = 1;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v46 = 138543362;
      v47 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Diagnostic settings not configured yet", &v46, 0xCu);
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
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  supportedDiagnostics = [accessory supportedDiagnostics];
  [(HMDAccessoryDiagnosticsManagerInternal *)self notifyClientsOfSupportedDiagnostics:supportedDiagnostics];
}

- (void)_updateDiagnosticSettings
{
  v64 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  diagnosticsService = [(HMDAccessoryDiagnosticsManager *)self diagnosticsService];
  v5 = [diagnosticsService findCharacteristicWithType:*MEMORY[0x277CCFAD8]];

  value = [v5 value];

  if (value)
  {
    v7 = MEMORY[0x277CFEC68];
    value2 = [v5 value];
    v53 = 0;
    v9 = [v7 parsedFromData:value2 error:&v53];
    v10 = v53;

    format = [v9 format];
    if (format || ([v9 type], (format = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v9, "options"), (format = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      audioDiagnostics = [v9 audioDiagnostics];

      if (!audioDiagnostics)
      {
        v37 = objc_autoreleasePoolPush();
        selfCopy = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v52 = v10;
          [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy accessory];
          v41 = v50 = v37;
          name = [v41 name];
          accessory = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy accessory];
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];
          *buf = 138544130;
          v55 = v40;
          v56 = 2112;
          v57 = name;
          v58 = 2112;
          v59 = uUIDString;
          v60 = 2112;
          v61 = v52;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse accessory supported diagnostics snapshot (%@/%@) with error: %@", buf, 0x2Au);

          v37 = v50;
          v10 = v52;
        }

        objc_autoreleasePoolPop(v37);
        goto LABEL_10;
      }
    }

    diagnosticsSettings = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
    currentSnapshot = [diagnosticsSettings currentSnapshot];
    v14 = [currentSnapshot isEqual:v9];

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v46 = HMFGetLogIdentifier();
        accessory2 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy2 accessory];
        name2 = [accessory2 name];
        [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy2 accessory];
        v47 = v49 = v15;
        [v47 uuid];
        v19 = v51 = v10;
        uUIDString2 = [v19 UUIDString];
        diagnosticsSettings2 = [(HMDAccessoryDiagnosticsManager *)selfCopy2 diagnosticsSettings];
        currentSnapshot2 = [diagnosticsSettings2 currentSnapshot];
        *buf = 138544386;
        v55 = v46;
        v56 = 2112;
        v57 = name2;
        v58 = 2112;
        v59 = uUIDString2;
        v23 = uUIDString2;
        v60 = 2112;
        v61 = currentSnapshot2;
        v62 = 2112;
        v63 = v9;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating accessory diagnostics snapshot for %@/%@: %@ -> %@", buf, 0x34u);

        v10 = v51;
        v15 = v49;
      }

      objc_autoreleasePoolPop(v15);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      [(HMDAccessoryDiagnosticsManager *)selfCopy2 _clearCurrentDiagnosticsSession:v24];

      diagnosticsSettings3 = [(HMDAccessoryDiagnosticsManager *)selfCopy2 diagnosticsSettings];
      [diagnosticsSettings3 setCurrentSnapshot:v9];

      [(HMDAccessoryDiagnosticsManager *)selfCopy2 _notifyClientsOfDiagnosticsTransferSupportUpdated];
    }

LABEL_10:

    goto LABEL_14;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    accessory3 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy3 accessory];
    name3 = [accessory3 name];
    accessory4 = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy3 accessory];
    uuid2 = [accessory4 uuid];
    uUIDString3 = [uuid2 UUIDString];
    *buf = 138543874;
    v55 = v29;
    v56 = 2112;
    v57 = name3;
    v58 = 2112;
    v59 = uUIDString3;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@No diagnostics supported configuration (%@/%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
LABEL_14:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessagesAndNotifications
{
  v25[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_handleCharacteristicsUpdatedNotification_ name:@"kHMDNotificationCharacteristicsUpdated" object:accessory];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_handleCharacteristicValueUpdatedNotification_ name:@"HMDNotificationCharacteristicValueUpdated" object:accessory];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_handleAccessoryConfiguredNotification_ name:@"HMDAccessoryConnectedNotification" object:accessory];

  v7 = [accessory findCharacteristicType:*MEMORY[0x277CCFAD8] forServiceType:*MEMORY[0x277CD0E28]];
  v8 = v7;
  if (v7)
  {
    v25[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    clientIdentifier = [(HMDAccessoryDiagnosticsManagerInternal *)self clientIdentifier];
    [accessory setNotificationsEnabled:1 forCharacteristics:v9 clientIdentifier:clientIdentifier];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      name = [accessory name];
      uuid = [accessory uuid];
      uUIDString = [uuid UUIDString];
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = name;
      v23 = 2112;
      v24 = uUIDString;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Expected diagnostics characteristic not present for accessory(%@/%@)", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_shutDown
{
  v11 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryDiagnosticsManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Shutting down", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryDiagnosticsManager *)selfCopy _clearCurrentDiagnosticsSession:0];
  [(HMDAccessoryDiagnosticsManager *)selfCopy setDiagnosticsSettings:0];
  [(HMDAccessoryDiagnosticsManager *)selfCopy setDidShutDown:1];
  [(HMDAccessoryDiagnosticsManager *)selfCopy _notifyClientsOfDiagnosticsTransferSupportUpdated];
  [(HMDAccessoryDiagnosticsManager *)selfCopy _invalidateCloudDiagnosticsMetadata];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  v14 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDAccessoryDiagnosticsManager *)self didShutDown])
  {
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [(HMDAccessoryDiagnosticsManager *)selfCopy _registerForMessagesAndNotifications];
  v8 = [HMDAccessoryDiagnosticsSettings alloc];
  diagnosticsService = [(HMDAccessoryDiagnosticsManager *)selfCopy diagnosticsService];
  v10 = [(HMDAccessoryDiagnosticsSettings *)v8 initWithService:diagnosticsService];
  [(HMDAccessoryDiagnosticsManager *)selfCopy setDiagnosticsSettings:v10];

  [(HMDAccessoryDiagnosticsManager *)selfCopy _updateDiagnosticSettings];
  [(HMDAccessoryDiagnosticsManager *)selfCopy _fetchCloudDiagnosticsMetadata];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleDiagnosticsTransferWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HMDAccessoryDiagnosticsManager__handleDiagnosticsTransferWithOptions_completion___block_invoke;
  v11[3] = &unk_2786889F0;
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v13 = v9;
  v10 = optionsCopy;
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required diagnostic characteristics. Error: %@", &v11, 0x16u);
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

- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message
{
  optionsCopy = options;
  messageCopy = message;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = optionsCopy;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = optionsCopy;
  dispatch_async(workQueue, block);
}

void __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__HMDAccessoryDiagnosticsManager_handleDiagnosticsTransferWithOptions_message___block_invoke_2;
  v3[3] = &unk_27867F7B0;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer request failed for message: %@. Error: %@.", buf, 0x20u);
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

- (void)handleAccessoryConfiguredNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HMDAccessoryDiagnosticsManager_handleAccessoryConfiguredNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
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
        v9[3] = &unk_27868A250;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to read the required diagnostic characteristics with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleCharacteristicValueUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDAccessoryDiagnosticsManager_handleCharacteristicValueUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleCharacteristicsUpdatedNotification:(id)notification
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAccessoryDiagnosticsManager_handleCharacteristicsUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)shutDown
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDAccessoryDiagnosticsManager_shutDown__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)start
{
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMDAccessoryDiagnosticsManager_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)dealloc
{
  v22[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4 = [accessory findCharacteristicType:*MEMORY[0x277CCFAD8] forServiceType:*MEMORY[0x277CD0E28]];
  v5 = v4;
  if (v4)
  {
    v22[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    clientIdentifier = [(HMDAccessoryDiagnosticsManagerInternal *)self clientIdentifier];
    [accessory setNotificationsEnabled:0 forCharacteristics:v6 clientIdentifier:clientIdentifier];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not disabling notification since diagnostics snapshot characteristic is not present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v15;
    v20 = 2048;
    v21 = selfCopy2;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Accessory diagnostics manager: %p destroyed", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17.receiver = selfCopy2;
  v17.super_class = HMDAccessoryDiagnosticsManager;
  [(HMDAccessoryDiagnosticsManager *)&v17 dealloc];
  v16 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryDiagnosticsManager;
  attributeDescriptions = [(HMDAccessoryDiagnosticsManagerInternal *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  diagnosticsSettings = [(HMDAccessoryDiagnosticsManager *)self diagnosticsSettings];
  v6 = [v4 initWithName:@"Diagnostics Settings" value:diagnosticsSettings];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  currentDiagnosticsSession = [(HMDAccessoryDiagnosticsManagerInternal *)self currentDiagnosticsSession];
  v9 = [v7 initWithName:@"Diagnostics Session" value:currentDiagnosticsSession];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDiagnosticsManager *)self didShutDown];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"didShutDown" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDAccessoryDiagnosticsManager)initWithAccessory:(id)accessory service:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  v8 = accessoryCopy;
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
      objc_storeStrong(&v10->_diagnosticsService, service);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    [(HMDHH2MigrationLogEventsAnalyzer *)v13 .cxx_destruct];
  }

  return result;
}

- (void)_invalidateCloudDiagnosticsMetadata
{
  v3 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  [v3 shutdownForClient:self];
}

- (void)_callCompletionHandler:(id)handler diagnostics:(id)diagnostics error:(id)error
{
  handlerCopy = handler;
  diagnosticsCopy = diagnostics;
  errorCopy = error;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__HMDAccessoryDiagnosticsManager_Cloud___callCompletionHandler_diagnostics_error___block_invoke;
  block[3] = &unk_278689F98;
  v17 = errorCopy;
  v18 = handlerCopy;
  v16 = diagnosticsCopy;
  v12 = errorCopy;
  v13 = diagnosticsCopy;
  v14 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)_fetchModelDiagnosticsMetadataForAccessory:(id)accessory withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  metadataIdentifier = [accessoryCopy metadataIdentifier];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (metadataIdentifier)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v15;
      v26 = 2112;
      v27 = metadataIdentifier;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Fetching diagnostics parameters locally for accessory with identifier %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, selfCopy);
    v16 = [MEMORY[0x277CBEB98] setWithObject:metadataIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __99__HMDAccessoryDiagnosticsManager_Cloud___fetchModelDiagnosticsMetadataForAccessory_withCompletion___block_invoke;
    v20[3] = &unk_2786805A8;
    objc_copyWeak(&v23, buf);
    v21 = metadataIdentifier;
    v22 = completionCopy;
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to get cloud diagnostics parameters due to failure to derive identifier for accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, v18);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Fetched accessory metadata for %@ failed with error %@", &v40, 0x20u);
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
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched diagnostics metadata %@ from model for accessory with identifier %@", &v40, 0x20u);
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
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics metadata not present in version configuration for accessory %@", &v40, 0x16u);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Fetched accessory metadata for %@ failed due to nil metadata", &v40, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v34 = *(a1 + 40);
    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v30 _callCompletionHandler:v34 diagnostics:0 error:v35];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)__fetchCloudDiagnosticsMetadataForAccessory:(id)accessory completion:(id)completion
{
  completionCopy = completion;
  v6 = +[HMDNetworkRouterFirewallRuleManager sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke;
  v9[3] = &unk_278689358;
  v10 = v6;
  v11 = completionCopy;
  v9[4] = self;
  v7 = v6;
  v8 = completionCopy;
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start up firewall rule manager: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __96__HMDAccessoryDiagnosticsManager_Cloud____fetchCloudDiagnosticsMetadataForAccessory_completion___block_invoke_4;
    v10[3] = &unk_278680580;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch changes from firewall rule manager: %@", &v13, 0x16u);
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
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDAccessoryDiagnosticsManager_Cloud___fetchCloudDiagnosticsMetadata__block_invoke;
  v4[3] = &unk_278688A18;
  objc_copyWeak(&v5, &location);
  [(HMDAccessoryDiagnosticsManager *)self __fetchCloudDiagnosticsMetadataForAccessory:accessory completion:v4];

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
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud diagnostics metadata with error: %@", buf, 0x16u);
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
      v12[3] = &unk_27868A750;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@fetching diagnostics cloud metadata for accessory %@ completed with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) setCloudFetchCompleted:1];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager
{
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  metadataIdentifier = [accessory metadataIdentifier];

  if (metadataIdentifier)
  {
    [MEMORY[0x277CBEB98] setWithObject:metadataIdentifier];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v5 = ;

  return v5;
}

@end