@interface HMDUserManagementOperationModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDUserManagementOperationModel

- (id)dependentUUIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(HMDUserManagementOperationModel *)self dependencies];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v14 + 1) + 8 * i)];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)properties
{
  if (properties_onceToken_112378 != -1)
  {
    dispatch_once(&properties_onceToken_112378, &__block_literal_global_112379);
  }

  v3 = properties__properties_112380;

  return v3;
}

void __45__HMDUserManagementOperationModel_properties__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v9[0] = @"operationType";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[0] = v0;
  v9[1] = @"userPairingIdentity";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[1] = v1;
  v9[2] = @"ownerPairingIdentity";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[2] = v2;
  v9[3] = @"accessoryPairingIdentity";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[3] = v3;
  v9[4] = @"expirationDate";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[4] = v4;
  v9[5] = @"dependencies";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v7 = properties__properties_112380;
  properties__properties_112380 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

@end