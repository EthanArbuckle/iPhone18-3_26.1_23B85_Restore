@interface HMMTROTAProviderDelegate
+ (id)logCategory;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTROTAProviderDelegate)initWithQueue:(id)queue browser:(id)browser;
- (id)generateUpdateToken;
- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)server retryCount:(int64_t)count completionHandler:(id)handler;
- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)server;
- (void)applyUpdateTimerExpiredForAccessoryServer:(id)server softwareVersion:(id)version didTimeout:(id)timeout;
- (void)handleApplyUpdateRequestForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
- (void)handleBDXQueryForNodeID:(id)d controller:(id)controller blockSize:(id)size blockIndex:(id)index bytesToSkip:(id)skip completion:(id)completion;
- (void)handleBDXTransferSessionBeginForNodeID:(id)d controller:(id)controller fileDesignator:(id)designator offset:(id)offset completion:(id)completion;
- (void)handleBDXTransferSessionEndForNodeID:(id)d controller:(id)controller error:(id)error;
- (void)handleNotifyUpdateAppliedForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
- (void)handleQueryImageForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion;
@end

@implementation HMMTROTAProviderDelegate

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)server retryCount:(int64_t)count completionHandler:(id)handler
{
  v49 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = serverCopy;
  primaryAccessory = [serverCopy primaryAccessory];
  services = [primaryAccessory services];

  v11 = [services countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(services);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        type = [v15 type];
        v17 = [type isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          countCopy = count;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          characteristics = [v15 characteristics];
          v19 = [characteristics countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v40;
            while (2)
            {
              v22 = v8;
              for (j = 0; j != v20; ++j)
              {
                if (*v40 != v21)
                {
                  objc_enumerationMutation(characteristics);
                }

                v24 = *(*(&v39 + 1) + 8 * j);
                type2 = [v24 type];
                v26 = [type2 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  v8 = v22;
                  [v22 addObject:v24];
                  goto LABEL_20;
                }
              }

              v20 = [characteristics countByEnumeratingWithState:&v39 objects:v47 count:16];
              v8 = v22;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:

          count = countCopy;
          goto LABEL_21;
        }
      }

      v12 = [services countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  clientQueue = [(HMMTROTAProviderDelegate *)self clientQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __103__HMMTROTAProviderDelegate__refreshHAPFirmwareRevisionForAccessoryServer_retryCount_completionHandler___block_invoke;
  v35[3] = &unk_2786EDE10;
  v35[4] = self;
  countCopy2 = count;
  v36 = v34;
  v37 = handlerCopy;
  v28 = handlerCopy;
  v29 = v34;
  [v29 fetchAndNotifyCharacteristics:v8 timeout:clientQueue completionQueue:v35 completionHandler:60.0];

  v30 = *MEMORY[0x277D85DE8];
}

void __103__HMMTROTAProviderDelegate__refreshHAPFirmwareRevisionForAccessoryServer_retryCount_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v29 = a1;
  if (v6)
  {
    v7 = *(a1 + 56);
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v7 > 4)
    {
      if (v11)
      {
        v25 = HMFGetLogIdentifier();
        v26 = *(v29 + 56);
        *buf = 138543874;
        v37 = v25;
        v38 = 2112;
        v39 = v6;
        v40 = 2048;
        v41 = v26;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Max retries reached to refresh FirmwareRevision: error: %@, retryCount:%ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      (*(*(v29 + 48) + 16))();
    }

    else
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(v29 + 56);
        *buf = 138543874;
        v37 = v12;
        v38 = 2112;
        v39 = v6;
        v40 = 2048;
        v41 = v13;
        _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to refresh FirmwareRevision: error: %@, retryCount:%ld", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      [*(v29 + 32) _refreshHAPFirmwareRevisionForAccessoryServer:*(v29 + 40) retryCount:*(v29 + 56) + 1 completionHandler:*(v29 + 48)];
    }
  }

  else
  {
    v28 = v5;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v18 value];
            v24 = [v18 error];
            *buf = 138543874;
            v37 = v22;
            v38 = 2112;
            v39 = v23;
            v40 = 2112;
            v41 = v24;
            _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Read completion contains tuple with value:%@ error: %@", buf, 0x20u);

            a1 = v29;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    (*(*(a1 + 48) + 16))();
    v6 = 0;
    v5 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)server
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = serverCopy;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@applyUpdateRequestTimerExpiredForAccessoryServer for accessory %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  matterFirmwareUpdateStatus = [serverCopy matterFirmwareUpdateStatus];
  [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

  [serverCopy setOtaApplyUpdateRequestTimer:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)applyUpdateTimerExpiredForAccessoryServer:(id)server softwareVersion:(id)version didTimeout:(id)timeout
{
  v49 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  versionCopy = version;
  timeoutCopy = timeout;
  softwareVersionNumber = [serverCopy softwareVersionNumber];
  [serverCopy setOtaUpdateToken:0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke;
  v37[3] = &unk_2786F0378;
  v12 = serverCopy;
  v38 = v12;
  v13 = versionCopy;
  v39 = v13;
  v14 = softwareVersionNumber;
  v40 = v14;
  v15 = timeoutCopy;
  v41 = v15;
  selfCopy = self;
  v16 = MEMORY[0x2318887D0](v37);
  v17 = [v15 isEqualToNumber:&unk_283EE8088];
  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v44 = v22;
      v45 = 2112;
      v46 = v13;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Timed out applying update version %@ for Accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    matterFirmwareUpdateStatus = [v12 matterFirmwareUpdateStatus];
    [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

    [v12 setOtaApplyUpdateRequestTimer:0];
    v16[2](v16, 0);
  }

  else
  {
    if (v21)
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v44 = v24;
      v45 = 2112;
      v46 = v13;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Successfully updated to version %@ without sending NotifyUpdateApplied command for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [v12 updateSoftwareVersion:v13];
    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_43;
    v35[3] = &unk_2786EF290;
    v26 = v25;
    v36 = v26;
    [(HMMTROTAProviderDelegate *)selfCopy2 _refreshHAPFirmwareRevisionForAccessoryServer:v12 completionHandler:v35];
    dispatch_group_enter(v26);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2_44;
    v33[3] = &unk_2786EF290;
    v34 = v26;
    v27 = v26;
    [(HMMTROTAProviderDelegate *)selfCopy2 _refreshThreadCapabilitiesForAccessoryServer:v12 completion:v33];
    clientQueue = [(HMMTROTAProviderDelegate *)selfCopy2 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_3;
    block[3] = &unk_2786EF5A8;
    v31 = v12;
    v32 = v16;
    dispatch_group_notify(v27, clientQueue, block);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke(uint64_t a1)
{
  v2 = [HMMTRSoftwareUpdateProviderNotifyUpdateParams alloc];
  v3 = [*(a1 + 32) otaUpdateToken];
  v4 = *(a1 + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "linkLayerType")}];
  v6 = [(HMMTRSoftwareUpdateProviderNotifyUpdateParams *)v2 initWithUpdateToken:v3 softwareVersion:v4 linkTypeForMetrics:v5 previousSoftwareVersionNumberForMetrics:*(a1 + 48) didTimeout:*(a1 + 56)];

  WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 16));
  v8 = [WeakRetained softwareUpdateProvider];
  v9 = [*(a1 + 32) currentPairing];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2;
  v10[3] = &unk_2786EF9E0;
  v10[4] = *(a1 + 64);
  v11 = *(a1 + 32);
  [v8 notifyDelegateOfNotifyUpdateWithPairing:v9 params:v6 completionHandler:v10];
}

uint64_t __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) matterFirmwareUpdateStatus];
  [v2 updateFirmwareUpdateStatus:6];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2(uint64_t a1, void *a2)
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
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@notifyDelegateOfNotifyUpdateWithPairing failed for accessory %@ with error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)generateUpdateToken
{
  v2 = [MEMORY[0x277CBEB28] dataWithCapacity:32];
  v3 = 8;
  do
  {
    v6 = arc4random();
    [v2 appendBytes:&v6 length:4];
    --v3;
  }

  while (v3);
  v4 = [MEMORY[0x277CBEA90] dataWithData:v2];

  return v4;
}

