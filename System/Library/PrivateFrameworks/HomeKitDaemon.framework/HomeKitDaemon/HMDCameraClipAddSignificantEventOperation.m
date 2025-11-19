@interface HMDCameraClipAddSignificantEventOperation
+ (id)logCategory;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5;
- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 dataSource:(id)a6;
- (id)attributeDescriptions;
- (id)modelsToAdd;
- (void)updateMirrorOutputModel:(id)a3;
@end

@implementation HMDCameraClipAddSignificantEventOperation

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCameraClipAddSignificantEventOperation;
  v3 = [(HMDCameraClipOperation *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCameraClipAddSignificantEventOperation *)self significantEvent];
  v6 = [v4 initWithName:@"Significant Event" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Adding assets to significant event model for mirror output: %@", &v22, 0x16u);
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
  v65 = *MEMORY[0x277D85DE8];
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

  v53 = v3;
  v54 = v8;
  [v3 addObject:v8];
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [(HMBModel *)v8 debugDescription];
    *buf = 138543618;
    v62 = v26;
    v63 = 2112;
    v64 = v27;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Updating significant event model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = [(HMDCameraClipAddSignificantEventOperation *)v24 significantEvent];
  v29 = [v28 faceClassifications];

  obj = v29;
  v30 = [v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v56 + 1) + 8 * i);
        v35 = [HMDCameraSignificantEventFaceClassificationModel alloc];
        v36 = [v34 UUID];
        v37 = [(HMBModel *)v54 hmbModelID];
        v38 = [(HMBModel *)v35 initWithModelID:v36 parentModelID:v37];

        v39 = [v34 personManagerUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonManagerUUID:v39];

        v40 = [v34 personUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonUUID:v40];

        v41 = [v34 personName];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setPersonName:v41];

        v42 = [v34 unassociatedFaceCropUUID];
        [(HMDCameraSignificantEventFaceClassificationModel *)v38 setUnassociatedFaceCropUUID:v42];

        [v53 addObject:v38];
        v43 = objc_autoreleasePoolPush();
        v44 = v24;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [(HMBModel *)v38 debugDescription];
          *buf = 138543618;
          v62 = v46;
          v63 = 2112;
          v64 = v47;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Updating face classification model: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
      }

      v31 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v31);
  }

  v55.receiver = v24;
  v55.super_class = HMDCameraClipAddSignificantEventOperation;
  v48 = [(HMDCameraClipAddModelsOperation *)&v55 modelsToAdd];
  v49 = [v48 setByAddingObjectsFromSet:v53];

  v50 = *MEMORY[0x277D85DE8];

  return v49;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v19 = _HMFPreconditionFailure();
    return [(HMDCameraClipAddSignificantEventOperation *)v19 initWithClipModelID:v20 localZone:v21 significantEvent:v22, v23];
  }

  v24.receiver = self;
  v24.super_class = HMDCameraClipAddSignificantEventOperation;
  v15 = [(HMDCameraClipOperation *)&v24 initWithClipModelID:v10 localZone:v11 dataSource:v13];
  if (v15)
  {
    v16 = [v12 copy];
    significantEvent = v15->_significantEvent;
    v15->_significantEvent = v16;
  }

  return v15;
}

- (HMDCameraClipAddSignificantEventOperation)initWithClipModelID:(id)a3 localZone:(id)a4 significantEvent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v12 = [(HMDCameraClipAddSignificantEventOperation *)self initWithClipModelID:v10 localZone:v9 significantEvent:v8 dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_140955 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_140955, &__block_literal_global_140956);
  }

  v3 = logCategory__hmf_once_v5_140957;

  return v3;
}

void __56__HMDCameraClipAddSignificantEventOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_140957;
  logCategory__hmf_once_v5_140957 = v1;
}

@end