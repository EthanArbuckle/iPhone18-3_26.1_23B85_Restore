@interface HMDCameraClipImportPosterFrameMetadata
- (HMDCameraClipImportPosterFrameMetadata)initWithPosterFrameMetadata:(id)a3;
@end

@implementation HMDCameraClipImportPosterFrameMetadata

- (HMDCameraClipImportPosterFrameMetadata)initWithPosterFrameMetadata:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = HMDCameraClipImportPosterFrameMetadata;
  v5 = [(HMDCameraClipImportPosterFrameMetadata *)&v33 init];
  if (!v5)
  {
LABEL_22:
    v26 = v5;
    goto LABEL_23;
  }

  v6 = [v4 hmf_stringForKey:@"data"];
  if (!v6)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v5;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v17;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not find resourcePath in poster frame segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [v4 hmf_numberForKey:@"offset"];
  if (!v8)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v5;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v21;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find offset in poster frame segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v4 hmf_numberForKey:@"width"];
  if (!v10)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v5;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not find width in poster frame segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
LABEL_16:

    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v4 hmf_numberForKey:@"height"];
  if (v12)
  {
    objc_storeStrong(&v5->_resourcePath, v7);
    [v9 doubleValue];
    v5->_offset = v13;
    v5->_width = [v11 unsignedIntegerValue];
    v5->_height = [v12 unsignedIntegerValue];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v5;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v30;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not find height in poster frame segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  if (v12)
  {
    goto LABEL_22;
  }

LABEL_17:
  v26 = 0;
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

@end