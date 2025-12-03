@interface HMDCameraClipImportVideoSegmentMetadata
- (HMDCameraClipImportVideoSegmentMetadata)initWithVideoSegmentMetadata:(id)metadata;
@end

@implementation HMDCameraClipImportVideoSegmentMetadata

- (HMDCameraClipImportVideoSegmentMetadata)initWithVideoSegmentMetadata:(id)metadata
{
  v35 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v30.receiver = self;
  v30.super_class = HMDCameraClipImportVideoSegmentMetadata;
  v5 = [(HMDCameraClipImportVideoSegmentMetadata *)&v30 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [metadataCopy hmf_stringForKey:@"data"];
  if (!v6)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v5;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v19;
      v33 = 2112;
      v34 = metadataCopy;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find resourcePath in video segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [metadataCopy hmf_numberForKey:@"isHeader"];
  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v5;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v23;
      v33 = 2112;
      v34 = metadataCopy;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not find isHeader in video segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [metadataCopy hmf_numberForKey:@"duration"];
  if (!v10)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v5;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = metadataCopy;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not find duration in video segment metadata: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
LABEL_16:

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v7 copy];
  resourcePath = v5->_resourcePath;
  v5->_resourcePath = v12;

  v5->_header = [v9 BOOLValue];
  [v11 doubleValue];
  v5->_duration = v14;

LABEL_6:
  v15 = v5;
LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

@end