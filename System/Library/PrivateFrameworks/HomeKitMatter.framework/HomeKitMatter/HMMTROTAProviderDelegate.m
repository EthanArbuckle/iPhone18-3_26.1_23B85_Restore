@interface HMMTROTAProviderDelegate
+ (id)logCategory;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTROTAProviderDelegate)initWithQueue:(id)a3 browser:(id)a4;
- (id)generateUpdateToken;
- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)a3 retryCount:(int64_t)a4 completionHandler:(id)a5;
- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)a3;
- (void)applyUpdateTimerExpiredForAccessoryServer:(id)a3 softwareVersion:(id)a4 didTimeout:(id)a5;
- (void)handleApplyUpdateRequestForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6;
- (void)handleBDXQueryForNodeID:(id)a3 controller:(id)a4 blockSize:(id)a5 blockIndex:(id)a6 bytesToSkip:(id)a7 completion:(id)a8;
- (void)handleBDXTransferSessionBeginForNodeID:(id)a3 controller:(id)a4 fileDesignator:(id)a5 offset:(id)a6 completion:(id)a7;
- (void)handleBDXTransferSessionEndForNodeID:(id)a3 controller:(id)a4 error:(id)a5;
- (void)handleNotifyUpdateAppliedForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6;
- (void)handleQueryImageForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6;
@end

