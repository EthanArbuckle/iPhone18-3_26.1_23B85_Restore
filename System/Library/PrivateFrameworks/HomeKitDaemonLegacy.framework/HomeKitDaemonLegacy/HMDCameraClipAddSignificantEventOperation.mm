@interface HMDCameraClipAddSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6 dataSource:(id)a7;
- (id)attributeDescriptions;
- (id)modelsToAdd;
- (void)updateMirrorOutputModel:(id)a3;
@end

@implementation HMDCameraClipAddSignificantEventOperation

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDCameraClipAddSignificantEventOperation;
  v3 = [(HMDCameraClipOperation *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v6 = [v4 initWithName:@"Significant Event" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDCameraClipAddSignificantEventOperation *)self homePresenceByPairingIdentity];
  v9 = [v7 initWithName:@"Home Presence By Pairing Identity" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)updateMirrorOutputModel:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 hmbModelID];
  v8 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v9 = [v8 UUID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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
    v15 = [(HMDCameraClipAddSignificantEventOperation *)v12 significantEvent];
    v16 = [v15 heroFrameData];

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:v16 itemTypeHint:@"jpg"];
      [v6 setHeroFrameAsset:v17];
    }

    v18 = [(HMDCameraClipAddSignificantEventOperation *)v12 significantEvent];
    v19 = [v18 faceCropData];

    if (v19)
    {
      v20 = [objc_alloc(MEMORY[0x277CBC190]) initWithAssetContent:v19 itemTypeHint:@"jpg"];
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
  v5 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v6 = [v5 UUID];
  v7 = [(HMDCameraClipOperation *)self clipModelID];
  v8 = [(HMBModel *)v4 initWithModelID:v6 parentModelID:v7];

  v9 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v10 = [v9 dateOfOccurrence];
  [(HMDCameraSignificantEventNotificationModel *)v8 setDateOfOccurrence:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "reason")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setSignificantEvent:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "confidenceLevel")}];
  [(HMDCameraSignificantEventNotificationModel *)v8 setConfidenceLevel:v16];

  v17 = MEMORY[0x277CCABB0];
  v18 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  [v18 timeOffsetWithinClip];
  v19 = [v17 numberWithDouble:?];
  [(HMDCameraSignificantEventNotificationModel *)v8 setTimeOffsetWithinClip:v19];

  v20 = objc_alloc(MEMORY[0x277D170A0]);
  v21 = [(HMDCameraClipOperation *)self clipModelID];
  v22 = [v20 initWithModelID:v21 action:1];
  [(HMDCameraSignificantEventNotificationModel *)v8 setAssociatedClip:v22];

  v23 = [(HMDCameraClipAddSignificantEventOperation *)self homePresenceByPairingIdentity];
  [(HMDCameraSignificantEventNotificationModel *)v8 setHomePresenceByPairingIdentity:v23];

  v54 = v3;
  v55 = v8;
  [v3 addObject:v8];
  v24 = objc_autoreleasePoolPush();
  v25 = self;
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
  v29 = [(HMDCameraClipAddSignificantEventOperation *)v25 significantEvent];
  v30 = [v29 faceClassifications];

  obj = v30;
  v31 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
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
        v37 = [v35 UUID];
        v38 = [(HMBModel *)v55 hmbModelID];
        v39 = [(HMBModel *)v36 initWithModelID:v37 parentModelID:v38];

        v40 = [v35 personManagerUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonManagerUUID:v40];

        v41 = [v35 personUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonUUID:v41];

        v42 = [v35 personName];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setPersonName:v42];

        v43 = [v35 unassociatedFaceCropUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v39 setUnassociatedFaceCropUUID:v43];

        [v54 addObject:v39];
        v44 = objc_autoreleasePoolPush();
        v45 = v25;
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

  v56.receiver = v25;
  v56.super_class = HMDCameraClipAddSignificantEventOperation;
  v49 = [(HMDCameraClipAddModelsOperation *)&v56 modelsToAdd];
  v50 = [v49 setByAddingObjectsFromSet:v54];

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6 dataSource:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v15)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_13:
    v22 = _HMFPreconditionFailure();
    return [(HMDCameraClipAddSignificantEventOperation *)v22 initWithClipModelID:v23 localZone:v24 significantEvent:v25 homePresenceByPairingIdentity:v26, v27];
  }

  v28.receiver = self;
  v28.super_class = HMDCameraClipAddSignificantEventOperation;
  v18 = [(HMDCameraClipOperation *)&v28 initWithClipModelID:v12 localZone:v13 dataSource:v16];
  if (v18)
  {
    v19 = [v14 copy];
    significantEvent = v18->_significantEvent;
    v18->_significantEvent = v19;

    objc_storeStrong(&v18->_homePresenceByPairingIdentity, a6);
  }

  return v18;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 homePresenceByPairingIdentity:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v15 = [(HMDCameraClipAddSignificantEventOperation *)self initWithClipModelID:v13 localZone:v12 significantEvent:v11 homePresenceByPairingIdentity:v10 dataSource:v14];

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