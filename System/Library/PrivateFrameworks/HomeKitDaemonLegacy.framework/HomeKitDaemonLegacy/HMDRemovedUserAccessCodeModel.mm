@interface HMDRemovedUserAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)a3 removedUserInfo:(id)a4 accessCode:(id)a5;
+ (id)properties;
- (HMDRemovedUserAccessCodeModel)initWithRemovedUserInfo:(id)a3 accessCode:(id)a4 homeUUID:(id)a5;
- (HMRemovedUserInfo)removedUserInfo;
@end

@implementation HMDRemovedUserAccessCodeModel

- (HMRemovedUserInfo)removedUserInfo
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemovedUserAccessCodeModel *)self removedUserInfoData];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    v6 = [(HMDRemovedUserAccessCodeModel *)self removedUserInfoData];
    v21 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HMDRemovedUserAccessCodeModel *)v15 removedUserInfoData];
        *buf = 138543874;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = v8;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive removedUserInfoData: %@, with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@removedUserInfoData was nil, this should never happen", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v7 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDRemovedUserAccessCodeModel)initWithRemovedUserInfo:(id)a3 accessCode:(id)a4 homeUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [HMDRemovedUserAccessCodeModel modelUUIDForHomeUUID:v10 removedUserInfo:v8 accessCode:v9];
  v12 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v11 parentUUID:v10];

  if (v12)
  {
    v13 = encodeRootObject();
    [(HMDRemovedUserAccessCodeModel *)v12 setRemovedUserInfoData:v13];

    v14 = [v9 copy];
    [(HMDRemovedUserAccessCodeModel *)v12 setAccessCode:v14];
  }

  return v12;
}

+ (id)modelUUIDForHomeUUID:(id)a3 removedUserInfo:(id)a4 accessCode:(id)a5
{
  v7 = MEMORY[0x277CCAD78];
  v8 = a5;
  v9 = a3;
  v10 = [a4 userUUID];
  v11 = [v10 hm_convertToData];
  v12 = [v7 hmf_UUIDWithNamespace:v9 data:v11];

  v13 = MEMORY[0x277CCAD78];
  v14 = [v8 dataUsingEncoding:4];

  v15 = [v13 hmf_UUIDWithNamespace:v12 data:v14];

  return v15;
}

+ (id)properties
{
  if (properties_onceToken_192736 != -1)
  {
    dispatch_once(&properties_onceToken_192736, &__block_literal_global_192737);
  }

  v3 = properties__properties_192738;

  return v3;
}

void __43__HMDRemovedUserAccessCodeModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"removedUserInfoData";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"accessCode";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_192738;
  properties__properties_192738 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end