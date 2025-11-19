@interface HMDRemovedUserAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)a3 removedUserInfo:(id)a4 accessCode:(id)a5;
+ (id)properties;
- (HMDRemovedUserAccessCodeModel)initWithRemovedUserInfo:(id)a3 accessCode:(id)a4 homeUUID:(id)a5;
- (HMRemovedUserInfo)removedUserInfo;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)unarchiveRemovedUserInfo:(id)a3;
@end

@implementation HMDRemovedUserAccessCodeModel

- (id)unarchiveRemovedUserInfo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive removedUserInfoData: %@, with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v9 isEqualToString:@"dateRemoved"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"userID") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"userModelID") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"userName"))
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"removedUserInfoData"])
    {
      v14 = *MEMORY[0x277CBEEE8];
LABEL_9:
      v15 = v14;
      goto LABEL_17;
    }

    v11 = [(HMDBackingStoreModelObject *)self valueForKey:@"removedUserInfoData"];
    v12 = [(HMDRemovedUserAccessCodeModel *)self unarchiveRemovedUserInfo:v11];
    if ([v9 isEqualToString:@"dateRemoved"])
    {
      v13 = [v12 dateRemoved];
LABEL_16:
      v15 = v13;

      goto LABEL_17;
    }

    if ([v9 isEqualToString:@"userID"])
    {
      v13 = [v12 userID];
      goto LABEL_16;
    }

    if ([v9 isEqualToString:@"userModelID"])
    {
      v13 = [v12 userUUID];
      goto LABEL_16;
    }

    if ([v9 isEqualToString:@"userName"])
    {
      v13 = [v12 name];
      goto LABEL_16;
    }
  }

  if (![v9 isEqualToString:@"home"])
  {
    if ([v9 isEqualToString:@"modelID"])
    {
      v14 = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v18.receiver = self;
      v18.super_class = HMDRemovedUserAccessCodeModel;
      v14 = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
    }

    goto LABEL_9;
  }

  v17 = [(HMDBackingStoreModelObject *)self parentUUID];
  v15 = [HMDHomeModel cd_getHomeFromUUID:v17];

LABEL_17:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"removedUserInfoData"])
  {
    v11 = objc_alloc(MEMORY[0x277CD1D50]);
    v12 = [v8 userName];
    v13 = [v8 userModelID];
    v14 = [v8 userID];
    v15 = [v8 dateRemoved];
    v16 = [v11 initWithName:v12 userUUID:v13 userID:v14 dateRemoved:v15];

    v17 = encodeRootObject();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HMDRemovedUserAccessCodeModel;
    v17 = [(HMDBackingStoreModelObject *)&v19 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  return v17;
}

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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive removedUserInfoData: %@, with error: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@removedUserInfoData was nil, this should never happen", buf, 0xCu);
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

    v15 = [MEMORY[0x277CCAD78] UUID];
    [(HMDRemovedUserAccessCodeModel *)v12 setHh2ModelID:v15];
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
  if (properties_onceToken_282524 != -1)
  {
    dispatch_once(&properties_onceToken_282524, &__block_literal_global_282525);
  }

  v3 = properties__properties_282526;

  return v3;
}

void __43__HMDRemovedUserAccessCodeModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"removedUserInfoData";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"accessCode";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v7[1] = v1;
  v6[2] = @"hh2ModelID";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_282526;
  properties__properties_282526 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end