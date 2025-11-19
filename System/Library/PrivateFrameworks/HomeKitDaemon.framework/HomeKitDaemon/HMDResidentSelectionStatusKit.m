@interface HMDResidentSelectionStatusKit
+ (id)logCategory;
- (HMDPreferredResidentsList)preferredResidentsList;
- (HMDResidentDevice)elector;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionStatusKit)initWithWithContext:(id)a3 residentStatusList:(id)a4;
- (id)logIdentifier;
- (id)residentStatusWithValidPreferredResidentsListIn:(id)a3;
- (id)selectionInfoWithLatestTimestampIn:(id)a3;
- (id)sortResidentStatuses:(id)a3;
- (void)_parseResidentStatus:(id)a3;
@end

@implementation HMDResidentSelectionStatusKit

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentSelectionStatusKit *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)_parseResidentStatus:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __54__HMDResidentSelectionStatusKit__parseResidentStatus___block_invoke;
  v27 = &unk_278678108;
  v28 = self;
  v8 = v7;
  v29 = v8;
  v9 = v5;
  v30 = v9;
  v10 = v6;
  v31 = v10;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:&v24];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v14;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Wired residents are: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v9 copy];
  [(HMDResidentSelectionStatusKit *)v12 setWiredResidents:v15];

  v16 = objc_autoreleasePoolPush();
  v17 = v12;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v10 shortDescription];
    *buf = 138543618;
    v33 = v19;
    v34 = 2112;
    v35 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Residents with reachable accessories are: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [v10 copy];
  [(HMDResidentSelectionStatusKit *)v17 setResidentsWithReachableAccessories:v21];

  v22 = [v8 copy];
  [(HMDResidentSelectionStatusKit *)v17 setResidentIDSIdentifierToLocationMap:v22];

  v23 = *MEMORY[0x277D85DE8];
}

void __54__HMDResidentSelectionStatusKit__parseResidentStatus___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 idsIdentifier];
  v6 = [v4 residentDeviceWithIDSIdentifier:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "location")}];
    v8 = *(a1 + 40);
    v9 = [v3 idsIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v9];

    if ([v3 networkConnectionType] == 1)
    {
      [*(a1 + 48) addObject:v6];
    }

    if ([v3 hasReachableAccessories])
    {
      [*(a1 + 56) addObject:v6];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Found status from an unknown resident on StatusKit: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)selectionInfoWithLatestTimestampIn:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_3_106315];
  v7 = [v6 firstObject];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Latest selection info on StatusKit is from status: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 selectionInfo];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __68__HMDResidentSelectionStatusKit_selectionInfoWithLatestTimestampIn___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 selectionInfo];
  v7 = [v5 selectionInfo];
  v8 = v7;
  if (v6 | v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (v6 && v7)
  {
    v11 = [v7 selectionTimestamp];
    v12 = [v6 selectionTimestamp];
    v10 = [v11 compare:v12];
  }

  if (!v10)
  {
    v13 = [v4 idsIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v5 idsIdentifier];
    v16 = [v15 UUIDString];
    v10 = [v14 compare:v16];
  }

  return v10;
}

uint64_t __74__HMDResidentSelectionStatusKit_comparatorForPreferredResidentsListSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 swVersion];
  v7 = [v4 swVersion];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 idsIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v5 idsIdentifier];
    v12 = [v11 UUIDString];
    v8 = [v10 compare:v12];
  }

  return v8;
}

- (id)sortResidentStatuses:(id)a3
{
  v4 = [a3 allObjects];
  v5 = [(HMDResidentSelectionStatusKit *)self comparatorForPreferredResidentsListSource];
  v6 = [v4 sortedArrayUsingComparator:v5];

  return v6;
}

- (HMDResidentDevice)elector
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionStatusKit *)self sortedResidentStatuses];
  v4 = [v3 firstObject];

  v5 = MEMORY[0x277CBEB98];
  v6 = [(HMDResidentSelectionStatusKit *)self context];
  v7 = [v6 availableResidentDevices];
  v8 = [v5 setWithArray:v7];
  v9 = [v4 matchingDeviceFromResidentDevices:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 shortDescription];
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = v14;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Elector is: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)residentStatusWithValidPreferredResidentsListIn:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDResidentSelectionStatusKit_residentStatusWithValidPreferredResidentsListIn___block_invoke;
  v12[3] = &unk_2786780C0;
  v12[4] = self;
  v5 = [v4 na_firstObjectPassingTest:v12];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Preferred source for residents list: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

BOOL __81__HMDResidentSelectionStatusKit_residentStatusWithValidPreferredResidentsListIn___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 preferredResidentsList];
  v5 = [v4 residentIDSIdentifiers];
  v6 = [v5 count];

  if (!v6)
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
      v16 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Preferred residents list is missing in: %@. Moving to next one.", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (HMDPreferredResidentsList)preferredResidentsList
{
  v2 = [(HMDResidentSelectionStatusKit *)self sourceForPreferredResidentsList];
  v3 = [v2 preferredResidentsList];

  return v3;
}

- (HMDResidentSelectionStatusKit)initWithWithContext:(id)a3 residentStatusList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HMDResidentSelectionStatusKit;
  v8 = [(HMDResidentSelectionStatusKit *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    v10 = [v6 queue];
    queue = v9->_queue;
    v9->_queue = v10;

    objc_storeStrong(&v9->_residentStatusList, a4);
    v12 = [(HMDResidentSelectionStatusKit *)v9 sortResidentStatuses:v7];
    sortedResidentStatuses = v9->_sortedResidentStatuses;
    v9->_sortedResidentStatuses = v12;
    v14 = v12;

    v15 = [(HMDResidentSelectionStatusKit *)v9 residentStatusWithValidPreferredResidentsListIn:v14];
    sourceForPreferredResidentsList = v9->_sourceForPreferredResidentsList;
    v9->_sourceForPreferredResidentsList = v15;

    v17 = [(HMDResidentSelectionStatusKit *)v9 selectionInfoWithLatestTimestampIn:v7];
    selectionInfo = v9->_selectionInfo;
    v9->_selectionInfo = v17;

    [(HMDResidentSelectionStatusKit *)v9 _parseResidentStatus:v7];
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_106332 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_106332, &__block_literal_global_10_106333);
  }

  v3 = logCategory__hmf_once_v8_106334;

  return v3;
}

void __44__HMDResidentSelectionStatusKit_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_106334;
  logCategory__hmf_once_v8_106334 = v1;
}

@end