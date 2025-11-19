@interface HMDHomeNetworkRouterManagingDeviceSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)modelNamespace;
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDHomeNetworkRouterManagingDeviceSettingsModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v6 = [(HMDHomeNetworkRouterManagingDeviceSettingsModel *)self primaryNetworkRouterManagingDeviceUUID];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [(HMDHomeNetworkRouterManagingDeviceSettingsModel *)self primaryNetworkRouterManagingDeviceUUID];
    v9 = [v7 initWithUUIDString:v8];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

+ (id)properties
{
  if (properties_onceToken_288 != -1)
  {
    dispatch_once(&properties_onceToken_288, &__block_literal_global_291);
  }

  v3 = properties__properties_289;

  return v3;
}

void __61__HMDHomeNetworkRouterManagingDeviceSettingsModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"primaryNetworkRouterManagingDeviceUUID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_289;
  properties__properties_289 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeNetworkRouterManagingDeviceSettingsModel alloc];
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
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EAB77D3E-35C9-4473-8ACE-C2AFC1895F9E"];

  return v2;
}

@end