- (void)handleBDXQueryForNodeID:(id)d controller:(id)controller blockSize:(id)size blockIndex:(id)index bytesToSkip:(id)skip completion:(id)completion
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  sizeCopy = size;
  indexCopy = index;
  skipCopy = skip;
  completionCopy = completion;
  integerValue = [indexCopy integerValue];
  if (integerValue < 10 || !(integerValue % 0x64uLL))
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544130;
      v52 = v23;
      v53 = 2112;
      v54 = dCopy;
      v55 = 2112;
      v56 = sizeCopy;
      v57 = 2112;
      v58 = indexCopy;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXQueryForNodeID command {nodeID = %@, blockSize: %@, blockIndex: %@}", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v25 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (v25)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke;
      v44[3] = &unk_2786EEE48;
      v45 = v25;
      v46 = skipCopy;
      v47 = sizeCopy;
      v48 = indexCopy;
      selfCopy2 = self;
      v26 = completionCopy;
      v37 = indexCopy;
      v27 = completionCopy;
      v28 = sizeCopy;
      v29 = skipCopy;
      v30 = v26;
      v50 = v26;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke_36;
      v39[3] = &unk_2786EDDE8;
      v39[4] = self;
      v40 = dCopy;
      v41 = v47;
      v42 = v48;
      v31 = v30;
      skipCopy = v29;
      sizeCopy = v28;
      completionCopy = v27;
      indexCopy = v37;
      v43 = v31;
      [v45 queueAccessoryOperation:v44 highPriority:1 completion:v39];
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v35;
      v53 = 2112;
      v54 = dCopy;
      v55 = 2112;
      v56 = 0;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) otaFileOffset];
  v3 = [v2 unsignedLongValue];
  v4 = [*(a1 + 40) unsignedLongLongValue] + v3;
  v5 = [*(a1 + 48) unsignedLongValue];
  v6 = v4 + [*(a1 + 56) unsignedLongValue] * v5;

  v7 = [*(a1 + 32) otaFileHandle];
  v21 = 0;
  [v7 seekToOffset:v6 error:&v21];
  v8 = v21;

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 64);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
      v14 = *(a1 + 32);
      *buf = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error seeking to offset %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v15 = [*(a1 + 32) otaFileHandle];
    v16 = [v15 readDataOfLength:{objc_msgSend(*(a1 + 48), "unsignedLongValue")}];

    v17 = *(a1 + 72);
    v18 = [*(a1 + 32) otaFileHandle];
    v19 = [v18 availableData];
    (*(v17 + 16))(v17, v16, [v19 length] == 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v12 = 138544386;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@handleBDXQueryForNodeID command {nodeID = %@, blockSize: %@, blockIndex: %@}. Error: %@", &v12, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionEndForNodeID:(id)d controller:(id)controller error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionEndForNodeID command {nodeID = %@, error = %@}", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v16 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      objc_autoreleasePoolPop(v22);
      goto LABEL_14;
    }

    v25 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = dCopy;
    v26 = "%{public}@No paired accessory found for nodeID %@";
    v27 = v24;
    v28 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_22AEAE000, v27, v28, v26, &v32, 0x16u);

    goto LABEL_11;
  }

  [v16 setOtaFileHandle:0];
  [v16 setOtaFileOffset:0];
  if (!errorCopy)
  {
    otaApplyUpdateRequestTimer = [v16 otaApplyUpdateRequestTimer];

    if (otaApplyUpdateRequestTimer)
    {
      otaApplyUpdateRequestTimer2 = [v16 otaApplyUpdateRequestTimer];
      [otaApplyUpdateRequestTimer2 start];

      goto LABEL_14;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v25 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = v16;
    v26 = "%{public}@Received ApplyUpdateRequest before BDXTransferSessionEnd for accessory %@";
    v27 = v24;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v20;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@BDX transfer failed for accessory %@, error = %@}", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  matterFirmwareUpdateStatus = [v16 matterFirmwareUpdateStatus];
  [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];

  [v16 setOtaApplyUpdateRequestTimer:0];
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionBeginForNodeID:(id)d controller:(id)controller fileDesignator:(id)designator offset:(id)offset completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  designatorCopy = designator;
  offsetCopy = offset;
  completionCopy = completion;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v61 = v20;
    v62 = 2112;
    v63 = dCopy;
    v64 = 2112;
    v65 = designatorCopy;
    v66 = 2112;
    v67 = offsetCopy;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionBeginForNodeID command {nodeID = %@, path = %@, offset = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v22 = [WeakRetained accessoryServerWithNodeID:dCopy];

  if (v22)
  {
    v23 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:designatorCopy];
    if (v23)
    {
      v59 = 0;
      [v23 seekToOffset:objc_msgSend(offsetCopy error:{"unsignedLongValue"), &v59}];
      v24 = v59;
      if (v24)
      {
        v25 = v24;
        v56 = controllerCopy;
        v26 = objc_autoreleasePoolPush();
        v27 = selfCopy;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v26;
          v29 = designatorCopy;
          v31 = v30 = offsetCopy;
          *buf = 138544130;
          v61 = v31;
          v62 = 2112;
          v63 = v29;
          v64 = 2112;
          v65 = v30;
          v66 = 2112;
          v67 = v22;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error seeking file (%@) to offset %@ for accessory %@", buf, 0x2Au);

          offsetCopy = v30;
          designatorCopy = v29;
          v26 = v55;
        }

        objc_autoreleasePoolPop(v26);
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
        completionCopy[2](completionCopy, v32);

        controllerCopy = v56;
      }

      else
      {
        otaApplyUpdateRequestTimer = [v22 otaApplyUpdateRequestTimer];

        if (otaApplyUpdateRequestTimer)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v58 = designatorCopy;
            v47 = v46 = offsetCopy;
            *buf = 138543618;
            v61 = v47;
            v62 = 2112;
            v63 = v22;
            _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected BDXTransferSessionBegin when we were waiting for ApplyUpdateRequest after a BDX transfer was previously completed for accessory %@", buf, 0x16u);

            offsetCopy = v46;
            designatorCopy = v58;
          }

          objc_autoreleasePoolPop(v43);
          otaApplyUpdateRequestTimer2 = [v22 otaApplyUpdateRequestTimer];
          [otaApplyUpdateRequestTimer2 stop];
        }

        else
        {
          v49 = designatorCopy;
          v50 = offsetCopy;
          v51 = [HMMTROTAApplyUpdateRequestTimer alloc];
          otaApplyUpdateRequestTimer2 = [(HMMTROTAProviderDelegate *)selfCopy clientQueue];
          v52 = [(HMMTROTAApplyUpdateRequestTimer *)v51 initWithServer:v22 otaProvider:selfCopy queue:otaApplyUpdateRequestTimer2];
          [v22 setOtaApplyUpdateRequestTimer:v52];

          offsetCopy = v50;
          designatorCopy = v49;
        }

        matterFirmwareUpdateStatus = [v22 matterFirmwareUpdateStatus];
        [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:4];

        [v22 setOtaFileHandle:v23];
        [v22 setOtaFileOffset:offsetCopy];
        completionCopy[2](completionCopy, 0);
        v25 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v57 = offsetCopy;
        v41 = v40 = controllerCopy;
        *buf = 138543874;
        v61 = v41;
        v62 = 2112;
        v63 = designatorCopy;
        v64 = 2112;
        v65 = v22;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to open file using path '%@' for accessory %@", buf, 0x20u);

        controllerCopy = v40;
        offsetCopy = v57;
      }

      objc_autoreleasePoolPop(v37);
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      completionCopy[2](completionCopy, v25);
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = selfCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v36;
      v62 = 2112;
      v63 = dCopy;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    completionCopy[2](completionCopy, v23);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)handleNotifyUpdateAppliedForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    updateToken = [paramsCopy updateToken];
    softwareVersion = [paramsCopy softwareVersion];
    v21 = 138544130;
    v22 = v17;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = updateToken;
    v27 = 2112;
    v28 = softwareVersion;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleNotifyUpdateAppliedForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}, is simply returning OK without performing any additional processing.", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  completionCopy[2](completionCopy, 0);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleApplyUpdateRequestForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v70 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    updateToken = [paramsCopy updateToken];
    getNewVersion = [paramsCopy getNewVersion];
    *buf = 138544130;
    v63 = v17;
    v64 = 2112;
    v65 = dCopy;
    v66 = 2112;
    v67 = updateToken;
    v68 = 2112;
    v69 = getNewVersion;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleApplyUpdateRequestForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
  v21 = [WeakRetained accessoryServerWithNodeID:dCopy];

  v22 = objc_alloc_init(MEMORY[0x277CD5440]);
  if (v21)
  {
    v56 = controllerCopy;
    otaUpdateToken = [v21 otaUpdateToken];
    updateToken2 = [paramsCopy updateToken];
    v25 = [otaUpdateToken isEqualToData:updateToken2];

    if (v25)
    {
      v54 = dCopy;
      otaApplyUpdateRequestTimer = [v21 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer)
      {
        otaApplyUpdateRequestTimer2 = [v21 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer2 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      v28 = [HMMTRSoftwareUpdateProviderApplyUpdateRequestParams alloc];
      otaUpdateToken2 = [v21 otaUpdateToken];
      getNewVersion2 = [paramsCopy getNewVersion];
      v31 = [(HMMTRSoftwareUpdateProviderApplyUpdateRequestParams *)v28 initWithUpdateToken:otaUpdateToken2 softwareVersion:getNewVersion2];

      v32 = objc_loadWeakRetained(&selfCopy->_browser);
      softwareUpdateProvider = [v32 softwareUpdateProvider];
      currentPairing = [v21 currentPairing];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __91__HMMTROTAProviderDelegate_handleApplyUpdateRequestForNodeID_controller_params_completion___block_invoke;
      v57[3] = &unk_2786EDDC0;
      v57[4] = selfCopy;
      v58 = v21;
      v61 = completionCopy;
      v59 = v22;
      v60 = paramsCopy;
      [softwareUpdateProvider notifyDelegateOfApplyUpdateWithPairing:currentPairing requestParams:v31 completionHandler:v57];

      dCopy = v54;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [v21 otaUpdateToken];
        v43 = v55 = dCopy;
        updateToken3 = [paramsCopy updateToken];
        *buf = 138544130;
        v63 = v42;
        v64 = 2112;
        v65 = v43;
        v66 = 2112;
        v67 = updateToken3;
        v68 = 2112;
        v69 = v21;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Provided token %@ doesn't match assigned token %@ for accessory %@ - Allow update", buf, 0x2Au);

        dCopy = v55;
      }

      objc_autoreleasePoolPop(v39);
      otaApplyUpdateRequestTimer3 = [v21 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer3)
      {
        otaApplyUpdateRequestTimer4 = [v21 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer4 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      [v22 setAction:&unk_283EE7FE0];
      [v22 setDelayedActionTime:&unk_283EE8070];
      v47 = [HMMTROTAApplyUpdateTimer alloc];
      getNewVersion3 = [paramsCopy getNewVersion];
      delayedActionTime = [v22 delayedActionTime];
      clientQueue = [(HMMTROTAProviderDelegate *)v40 clientQueue];
      v51 = [(HMMTROTAApplyUpdateTimer *)v47 initWithServer:v21 otaProvider:v40 newVersion:getNewVersion3 delay:delayedActionTime queue:clientQueue];
      [v21 setOtaUpdateTimer:v51];

      otaUpdateTimer = [v21 otaUpdateTimer];
      [otaUpdateTimer start];

      (*(completionCopy + 2))(completionCopy, v22, 0);
    }

    controllerCopy = v56;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v38;
      v64 = 2112;
      v65 = dCopy;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory for nodeID %@ - Allow update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [v22 setAction:&unk_283EE7FE0];
    (*(completionCopy + 2))(completionCopy, v22, 0);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __91__HMMTROTAProviderDelegate_handleApplyUpdateRequestForNodeID_controller_params_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
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
      v11 = *(a1 + 40);
      v40 = 138543874;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@notifyDelegateOfApplyUpdateWithPairing failed for accessory %@ with error: %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = *(a1 + 64);
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    v14 = [v5 action];
    v15 = [v14 integerValue];

    if (v15 == 2)
    {
      v22 = *(a1 + 48);
      v23 = &unk_283EE8010;
    }

    else if (v15 == 1)
    {
      v22 = *(a1 + 48);
      v23 = &unk_283EE8028;
    }

    else
    {
      if (v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v5 action];
          v21 = *(a1 + 40);
          v40 = 138543874;
          v41 = v19;
          v42 = 2112;
          v43 = v20;
          v44 = 2112;
          v45 = v21;
          _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown action %@ for accessory %@ - Defaulting to allow update", &v40, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
      }

      v22 = *(a1 + 48);
      v23 = &unk_283EE7FE0;
    }

    [v22 setAction:v23];
    v24 = [v5 delayedActionTime];
    [*(a1 + 48) setDelayedActionTime:v24];

    v25 = [*(a1 + 48) action];
    v26 = [v25 isEqualToNumber:&unk_283EE7FE0];

    if (v26)
    {
      v27 = [HMMTROTAApplyUpdateTimer alloc];
      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      v30 = [*(a1 + 56) getNewVersion];
      v31 = [*(a1 + 48) delayedActionTime];
      v32 = [*(a1 + 32) clientQueue];
      v33 = [(HMMTROTAApplyUpdateTimer *)v27 initWithServer:v28 otaProvider:v29 newVersion:v30 delay:v31 queue:v32];
      [*(a1 + 40) setOtaUpdateTimer:v33];

      v34 = [*(a1 + 40) otaUpdateTimer];
      [v34 start];

      v35 = [*(a1 + 40) matterFirmwareUpdateStatus];
      v36 = [*(a1 + 56) getNewVersion];
      [v35 updateDownloadedFirmwareVersionNumber:v36];

      v37 = [*(a1 + 40) matterFirmwareUpdateStatus];
      [v37 updateFirmwareUpdateStatus:5];
    }

    v38 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)handleQueryImageForNodeID:(id)d controller:(id)controller params:(id)params completion:(id)completion
{
  v137 = *MEMORY[0x277D85DE8];
  dCopy = d;
  controllerCopy = controller;
  paramsCopy = params;
  completionCopy = completion;
  v13 = objc_alloc_init(MEMORY[0x277CD5448]);
  string = [MEMORY[0x277CCAB68] string];
  protocolsSupported = [paramsCopy protocolsSupported];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke;
  v113[3] = &unk_2786EDD70;
  v107 = string;
  v114 = v107;
  [protocolsSupported hmf_enumerateWithAutoreleasePoolUsingBlock:v113];

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  v106 = v13;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v94 = HMFGetLogIdentifier();
    vendorID = [paramsCopy vendorID];
    productID = [paramsCopy productID];
    [paramsCopy softwareVersion];
    v20 = v102 = completionCopy;
    protocolsSupported2 = [paramsCopy protocolsSupported];
    v98 = v16;
    v21 = [protocolsSupported2 count];
    hardwareVersion = [paramsCopy hardwareVersion];
    location = [paramsCopy location];
    [paramsCopy requestorCanConsent];
    v24 = v100 = selfCopy;
    [paramsCopy metadataForProvider];
    v104 = paramsCopy;
    v26 = v25 = dCopy;
    *buf = 138545922;
    v116 = v94;
    v117 = 2112;
    v118 = v25;
    v119 = 2112;
    v120 = vendorID;
    v121 = 2112;
    v122 = productID;
    v123 = 2112;
    v124 = v20;
    v125 = 2048;
    v126 = v21;
    v16 = v98;
    v127 = 2112;
    v128 = v107;
    v129 = 2112;
    v130 = hardwareVersion;
    v131 = 2112;
    v132 = location;
    v133 = 2112;
    v134 = v24;
    v135 = 2112;
    v136 = v26;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing QueryImage command { nodeID = %@, vendorId = %@, productId = %@, softwareVersion = %@, protocolsSupported size = %lu, protocols[%@], hardwareVersion = %@, location = %@, requestorCanConsent = %@, metadataForProvider = %@ }", buf, 0x70u);

    dCopy = v25;
    paramsCopy = v104;

    selfCopy = v100;
    v13 = v106;

    completionCopy = v102;
  }

  objc_autoreleasePoolPop(v16);
  protocolsSupported3 = [paramsCopy protocolsSupported];
  v28 = [protocolsSupported3 containsObject:&unk_283EE7FE0];

  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_browser);
    if (!WeakRetained)
    {
      v75 = objc_autoreleasePoolPush();
      v76 = selfCopy;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = HMFGetLogIdentifier();
        vendorID2 = [paramsCopy vendorID];
        [paramsCopy productID];
        v81 = v80 = completionCopy;
        *buf = 138544130;
        v116 = v78;
        v117 = 2112;
        v118 = dCopy;
        v119 = 2112;
        v120 = vendorID2;
        v121 = 2112;
        v122 = v81;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

        completionCopy = v80;
        v13 = v106;
      }

      objc_autoreleasePoolPop(v75);
      [v13 setStatus:&unk_283EE8010];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      completionCopy[2](completionCopy, v13, v30);
      goto LABEL_30;
    }

    v29 = objc_loadWeakRetained(&selfCopy->_browser);
    v30 = [v29 accessoryServerWithNodeID:dCopy];

    v101 = selfCopy;
    v103 = completionCopy;
    if (v30)
    {
      currentPairing = [v30 currentPairing];

      if (currentPairing)
      {
        goto LABEL_11;
      }
    }

    v32 = objc_autoreleasePoolPush();
    v33 = selfCopy;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      vendorID3 = [paramsCopy vendorID];
      productID2 = [paramsCopy productID];
      *buf = 138544130;
      v116 = v35;
      v117 = 2112;
      v118 = dCopy;
      v119 = 2112;
      v120 = vendorID3;
      v121 = 2112;
      v122 = productID2;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Could not associate QueryImage request {nodeID=%@, vendorId=%@, productId=%@} to a paired accessory", buf, 0x2Au);

      completionCopy = v103;
      v13 = v106;

      selfCopy = v101;
    }

    objc_autoreleasePoolPop(v32);
    if (!v30)
    {
      v82 = objc_autoreleasePoolPush();
      v83 = v33;
      v84 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = HMFGetLogIdentifier();
        *buf = 138543362;
        v116 = v85;
        _os_log_impl(&dword_22AEAE000, v84, OS_LOG_TYPE_ERROR, "%{public}@Cannot proceed if accessory server is nil, sending an error back to accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v82);
      [v13 setStatus:&unk_283EE8010];
      v86 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:4 userInfo:0];
      completionCopy[2](completionCopy, v13, v86);

      v30 = 0;
      goto LABEL_30;
    }

    currentPairing2 = [v30 currentPairing];

    if (currentPairing2)
    {
LABEL_11:
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        vendorID4 = [paramsCopy vendorID];
        productID3 = [paramsCopy productID];
        *buf = 138544386;
        v116 = v42;
        v117 = 2112;
        v118 = v30;
        v119 = 2112;
        v120 = dCopy;
        v121 = 2112;
        v122 = vendorID4;
        v123 = 2112;
        v124 = productID3;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Found accessory %@ for QueryImage request {nodeID=%@, vendorId=%@, productId=%@} ", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v39);
      softwareVersion = [paramsCopy softwareVersion];
      [v30 updateSoftwareVersion:softwareVersion];

      otaAnnounceTimer = [v30 otaAnnounceTimer];

      if (otaAnnounceTimer)
      {
        otaAnnounceTimer2 = [v30 otaAnnounceTimer];
        [otaAnnounceTimer2 stop];

        [v30 setOtaAnnounceTimer:0];
      }

      v97 = dCopy;
      otaApplyUpdateRequestTimer = [v30 otaApplyUpdateRequestTimer];

      if (otaApplyUpdateRequestTimer)
      {
        v49 = objc_autoreleasePoolPush();
        v50 = v40;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = HMFGetLogIdentifier();
          *buf = 138543618;
          v116 = v52;
          v117 = 2112;
          v118 = v30;
          _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected QueryImage when we were waiting for ApplyUpdateRequest after BDX transfer completed, resetting state for accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v49);
        otaApplyUpdateRequestTimer2 = [v30 otaApplyUpdateRequestTimer];
        [otaApplyUpdateRequestTimer2 stop];

        [v30 setOtaApplyUpdateRequestTimer:0];
        matterFirmwareUpdateStatus = [v30 matterFirmwareUpdateStatus];
        [matterFirmwareUpdateStatus updateFirmwareUpdateStatus:0];
      }

      v55 = [HMMTRSoftwareUpdateProviderQueryImageRequestParams alloc];
      vendorID5 = [paramsCopy vendorID];
      productID4 = [paramsCopy productID];
      softwareVersion2 = [paramsCopy softwareVersion];
      [paramsCopy hardwareVersion];
      v59 = v95 = v40;
      location2 = [paramsCopy location];
      requestorCanConsent = [paramsCopy requestorCanConsent];
      metadataForProvider = [paramsCopy metadataForProvider];
      v63 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)v55 initWithVendorID:vendorID5 productId:productID4 softwareVersion:softwareVersion2 protocolsSupported:&unk_283EE9288 hardwareVersion:v59 location:location2 requestorCanConsent:requestorCanConsent metadataForProvider:metadataForProvider];

      v64 = objc_loadWeakRetained(&v101->_browser);
      softwareUpdateProvider = [v64 softwareUpdateProvider];
      currentPairing3 = [v30 currentPairing];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke_21;
      v108[3] = &unk_2786EDD98;
      v108[4] = v95;
      v30 = v30;
      v109 = v30;
      v13 = v106;
      v110 = v106;
      completionCopy = v103;
      v112 = v103;
      v111 = paramsCopy;
      [softwareUpdateProvider triggerQueryImageWithPairing:currentPairing3 accessoryInitiated:1 requestParams:v63 completionHandler:v108];

      dCopy = v97;
    }

    else
    {
      [v13 setStatus:&unk_283EE8028];
      [v13 setDelayedActionTime:&unk_283EE9300];
      v88 = objc_autoreleasePoolPush();
      v89 = v33;
      v90 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v91 = HMFGetLogIdentifier();
        delayedActionTime = [v13 delayedActionTime];
        *buf = 138543618;
        v116 = v91;
        v117 = 2112;
        v118 = delayedActionTime;
        _os_log_impl(&dword_22AEAE000, v90, OS_LOG_TYPE_INFO, "%{public}@Do not have pairing information for this accessory. Requesting accessory to check back again after %@ secs", buf, 0x16u);

        v13 = v106;
      }

      objc_autoreleasePoolPop(v88);
      completionCopy[2](completionCopy, v13, 0);
    }

