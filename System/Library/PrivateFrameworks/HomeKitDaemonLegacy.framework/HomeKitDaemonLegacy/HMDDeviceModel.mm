@interface HMDDeviceModel
+ (id)properties;
+ (id)schemaHashRoot;
- (BOOL)diff:(id)diff differingFields:(id *)fields;
- (NSArray)deviceHandles;
@end

@implementation HMDDeviceModel

- (BOOL)diff:(id)diff differingFields:(id *)fields
{
  diffCopy = diff;
  v21.receiver = self;
  v21.super_class = HMDDeviceModel;
  v22 = 0;
  v7 = [(HMDBackingStoreModelObject *)&v21 diff:diffCopy differingFields:&v22];
  v8 = v22;
  v9 = v8;
  if (v7 && [v8 containsObject:@"handles"])
  {
    v10 = diffCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      deviceHandles = [(HMDDeviceModel *)self deviceHandles];
      deviceHandles2 = [v12 deviceHandles];
      v15 = isEqualDeepCompare(deviceHandles, deviceHandles2);

      if (v15)
      {
        v16 = [v9 mutableCopy];
        [v16 removeObject:@"handles"];
        v17 = [v16 copy];

        v9 = v17;
      }
    }
  }

  if (fields)
  {
    v18 = v9;
    *fields = v9;
  }

  v19 = [v9 count] != 0;

  return v19;
}

- (NSArray)deviceHandles
{
  v38 = *MEMORY[0x277D85DE8];
  handles = [(HMDDeviceModel *)self handles];
  v3 = [handles copy];

  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v3;
  v27 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v27)
  {
    v5 = *v30;
    v6 = 0x277CCA000uLL;
    v24 = v4;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = *(v6 + 2760);
        v10 = objc_opt_class();
        v28 = 0;
        v11 = [v9 unarchivedObjectOfClass:v10 fromData:v8 error:&v28];
        v12 = v28;
        v13 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          [v26 addObject:v15];
        }

        else
        {
          v16 = v6;
          v17 = v5;
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v34 = v21;
            v35 = 2112;
            v36 = v12;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive device handle from handle array: %@", buf, 0x16u);

            v4 = v24;
          }

          objc_autoreleasePoolPop(v18);
          v5 = v17;
          v6 = v16;
        }
      }

      v27 = [v4 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v27);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)properties
{
  if (properties_onceToken_117820 != -1)
  {
    dispatch_once(&properties_onceToken_117820, &__block_literal_global_367);
  }

  v3 = properties__properties_117821;

  return v3;
}

void __28__HMDDeviceModel_properties__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"identifier";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v0;
  v9[1] = @"handles";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = v1;
  v9[2] = @"name";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[2] = v2;
  v9[3] = @"version";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[3] = v3;
  v9[4] = @"productInfo";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[4] = v4;
  v9[5] = @"rpIdentity";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = properties__properties_117821;
  properties__properties_117821 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"6D8998A8-13E4-4269-83B8-672645AE2D15" copy];

  return v2;
}

@end