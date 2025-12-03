@interface HMDServiceGroupModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDServiceGroupModel

- (id)dependentUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  services = [(HMDServiceGroupModel *)self services];
  v5 = [v3 setWithCapacity:{objc_msgSend(services, "count") + 1}];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v5 addObject:parentUUID2];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  services2 = [(HMDServiceGroupModel *)self services];
  v9 = [services2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(services2);
        }

        v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v16 + 1) + 8 * i)];
        [v5 addObject:v13];
      }

      v10 = [services2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)properties
{
  if (properties_onceToken_21409 != -1)
  {
    dispatch_once(&properties_onceToken_21409, &__block_literal_global_196);
  }

  v3 = properties__properties_21410;

  return v3;
}

void __34__HMDServiceGroupModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"services";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_21410;
  properties__properties_21410 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end