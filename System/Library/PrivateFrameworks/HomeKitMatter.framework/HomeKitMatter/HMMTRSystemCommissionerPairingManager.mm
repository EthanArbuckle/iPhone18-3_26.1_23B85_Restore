@interface HMMTRSystemCommissionerPairingManager
+ (id)logCategory;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRSystemCommissionerPairingManager)initWithQueue:(id)queue accessoryServerBrowser:(id)browser;
- (id)_addNetworkToThreadNetworkDirectoryForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset;
- (id)_armFailSafeForDevice:(id)device expiryLengthSeconds:(unint64_t)seconds;
- (id)_augmentDatasetWithBorderAgentIDsForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset;
- (id)_commissioningCompleteForDevice:(id)device;
- (id)_deviceForSystemCommissionerNode:(id)node;
- (id)_donateThreadNetwork:(id)network toSystemCommissionerNode:(id)node endpoint:(id)endpoint;
- (id)_donateThreadNetworksToSystemCommissionerNode:(id)node endpoint:(id)endpoint;
- (id)_provisionBorderRouterWithSystemCommissionerNode:(id)node endpoint:(id)endpoint dataset:(id)dataset;
- (id)_retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset;
- (id)_retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig;
- (id)_retrieveThreadCredentialsFromSystemCommissionerNode:(id)node endpoint:(id)endpoint;
- (id)_setActiveThreadDatasetForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset;
- (void)_cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload;
- (void)_fetchAllDevicePairingsForSystemCommissionerDevicePairingWithUUID:(id)d completionHandler:(id)handler;
- (void)_fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)_openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)_readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)_removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)_removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)_removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingWithUUID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
- (void)updateThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMMTRSystemCommissionerPairingManager

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)_deviceForSystemCommissionerNode:(id)node
{
  v17 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
  systemCommissionerControllerWrapper = [browser systemCommissionerControllerWrapper];
  controller = [systemCommissionerControllerWrapper controller];

  if (controller)
  {
    v8 = [MEMORY[0x277CD5220] deviceWithNodeID:nodeCopy controller:controller];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to acquire System Commissioner device controller", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_augmentDatasetWithBorderAgentIDsForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset
{
  v25[2] = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  v9 = MEMORY[0x277CD51D0];
  endpointCopy = endpoint;
  deviceCopy = device;
  v12 = [v9 requestPathWithEndpointID:endpointCopy clusterID:&unk_283EE8190 attributeID:&unk_283EE81A8];
  v13 = [MEMORY[0x277CD51D0] requestPathWithEndpointID:endpointCopy clusterID:&unk_283EE81C0 attributeID:&unk_283EE81D8];

  v24 = 0;
  v14 = [MEMORY[0x277D0F7C0] futureWithPromise:&v24];
  resolverBlock = [v24 resolverBlock];
  v25[0] = v12;
  v25[1] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  [deviceCopy readAttributePaths:v16 eventPaths:0 params:0 queue:workQueue completion:resolverBlock];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __101__HMMTRSystemCommissionerPairingManager__augmentDatasetWithBorderAgentIDsForDevice_endpoint_dataset___block_invoke;
  v22[3] = &unk_2786EE2F8;
  v22[4] = v12;
  v22[5] = v13;
  v23 = datasetCopy;
  v18 = datasetCopy;
  v19 = [v14 then:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __101__HMMTRSystemCommissionerPairingManager__augmentDatasetWithBorderAgentIDsForDevice_endpoint_dataset___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v21 = 0;
    v5 = 0;
    v6 = *v25;
    v7 = *MEMORY[0x277CD50B8];
    v22 = *MEMORY[0x277CD50D8];
    v8 = *MEMORY[0x277CD51A0];
    while (1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = v11;
        if (v11)
        {
          if (attributePathMatches(v11, *(a1 + 32)))
          {
            v13 = [v10 objectForKeyedSubscript:v22];
            v14 = [v13 objectForKeyedSubscript:v8];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v5;
            v5 = v15;
          }

          else
          {
            if (!attributePathMatches(v12, *(a1 + 40)))
            {
              goto LABEL_18;
            }

            v17 = [v10 objectForKeyedSubscript:v22];
            v14 = [v17 objectForKeyedSubscript:v8];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v21;
            v21 = v15;
          }

          v18 = v15;
        }

LABEL_18:
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v4)
      {
        goto LABEL_22;
      }
    }
  }

  v21 = 0;
  v5 = 0;
LABEL_22:
  [objc_alloc(MEMORY[0x277CD55D0]) initWithDataset:*(a1 + 48) borderAgentEUI:v5 borderAgentID:v21];

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_setActiveThreadDatasetForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset
{
  v8 = MEMORY[0x277CD5210];
  datasetCopy = dataset;
  endpointCopy = endpoint;
  deviceCopy = device;
  v12 = [v8 alloc];
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v14 = [v12 initWithDevice:deviceCopy endpointID:endpointCopy queue:workQueue];

  v15 = objc_alloc_init(MEMORY[0x277CD5530]);
  [v15 setActiveDataset:datasetCopy];

  v19 = 0;
  v16 = [MEMORY[0x277D0F7C0] futureWithPromise:&v19];
  errorOnlyResolverBlock = [v19 errorOnlyResolverBlock];
  [v14 setActiveDatasetRequestWithParams:v15 completion:errorOnlyResolverBlock];

  return v16;
}

- (id)_commissioningCompleteForDevice:(id)device
{
  v4 = MEMORY[0x277CD51F8];
  deviceCopy = device;
  v6 = [v4 alloc];
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v8 = [v6 initWithDevice:deviceCopy endpointID:&unk_283EE8160 queue:workQueue];

  v13 = 0;
  v9 = [MEMORY[0x277D0F7C0] futureWithPromise:&v13];
  resolverBlock = [v13 resolverBlock];
  [v8 commissioningCompleteWithCompletion:resolverBlock];

  v11 = [v9 then:&__block_literal_global_82];

  return v11;
}

uint64_t __73__HMMTRSystemCommissionerPairingManager__commissioningCompleteForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 errorCode];
  v4 = [v3 isEqualToNumber:&unk_283EE8178];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v2 errorCode];
    v8 = [v6 stringWithFormat:@"General Commissioning Error %@", v7];

    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v5 = 2;
  }

  return v5;
}

