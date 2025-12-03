@interface HMDRemovedUserAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)d removedUserInfo:(id)info accessCode:(id)code;
+ (id)properties;
- (HMDRemovedUserAccessCodeModel)initWithRemovedUserInfo:(id)info accessCode:(id)code homeUUID:(id)d;
- (HMRemovedUserInfo)removedUserInfo;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)unarchiveRemovedUserInfo:(id)info;
@end

@implementation HMDRemovedUserAccessCodeModel

- (id)unarchiveRemovedUserInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v14 = 0;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:infoCopy error:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = infoCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive removedUserInfoData: %@, with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (([fieldCopy isEqualToString:@"dateRemoved"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"userID") & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"userModelID") & 1) != 0 || objc_msgSend(fieldCopy, "isEqualToString:", @"userName"))
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"removedUserInfoData"])
    {
      uuid = *MEMORY[0x277CBEEE8];
LABEL_9:
      v15 = uuid;
      goto LABEL_17;
    }

    v11 = [(HMDBackingStoreModelObject *)self valueForKey:@"removedUserInfoData"];
    v12 = [(HMDRemovedUserAccessCodeModel *)self unarchiveRemovedUserInfo:v11];
    if ([fieldCopy isEqualToString:@"dateRemoved"])
    {
      dateRemoved = [v12 dateRemoved];
LABEL_16:
      v15 = dateRemoved;

      goto LABEL_17;
    }

    if ([fieldCopy isEqualToString:@"userID"])
    {
      dateRemoved = [v12 userID];
      goto LABEL_16;
    }

    if ([fieldCopy isEqualToString:@"userModelID"])
    {
      dateRemoved = [v12 userUUID];
      goto LABEL_16;
    }

    if ([fieldCopy isEqualToString:@"userName"])
    {
      dateRemoved = [v12 name];
      goto LABEL_16;
    }
  }

  if (![fieldCopy isEqualToString:@"home"])
  {
    if ([fieldCopy isEqualToString:@"modelID"])
    {
      uuid = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v18.receiver = self;
      v18.super_class = HMDRemovedUserAccessCodeModel;
      uuid = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    }

    goto LABEL_9;
  }

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
  v15 = [HMDHomeModel cd_getHomeFromUUID:parentUUID];

LABEL_17:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"removedUserInfoData"])
  {
    v11 = objc_alloc(MEMORY[0x277CD1D50]);
    userName = [objectCopy userName];
    userModelID = [objectCopy userModelID];
    userID = [objectCopy userID];
    dateRemoved = [objectCopy dateRemoved];
    v16 = [v11 initWithName:userName userUUID:userModelID userID:userID dateRemoved:dateRemoved];

    v17 = encodeRootObject();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HMDRemovedUserAccessCodeModel;
    v17 = [(HMDBackingStoreModelObject *)&v19 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v17;
}

- (HMRemovedUserInfo)removedUserInfo
{
  v28 = *MEMORY[0x277D85DE8];
  removedUserInfoData = [(HMDRemovedUserAccessCodeModel *)self removedUserInfoData];

  if (removedUserInfoData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = objc_opt_class();
    removedUserInfoData2 = [(HMDRemovedUserAccessCodeModel *)self removedUserInfoData];
    v21 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:removedUserInfoData2 error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        removedUserInfoData3 = [(HMDRemovedUserAccessCodeModel *)selfCopy removedUserInfoData];
        *buf = 138543874;
        v23 = v17;
        v24 = 2112;
        v25 = removedUserInfoData3;
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
    selfCopy2 = self;
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

- (HMDRemovedUserAccessCodeModel)initWithRemovedUserInfo:(id)info accessCode:(id)code homeUUID:(id)d
{
  infoCopy = info;
  codeCopy = code;
  dCopy = d;
  v11 = [HMDRemovedUserAccessCodeModel modelUUIDForHomeUUID:dCopy removedUserInfo:infoCopy accessCode:codeCopy];
  v12 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v11 parentUUID:dCopy];

  if (v12)
  {
    v13 = encodeRootObject();
    [(HMDRemovedUserAccessCodeModel *)v12 setRemovedUserInfoData:v13];

    v14 = [codeCopy copy];
    [(HMDRemovedUserAccessCodeModel *)v12 setAccessCode:v14];

    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDRemovedUserAccessCodeModel *)v12 setHh2ModelID:uUID];
  }

  return v12;
}

+ (id)modelUUIDForHomeUUID:(id)d removedUserInfo:(id)info accessCode:(id)code
{
  v7 = MEMORY[0x277CCAD78];
  codeCopy = code;
  dCopy = d;
  userUUID = [info userUUID];
  hm_convertToData = [userUUID hm_convertToData];
  v12 = [v7 hmf_UUIDWithNamespace:dCopy data:hm_convertToData];

  v13 = MEMORY[0x277CCAD78];
  v14 = [codeCopy dataUsingEncoding:4];

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