@implementation HMMTROTAProviderDelegate

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)_refreshHAPFirmwareRevisionForAccessoryServer:(id)a3 retryCount:(int64_t)a4 completionHandler:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v32 = a5;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v34 = v7;
  v9 = [v7 primaryAccessory];
  v10 = [v9 services];

  v11 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [v15 type];
        v17 = [v16 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          v31 = a4;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v18 = [v15 characteristics];
          v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v39 + 1) + 8 * j);
                v25 = [v24 type];
                v26 = [v25 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

                if (v26)
                {
                  v8 = v22;
                  [v22 addObject:v24];
                  goto LABEL_20;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
              v8 = v22;
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:

          a4 = v31;
          goto LABEL_21;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v27 = [(HMMTROTAProviderDelegate *)self clientQueue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __103__HMMTROTAProviderDelegate__refreshHAPFirmwareRevisionForAccessoryServer_retryCount_completionHandler___block_invoke;
  v35[3] = &unk_2786EDE10;
  v35[4] = self;
  v38 = a4;
  v36 = v34;
  v37 = v32;
  v28 = v32;
  v29 = v34;
  [v29 fetchAndNotifyCharacteristics:v8 timeout:v27 completionQueue:v35 completionHandler:60.0];

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

- (void)applyUpdateRequestTimerExpiredForAccessoryServer:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@applyUpdateRequestTimerExpiredForAccessoryServer for accessory %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 matterFirmwareUpdateStatus];
  [v9 updateFirmwareUpdateStatus:0];

  [v4 setOtaApplyUpdateRequestTimer:0];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)applyUpdateTimerExpiredForAccessoryServer:(id)a3 softwareVersion:(id)a4 didTimeout:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 softwareVersionNumber];
  [v8 setOtaUpdateToken:0];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke;
  v37[3] = &unk_2786F0378;
  v12 = v8;
  v38 = v12;
  v13 = v9;
  v39 = v13;
  v14 = v11;
  v40 = v14;
  v15 = v10;
  v41 = v15;
  v42 = self;
  v16 = MEMORY[0x2318887D0](v37);
  v17 = [v15 isEqualToNumber:&unk_283EE8088];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
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
    v23 = [v12 matterFirmwareUpdateStatus];
    [v23 updateFirmwareUpdateStatus:0];

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
    [(HMMTROTAProviderDelegate *)v19 _refreshHAPFirmwareRevisionForAccessoryServer:v12 completionHandler:v35];
    dispatch_group_enter(v26);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_2_44;
    v33[3] = &unk_2786EF290;
    v34 = v26;
    v27 = v26;
    [(HMMTROTAProviderDelegate *)v19 _refreshThreadCapabilitiesForAccessoryServer:v12 completion:v33];
    v28 = [(HMMTROTAProviderDelegate *)v19 clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HMMTROTAProviderDelegate_applyUpdateTimerExpiredForAccessoryServer_softwareVersion_didTimeout___block_invoke_3;
    block[3] = &unk_2786EF5A8;
    v31 = v12;
    v32 = v16;
    dispatch_group_notify(v27, v28, block);
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

- (void)handleBDXQueryForNodeID:(id)a3 controller:(id)a4 blockSize:(id)a5 blockIndex:(id)a6 bytesToSkip:(id)a7 completion:(id)a8
{
  v59 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v38 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v16 integerValue];
  if (v19 < 10 || !(v19 % 0x64uLL))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544130;
      v52 = v23;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = v15;
      v57 = 2112;
      v58 = v16;
      _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXQueryForNodeID command {nodeID = %@, blockSize: %@, blockIndex: %@}", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
  }

  WeakRetained = objc_loadWeakRetained(&self->_browser);
  v25 = [WeakRetained accessoryServerWithNodeID:v14];

  if (v25)
  {
    if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke;
      v44[3] = &unk_2786EEE48;
      v45 = v25;
      v46 = v17;
      v47 = v15;
      v48 = v16;
      v49 = self;
      v26 = v18;
      v37 = v16;
      v27 = v18;
      v28 = v15;
      v29 = v17;
      v30 = v26;
      v50 = v26;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __107__HMMTROTAProviderDelegate_handleBDXQueryForNodeID_controller_blockSize_blockIndex_bytesToSkip_completion___block_invoke_36;
      v39[3] = &unk_2786EDDE8;
      v39[4] = self;
      v40 = v14;
      v41 = v47;
      v42 = v48;
      v31 = v30;
      v17 = v29;
      v15 = v28;
      v18 = v27;
      v16 = v37;
      v43 = v31;
      [v45 queueAccessoryOperation:v44 highPriority:1 completion:v39];
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v35;
      v53 = 2112;
      v54 = v14;
      v55 = 2112;
      v56 = 0;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    (*(v18 + 2))(v18, 0, 0);
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

- (void)handleBDXTransferSessionEndForNodeID:(id)a3 controller:(id)a4 error:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v14;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionEndForNodeID command {nodeID = %@, error = %@}", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  WeakRetained = objc_loadWeakRetained(&v12->_browser);
  v16 = [WeakRetained accessoryServerWithNodeID:v8];

  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v12;
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
    v35 = v8;
    v26 = "%{public}@No paired accessory found for nodeID %@";
    v27 = v24;
    v28 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_22AEAE000, v27, v28, v26, &v32, 0x16u);

    goto LABEL_11;
  }

  [v16 setOtaFileHandle:0];
  [v16 setOtaFileOffset:0];
  if (!v10)
  {
    v29 = [v16 otaApplyUpdateRequestTimer];

    if (v29)
    {
      v30 = [v16 otaApplyUpdateRequestTimer];
      [v30 start];

      goto LABEL_14;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = v12;
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
  v18 = v12;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v32 = 138543874;
    v33 = v20;
    v34 = 2112;
    v35 = v16;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@BDX transfer failed for accessory %@, error = %@}", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [v16 matterFirmwareUpdateStatus];
  [v21 updateFirmwareUpdateStatus:0];

  [v16 setOtaApplyUpdateRequestTimer:0];
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)handleBDXTransferSessionBeginForNodeID:(id)a3 controller:(id)a4 fileDesignator:(id)a5 offset:(id)a6 completion:(id)a7
{
  v68 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v61 = v20;
    v62 = 2112;
    v63 = v12;
    v64 = 2112;
    v65 = v14;
    v66 = 2112;
    v67 = v15;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Processing handleBDXTransferSessionBeginForNodeID command {nodeID = %@, path = %@, offset = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  WeakRetained = objc_loadWeakRetained(&v18->_browser);
  v22 = [WeakRetained accessoryServerWithNodeID:v12];

  if (v22)
  {
    v23 = [MEMORY[0x277CCA9F8] fileHandleForReadingAtPath:v14];
    if (v23)
    {
      v59 = 0;
      [v23 seekToOffset:objc_msgSend(v15 error:{"unsignedLongValue"), &v59}];
      v24 = v59;
      if (v24)
      {
        v25 = v24;
        v56 = v13;
        v26 = objc_autoreleasePoolPush();
        v27 = v18;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v55 = v26;
          v29 = v14;
          v31 = v30 = v15;
          *buf = 138544130;
          v61 = v31;
          v62 = 2112;
          v63 = v29;
          v64 = 2112;
          v65 = v30;
          v66 = 2112;
          v67 = v22;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error seeking file (%@) to offset %@ for accessory %@", buf, 0x2Au);

          v15 = v30;
          v14 = v29;
          v26 = v55;
        }

        objc_autoreleasePoolPop(v26);
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
        v16[2](v16, v32);

        v13 = v56;
      }

      else
      {
        v42 = [v22 otaApplyUpdateRequestTimer];

        if (v42)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v18;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v58 = v14;
            v47 = v46 = v15;
            *buf = 138543618;
            v61 = v47;
            v62 = 2112;
            v63 = v22;
            _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected BDXTransferSessionBegin when we were waiting for ApplyUpdateRequest after a BDX transfer was previously completed for accessory %@", buf, 0x16u);

            v15 = v46;
            v14 = v58;
          }

          objc_autoreleasePoolPop(v43);
          v48 = [v22 otaApplyUpdateRequestTimer];
          [v48 stop];
        }

        else
        {
          v49 = v14;
          v50 = v15;
          v51 = [HMMTROTAApplyUpdateRequestTimer alloc];
          v48 = [(HMMTROTAProviderDelegate *)v18 clientQueue];
          v52 = [(HMMTROTAApplyUpdateRequestTimer *)v51 initWithServer:v22 otaProvider:v18 queue:v48];
          [v22 setOtaApplyUpdateRequestTimer:v52];

          v15 = v50;
          v14 = v49;
        }

        v53 = [v22 matterFirmwareUpdateStatus];
        [v53 updateFirmwareUpdateStatus:4];

        [v22 setOtaFileHandle:v23];
        [v22 setOtaFileOffset:v15];
        v16[2](v16, 0);
        v25 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v18;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v57 = v15;
        v41 = v40 = v13;
        *buf = 138543874;
        v61 = v41;
        v62 = 2112;
        v63 = v14;
        v64 = 2112;
        v65 = v22;
        _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to open file using path '%@' for accessory %@", buf, 0x20u);

        v13 = v40;
        v15 = v57;
      }

      objc_autoreleasePoolPop(v37);
      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      v16[2](v16, v25);
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v18;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v36;
      v62 = 2112;
      v63 = v12;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory found for nodeID %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
    v16[2](v16, v23);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)handleNotifyUpdateAppliedForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v12 updateToken];
    v19 = [v12 softwareVersion];
    v21 = 138544130;
    v22 = v17;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleNotifyUpdateAppliedForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}, is simply returning OK without performing any additional processing.", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v13[2](v13, 0);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleApplyUpdateRequestForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v12 updateToken];
    v19 = [v12 getNewVersion];
    *buf = 138544130;
    v63 = v17;
    v64 = 2112;
    v65 = v10;
    v66 = 2112;
    v67 = v18;
    v68 = 2112;
    v69 = v19;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Processing handleApplyUpdateRequestForNodeID command {nodeID = %@, updateToken = %@, newVersion = %@}", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  WeakRetained = objc_loadWeakRetained(&v15->_browser);
  v21 = [WeakRetained accessoryServerWithNodeID:v10];

  v22 = objc_alloc_init(MEMORY[0x277CD5440]);
  if (v21)
  {
    v56 = v11;
    v23 = [v21 otaUpdateToken];
    v24 = [v12 updateToken];
    v25 = [v23 isEqualToData:v24];

    if (v25)
    {
      v54 = v10;
      v26 = [v21 otaApplyUpdateRequestTimer];

      if (v26)
      {
        v27 = [v21 otaApplyUpdateRequestTimer];
        [v27 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      v28 = [HMMTRSoftwareUpdateProviderApplyUpdateRequestParams alloc];
      v29 = [v21 otaUpdateToken];
      v30 = [v12 getNewVersion];
      v31 = [(HMMTRSoftwareUpdateProviderApplyUpdateRequestParams *)v28 initWithUpdateToken:v29 softwareVersion:v30];

      v32 = objc_loadWeakRetained(&v15->_browser);
      v33 = [v32 softwareUpdateProvider];
      v34 = [v21 currentPairing];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __91__HMMTROTAProviderDelegate_handleApplyUpdateRequestForNodeID_controller_params_completion___block_invoke;
      v57[3] = &unk_2786EDDC0;
      v57[4] = v15;
      v58 = v21;
      v61 = v13;
      v59 = v22;
      v60 = v12;
      [v33 notifyDelegateOfApplyUpdateWithPairing:v34 requestParams:v31 completionHandler:v57];

      v10 = v54;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v15;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        [v21 otaUpdateToken];
        v43 = v55 = v10;
        v44 = [v12 updateToken];
        *buf = 138544130;
        v63 = v42;
        v64 = 2112;
        v65 = v43;
        v66 = 2112;
        v67 = v44;
        v68 = 2112;
        v69 = v21;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Provided token %@ doesn't match assigned token %@ for accessory %@ - Allow update", buf, 0x2Au);

        v10 = v55;
      }

      objc_autoreleasePoolPop(v39);
      v45 = [v21 otaApplyUpdateRequestTimer];

      if (v45)
      {
        v46 = [v21 otaApplyUpdateRequestTimer];
        [v46 stop];

        [v21 setOtaApplyUpdateRequestTimer:0];
      }

      [v22 setAction:&unk_283EE7FE0];
      [v22 setDelayedActionTime:&unk_283EE8070];
      v47 = [HMMTROTAApplyUpdateTimer alloc];
      v48 = [v12 getNewVersion];
      v49 = [v22 delayedActionTime];
      v50 = [(HMMTROTAProviderDelegate *)v40 clientQueue];
      v51 = [(HMMTROTAApplyUpdateTimer *)v47 initWithServer:v21 otaProvider:v40 newVersion:v48 delay:v49 queue:v50];
      [v21 setOtaUpdateTimer:v51];

      v52 = [v21 otaUpdateTimer];
      [v52 start];

      (*(v13 + 2))(v13, v22, 0);
    }

    v11 = v56;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v15;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v63 = v38;
      v64 = 2112;
      v65 = v10;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@No paired accessory for nodeID %@ - Allow update", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    [v22 setAction:&unk_283EE7FE0];
    (*(v13 + 2))(v13, v22, 0);
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

- (void)handleQueryImageForNodeID:(id)a3 controller:(id)a4 params:(id)a5 completion:(id)a6
{
  v137 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v105 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CD5448]);
  v14 = [MEMORY[0x277CCAB68] string];
  v15 = [v11 protocolsSupported];
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 3221225472;
  v113[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke;
  v113[3] = &unk_2786EDD70;
  v107 = v14;
  v114 = v107;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v113];

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v106 = v13;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v94 = HMFGetLogIdentifier();
    v93 = [v11 vendorID];
    v19 = [v11 productID];
    [v11 softwareVersion];
    v20 = v102 = v12;
    v96 = [v11 protocolsSupported];
    v98 = v16;
    v21 = [v96 count];
    v22 = [v11 hardwareVersion];
    v23 = [v11 location];
    [v11 requestorCanConsent];
    v24 = v100 = v17;
    [v11 metadataForProvider];
    v104 = v11;
    v26 = v25 = v10;
    *buf = 138545922;
    v116 = v94;
    v117 = 2112;
    v118 = v25;
    v119 = 2112;
    v120 = v93;
    v121 = 2112;
    v122 = v19;
    v123 = 2112;
    v124 = v20;
    v125 = 2048;
    v126 = v21;
    v16 = v98;
    v127 = 2112;
    v128 = v107;
    v129 = 2112;
    v130 = v22;
    v131 = 2112;
    v132 = v23;
    v133 = 2112;
    v134 = v24;
    v135 = 2112;
    v136 = v26;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing QueryImage command { nodeID = %@, vendorId = %@, productId = %@, softwareVersion = %@, protocolsSupported size = %lu, protocols[%@], hardwareVersion = %@, location = %@, requestorCanConsent = %@, metadataForProvider = %@ }", buf, 0x70u);

    v10 = v25;
    v11 = v104;

    v17 = v100;
    v13 = v106;

    v12 = v102;
  }

  objc_autoreleasePoolPop(v16);
  v27 = [v11 protocolsSupported];
  v28 = [v27 containsObject:&unk_283EE7FE0];

  if (v28)
  {
    WeakRetained = objc_loadWeakRetained(&v17->_browser);
    if (!WeakRetained)
    {
      v75 = objc_autoreleasePoolPush();
      v76 = v17;
      v77 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = HMFGetLogIdentifier();
        v79 = [v11 vendorID];
        [v11 productID];
        v81 = v80 = v12;
        *buf = 138544130;
        v116 = v78;
        v117 = 2112;
        v118 = v10;
        v119 = 2112;
        v120 = v79;
        v121 = 2112;
        v122 = v81;
        _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_ERROR, "%{public}@Unable to get browser ref for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

        v12 = v80;
        v13 = v106;
      }

      objc_autoreleasePoolPop(v75);
      [v13 setStatus:&unk_283EE8010];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
      v12[2](v12, v13, v30);
      goto LABEL_30;
    }

    v29 = objc_loadWeakRetained(&v17->_browser);
    v30 = [v29 accessoryServerWithNodeID:v10];

    v101 = v17;
    v103 = v12;
    if (v30)
    {
      v31 = [v30 currentPairing];

      if (v31)
      {
        goto LABEL_11;
      }
    }

    v32 = objc_autoreleasePoolPush();
    v33 = v17;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v11 vendorID];
      v37 = [v11 productID];
      *buf = 138544130;
      v116 = v35;
      v117 = 2112;
      v118 = v10;
      v119 = 2112;
      v120 = v36;
      v121 = 2112;
      v122 = v37;
      _os_log_impl(&dword_22AEAE000, v34, OS_LOG_TYPE_INFO, "%{public}@Could not associate QueryImage request {nodeID=%@, vendorId=%@, productId=%@} to a paired accessory", buf, 0x2Au);

      v12 = v103;
      v13 = v106;

      v17 = v101;
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
      v12[2](v12, v13, v86);

      v30 = 0;
      goto LABEL_30;
    }

    v38 = [v30 currentPairing];

    if (v38)
    {
LABEL_11:
      v39 = objc_autoreleasePoolPush();
      v40 = v17;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v11 vendorID];
        v44 = [v11 productID];
        *buf = 138544386;
        v116 = v42;
        v117 = 2112;
        v118 = v30;
        v119 = 2112;
        v120 = v10;
        v121 = 2112;
        v122 = v43;
        v123 = 2112;
        v124 = v44;
        _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@Found accessory %@ for QueryImage request {nodeID=%@, vendorId=%@, productId=%@} ", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v39);
      v45 = [v11 softwareVersion];
      [v30 updateSoftwareVersion:v45];

      v46 = [v30 otaAnnounceTimer];

      if (v46)
      {
        v47 = [v30 otaAnnounceTimer];
        [v47 stop];

        [v30 setOtaAnnounceTimer:0];
      }

      v97 = v10;
      v48 = [v30 otaApplyUpdateRequestTimer];

      if (v48)
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
        v53 = [v30 otaApplyUpdateRequestTimer];
        [v53 stop];

        [v30 setOtaApplyUpdateRequestTimer:0];
        v54 = [v30 matterFirmwareUpdateStatus];
        [v54 updateFirmwareUpdateStatus:0];
      }

      v55 = [HMMTRSoftwareUpdateProviderQueryImageRequestParams alloc];
      v56 = [v11 vendorID];
      v57 = [v11 productID];
      v58 = [v11 softwareVersion];
      [v11 hardwareVersion];
      v59 = v95 = v40;
      v60 = [v11 location];
      v61 = [v11 requestorCanConsent];
      v62 = [v11 metadataForProvider];
      v63 = [(HMMTRSoftwareUpdateProviderQueryImageRequestParams *)v55 initWithVendorID:v56 productId:v57 softwareVersion:v58 protocolsSupported:&unk_283EE9288 hardwareVersion:v59 location:v60 requestorCanConsent:v61 metadataForProvider:v62];

      v64 = objc_loadWeakRetained(&v101->_browser);
      v65 = [v64 softwareUpdateProvider];
      v66 = [v30 currentPairing];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __83__HMMTROTAProviderDelegate_handleQueryImageForNodeID_controller_params_completion___block_invoke_21;
      v108[3] = &unk_2786EDD98;
      v108[4] = v95;
      v30 = v30;
      v109 = v30;
      v13 = v106;
      v110 = v106;
      v12 = v103;
      v112 = v103;
      v111 = v11;
      [v65 triggerQueryImageWithPairing:v66 accessoryInitiated:1 requestParams:v63 completionHandler:v108];

      v10 = v97;
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
        v92 = [v13 delayedActionTime];
        *buf = 138543618;
        v116 = v91;
        v117 = 2112;
        v118 = v92;
        _os_log_impl(&dword_22AEAE000, v90, OS_LOG_TYPE_INFO, "%{public}@Do not have pairing information for this accessory. Requesting accessory to check back again after %@ secs", buf, 0x16u);

        v13 = v106;
      }

      objc_autoreleasePoolPop(v88);
      v12[2](v12, v13, 0);
    }

LABEL_30:
    v74 = v105;

    goto LABEL_31;
  }

  v67 = objc_autoreleasePoolPush();
  v68 = v17;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = HMFGetLogIdentifier();
    v71 = [v11 vendorID];
    [v11 productID];
    v73 = v72 = v12;
    *buf = 138544130;
    v116 = v70;
    v117 = 2112;
    v118 = v10;
    v119 = 2112;
    v120 = v71;
    v121 = 2112;
    v122 = v73;
    _os_log_impl(&dword_22AEAE000, v69, OS_LOG_TYPE_ERROR, "%{public}@Accessory did not list BDXSynchronous as a supported protocol for QueryImage request {nodeID=%@, vendorId=%@, productId=%@}", buf, 0x2Au);

    v12 = v72;
    v13 = v106;
  }

  objc_autoreleasePoolPop(v67);
  [v13 setStatus:&unk_283EE7FF8];
  v12[2](v12, v13, 0);
  v74 = v105;
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

- (HMMTROTAProviderDelegate)initWithQueue:(id)a3 browser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTROTAProviderDelegate;
  v9 = [(HMMTROTAProviderDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientQueue, a3);
    objc_storeWeak(&v10->_browser, v8);
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