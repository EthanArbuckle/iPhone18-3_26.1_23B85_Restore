@interface HMDMediaSystemModel
+ (id)properties;
+ (id)schemaHashRoot;
- (id)dependentUUIDs;
@end

@implementation HMDMediaSystemModel

- (id)dependentUUIDs
{
  v35 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEB58] set];
  v25 = v24 = self;
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v25 addObject:parentUUID2];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  mediaSystemComponents = [(HMDMediaSystemModel *)self mediaSystemComponents];
  v6 = [mediaSystemComponents countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    v10 = *MEMORY[0x277CCF0B0];
    *&v7 = 138543618;
    v22 = v7;
    v23 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(mediaSystemComponents);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 hmf_UUIDForKey:{v10, v22}];
        if (v13)
        {
          [v25 addObject:v13];
        }

        else
        {
          v14 = v10;
          v15 = objc_autoreleasePoolPush();
          v16 = v24;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v19 = v18 = mediaSystemComponents;
            *buf = v22;
            v31 = v19;
            v32 = 2112;
            v33 = v12;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory UUID is nil for media component: %@", buf, 0x16u);

            mediaSystemComponents = v18;
            v9 = v23;
          }

          objc_autoreleasePoolPop(v15);
          v10 = v14;
        }
      }

      v8 = [mediaSystemComponents countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMDMediaSystemModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_97883 != -1)
  {
    dispatch_once(&properties_onceToken_97883, block);
  }

  v2 = properties__properties_97884;

  return v2;
}

void __33__HMDMediaSystemModel_properties__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDMediaSystemModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_97884;
  properties__properties_97884 = v3;

  v5 = properties__properties_97884;
  v12[0] = @"name";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"configuredName";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"mediaSystemComponents";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"12903D5D-7E96-48C1-AD0D-BC4431A81FD1" copy];

  return v2;
}

@end