@interface HMDMatterAttributeEventModel
+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6 error:(id *)a7;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDMatterAttributeEventModel

+ (id)eventModelWithDictionary:(id)a3 home:(id)a4 eventTriggerUUID:(id)a5 message:(id)a6 error:(id *)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [HMDMatterAttributeEventBaseModel eventModelWithDictionary:v12 home:v13 eventTriggerUUID:v14 className:objc_opt_class() message:v15];
  if (v16)
  {
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCF2E8]];
    [v16 setEventValue:v17];

    v18 = v16;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to create HMDMatterAttributeEventBaseModel from dictionary %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDMatterAttributeEventModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_105345 != -1)
  {
    dispatch_once(&properties_onceToken_105345, block);
  }

  v2 = properties__properties_105346;

  return v2;
}

void __42__HMDMatterAttributeEventModel_properties__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v9.receiver = *(a1 + 32);
  v9.super_class = &OBJC_METACLASS___HMDMatterAttributeEventModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_105346;
  properties__properties_105346 = v3;

  v5 = properties__properties_105346;
  v10 = @"eventValue";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v5 addEntriesFromDictionary:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"matterPath"])
  {
    v11 = [(HMDMatterAttributeEventModel *)self matterPathUUID];

    if (v11)
    {
      v12 = [(HMDMatterAttributeEventModel *)self matterPathUUID];
      v29 = 0;
      v13 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v12 ofManagedObjectType:objc_opt_class() error:&v29];
      v14 = v29;

      v15 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        v18 = v17;
        v19 = v15;
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          [(HMDMatterAttributeEventModel *)v21 matterPathUUID];
          v24 = v27 = v20;
          *buf = 138543874;
          v31 = v23;
          v32 = 2112;
          v33 = v24;
          v34 = 2112;
          v35 = v14;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfMatterPath with UUID %@: %@", buf, 0x20u);

          v20 = v27;
        }

        objc_autoreleasePoolPop(v20);
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = HMDMatterAttributeEventModel;
    v19 = [(HMDBackingStoreModelObject *)&v28 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"matterPathUUID"])
  {
    v11 = [v8 matterPath];

    if (v11)
    {
      v12 = [v8 matterPath];
      v11 = [v12 modelID];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDMatterAttributeEventModel;
    v11 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  return v11;
}

@end