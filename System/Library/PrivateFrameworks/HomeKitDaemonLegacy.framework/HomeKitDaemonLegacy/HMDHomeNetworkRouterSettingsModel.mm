@interface HMDHomeNetworkRouterSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)modelNamespace;
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDHomeNetworkRouterSettingsModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v6 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];
    v9 = [v7 initWithUUIDString:v8];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

+ (id)properties
{
  if (properties_onceToken_300 != -1)
  {
    dispatch_once(&properties_onceToken_300, &__block_literal_global_303_81568);
  }

  v3 = properties__properties_301;

  return v3;
}

void __47__HMDHomeNetworkRouterSettingsModel_properties__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = @"activeNetworkRouterAccessoryUUID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[0] = v0;
  v7[1] = @"activeNetworkRouterInitialSetupNeededUUID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[1] = v1;
  v7[2] = @"minimumNetworkRouterSupportHomeKitVersion";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[2] = v2;
  v7[3] = @"minHomeKitVersionForAccessoryNetworkProtectionChange";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v8[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = properties__properties_301;
  properties__properties_301 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeNetworkRouterSettingsModel alloc];
  v6 = [a1 modelIDForHomeUUID:v4];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  return v7;
}

+ (id)modelIDForHomeUUID:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [v3 dataWithLength:16];
  [v4 getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  v7 = [objc_opt_class() modelNamespace];
  v8 = [v6 hmf_UUIDWithNamespace:v7 data:v5];

  return v8;
}

+ (id)modelNamespace
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F71A2DE4-C7D9-411D-B156-88C2E88A9673"];

  return v2;
}

@end