- (id)_armFailSafeForDevice:(id)device expiryLengthSeconds:(unint64_t)seconds
{
  v6 = MEMORY[0x277CD51F8];
  deviceCopy = device;
  v8 = [v6 alloc];
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v10 = [v8 initWithDevice:deviceCopy endpointID:&unk_283EE8160 queue:workQueue];

  v11 = objc_alloc_init(MEMORY[0x277CD5418]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:seconds];
  [v11 setExpiryLengthSeconds:v12];

  [v11 setBreadcrumb:&unk_283EE8160];
  v17 = 0;
  v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v17];
  resolverBlock = [v17 resolverBlock];
  [v10 armFailSafeWithParams:v11 completion:resolverBlock];

  v15 = [v13 then:&__block_literal_global_5843];

  return v15;
}

uint64_t __83__HMMTRSystemCommissionerPairingManager__armFailSafeForDevice_expiryLengthSeconds___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 errorCode];
  v4 = [v3 isEqualToNumber:&unk_283EE8178];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v2 errorCode];
    v8 = [v6 stringWithFormat:@"General Commissioning Error %@", v7];

    v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v5 = 2;
  }

  return v5;
}

- (id)_provisionBorderRouterWithSystemCommissionerNode:(id)node endpoint:(id)endpoint dataset:(id)dataset
{
  v44 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  endpointCopy = endpoint;
  datasetCopy = dataset;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v14;
    v42 = 2112;
    v43 = nodeCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to provision unconfigured Border Router on System Commissioner node %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMMTRSystemCommissionerPairingManager *)selfCopy _deviceForSystemCommissionerNode:nodeCopy];
  if (v15)
  {
    v16 = [(HMMTRSystemCommissionerPairingManager *)selfCopy _armFailSafeForDevice:v15 expiryLengthSeconds:10];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke;
    v37[3] = &unk_2786EE240;
    v37[4] = selfCopy;
    v37[5] = v15;
    v17 = endpointCopy;
    v38 = v17;
    v18 = datasetCopy;
    v39 = v18;
    v19 = [v16 then:v37];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_2;
    v36[3] = &unk_2786EE268;
    v36[4] = selfCopy;
    v36[5] = v15;
    [v19 then:v36];
    v28 = datasetCopy;
    v21 = v20 = endpointCopy;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_3;
    v31[3] = &unk_2786EE290;
    v31[4] = selfCopy;
    v22 = nodeCopy;
    v32 = v22;
    v33 = v15;
    v34 = v17;
    v35 = v18;
    v23 = [v21 then:v31];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_68;
    v29[3] = &unk_2786EE218;
    v29[4] = selfCopy;
    v30 = v22;
    v24 = [v23 then:v29];

    endpointCopy = v20;
    datasetCopy = v28;
  }

  else
  {
    v25 = MEMORY[0x277D0F7C0];
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"device controller unavailable"];
    v24 = [v25 futureWithError:v16];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _setActiveThreadDatasetForDevice:*(a1 + 40) endpoint:*(a1 + 48) dataset:*(a1 + 56)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_2(v7);
  }
}

