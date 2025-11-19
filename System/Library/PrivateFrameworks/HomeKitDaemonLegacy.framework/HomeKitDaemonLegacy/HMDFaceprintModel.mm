@interface HMDFaceprintModel
+ (id)hmbProperties;
- (HMDFaceprintModel)initWithFaceprint:(id)a3;
- (id)createFaceprint;
@end

@implementation HMDFaceprintModel

- (id)createFaceprint
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDFaceprintModel *)self data];
  v4 = [(HMDFaceprintModel *)self modelUUID];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_alloc(MEMORY[0x277CD1A38]);
    v7 = [(HMBModel *)self hmbModelID];
    v8 = [(HMBModel *)self hmbParentModelID];
    v9 = [v6 initWithUUID:v7 data:v3 modelUUID:v5 faceCropUUID:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMBModel *)v11 debugDescription];
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot create faceprint from model: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDFaceprintModel)initWithFaceprint:(id)a3
{
  v4 = a3;
  v5 = [HMDFaceprintModel alloc];
  v6 = [v4 UUID];
  v7 = [v4 faceCropUUID];
  v8 = [(HMBModel *)v5 initWithModelID:v6 parentModelID:v7];

  v9 = [v4 data];
  [(HMDFaceprintModel *)v8 setData:v9];

  v10 = [v4 modelUUID];
  [(HMDFaceprintModel *)v8 setModelUUID:v10];

  v11 = objc_alloc(MEMORY[0x277D170D8]);
  v12 = [v4 faceCropUUID];

  v13 = [v11 initWithModelID:v12];
  [(HMDFaceprintModel *)v8 setFaceCrop:v13];

  return v8;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_139271 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_139271, &__block_literal_global_139272);
  }

  v3 = hmbProperties_properties_139273;

  return v3;
}

void __34__HMDFaceprintModel_hmbProperties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"data";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"modelUUID";
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"faceCrop";
  v2 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = hmbProperties_properties_139273;
  hmbProperties_properties_139273 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end