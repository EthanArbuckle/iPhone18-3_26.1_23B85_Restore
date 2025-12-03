@interface HMDHomeNetworkRouterManagingDeviceSettingsModel
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)modelNamespace;
+ (id)properties;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDHomeNetworkRouterManagingDeviceSettingsModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  primaryNetworkRouterManagingDeviceUUID = [(HMDHomeNetworkRouterManagingDeviceSettingsModel *)self primaryNetworkRouterManagingDeviceUUID];

  if (primaryNetworkRouterManagingDeviceUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    primaryNetworkRouterManagingDeviceUUID2 = [(HMDHomeNetworkRouterManagingDeviceSettingsModel *)self primaryNetworkRouterManagingDeviceUUID];
    v9 = [v7 initWithUUIDString:primaryNetworkRouterManagingDeviceUUID2];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

+ (id)properties
{
  if (properties_onceToken_355 != -1)
  {
    dispatch_once(&properties_onceToken_355, &__block_literal_global_358_124254);
  }

  v3 = properties__properties_356;

  return v3;
}

void __61__HMDHomeNetworkRouterManagingDeviceSettingsModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"primaryNetworkRouterManagingDeviceUUID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_356;
  properties__properties_356 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomeNetworkRouterManagingDeviceSettingsModel alloc];
  v6 = [self modelIDForHomeUUID:dCopy];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:dCopy];

  return v7;
}

+ (id)modelIDForHomeUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [v3 dataWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  modelNamespace = [objc_opt_class() modelNamespace];
  v8 = [v6 hmf_UUIDWithNamespace:modelNamespace data:v5];

  return v8;
}

+ (id)modelNamespace
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EAB77D3E-35C9-4473-8ACE-C2AFC1895F9E"];

  return v2;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"home"])
  {
    v11 = objc_opt_class();
    parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
    v13 = [v11 cd_getHomeFromUUID:parentUUID];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDHomeNetworkRouterManagingDeviceSettingsModel;
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

@end