uint64_t __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _commissioningCompleteForDevice:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_3(v7);
  }
}

uint64_t __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully enabled Border Router on System Commissioner node %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [*(a1 + 32) _augmentDatasetWithBorderAgentIDsForDevice:*(a1 + 48) endpoint:*(a1 + 56) dataset:*(a1 + 64)];
  if (!v9)
  {
    _HMFPreconditionFailure();
  }

  v10 = v9;

  v11 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __107__HMMTRSystemCommissionerPairingManager__provisionBorderRouterWithSystemCommissionerNode_endpoint_dataset___block_invoke_68(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully provisioned Thread credentials on System Commissioner node %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_retrieveThreadCredentialsFromSystemCommissionerNode:(id)node endpoint:(id)endpoint
{
  nodeCopy = node;
  endpointCopy = endpoint;
  v8 = [(HMMTRSystemCommissionerPairingManager *)self _deviceForSystemCommissionerNode:nodeCopy];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CD5210]);
    workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
    v11 = [v9 initWithDevice:v8 endpointID:endpointCopy queue:workQueue];

    v25 = 0;
    v12 = [MEMORY[0x277D0F7C0] futureWithPromise:&v25];
    resolverBlock = [v25 resolverBlock];
    [v11 getActiveDatasetRequestWithCompletion:resolverBlock];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__HMMTRSystemCommissionerPairingManager__retrieveThreadCredentialsFromSystemCommissionerNode_endpoint___block_invoke;
    v21[3] = &unk_2786EE1F0;
    v21[4] = self;
    v14 = nodeCopy;
    v22 = v14;
    v23 = v8;
    v24 = endpointCopy;
    v15 = [v12 then:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __103__HMMTRSystemCommissionerPairingManager__retrieveThreadCredentialsFromSystemCommissionerNode_endpoint___block_invoke_66;
    v19[3] = &unk_2786EE218;
    v19[4] = self;
    v20 = v14;
    v16 = [v15 then:v19];
  }

  else
  {
    v17 = MEMORY[0x277D0F7C0];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"device controller unavailable"];
    v16 = [v17 futureWithError:v11];
  }

  return v16;
}

