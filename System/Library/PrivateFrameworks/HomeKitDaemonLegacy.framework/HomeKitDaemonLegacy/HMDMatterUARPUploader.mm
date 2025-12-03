@interface HMDMatterUARPUploader
- (BOOL)accessoryReachable:(id)reachable error:(id *)error;
- (BOOL)accessoryUnreachable:(id)unreachable error:(id *)error;
- (BOOL)applyStagedAssetsForAccessory:(id)accessory error:(id *)error;
- (BOOL)cancelAssetStagingForAccessory:(id)accessory asset:(id)asset;
- (BOOL)offerAssetToAccessory:(id)accessory asset:(id)asset error:(id *)error;
- (BOOL)pauseAssetTransfersForAccessory:(id)accessory;
- (BOOL)recvDataFromAccessory:(id)accessory data:(id)data error:(id *)error;
- (BOOL)rescindStagedAssetsForAccessory:(id)accessory error:(id *)error;
- (BOOL)resumeAssetTransfersForAccessory:(id)accessory;
@end

@implementation HMDMatterUARPUploader

- (BOOL)cancelAssetStagingForAccessory:(id)accessory asset:(id)asset
{
  v18 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetCopy = asset;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2080;
    v17 = "[HMDMatterUARPUploader cancelAssetStagingForAccessory:asset:]";
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)resumeAssetTransfersForAccessory:(id)accessory
{
  v15 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2080;
    v14 = "[HMDMatterUARPUploader resumeAssetTransfersForAccessory:]";
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)pauseAssetTransfersForAccessory:(id)accessory
{
  v15 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2080;
    v14 = "[HMDMatterUARPUploader pauseAssetTransfersForAccessory:]";
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)rescindStagedAssetsForAccessory:(id)accessory error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2080;
    v15 = "[HMDMatterUARPUploader rescindStagedAssetsForAccessory:error:]";
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)applyStagedAssetsForAccessory:(id)accessory error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2080;
    v15 = "[HMDMatterUARPUploader applyStagedAssetsForAccessory:error:]";
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)offerAssetToAccessory:(id)accessory asset:(id)asset error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetCopy = asset;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2080;
    v18 = "[HMDMatterUARPUploader offerAssetToAccessory:asset:error:]";
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)recvDataFromAccessory:(id)accessory data:(id)data error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  dataCopy = data;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v12;
    v17 = 2080;
    v18 = "[HMDMatterUARPUploader recvDataFromAccessory:data:error:]";
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@%s: This function should not be called for Matter accessories", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)accessoryUnreachable:(id)unreachable error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  unreachableCopy = unreachable;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v9;
    v14 = 2080;
    v15 = "[HMDMatterUARPUploader accessoryUnreachable:error:]";
    v16 = 2112;
    v17 = unreachableCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@%s: accessory %@ is now unreachable.", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)accessoryReachable:(id)reachable error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v9;
    v14 = 2080;
    v15 = "[HMDMatterUARPUploader accessoryReachable:error:]";
    v16 = 2112;
    v17 = reachableCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@%s: accessory %@ is now reachable.", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

@end