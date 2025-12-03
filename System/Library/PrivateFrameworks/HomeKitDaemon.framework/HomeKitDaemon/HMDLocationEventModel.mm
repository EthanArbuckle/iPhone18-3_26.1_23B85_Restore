@interface HMDLocationEventModel
+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDLocationEventModel

+ (id)eventModelWithDictionary:(id)dictionary home:(id)home eventTriggerUUID:(id)d message:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  homeCopy = home;
  dCopy = d;
  messageCopy = message;
  v13 = [dictionaryCopy hm_regionFromDataForKey:*MEMORY[0x277CD2400]];
  if (HMIsValidRegion())
  {
    v14 = [HMDEventModel eventModelWithDictionary:dictionaryCopy home:homeCopy eventTriggerUUID:dCopy className:objc_opt_class() message:messageCopy];
    v15 = encodeRootObject();
    [v14 setRegion:v15];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Provided region is invalid", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDLocationEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_18595 != -1)
  {
    dispatch_once(&properties_onceToken_18595, block);
  }

  v2 = properties__properties_18596;

  return v2;
}

void __35__HMDLocationEventModel_properties__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDLocationEventModel;
  v2 = objc_msgSendSuper2(&v10, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_18596;
  properties__properties_18596 = v3;

  v5 = properties__properties_18596;
  v11[0] = @"region";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = @"userUUID";
  v12[0] = v6;
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if (![fieldCopy isEqualToString:@"region"])
  {
    if (![fieldCopy isEqualToString:@"user"])
    {
      v28.receiver = self;
      v28.super_class = HMDLocationEventModel;
      null = [(HMDBackingStoreModelObject *)&v28 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
      goto LABEL_22;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"userUUID"])
    {
      userUUID = [(HMDLocationEventModel *)self userUUID];
      v29 = 0;
      null = [HMDBackingStore cdlsFetchManagedObjectWithUUID:userUUID ofManagedObjectType:objc_opt_class() error:&v29];
      region = v29;

      if (null)
      {
        v16 = null;
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          userUUID2 = [(HMDLocationEventModel *)selfCopy userUUID];
          *buf = 138543874;
          v32 = v24;
          v33 = 2112;
          v34 = userUUID2;
          v35 = 2112;
          v36 = region;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }

      goto LABEL_21;
    }

LABEL_10:
    null = 0;
    goto LABEL_22;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"region"])
  {
    goto LABEL_10;
  }

  region = [(HMDLocationEventModel *)self region];
  if (region)
  {
    v30 = 0;
    null = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:region error:&v30];
    v13 = v30;
    if (null)
    {
      v14 = null;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v20;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode region: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

LABEL_21:

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];

  return null;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"region"])
  {
    region = [objectCopy region];
    if (region)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:region requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v15 = ;
  }

  else
  {
    if (![fieldCopy isEqualToString:@"userUUID"])
    {
      v17.receiver = self;
      v17.super_class = HMDLocationEventModel;
      v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
      goto LABEL_12;
    }

    region = [objectCopy user];
    modelID = [region modelID];
    v13 = modelID;
    v14 = *MEMORY[0x277CBEEE8];
    if (modelID)
    {
      v14 = modelID;
    }

    v15 = v14;
  }

LABEL_12:

  return v15;
}

@end