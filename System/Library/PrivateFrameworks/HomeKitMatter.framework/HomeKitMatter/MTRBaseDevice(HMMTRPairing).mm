@interface MTRBaseDevice(HMMTRPairing)
- (id)_retrieveFabricClusterWithQueue:()HMMTRPairing;
- (void)_fetchPairingsWithCallbackQueue:()HMMTRPairing filtered:vendorMetadataStore:completionHandler:;
- (void)_removeFabricWithIndex:()HMMTRPairing callbackQueue:completionHandler:;
- (void)fetchCurrentFabricIndexWithCallbackQueue:()HMMTRPairing completionHandler:;
- (void)fetchFabricDescriptorsWithCallbackQueue:()HMMTRPairing filtered:completionHandler:;
- (void)fetchSerialNumberWithCallbackQueue:()HMMTRPairing completionHandler:;
- (void)removeAllPairingsForCallbackQueue:()HMMTRPairing vendorMetadataStore:completionHandler:;
- (void)removePairing:()HMMTRPairing callbackQueue:vendorMetadataStore:completionHandler:;
- (void)unpairDevice:()HMMTRPairing completionHandler:;
- (void)updateFabricLabel:()HMMTRPairing callbackQueue:completionHandler:;
@end

@implementation MTRBaseDevice(HMMTRPairing)

- (void)_fetchPairingsWithCallbackQueue:()HMMTRPairing filtered:vendorMetadataStore:completionHandler:
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __110__MTRBaseDevice_HMMTRPairing___fetchPairingsWithCallbackQueue_filtered_vendorMetadataStore_completionHandler___block_invoke;
  v14[3] = &unk_2786F1038;
  v15 = v10;
  v16 = v11;
  v14[4] = self;
  v12 = v10;
  v13 = v11;
  [self fetchFabricDescriptorsWithCallbackQueue:a3 filtered:a4 completionHandler:v14];
}

- (void)fetchFabricDescriptorsWithCallbackQueue:()HMMTRPairing filtered:completionHandler:
{
  v8 = a5;
  v11 = [self _retrieveFabricClusterWithQueue:a3];
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  [v9 setFabricFiltered:v10];

  [v11 readAttributeFabricsWithParams:v9 completionHandler:v8];
}

- (void)fetchSerialNumberWithCallbackQueue:()HMMTRPairing completionHandler:
{
  v6 = MEMORY[0x277CD51E8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithDevice:self endpoint:0 queue:v8];

  [v9 readAttributeSerialNumberWithCompletionHandler:v7];
}

- (void)removeAllPairingsForCallbackQueue:()HMMTRPairing vendorMetadataStore:completionHandler:
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v14;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Remove all pairings: Collecting fabrics table list", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__MTRBaseDevice_HMMTRPairing__removeAllPairingsForCallbackQueue_vendorMetadataStore_completionHandler___block_invoke;
  v19[3] = &unk_2786F1010;
  v19[4] = selfCopy;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  [selfCopy fetchCurrentFabricIndexWithCallbackQueue:v17 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateFabricLabel:()HMMTRPairing callbackQueue:completionHandler:
{
  v8 = a5;
  v9 = a3;
  v10 = [self _retrieveFabricClusterWithQueue:a4];
  v11 = objc_alloc_init(MEMORY[0x277CD5478]);
  [v11 setLabel:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__MTRBaseDevice_HMMTRPairing__updateFabricLabel_callbackQueue_completionHandler___block_invoke;
  v13[3] = &unk_2786F0F70;
  v14 = v8;
  v12 = v8;
  [v10 updateFabricLabelWithParams:v11 completionHandler:v13];
}

- (void)fetchCurrentFabricIndexWithCallbackQueue:()HMMTRPairing completionHandler:
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v11;
    v19 = 2112;
    v20 = selfCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Getting current fabric index: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [selfCopy _retrieveFabricClusterWithQueue:v6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__MTRBaseDevice_HMMTRPairing__fetchCurrentFabricIndexWithCallbackQueue_completionHandler___block_invoke;
  v15[3] = &unk_2786F0F48;
  v15[4] = selfCopy;
  v16 = v7;
  v13 = v7;
  [v12 readAttributeCurrentFabricIndexWithCompletionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)unpairDevice:()HMMTRPairing completionHandler:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = selfCopy;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Attempting to unpair device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__MTRBaseDevice_HMMTRPairing__unpairDevice_completionHandler___block_invoke;
  v15[3] = &unk_2786F0F20;
  v16 = v6;
  v17 = v7;
  v15[4] = selfCopy;
  v12 = v6;
  v13 = v7;
  [selfCopy fetchCurrentFabricIndexWithCallbackQueue:v12 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_removeFabricWithIndex:()HMMTRPairing callbackQueue:completionHandler:
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Attempting to remove fabric index: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [selfCopy _retrieveFabricClusterWithQueue:v9];
  v16 = objc_alloc_init(MEMORY[0x277CD5470]);
  [v16 setFabricIndex:v8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__MTRBaseDevice_HMMTRPairing___removeFabricWithIndex_callbackQueue_completionHandler___block_invoke;
  v19[3] = &unk_2786F0EF8;
  v19[4] = selfCopy;
  v20 = v10;
  v17 = v10;
  [v15 removeFabricWithParams:v16 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removePairing:()HMMTRPairing callbackQueue:vendorMetadataStore:completionHandler:
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v17;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Remove pairing: Iterating over fabrics table list to find FabricIndex for pairing %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__MTRBaseDevice_HMMTRPairing__removePairing_callbackQueue_vendorMetadataStore_completionHandler___block_invoke;
  v23[3] = &unk_2786F0ED0;
  v26 = v11;
  v27 = v13;
  v23[4] = selfCopy;
  v24 = v12;
  v25 = v10;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = v13;
  [selfCopy fetchFabricDescriptorsWithCallbackQueue:v18 filtered:0 completionHandler:v23];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveFabricClusterWithQueue:()HMMTRPairing
{
  v4 = MEMORY[0x277CD5208];
  v5 = a3;
  v6 = [[v4 alloc] initWithDevice:self endpoint:0 queue:v5];

  return v6;
}

@end