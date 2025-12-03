@interface HMDCameraClipAddSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity dataSource:(id)source;
- (id)attributeDescriptions;
- (id)modelsToAdd;
- (void)updateMirrorOutputModel:(id)model;
@end

@implementation HMDCameraClipAddSignificantEventOperation

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDCameraClipAddSignificantEventOperation;
  attributeDescriptions = [(HMDCameraClipOperation *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v6 = [v4 initWithName:@"Significant Event" value:significantEvent];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  homePresenceByPairingIdentity = [(HMDCameraClipAddSignificantEventOperation *)self homePresenceByPairingIdentity];
  v9 = [v7 initWithName:@"Home Presence By Pairing Identity" value:homePresenceByPairingIdentity];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateMirrorOutputModel:(id)model
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = modelCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  hmbModelID = [v6 hmbModelID];
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  uUID = [significantEvent UUID];
  v10 = [hmbModelID isEqual:uUID];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding assets to significant event model for mirror output: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    significantEvent2 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
    heroFrameData = [significantEvent2 heroFrameData];

    if (heroFrameData)
    {
      v17 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:heroFrameData itemTypeHint:@"jpg"];
      [v6 setHeroFrameAsset:v17];
    }

    significantEvent3 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
    faceCropData = [significantEvent3 faceCropData];

    if (faceCropData)
    {
      v20 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:faceCropData itemTypeHint:@"jpg"];
      [v6 setFaceCropAsset:v20];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)modelsToAdd
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [HMDCameraSignificantEventNotificationModel alloc];
  significantEvent = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  uUID = [significantEvent UUID];
  clipModelID = [(HMDCameraClipOperation *)self clipModelID];
  v8 = [(HMBModel *)v4 initWithModelID:uUID parentModelID:clipModelID];

  significantEvent2 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  dateOfOccurrence = [significantEvent2 dateOfOccurrence];
  [(HMDCameraSignificantEventNotificationModel *)v8 setDateOfOccurrence:dateOfOccurrence];

  v11 = MEMORY[0x277CCABB0];
  significantEvent3 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(significantEvent3, "reason")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setSignificantEvent:v13];

  v14 = MEMORY[0x277CCABB0];
  significantEvent4 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(significantEvent4, "confidenceLevel")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setConfidenceLevel:v16];

  v17 = MEMORY[0x277CCABB0];
  significantEvent5 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  [significantEvent5 timeOffsetWithinClip];
  v19 = [v17 numberWithDouble:?];
  [(HMDCameraSignificantEventNotificationModel *)v8 setTimeOffsetWithinClip:v19];

  v20 = objc_alloc(MEMORY[0x277D170A0]);
  clipModelID2 = [(HMDCameraClipOperation *)self clipModelID];
  v22 = [v20 initWithModelID:clipModelID2 action:1];
  [(HMDCameraSignificantEventNotificationModel *)v8 setAssociatedClip:v22];

  homePresenceByPairingIdentity = [(HMDCameraClipAddSignificantEventOperation *)self homePresenceByPairingIdentity];
  [(HMDCameraSignificantEventNotificationModel *)v8 setHomePresenceByPairingIdentity:homePresenceByPairingIdentity];

  v54 = v3;
  v55 = v8;
  [v3 addObject:v8];
  v24 = objc_autoreleasePoolPush();
  selfCopy = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [(HMBModel *)v8 debugDescription];
    *buf = 138543618;
    v63 = v27;
    v64 = 2112;
    v65 = v28;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating significant event model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  significantEvent6 = [(HMDCameraClipAddSignificantEventOperation *)selfCopy significantEvent];
  faceClassifications = [significantEvent6 faceClassifications];

  obj = faceClassifications;
  v31 = [faceClassifications countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v58;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v57 + 1) + 8 * i);
        v36 = [HMDCameraSignificantEventFaceClassificationModel alloc];
        uUID2 = [v35 UUID];
        hmbModelID = [(HMBModel *)v55 hmbModelID];
        v39 = [(HMBModel *)v36 initWithModelID:uUID2 parentModelID:hmbModelID];

        personManagerUUID = [v35 personManagerUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonManagerUUID:personManagerUUID];

        personUUID = [v35 personUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonUUID:personUUID];

        personName = [v35 personName];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonName:personName];

        unassociatedFaceCropUUID = [v35 unassociatedFaceCropUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

        [v54 addObject:v39];
        v44 = objc_autoreleasePoolPush();
        v45 = selfCopy;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [(HMBModel *)v39 debugDescription];
          *buf = 138543618;
          v63 = v47;
          v64 = 2112;
          v65 = v48;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Updating face classification model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
      }

      v32 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v32);
  }

  v56.receiver = selfCopy;
  v56.super_class = HMDCameraClipAddSignificantEventOperation;
  modelsToAdd = [(HMDCameraClipAddModelsOperation *)&v56 modelsToAdd];
  v50 = [modelsToAdd setByAddingObjectsFromSet:v54];

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity dataSource:(id)source
{
  dCopy = d;
  zoneCopy = zone;
  eventCopy = event;
  identityCopy = identity;
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

  if (!eventCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!identityCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v17 = sourceCopy;
  if (!sourceCopy)
  {
LABEL_13:
    v22 = _HMFPreconditionFailure();
    return [(HMDCameraClipAddSignificantEventOperation *)v22 initWithClipModelID:v23 localZone:v24 significantEvent:v25 homePresenceByPairingIdentity:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMDCameraClipAddSignificantEventOperation;
  v18 = [(HMDCameraClipOperation *)&v28 initWithClipModelID:dCopy localZone:zoneCopy dataSource:sourceCopy];
  if (v18)
  {
    v19 = [eventCopy copy];
    significantEvent = v18->_significantEvent;
    v18->_significantEvent = v19;

    objc_storeStrong(&v18->_homePresenceByPairingIdentity, identity);
  }

  return v18;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)d localZone:(id)zone significantEvent:(id)event homePresenceByPairingIdentity:(id)identity
{
  identityCopy = identity;
  eventCopy = event;
  zoneCopy = zone;
  dCopy = d;
  v14 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v15 = [(HMDCameraClipAddSignificantEventOperation *)self initWithClipModelID:dCopy localZone:zoneCopy significantEvent:eventCopy homePresenceByPairingIdentity:identityCopy dataSource:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_93662 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_93662, &__block_literal_global_93663);
  }

  v3 = logCategory__hmf_once_v5_93664;

  return v3;
}

uint64_t __56__HMDCameraClipAddSignificantEventOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_93664;
  logCategory__hmf_once_v5_93664 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end