uint64_t __103__HMMTRSystemCommissionerPairingManager__retrieveThreadCredentialsFromSystemCommissionerNode_endpoint___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 dataset];
  if (v4 && (v5 = v4, [v3 dataset], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    v8 = *(a1 + 32);
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = [v3 dataset];
    v12 = [v8 _augmentDatasetWithBorderAgentIDsForDevice:v10 endpoint:v9 dataset:v11];
    if (!v12)
    {
      _HMFPreconditionFailure();
    }

    v13 = v12;

    v14 = 3;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      v19 = *(a1 + 40);
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Thread Border Router is not configured for System Commissioner node %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v14 = 2;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __103__HMMTRSystemCommissionerPairingManager__retrieveThreadCredentialsFromSystemCommissionerNode_endpoint___block_invoke_66(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully retrieved Thread credentials from System Commissioner node %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset
{
  v36 = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  threadCredentialManagementNodesAndEndpointsForSystemCommissioner = [(HMMTRStorage *)self->_storage threadCredentialManagementNodesAndEndpointsForSystemCommissioner];
  if ([threadCredentialManagementNodesAndEndpointsForSystemCommissioner count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allKeys = [threadCredentialManagementNodesAndEndpointsForSystemCommissioner allKeys];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [threadCredentialManagementNodesAndEndpointsForSystemCommissioner objectForKeyedSubscript:v12];
          v14 = [(HMMTRSystemCommissionerPairingManager *)self _retrieveThreadCredentialsFromSystemCommissionerNode:v12 endpoint:v13];
          [v6 addObject:v14];
        }

        v9 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v16 = [mEMORY[0x277D0F8D0] preferenceForKey:@"MatterThreadCredentialsRetrievalTimeout"];
    numberValue = [v16 numberValue];
    [numberValue doubleValue];
    v19 = v18;

    v20 = [MEMORY[0x277D0F7C0] any:v6];
    v21 = [v20 timeout:v19];

    if (datasetCopy)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke;
      v27[3] = &unk_2786EE1A0;
      v27[4] = allKeys;
      v28 = threadCredentialManagementNodesAndEndpointsForSystemCommissioner;
      selfCopy = self;
      v30 = datasetCopy;
      v22 = [v21 recover:v27];

      v21 = v22;
    }
  }

  else
  {
    v23 = MEMORY[0x277D0F7C0];
    v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v21 = [v23 futureWithError:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hmfAggregatedErrors];
  if (!v4)
  {
    v11 = v3;
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v10 = 2;
    goto LABEL_8;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5859;
  v25 = __Block_byref_object_dispose__5860;
  v5 = MEMORY[0x277D0F7C0];
  v6 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  v26 = [v5 futureWithError:v6];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke_62;
  v17[3] = &unk_2786EE1C8;
  v16 = *(a1 + 32);
  v7 = *(&v16 + 1);
  v20 = &v21;
  v15 = *(a1 + 48);
  v8 = *(&v15 + 1);
  v19 = v15;
  v18 = v16;
  [v4 enumerateObjectsUsingBlock:v17];
  v9 = v22[5];
  if (v9)
  {

    _Block_object_dispose(&v21, 8);
    v10 = 3;
LABEL_8:

    return v10;
  }

  result = _HMFPreconditionFailure();
  __break(1u);
  return result;
}

void __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke_62(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 isHMFError] && objc_msgSend(v5, "code") == 2)
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v7 = [*(a1 + 40) objectForKeyedSubscript:v6];
    v8 = *(*(*(a1 + 64) + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke_2;
    v13[3] = &unk_2786EE1A0;
    v9 = *(a1 + 56);
    v13[4] = *(a1 + 48);
    v13[5] = v6;
    v13[6] = v7;
    v14 = v9;
    v10 = [v8 recover:v13];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__retrievePreferredThreadCredentialsOrCreateWithDataset___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _provisionBorderRouterWithSystemCommissionerNode:*(a1 + 40) endpoint:*(a1 + 48) dataset:*(a1 + 56)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSystemCommissionerPairingManager *)v7 _addNetworkToThreadNetworkDirectoryForDevice:v8 endpoint:v9 dataset:v10, v11];
  }
}

- (id)_addNetworkToThreadNetworkDirectoryForDevice:(id)device endpoint:(id)endpoint dataset:(id)dataset
{
  v8 = MEMORY[0x277CD5218];
  datasetCopy = dataset;
  endpointCopy = endpoint;
  deviceCopy = device;
  v12 = [v8 alloc];
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v14 = [v12 initWithDevice:deviceCopy endpointID:endpointCopy queue:workQueue];

  v15 = objc_alloc_init(MEMORY[0x277CD5538]);
  [v15 setOperationalDataset:datasetCopy];

  v19 = 0;
  v16 = [MEMORY[0x277D0F7C0] futureWithPromise:&v19];
  errorOnlyResolverBlock = [v19 errorOnlyResolverBlock];
  [v14 addNetworkWithParams:v15 completion:errorOnlyResolverBlock];

  return v16;
}

- (id)_donateThreadNetwork:(id)network toSystemCommissionerNode:(id)node endpoint:(id)endpoint
{
  v40 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  nodeCopy = node;
  endpointCopy = endpoint;
  activeOperationalDataSet = [networkCopy activeOperationalDataSet];
  if ([activeOperationalDataSet length])
  {
    v12 = [(HMMTRSystemCommissionerPairingManager *)self _deviceForSystemCommissionerNode:nodeCopy];
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        [networkCopy networkName];
        v17 = v27 = endpointCopy;
        [networkCopy extendedPANID];
        v18 = v28 = v13;
        hmf_hexadecimalRepresentation = [v18 hmf_hexadecimalRepresentation];
        *buf = 138544130;
        v33 = v16;
        v34 = 2112;
        v35 = v17;
        v36 = 2112;
        v37 = hmf_hexadecimalRepresentation;
        v38 = 2112;
        v39 = nodeCopy;
        _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Donating Thread network '%@' (%@) to system commissioner node %@", buf, 0x2Au);

        v13 = v28;
        endpointCopy = v27;
      }

      objc_autoreleasePoolPop(v13);
      v20 = [(HMMTRSystemCommissionerPairingManager *)selfCopy _addNetworkToThreadNetworkDirectoryForDevice:v12 endpoint:endpointCopy dataset:activeOperationalDataSet];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __96__HMMTRSystemCommissionerPairingManager__donateThreadNetwork_toSystemCommissionerNode_endpoint___block_invoke;
      v29[3] = &unk_2786EE178;
      v29[4] = selfCopy;
      v30 = networkCopy;
      v31 = nodeCopy;
      v21 = [v20 then:v29];
    }

    else
    {
      v24 = MEMORY[0x277D0F7C0];
      v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"device controller unavailable"];
      v21 = [v24 futureWithError:v20];
    }
  }

  else
  {
    v22 = MEMORY[0x277D0F7C0];
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"No dataset available for network"];
    v21 = [v22 futureWithError:v23];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__donateThreadNetwork_toSystemCommissionerNode_endpoint___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) networkName];
    v9 = [*(a1 + 40) extendedPANID];
    v10 = [v9 hmf_hexadecimalRepresentation];
    v11 = *(a1 + 48);
    v14 = 138544130;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully donated Thread network '%@' (%@) to Thread Network Directory of system commissioner node %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig
{
  v9 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v9];
  v3 = [objc_alloc(MEMORY[0x277CE1968]) initWithKeychainAccessGroup:@"com.apple.thread.network"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __96__HMMTRSystemCommissionerPairingManager__retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig__block_invoke;
  v6[3] = &unk_2786EE150;
  v7 = v3;
  v8 = v9;
  v4 = v3;
  [v4 retrievePreferredNetworkInternallyOnMdnsAndSig:v6];

  return v2;
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    return [v4 fulfillWithValue:a2];
  }

  else
  {
    return [v4 rejectWithError:a4];
  }
}

