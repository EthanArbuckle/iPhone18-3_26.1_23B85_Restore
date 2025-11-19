@interface HMDTriggerModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)createPayload;
- (id)dependentUUIDs;
@end

@implementation HMDTriggerModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HMDTriggerModel *)self currentActionSets];
  v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count") + 1}];

  v6 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v6)
  {
    v7 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:v7];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(HMDTriggerModel *)self currentActionSets];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)createPayload
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDBackingStoreModelObject *)self uuid];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD2768]];

  v6 = [(HMDTriggerModel *)self name];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2758]];

  v7 = [(HMDTriggerModel *)self configuredName];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD1250]];

  v8 = [(HMDTriggerModel *)self active];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD2730]];

  v9 = [(HMDTriggerModel *)self autoDelete];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD1260]];

  v10 = [(HMDTriggerModel *)self currentActionSets];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2728]];

  v11 = [v3 copy];

  return v11;
}

+ (id)properties
{
  if (properties_onceToken != -1)
  {
    dispatch_once(&properties_onceToken, &__block_literal_global_368);
  }

  v3 = properties__properties;

  return v3;
}

void __29__HMDTriggerModel_properties__block_invoke()
{
  v12[8] = *MEMORY[0x277D85DE8];
  v11[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v0;
  v11[1] = @"configuredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v1;
  v11[2] = @"currentActionSets";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v2;
  v11[3] = @"active";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[3] = v3;
  v11[4] = @"mostRecentFireDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[4] = v4;
  v11[5] = @"owner";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[5] = v5;
  v11[6] = @"owningDevice";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[6] = v6;
  v11[7] = @"autoDelete";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
  v9 = properties__properties;
  properties__properties = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"actionSets_"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"currentActionSets"])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v31 = __Block_byref_object_copy__38060;
      v32 = __Block_byref_object_dispose__38061;
      v11 = MEMORY[0x277CBEB58];
      v12 = [(HMDTriggerModel *)self currentActionSets];
      v33 = [v11 setWithCapacity:{objc_msgSend(v12, "count")}];

      v13 = [(HMDTriggerModel *)self currentActionSets];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __84__HMDTriggerModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v29[3] = &unk_278686E68;
      v29[4] = buf;
      [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

      v14 = [*(*&buf[8] + 40) copy];
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else if ([v9 isEqualToString:@"owner"])
  {
    v14 = [(HMDTriggerModel *)self owner];

    if (v14)
    {
      v15 = [(HMDTriggerModel *)self owner];
      v16 = [v15 uuid];
      v28 = 0;
      v14 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v16 ofManagedObjectType:objc_opt_class() error:&v28];
      v17 = v28;

      if (v14)
      {
        v18 = v14;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMDTriggerModel *)v19 owner];
          v23 = [v22 uuid];
          *buf = 138543874;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2112;
          v31 = v17;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser with UUID %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = HMDTriggerModel;
    v14 = [(HMDBackingStoreModelObject *)&v27 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

void __84__HMDTriggerModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() cd_getMKFActionSetFromActionSetUUID:v3];

  v4 = v5;
  if (v5)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
    v4 = v5;
  }
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"currentActionSets"])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__38060;
    v23 = __Block_byref_object_dispose__38061;
    v11 = MEMORY[0x277CBEB18];
    v12 = [v8 actionSets];
    v24 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

    v13 = [v8 actionSets];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__HMDTriggerModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v18[3] = &unk_278672828;
    v18[4] = &v19;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

    v14 = [v20[5] copy];
    _Block_object_dispose(&v19, 8);
  }

  else if ([v9 isEqualToString:@"owner"])
  {
    v14 = [v8 owner];

    if (v14)
    {
      v15 = [v8 owner];
      v14 = [HMDUserModel cd_getHMDUserFromMKFUser:v15];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDTriggerModel;
    v14 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  return v14;
}

void __109__HMDTriggerModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 modelID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

@end