LABEL_30:
    v74 = controllerCopy;

    goto LABEL_31;
  }

  v67 = objc_autoreleasePoolPush();
  v68 = selfCopy;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = HMFGetLogIdentifier();
    vendorID6 = [paramsCopy vendorID];
    [paramsCopy productID];
    v73 = v72 = completionCopy;
    *buf = 138544130;
    v116 = v70;
    v117 = 2112;
    v118 = dCopy;
    v119 = 2112;
    v120 = vendorID6;
    v121 = 2112;
    v122 = v73;
    _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, "%{public}@Accessory did not list BDXSynchronous as a supported protocol for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

    completionCopy = v72;
    v13 = v106;
  }

  objc_autoreleasePoolPop(v67);
  [v13 setStatus:&unk_283EE7FF8];
  completionCopy[2](completionCopy, v13, 0);
  v74 = controllerCopy;
LABEL_31:

  v87 = *MEMORY[0x277D85DE8];
}

void __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 status];
    v16 = [v15 integerValue];

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v55 = HMFGetLogIdentifier();
          v56 = *(a1 + 40);
          v61 = 138543618;
          v62 = v55;
          v63 = 2112;
          v64 = v56;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update image not available for accessory %@", &v61, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v27 = *(a1 + 48);
        v28 = &unk_283EE8010;
      }

      else
      {
        if (v16 != 3)
        {
          goto LABEL_17;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = *(a1 + 40);
          v26 = [v5 status];
          v61 = 138543874;
          v62 = v24;
          v63 = 2112;
          v64 = v25;
          v65 = 2112;
          v66 = v26;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@QueryImage state %@ indicates that the download protocol is not supported for accessory %@", &v61, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v27 = *(a1 + 48);
        v28 = &unk_283EE7FF8;
      }

      [v27 setStatus:v28];
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = *(a1 + 40);
            v61 = 138543618;
            v62 = v21;
            v63 = 2112;
            v64 = v22;
            _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update provider is busy for accessory %@", &v61, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          [*(a1 + 48) setStatus:&unk_283EE8028];
          v23 = [v5 delayedActionTime];
          [*(a1 + 48) setDelayedActionTime:v23];

          goto LABEL_34;
        }