- (id)_donateThreadNetworksToSystemCommissionerNode:(id)node endpoint:(id)endpoint
{
  nodeCopy = node;
  endpointCopy = endpoint;
  _retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig = [(HMMTRSystemCommissionerPairingManager *)self _retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__HMMTRSystemCommissionerPairingManager__donateThreadNetworksToSystemCommissionerNode_endpoint___block_invoke;
  v17[3] = &unk_2786EE128;
  v17[4] = self;
  v9 = nodeCopy;
  v18 = v9;
  v19 = endpointCopy;
  v10 = endpointCopy;
  v11 = [_retrieveTHClientPreferredNetworkInternallyOnMdnsAndSig then:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __96__HMMTRSystemCommissionerPairingManager__donateThreadNetworksToSystemCommissionerNode_endpoint___block_invoke_2;
  v15[3] = &unk_2786EE848;
  v15[4] = self;
  v16 = v9;
  v12 = v9;
  v13 = [v11 recover:v15];

  return v13;
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__donateThreadNetworksToSystemCommissionerNode_endpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _donateThreadNetwork:v3 toSystemCommissionerNode:*(a1 + 40) endpoint:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __96__HMMTRSystemCommissionerPairingManager__donateThreadNetworksToSystemCommissionerNode_endpoint___block_invoke_2(v7);
  }
}

uint64_t __96__HMMTRSystemCommissionerPairingManager__donateThreadNetworksToSystemCommissionerNode_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to donate Thread credentials to System Commissioner node %@: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (void)_readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v9 = [storage systemCommissionerFabricNodeIDForUuid:dCopy];

  if (v9)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    [browser readCommissioningWindowStatusForSystemCommissionerDeviceWithNodeID:v9 completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    browser = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, browser);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v11 = [storage systemCommissionerFabricNodeIDForUuid:dCopy];

  if (v11)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __125__HMMTRSystemCommissionerPairingManager__openCommissioningWindowForSystemCommissionerPairingUUID_duration_completionHandler___block_invoke;
    v19[3] = &unk_2786EE100;
    v20 = handlerCopy;
    [browser openCommissioningWindowForSystemCommissionerDeviceWithNodeID:v11 duration:v19 completionHandler:duration];

    v13 = v20;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __125__HMMTRSystemCommissionerPairingManager__openCommissioningWindowForSystemCommissionerPairingUUID_duration_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v6 qrCodeString:0];
  v7 = [v6 manualEntryCode];

  (*(v4 + 16))(v4, v8, v7, v5);
}

- (void)_cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload
{
  v70 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  productIDCopy = productID;
  numberCopy = number;
  payloadCopy = payload;
  v17 = [[HMMTRSystemCommissionerPairingManagerPairingIdentity alloc] initWithUUID:dCopy vendorID:iDCopy productID:productIDCopy serialNumber:numberCopy setupPayload:payloadCopy];
  v56 = v17;
  if ([(HMMTRSystemCommissionerPairingManagerPairingIdentity *)v17 isIdentifiable])
  {
    v46 = payloadCopy;
    v47 = numberCopy;
    v48 = productIDCopy;
    v49 = iDCopy;
    v50 = dCopy;
    storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
    v19 = [storage pairedNodeIDsOnSystemCommissionerFabric:1];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v19;
    v55 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (!v55)
    {
      goto LABEL_16;
    }

    selfCopy = self;
    v54 = *v60;
    selfCopy2 = self;
    while (1)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v60 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        storage2 = [(HMMTRSystemCommissionerPairingManager *)selfCopy storage];
        v24 = [storage2 uuidForSystemCommissionerFabricNode:v22];

        storage3 = [(HMMTRSystemCommissionerPairingManager *)selfCopy storage];
        v26 = [storage3 serialNumberForSystemCommissionerFabricNode:v22];

        storage4 = [(HMMTRSystemCommissionerPairingManager *)selfCopy storage];
        v28 = [storage4 vendorIDForSystemCommissionerFabricNode:v22];

        storage5 = [(HMMTRSystemCommissionerPairingManager *)selfCopy storage];
        v30 = [storage5 productIDForSystemCommissionerFabricNode:v22];

        storage6 = [(HMMTRSystemCommissionerPairingManager *)selfCopy storage];
        v32 = [storage6 setupPayloadForSystemCommissionerFabricNode:v22];

        v58 = v24;
        v33 = [[HMMTRSystemCommissionerPairingManagerPairingIdentity alloc] initWithUUID:v24 vendorID:v28 productID:v30 serialNumber:v26 setupPayload:v32];
        uuid = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)v33 uuid];
        uuid2 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)v17 uuid];
        if ([uuid isEqual:uuid2])
        {
        }

        else
        {
          v36 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)v33 isEquivalentTo:v17];

          if (!v36)
          {
            goto LABEL_14;
          }

          context = objc_autoreleasePoolPush();
          v37 = selfCopy2;
          v38 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            uuid3 = [(HMMTRSystemCommissionerPairingManagerPairingIdentity *)v56 uuid];
            *buf = 138543874;
            v64 = v51;
            v65 = 2112;
            v66 = v58;
            v67 = 2112;
            v68 = uuid3;
            v40 = uuid3;
            _os_log_impl(&dword_22AEAE000, v38, OS_LOG_TYPE_INFO, "%{public}@Removed stale system commissioner pairing %@ replaced by %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          uuid = [(HMMTRSystemCommissionerPairingManager *)v37 storage];
          [uuid removeRecordsForSystemCommissionerFabricNode:v22];
        }

