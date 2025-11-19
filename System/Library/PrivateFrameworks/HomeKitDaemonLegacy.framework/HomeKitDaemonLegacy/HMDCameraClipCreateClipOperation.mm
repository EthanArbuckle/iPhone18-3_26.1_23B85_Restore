@interface HMDCameraClipCreateClipOperation
+ (id)logCategory;
- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8;
- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8 dataSource:(id)a9;
- (id)attributeDescriptions;
- (id)modelsToAdd;
@end

@implementation HMDCameraClipCreateClipOperation

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDCameraClipCreateClipOperation;
  v3 = [(HMDCameraClipOperation *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipOperation *)self targetFragmentDuration];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithName:@"Target Fragment Duration" value:v6];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDCameraClipCreateClipOperation *)self clipStartDate];
  v10 = [v8 initWithName:@"Clip Start Date" value:v9];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraClipCreateClipOperation *)self quality];
  v12 = HMStringFromCameraClipQuality();
  v13 = [v11 initWithName:@"Quality" value:v12];
  v19[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v15 = [v3 arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)modelsToAdd
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [HMDCameraClipModel alloc];
  v4 = [(HMDCameraClipOperation *)self clipModelID];
  v5 = +[HMDCameraClipModel sentinelParentUUID];
  v6 = [(HMBModel *)v3 initWithModelID:v4 parentModelID:v5];

  v7 = [(HMDCameraClipCreateClipOperation *)self clipStartDate];
  [(HMDCameraClipModel *)v6 setStartDate:v7];

  [(HMDCameraClipModel *)v6 setIsComplete:MEMORY[0x277CBEC28]];
  [(HMDCameraClipModel *)v6 setDuration:&unk_286628B28];
  [(HMDCameraClipModel *)v6 setSize:&unk_286628B28];
  v8 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipOperation *)self targetFragmentDuration];
  v9 = [v8 numberWithDouble:?];
  [(HMDCameraClipModel *)v6 setTargetFragmentDuration:v9];

  [(HMDCameraClipModel *)v6 setRecordedLocally:MEMORY[0x277CBEC38]];
  [(HMDCameraClipModel *)v6 setStreamingAssetVersion:@"1"];
  v10 = objc_alloc_init(MEMORY[0x277D17130]);
  [(HMDCameraClipModel *)v6 setVideoStreamingAsset:v10];

  [(HMDCameraClipModel *)v6 setVideoMetadataArray:MEMORY[0x277CBEBF8]];
  v11 = [(HMDCameraClipCreateClipOperation *)self encryptionManager];
  v12 = [v11 key];
  [(HMDCameraClipModel *)v6 setEncryptionKey:v12];

  [(HMDCameraClipModel *)v6 setEncryptionScheme:&unk_286628B40];
  [(HMDCameraClipModel *)v6 setQuality:[(HMDCameraClipCreateClipOperation *)self quality]];
  if ([(HMDCameraClipCreateClipOperation *)self quality])
  {
    v13 = +[HMDHomeKitVersion version8];
    [(HMBModel *)v6 setHmbMinimumSupportedVersion:v13];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [(HMBModel *)v6 debugDescription];
    *buf = 138543618;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating clip: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v23.receiver = v15;
  v23.super_class = HMDCameraClipCreateClipOperation;
  v19 = [(HMDCameraClipAddModelsOperation *)&v23 modelsToAdd];
  v20 = [v19 setByAddingObject:v6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8 dataSource:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v17)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (a5 <= 0.0)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    v27 = _HMFPreconditionFailure();
    return [(HMDCameraClipCreateClipOperation *)v27 initWithClipModelID:v28 localZone:v29 targetFragmentDuration:v30 clipStartDate:v34 quality:v31 encryptionManager:v32, v33];
  }

  v21 = v20;
  v35.receiver = self;
  v35.super_class = HMDCameraClipCreateClipOperation;
  v22 = [(HMDCameraClipOperation *)&v35 initWithClipModelID:v16 localZone:v17 dataSource:v20];
  v23 = v22;
  if (v22)
  {
    v22->_targetFragmentDuration = a5;
    v24 = [v18 copy];
    clipStartDate = v23->_clipStartDate;
    v23->_clipStartDate = v24;

    v23->_quality = a7;
    objc_storeStrong(&v23->_encryptionManager, a8);
  }

  return v23;
}

- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)a3 localZone:(id)a4 targetFragmentDuration:(double)a5 clipStartDate:(id)a6 quality:(int64_t)a7 encryptionManager:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v19 = [(HMDCameraClipCreateClipOperation *)self initWithClipModelID:v17 localZone:v16 targetFragmentDuration:v15 clipStartDate:a7 quality:v14 encryptionManager:v18 dataSource:a5];

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_102539 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_102539, &__block_literal_global_102540);
  }

  v3 = logCategory__hmf_once_v2_102541;

  return v3;
}

uint64_t __47__HMDCameraClipCreateClipOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_102541;
  logCategory__hmf_once_v2_102541 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end