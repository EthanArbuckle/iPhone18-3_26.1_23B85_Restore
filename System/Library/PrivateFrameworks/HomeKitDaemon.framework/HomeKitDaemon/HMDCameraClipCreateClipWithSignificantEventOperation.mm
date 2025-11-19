@interface HMDCameraClipCreateClipWithSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9;
- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9 dataSource:(id)a10;
- (id)attributeDescriptions;
- (id)modelsToAdd;
@end

@implementation HMDCameraClipCreateClipWithSignificantEventOperation

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  v3 = [(HMDCameraClipAddSignificantEventOperation *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self targetFragmentDuration];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithName:@"Target Fragment Duration" value:v6];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self clipStartDate];
  v10 = [v8 initWithName:@"Clip Start Date" value:v9];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality];
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

  v7 = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self clipStartDate];
  [(HMDCameraClipModel *)v6 setStartDate:v7];

  [(HMDCameraClipModel *)v6 setIsComplete:MEMORY[0x277CBEC28]];
  [(HMDCameraClipModel *)v6 setDuration:&unk_283E74F18];
  [(HMDCameraClipModel *)v6 setSize:&unk_283E74F18];
  v8 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self targetFragmentDuration];
  v9 = [v8 numberWithDouble:?];
  [(HMDCameraClipModel *)v6 setTargetFragmentDuration:v9];

  [(HMDCameraClipModel *)v6 setRecordedLocally:MEMORY[0x277CBEC38]];
  [(HMDCameraClipModel *)v6 setStreamingAssetVersion:@"1"];
  v10 = objc_alloc_init(MEMORY[0x277D17130]);
  [(HMDCameraClipModel *)v6 setVideoStreamingAsset:v10];

  [(HMDCameraClipModel *)v6 setVideoMetadataArray:MEMORY[0x277CBEBF8]];
  v11 = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self encryptionManager];
  v12 = [v11 key];
  [(HMDCameraClipModel *)v6 setEncryptionKey:v12];

  [(HMDCameraClipModel *)v6 setEncryptionScheme:&unk_283E74F30];
  [(HMDCameraClipModel *)v6 setQuality:[(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality]];
  if ([(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality])
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
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating clip: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v23.receiver = v15;
  v23.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  v19 = [(HMDCameraClipAddSignificantEventOperation *)&v23 modelsToAdd];
  v20 = [v19 setByAddingObject:v6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9 dataSource:(id)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  if (!v17)
  {
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
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (a6 <= 0.0)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v20)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = v22;
  if (!v22)
  {
LABEL_17:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraClipCreateClipWithSignificantEventOperation *)v29 initWithClipModelID:v30 localZone:v31 significantEvent:v32 targetFragmentDuration:v33 clipStartDate:v37 quality:v34 encryptionManager:v35, v36];
  }

  v38.receiver = self;
  v38.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  v24 = [(HMDCameraClipAddSignificantEventOperation *)&v38 initWithClipModelID:v17 localZone:v18 significantEvent:v19 dataSource:v22];
  v25 = v24;
  if (v24)
  {
    v24->_targetFragmentDuration = a6;
    v26 = [v20 copy];
    clipStartDate = v25->_clipStartDate;
    v25->_clipStartDate = v26;

    v25->_quality = a8;
    objc_storeStrong(&v25->_encryptionManager, a9);
  }

  return v25;
}

- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 targetFragmentDuration:(double)a6 clipStartDate:(id)a7 quality:(int64_t)a8 encryptionManager:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v22 = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self initWithClipModelID:v20 localZone:v19 significantEvent:v18 targetFragmentDuration:v17 clipStartDate:a8 quality:v16 encryptionManager:a6 dataSource:v21];

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_255527 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_255527, &__block_literal_global_255528);
  }

  v3 = logCategory__hmf_once_v2_255529;

  return v3;
}

void __67__HMDCameraClipCreateClipWithSignificantEventOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_255529;
  logCategory__hmf_once_v2_255529 = v1;
}

@end