LABEL_14:
        v17 = v56;
        selfCopy = selfCopy2;
      }

      v55 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (!v55)
      {
LABEL_16:

        iDCopy = v49;
        dCopy = v50;
        numberCopy = v47;
        productIDCopy = v48;
        payloadCopy = v46;
        goto LABEL_20;
      }
    }
  }

  v41 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    *buf = 138543618;
    v64 = v44;
    v65 = 2112;
    v66 = dCopy;
    _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@A new system commissioner pairing %@ doesn't have sufficient information to identify redundant stale pairings.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v41);
  v17 = v56;
LABEL_20:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v9 = [storage systemCommissionerFabricNodeIDForUuid:dCopy];

  if (v9)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    [browser removeAllDevicePairingsForSystemCommissionerDeviceWithNodeID:v9 completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    browser = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, browser);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v12 = [storage systemCommissionerFabricNodeIDForUuid:iDCopy];

  if (v12)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    [browser removeDevicePairingFabricForSystemCommissionerDeviceWithNodeID:v12 fabric:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v17;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    browser = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, browser);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAllDevicePairingsForSystemCommissionerDevicePairingWithUUID:(id)d completionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  [storage endLocalStorageModeBySyncingToRemote:0];

  storage2 = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v10 = [storage2 systemCommissionerFabricNodeIDForUuid:dCopy];

  if (v10)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    [browser fetchAllDevicePairingsForSystemCommissionerDeviceWithNodeID:v10 completionHandler:handlerCopy];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    browser = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, 0, browser);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v9 = [storage systemCommissionerFabricNodeIDForUuid:dCopy];

  if (v9)
  {
    browser = [(HMMTRSystemCommissionerPairingManager *)self browser];
    [browser removeSystemCommissionerFabricAccessoryWithNodeID:v9 completionHandler:handlerCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find Node on System Commissioner Fabric with UUID = %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    browser = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    handlerCopy[2](handlerCopy, browser);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  storage = [(HMMTRSystemCommissionerPairingManager *)self storage];
  [storage endLocalStorageModeBySyncingToRemote:0];

  array = [MEMORY[0x277CBEB18] array];
  storage2 = [(HMMTRSystemCommissionerPairingManager *)self storage];
  v6 = [storage2 pairedNodeIDsOnSystemCommissionerFabric:1];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v6;
  v61 = [obj countByEnumeratingWithState:&v72 objects:v94 count:16];
  if (v61)
  {
    v60 = *v73;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v72 + 1) + 8 * i);
        storage3 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v10 = [storage3 uuidForSystemCommissionerFabricNode:v8];

        storage4 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v68 = [storage4 serialNumberForSystemCommissionerFabricNode:v8];

        storage5 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v13 = [storage5 vendorIDForSystemCommissionerFabricNode:v8];

        storage6 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v15 = [storage6 productIDForSystemCommissionerFabricNode:v8];

        storage7 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v17 = [storage7 categoryForSystemCommissionerFabricNode:v8];

        storage8 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v67 = [storage8 deviceNameForSystemCommissionerFabricNode:v8];

        storage9 = [(HMMTRSystemCommissionerPairingManager *)self storage];
        v20 = [storage9 setupPayloadForSystemCommissionerFabricNode:v8];

        if (_os_feature_enabled_impl() && (-[HMMTRSystemCommissionerPairingManager storage](self, "storage"), v21 = objc_claimAutoreleasedReturnValue(), [v21 threadCredentialManagementEndpointForSystemCommissionerFabricNode:v8], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
        {
          v23 = MEMORY[0x277CCABB0];
          storage10 = [(HMMTRSystemCommissionerPairingManager *)self storage];
          v66 = [v23 numberWithBool:{objc_msgSend(storage10, "threadCredentialManagementEnabledForSystemCommissionerFabricNode:", v8)}];
        }

        else
        {
          v66 = 0;
        }

        v69 = v20;
        if (v20)
        {
          v71 = 0;
          v65 = [MEMORY[0x277CD5528] setupPayloadWithOnboardingPayload:v20 error:&v71];
          v70 = v71;
          if (v70)
          {
            v25 = objc_autoreleasePoolPush();
            selfCopy = self;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              contextb = v17;
              v28 = v15;
              v29 = v10;
              v31 = v30 = v13;
              *buf = 138543874;
              v77 = v31;
              v78 = 2112;
              v79 = v69;
              v80 = 2112;
              v81 = v70;
              _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_ERROR, "%{public}@Onboarding payload %@ in System Commissioner Fabric storage could not be converted: %@", buf, 0x20u);

              v13 = v30;
              v10 = v29;
              v15 = v28;
              v17 = contextb;
            }

            objc_autoreleasePoolPop(v25);
            if (!v10)
            {
LABEL_24:
              v39 = objc_autoreleasePoolPush();
              selfCopy5 = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                contexta = v17;
                v42 = v15;
                v43 = v10;
                v45 = v44 = v13;
                *buf = 138543618;
                v77 = v45;
                v78 = 2112;
                v79 = v8;
                v46 = v41;
                v47 = "%{public}@Missing UUID in System Commissioner Fabric storage for nodeID %@";
                goto LABEL_32;
              }

LABEL_33:

              objc_autoreleasePoolPop(v39);
              goto LABEL_34;
            }
          }

          else
          {
            v70 = 0;
            if (!v10)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v70 = 0;
          v65 = 0;
          if (!v10)
          {
            goto LABEL_24;
          }
        }

        if (!v13)
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v41 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          HMFGetLogIdentifier();
          contexta = v17;
          v42 = v15;
          v43 = v10;
          v45 = v44 = 0;
          *buf = 138543618;
          v77 = v45;
          v78 = 2112;
          v79 = v8;
          v46 = v41;
          v47 = "%{public}@Missing VendorID in System Commissioner Fabric storage for nodeID %@";
LABEL_32:
          _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_INFO, v47, buf, 0x16u);

          v13 = v44;
          v10 = v43;
          v15 = v42;
          v17 = contexta;
          goto LABEL_33;
        }

        if (!v15)
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v41 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          HMFGetLogIdentifier();
          contexta = v17;
          v42 = 0;
          v43 = v10;
          v45 = v44 = v13;
          *buf = 138543618;
          v77 = v45;
          v78 = 2112;
          v79 = v8;
          v46 = v41;
          v47 = "%{public}@Missing ProductID in System Commissioner Fabric storage for nodeID %@";
          goto LABEL_32;
        }

        if (!v17)
        {
          v39 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v41 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            goto LABEL_33;
          }

          HMFGetLogIdentifier();
          contexta = 0;
          v42 = v15;
          v43 = v10;
          v45 = v44 = v13;
          *buf = 138543618;
          v77 = v45;
          v78 = 2112;
          v79 = v8;
          v46 = v41;
          v47 = "%{public}@Missing DeviceType in System Commissioner Fabric storage for nodeID %@";
          goto LABEL_32;
        }

        v32 = [objc_alloc(MEMORY[0x277CD55B8]) initWithUUID:v10 nodeID:v8 vendorID:v13 productID:v15 deviceType:v17 serialNumber:v68 name:v67 setupPayload:v65 threadCredentialManagementEnabled:v66];
        context = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v58 = HMFGetLogIdentifier();
          uuid = [v32 uuid];
          nodeID = [v32 nodeID];
          log = v34;
          serialNumber = [v32 serialNumber];
          vendorID = [v32 vendorID];
          productID = [v32 productID];
          deviceType = [v32 deviceType];
          [v32 name];
          v37 = v51 = v13;
          [v32 setupPayload];
          v38 = v50 = selfCopy6;
          *buf = 138545410;
          v77 = v58;
          v78 = 2112;
          v79 = uuid;
          v80 = 2112;
          v81 = nodeID;
          v82 = 2112;
          v83 = serialNumber;
          v84 = 2112;
          v85 = vendorID;
          v86 = 2112;
          v87 = productID;
          v88 = 2112;
          v89 = deviceType;
          v90 = 2112;
          v91 = v37;
          v92 = 2112;
          v93 = v38;
          _os_log_impl(&dword_22AEAE000, log, OS_LOG_TYPE_INFO, "%{public}@UUID = %@, Node ID = %@, Serial Number = %@, VID = %@, PID = %@, DeviceType = %@, Name = %@, Payload = %@", buf, 0x5Cu);

          selfCopy6 = v50;
          v13 = v51;

          v34 = log;
        }

        objc_autoreleasePoolPop(context);
        [array addObject:v32];

