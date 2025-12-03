@interface HMDCameraSignificantEventFaceClassificationModel
+ (id)hmbProperties;
- (id)createFaceClassification;
@end

@implementation HMDCameraSignificantEventFaceClassificationModel

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_100458 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_100458, &__block_literal_global_100459);
  }

  v3 = hmbProperties__properties_100460;

  return v3;
}

void __65__HMDCameraSignificantEventFaceClassificationModel_hmbProperties__block_invoke()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D17100] fieldWithClass:objc_opt_class()];
  v1 = [v0 mutableCopy];

  [v1 setLoggingVisibility:1];
  v9[0] = @"personManagerUUID";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v10[0] = v2;
  v9[1] = @"personUUID";
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v10[1] = v3;
  v9[2] = @"personName";
  v4 = [v1 copy];
  v10[2] = v4;
  v9[3] = @"unassociatedFaceCropUUID";
  v5 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v7 = hmbProperties__properties_100460;
  hmbProperties__properties_100460 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (id)createFaceClassification
{
  v22 = *MEMORY[0x277D85DE8];
  personManagerUUID = [(HMDCameraSignificantEventFaceClassificationModel *)self personManagerUUID];
  if (personManagerUUID)
  {
    v4 = [HMDMutableCameraSignificantEventFaceClassification alloc];
    hmbModelID = [(HMBModel *)self hmbModelID];
    v6 = [(HMDCameraSignificantEventFaceClassification *)v4 initWithUUID:hmbModelID personManagerUUID:personManagerUUID];

    personUUID = [(HMDCameraSignificantEventFaceClassificationModel *)self personUUID];
    [(HMDCameraSignificantEventFaceClassification *)v6 setPersonUUID:personUUID];

    personName = [(HMDCameraSignificantEventFaceClassificationModel *)self personName];
    [(HMDCameraSignificantEventFaceClassification *)v6 setPersonName:personName];

    unassociatedFaceCropUUID = [(HMDCameraSignificantEventFaceClassificationModel *)self unassociatedFaceCropUUID];
    [(HMDCameraSignificantEventFaceClassification *)v6 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

    v10 = [(HMDMutableCameraSignificantEventFaceClassification *)v6 copy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMBModel *)selfCopy debugDescription];
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Cannot create face classification from model: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

@end