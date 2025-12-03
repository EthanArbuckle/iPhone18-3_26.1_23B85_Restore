@interface HMDCameraClipCreateClipWithSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0;
- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0 dataSource:(id)self1;
- (id)attributeDescriptions;
- (id)modelsToAdd;
@end

@implementation HMDCameraClipCreateClipWithSignificantEventOperation

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  attributeDescriptions = [(HMDCameraClipAddSignificantEventOperation *)&v18 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self targetFragmentDuration];
  v6 = [v5 numberWithDouble:?];
  v7 = [v4 initWithName:@"Target Fragment Duration" value:v6];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  clipStartDate = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self clipStartDate];
  v10 = [v8 initWithName:@"Clip Start Date" value:clipStartDate];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality];
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

  clipStartDate = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self clipStartDate];
  [(HMDCameraClipModel *)v6 setStartDate:clipStartDate];

  [(HMDCameraClipModel *)v6 setIsComplete:MEMORY[0x277CBEC28]];
  [(HMDCameraClipModel *)v6 setDuration:&unk_28662A340];
  [(HMDCameraClipModel *)v6 setSize:&unk_28662A340];
  v8 = MEMORY[0x277CCABB0];
  [(HMDCameraClipCreateClipWithSignificantEventOperation *)self targetFragmentDuration];
  v9 = [v8 numberWithDouble:?];
  [(HMDCameraClipModel *)v6 setTargetFragmentDuration:v9];

  [(HMDCameraClipModel *)v6 setRecordedLocally:MEMORY[0x277CBEC38]];
  [(HMDCameraClipModel *)v6 setStreamingAssetVersion:@"1"];
  v10 = objc_alloc_init(MEMORY[0x277D17130]);
  [(HMDCameraClipModel *)v6 setVideoStreamingAsset:v10];

  [(HMDCameraClipModel *)v6 setVideoMetadataArray:MEMORY[0x277CBEBF8]];
  encryptionManager = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self encryptionManager];
  v12 = [encryptionManager key];
  [(HMDCameraClipModel *)v6 setEncryptionKey:v12];

  [(HMDCameraClipModel *)v6 setEncryptionScheme:&unk_28662A358];
  [(HMDCameraClipModel *)v6 setQuality:[(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality]];
  if ([(HMDCameraClipCreateClipWithSignificantEventOperation *)self quality])
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
  v23.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  modelsToAdd = [(HMDCameraClipAddSignificantEventOperation *)&v23 modelsToAdd];
  v20 = [modelsToAdd setByAddingObject:v6];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0 dataSource:(id)self1
{
  dCopy = d;
  zoneCopy = zone;
  eventCopy = event;
  identityCopy = identity;
  dateCopy = date;
  managerCopy = manager;
  sourceCopy = source;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!zoneCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!eventCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!identityCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (duration <= 0.0)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!dateCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!managerCopy)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v25 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_19:
    v31 = _HMFPreconditionFailure();
    return [(HMDCameraClipCreateClipWithSignificantEventOperation *)v31 initWithClipModelID:v32 localZone:v33 significantEvent:v34 homePresenceByPairingIdentity:v35 targetFragmentDuration:v36 clipStartDate:v39 quality:v37 encryptionManager:v38, manager];
  }

  v40.receiver = self;
  v40.super_class = HMDCameraClipCreateClipWithSignificantEventOperation;
  v26 = [(HMDCameraClipAddSignificantEventOperation *)&v40 initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy dataSource:sourceCopy];
  v27 = v26;
  if (v26)
  {
    v26->_targetFragmentDuration = duration;
    v28 = [dateCopy copy];
    clipStartDate = v27->_clipStartDate;
    v27->_clipStartDate = v28;

    v27->_quality = quality;
    objc_storeStrong(&v27->_encryptionManager, manager);
  }

  return v27;
}

- (HMDCameraClipCreateClipWithSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity targetFragmentDuration:(double)duration clipStartDate:(id)date quality:(int64_t)quality encryptionManager:(id)self0
{
  managerCopy = manager;
  dateCopy = date;
  identityCopy = identity;
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v24 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v25 = [(HMDCameraClipCreateClipWithSignificantEventOperation *)self initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy targetFragmentDuration:dateCopy clipStartDate:quality quality:duration encryptionManager:managerCopy dataSource:v24];

  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_174529 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_174529, &__block_literal_global_174530);
  }

  v3 = logCategory__hmf_once_v2_174531;

  return v3;
}

uint64_t __67__HMDCameraClipCreateClipWithSignificantEventOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_174531;
  logCategory__hmf_once_v2_174531 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end