LABEL_34:
      }

      v61 = [obj countByEnumeratingWithState:&v72 objects:v94 count:16];
    }

    while (v61);
  }

  handlerCopy[2](handlerCopy, array, 0);
  v48 = *MEMORY[0x277D85DE8];
}

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  datasetCopy = dataset;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __113__HMMTRSystemCommissionerPairingManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = datasetCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = datasetCopy;
  dispatch_async(workQueue, block);
}

void __113__HMMTRSystemCommissionerPairingManager_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _retrievePreferredThreadCredentialsOrCreateWithDataset:*(a1 + 40)];
  [v2 getResultWithCompletion:*(a1 + 48)];
}

- (void)updateThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __132__HMMTRSystemCommissionerPairingManager_updateThreadCredentialManagementEnabled_forSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v13[3] = &unk_2786EEB30;
  enabledCopy = enabled;
  v13[4] = self;
  v14 = dCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(workQueue, v13);
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__HMMTRSystemCommissionerPairingManager_readCommissioningWindowStatusForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __124__HMMTRSystemCommissionerPairingManager_openCommissioningWindowForSystemCommissionerPairingUUID_duration_completionHandler___block_invoke;
  v13[3] = &unk_2786EF850;
  v13[4] = self;
  v14 = dCopy;
  durationCopy = duration;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = dCopy;
  dispatch_async(workQueue, v13);
}

