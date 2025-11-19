@interface HMDLocationEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDLocationEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 hm_regionFromDataForKey:*MEMORY[0x277CD2400]];
  if (HMIsValidRegion())
  {
    v14 = [HMDEventModel eventModelWithDictionary:v9 home:v10 eventTriggerUUID:v11 className:objc_opt_class() message:v12];
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
  block[4] = a1;
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

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 isEqualToString:@"region"])
  {
    if (![v9 isEqualToString:@"user"])
    {
      v28.receiver = self;
      v28.super_class = HMDLocationEventModel;
      v12 = [(HMDBackingStoreModelObject *)&v28 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
      goto LABEL_22;
    }

    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"userUUID"])
    {
      v15 = [(HMDLocationEventModel *)self userUUID];
      v29 = 0;
      v12 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v15 ofManagedObjectType:objc_opt_class() error:&v29];
      v11 = v29;

      if (v12)
      {
        v16 = v12;
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [(HMDLocationEventModel *)v22 userUUID];
          *buf = 138543874;
          v32 = v24;
          v33 = 2112;
          v34 = v25;
          v35 = 2112;
          v36 = v11;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
      }

      goto LABEL_21;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_22;
  }

  if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"region"])
  {
    goto LABEL_10;
  }

  v11 = [(HMDLocationEventModel *)self region];
  if (v11)
  {
    v30 = 0;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v30];
    v13 = v30;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
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
    v12 = [MEMORY[0x277CBEB68] null];
  }

LABEL_21:

LABEL_22:
  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"region"])
  {
    v11 = [v8 region];
    if (v11)
    {
      [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v15 = ;
  }

  else
  {
    if (![v9 isEqualToString:@"userUUID"])
    {
      v17.receiver = self;
      v17.super_class = HMDLocationEventModel;
      v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
      goto LABEL_12;
    }

    v11 = [v8 user];
    v12 = [v11 modelID];
    v13 = v12;
    v14 = *MEMORY[0x277CBEEE8];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
  }

LABEL_12:

  return v15;
}

@end