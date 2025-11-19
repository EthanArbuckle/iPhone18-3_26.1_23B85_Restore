@interface HMDMatterCommandActionModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)decodeSerializedMatterCommands:(id)a3 home:(id)a4;
- (id)dependentUUIDs;
- (void)loadModelWithActionInformation:(id)a3;
@end

@implementation HMDMatterCommandActionModel

- (id)dependentUUIDs
{
  v12.receiver = self;
  v12.super_class = HMDMatterCommandActionModel;
  v3 = [(HMDBackingStoreModelObject *)&v12 dependentUUIDs];
  v4 = [v3 mutableCopy];

  v5 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v5)
  {
    v6 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:v6];
  }

  v7 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];

  if (v7)
  {
    v8 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__HMDMatterCommandActionModel_dependentUUIDs__block_invoke;
    v10[3] = &unk_278685550;
    v11 = v4;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  }

  return v4;
}

- (id)decodeSerializedMatterCommands:(id)a3 home:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v27 = self;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = [[HMDMatterCommand alloc] initWithDictionary:v14 home:v7];
          if (v15)
          {
            [v28 addObject:v15];
          }

          else
          {
            v20 = objc_autoreleasePoolPush();
            v21 = self;
            v22 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = HMFGetLogIdentifier();
              *buf = 138543618;
              v35 = v23;
              v36 = 2112;
              v37 = v14;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid serialized command %@", buf, 0x16u);

              self = v27;
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v35 = v19;
            v36 = 2112;
            v37 = v12;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid command dictionary %@", buf, 0x16u);

            self = v27;
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v9);
  }

  v24 = [v28 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)loadModelWithActionInformation:(id)a3
{
  v3.receiver = self;
  v3.super_class = HMDMatterCommandActionModel;
  [(HMDActionModel *)&v3 loadModelWithActionInformation:a3];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDMatterCommandActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (properties_onceToken_123727 != -1)
  {
    dispatch_once(&properties_onceToken_123727, block);
  }

  v2 = properties__properties_123728;

  return v2;
}

void __41__HMDMatterCommandActionModel_properties__block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___HMDMatterCommandActionModel;
  v1 = objc_msgSendSuper2(&v10, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_123728;
  properties__properties_123728 = v2;

  v4 = properties__properties_123728;
  v11[0] = @"matterPathUUIDs";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v5;
  v11[1] = @"commands";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v6;
  v11[2] = @"enforceExecutionOrder";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 addEntriesFromDictionary:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"matterPaths_"])
  {
    v11 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];

    if (v11)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__245221;
      v30 = __Block_byref_object_dispose__245222;
      v12 = MEMORY[0x277CBEB58];
      v13 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      v31 = [v12 setWithCapacity:{objc_msgSend(v13, "count")}];

      v14 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __96__HMDMatterCommandActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
      v25[3] = &unk_278684590;
      v25[4] = self;
      v25[5] = &v26;
      [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

      v15 = [v27[5] count];
      v16 = [(HMDMatterCommandActionModel *)self matterPathUUIDs];
      LOBYTE(v15) = v15 == [v16 count];

      if (v15)
      {
        v17 = [v27[5] copy];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v33 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find all mkfMatterPaths", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
        v17 = 0;
      }

      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDMatterCommandActionModel;
    v17 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

void __96__HMDMatterCommandActionModel_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v18 = 0;
  v7 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:v6 ofManagedObjectType:objc_opt_class() error:&v18];
  v8 = v18;
  v9 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) matterPathUUIDs];
      *buf = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to find mkfMatterPath with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"matterPathUUIDs"])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__245221;
    v22 = __Block_byref_object_dispose__245222;
    v11 = MEMORY[0x277CBEB18];
    v12 = [v8 matterPaths];
    v23 = [v11 arrayWithCapacity:{objc_msgSend(v12, "count")}];

    v13 = [v8 matterPaths];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __121__HMDMatterCommandActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v17[3] = &unk_278684568;
    v17[4] = &v18;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

    v14 = [v19[5] copy];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMDMatterCommandActionModel;
    v14 = [(HMDBackingStoreModelObject *)&v16 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
  }

  return v14;
}

void __121__HMDMatterCommandActionModel_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 modelID];
  v3 = [v4 UUIDString];
  [v2 addObject:v3];
}

@end