- (void)cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number setupPayload:(id)payload
{
  dCopy = d;
  iDCopy = iD;
  productIDCopy = productID;
  numberCopy = number;
  payloadCopy = payload;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __144__HMMTRSystemCommissionerPairingManager_cleanUpStaleSystemCommissionerPairingsWithNewlyPairedUUID_vendorID_productID_serialNumber_setupPayload___block_invoke;
  v23[3] = &unk_2786EE0D8;
  v23[4] = self;
  v24 = dCopy;
  v25 = iDCopy;
  v26 = productIDCopy;
  v27 = numberCopy;
  v28 = payloadCopy;
  v18 = payloadCopy;
  v19 = numberCopy;
  v20 = productIDCopy;
  v21 = iDCopy;
  v22 = dCopy;
  dispatch_async(workQueue, v23);
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __115__HMMTRSystemCommissionerPairingManager_removeAllDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)removeDevicePairingWithUUID:(id)d completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2080;
    v17 = "[HMMTRSystemCommissionerPairingManager removeDevicePairingWithUUID:completionHandler:]";
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is deprecated", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  handlerCopy[2](handlerCopy, v12);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __120__HMMTRSystemCommissionerPairingManager_removeDevicePairingWithUUID_forSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v15[3] = &unk_2786EFA60;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(workQueue, v15);
}

- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMMTRSystemCommissionerPairingManager_removeSystemCommissionerPairingWithUUID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__HMMTRSystemCommissionerPairingManager_fetchDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  block[3] = &unk_2786F0EA8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(workQueue, block);
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMMTRSystemCommissionerPairingManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__HMMTRSystemCommissionerPairingManager_fetchSystemCommissionerPairingsWithCompletionHandler___block_invoke;
  v7[3] = &unk_2786EF5A8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (HMMTRSystemCommissionerPairingManager)initWithQueue:(id)queue accessoryServerBrowser:(id)browser
{
  queueCopy = queue;
  browserCopy = browser;
  v14.receiver = self;
  v14.super_class = HMMTRSystemCommissionerPairingManager;
  v9 = [(HMMTRSystemCommissionerPairingManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeWeak(&v10->_browser, browserCopy);
    storageForSystemCommissioner = [browserCopy storageForSystemCommissioner];
    storage = v10->_storage;
    v10->_storage = storageForSystemCommissioner;

    [MEMORY[0x277D0F7A8] blessWithImplicitContext:v10->_workQueue];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t40_5905 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t40_5905, &__block_literal_global_100);
  }

  v3 = logCategory__hmf_once_v41_5906;

  return v3;
}

uint64_t __52__HMMTRSystemCommissionerPairingManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v41_5906;
  logCategory__hmf_once_v41_5906 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end