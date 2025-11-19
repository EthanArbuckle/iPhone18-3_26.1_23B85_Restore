@interface HMDHomeNetworkRouterSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)modelNamespace;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
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
  if (properties_onceToken_367 != -1)
  {
    dispatch_once(&properties_onceToken_367, &__block_literal_global_370);
  }

  v3 = properties__properties_368;

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
  v5 = properties__properties_368;
  properties__properties_368 = v4;

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

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"networkAccessory"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"activeNetworkRouterAccessoryUUID"])
    {
      v15 = 0;
      goto LABEL_12;
    }

    v11 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];

    if (v11)
    {
      v12 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];
      v13 = [HMDAccessoryTransaction cd_getMKFAccessoryFromAccessoryUUID:v12];
LABEL_7:
      v15 = v13;

      goto LABEL_12;
    }

    v16 = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([v9 isEqualToString:@"home"])
    {
      v14 = objc_opt_class();
      v12 = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [v14 cd_getHomeFromUUID:v12];
      goto LABEL_7;
    }

    v18.receiver = self;
    v18.super_class = HMDHomeNetworkRouterSettingsModel;
    v16 = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  v15 = v16;
LABEL_12:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"activeNetworkRouterAccessoryUUID"])
  {
    v11 = [v10 networkAccessory];

    v12 = [v11 modelID];
    v13 = [v12 UUIDString];
    v14 = v13;
    v15 = *MEMORY[0x277CBEEE8];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HMDHomeNetworkRouterSettingsModel;
    v16 = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v16;
}

@end