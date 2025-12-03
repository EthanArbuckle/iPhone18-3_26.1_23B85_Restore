@interface HMDAssistantAccessControlModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDAssistantAccessControlModel

- (id)dependentUUIDs
{
  v31 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HMDAssistantAccessControlModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v28 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  accessoryModelIDs = [(HMDAssistantAccessControlModel *)self accessoryModelIDs];
  v6 = [accessoryModelIDs countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(accessoryModelIDs);
        }

        v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v24 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [accessoryModelIDs countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  siriEndpointAccessoryModelUUIDs = [(HMDAssistantAccessControlModel *)self siriEndpointAccessoryModelUUIDs];
  v12 = [siriEndpointAccessoryModelUUIDs countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(siriEndpointAccessoryModelUUIDs);
        }

        v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v20 + 1) + 8 * j)];
        if (v16)
        {
          [v4 addObject:v16];
        }
      }

      v13 = [siriEndpointAccessoryModelUUIDs countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }

  v17 = [v4 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)properties
{
  if (properties_onceToken_262077 != -1)
  {
    dispatch_once(&properties_onceToken_262077, &__block_literal_global_236);
  }

  v3 = properties__properties_262078;

  return v3;
}

void __44__HMDAssistantAccessControlModel_properties__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"enabled";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v0;
  v9[1] = @"options";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = v1;
  v9[2] = @"activityNotificationsEnabledForPersonalRequests";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[2] = v2;
  v9[3] = @"accessoryModelIDs";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[3] = v3;
  v9[4] = @"siriEndpointAccessoryModelUUIDs";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[4] = v4;
  v9[5] = @"changeTag";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = properties__properties_262078;
  properties__properties_262078 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

@end