LABEL_17:
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = *(a1 + 40);
          v31 = [v5 status];
          v61 = 138543874;
          v62 = v29;
          v63 = 2112;
          v64 = v30;
          v65 = 2112;
          v66 = v31;
          _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unknown QueryImage state %@ for accessory %@", &v61, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        goto LABEL_5;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        v33 = *(a1 + 40);
        v61 = 138543618;
        v62 = v32;
        v63 = 2112;
        v64 = v33;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@Software update image available for accessory %@", &v61, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 48) setStatus:&unk_283EE7FE0];
      v34 = [v5 userConsentNeeded];
      v35 = [v34 integerValue];

      if (v35 == 1)
      {
        v36 = [*(a1 + 56) requestorCanConsent];
        v37 = [v36 integerValue];

        v38 = objc_autoreleasePoolPush();
        v39 = *(a1 + 32);
        v40 = HMFGetOSLogHandle();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
        if (v37 != 1)
        {
          if (v41)
          {
            v59 = HMFGetLogIdentifier();
            v60 = *(a1 + 40);
            v61 = 138543618;
            v62 = v59;
            v63 = 2112;
            v64 = v60;
            _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@User Consent Pending for accessory %@", &v61, 0x16u);
          }

          objc_autoreleasePoolPop(v38);
          [*(a1 + 48) setStatus:&unk_283EE8028];
          [*(a1 + 48) setUserConsentNeeded:&unk_283EE8070];
          [*(a1 + 48) setDelayedActionTime:&unk_283EE9300];
          goto LABEL_34;
        }

        if (v41)
        {
          v42 = HMFGetLogIdentifier();
          v43 = *(a1 + 40);
          v61 = 138543618;
          v62 = v42;
          v63 = 2112;
          v64 = v43;
          _os_log_impl(&dword_22AEAE000, v40, OS_LOG_TYPE_INFO, "%{public}@User Consent Pending, requestor can consent for accessory %@", &v61, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
        [*(a1 + 48) setUserConsentNeeded:&unk_283EE8058];
      }

      v44 = [v5 imageURI];
      [*(a1 + 48) setImageURI:v44];

      v45 = [v5 softwareVersion];
      [*(a1 + 48) setSoftwareVersion:v45];

      v46 = [v5 softwareVersionString];
      [*(a1 + 48) setSoftwareVersionString:v46];

      v47 = [*(a1 + 32) generateUpdateToken];
      [*(a1 + 40) setOtaUpdateToken:v47];

      v48 = [*(a1 + 40) otaUpdateToken];
      [*(a1 + 48) setUpdateToken:v48];

      v49 = objc_autoreleasePoolPush();
      v50 = *(a1 + 32);
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        v53 = *(a1 + 40);
        v54 = [*(a1 + 48) updateToken];
        v61 = 138543874;
        v62 = v52;
        v63 = 2112;
        v64 = v53;
        v65 = 2112;
        v66 = v54;
        _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@Associated accessory %@ with update token %@", &v61, 0x20u);
      }

      objc_autoreleasePoolPop(v49);
    }

LABEL_34:
    v57 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
    goto LABEL_35;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v61 = 138543874;
    v62 = v10;
    v63 = 2112;
    v64 = v11;
    v65 = 2112;
    v66 = v6;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error while trying to QueryImage for accessory %@: %@.", &v61, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 48) setStatus:&unk_283EE8010];
LABEL_5:
  v12 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:4 userInfo:0];
  (*(v12 + 16))(v12, v13, v14);

LABEL_35:
  v58 = *MEMORY[0x277D85DE8];
}

- (HMMTROTAProviderDelegate)initWithQueue:(id)queue browser:(id)browser
{
  queueCopy = queue;
  browserCopy = browser;
  v12.receiver = self;
  v12.super_class = HMMTROTAProviderDelegate;
  v9 = [(HMMTROTAProviderDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, queue);
    objc_storeWeak(&v10->_browser, browserCopy);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t43 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t43, &__block_literal_global_3349);
  }

  v3 = logCategory__hmf_once_v44;

  return v3;
}

uint64_t __39__HMMTROTAProviderDelegate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v44 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end