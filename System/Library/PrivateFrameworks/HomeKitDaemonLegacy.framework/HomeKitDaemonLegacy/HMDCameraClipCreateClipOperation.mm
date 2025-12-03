@interface HMDCameraClipCreateClipOperation
+ (id)logCategory;
- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager;
- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager dataSource:(id)source;
- (id)attributeDescriptions;
- (id)modelsToAdd;
@end

@implementation HMDCameraClipCreateClipOperation

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDCameraClipCreateClipOperation;
  attributeDescriptions = [(HMDCameraClipOperation *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipOperation *)self targetFragmentDuration];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithName:@"Target Fragment Duration" value:v6];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  clipStartDate = [(HMDCameraClipCreateClipOperation *)self clipStartDate];
  v10 = [v8 initWithName:@"Clip Start Date" value:clipStartDate];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraClipCreateClipOperation *)self quality];
  v12 = HMStringFromCameraClipQuality();
  v13 = [v11 initWithName:@"Quality" value:v12];
  v19[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)modelsToAdd
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [HMDCameraClipModel alloc];
  clipModelID = [(HMDCameraClipOperation *)self clipModelID];
  v5 = +[HMDCameraClipModel sentinelParentUUID];
  v6 = [(HMBModel *)v3 initWithModelID:clipModelID parentModelID:v5];

  clipStartDate = [(HMDCameraClipCreateClipOperation *)self clipStartDate];
  [(HMDCameraClipModel *)v6 setStartDate:clipStartDate];

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
  encryptionManager = [(HMDCameraClipCreateClipOperation *)self encryptionManager];
  v12 = [encryptionManager key];
  [(HMDCameraClipModel *)v6 setEncryptionKey:v12];

  [(HMDCameraClipModel *)v6 setEncryptionScheme:&unk_286628B40];
  [(HMDCameraClipModel *)v6 setQuality:[(HMDCameraClipCreateClipOperation *)self quality]];
  if ([(HMDCameraClipCreateClipOperation *)self quality])
  {
    v13 = +[HMDHomeKitVersion version8];
    [(HMBModel *)v6 setHmbMinimumSupportedVersion:v13];
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v23.receiver = selfCopy;
  v23.super_class = HMDCameraClipCreateClipOperation;
  modelsToAdd = [(HMDCameraClipAddModelsOperation *)&v23 modelsToAdd];
  v20 = [modelsToAdd setByAddingObject:v6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager dataSource:(id)source
{
  dCopy = d;
  zoneCopy = zone;
  dateCopy = date;
  managerCopy = manager;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!zoneCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (duration <= 0.0)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!dateCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!managerCopy)
  {
LABEL_13:
    v27 = _HMFPreconditionFailure();
    return [(HMDCameraClipCreateClipOperation *)v27 initWithClipModelID:v28 localZone:v29 targetFragmentDuration:v30 clipStartDate:v34 quality:v31 encryptionManager:v32, v33];
  }

  v21 = sourceCopy;
  v35.receiver = self;
  v35.super_class = HMDCameraClipCreateClipOperation;
  v22 = [(HMDCameraClipOperation *)&v35 initWithClipModelID:dCopy localZone:zoneCopy dataSource:sourceCopy];
  v23 = v22;
  if (v22)
  {
    v22->_targetFragmentDuration = duration;
    v24 = [dateCopy copy];
    clipStartDate = v23->_clipStartDate;
    v23->_clipStartDate = v24;

    v23->_quality = quality;
    objc_storeStrong(&v23->_encryptionManager, manager);
  }

  return v23;
}

- (HMDCameraClipCreateClipOperation)initWithClipModelID:(id)d localZone:(id)zone targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)manager
{
  managerCopy = manager;
  dateCopy = date;
  zoneCopy = zone;
  dCopy = d;
  v18 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v19 = [(HMDCameraClipCreateClipOperation *)self initWithClipModelID:dCopy localZone:zoneCopy targetFragmentDuration:dateCopy clipStartDate:quality quality:managerCopy encryptionManager:v18 dataSource:duration];

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