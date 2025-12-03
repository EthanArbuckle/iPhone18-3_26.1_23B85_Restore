@interface HMDHomeNetworkRouterSettingsModel
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)modelNamespace;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDHomeNetworkRouterSettingsModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  activeNetworkRouterAccessoryUUID = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];

  if (activeNetworkRouterAccessoryUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    activeNetworkRouterAccessoryUUID2 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];
    v9 = [v7 initWithUUIDString:activeNetworkRouterAccessoryUUID2];
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

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomeNetworkRouterSettingsModel alloc];
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
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F71A2DE4-C7D9-411D-B156-88C2E88A9673"];

  return v2;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"networkAccessory"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"activeNetworkRouterAccessoryUUID"])
    {
      v15 = 0;
      goto LABEL_12;
    }

    activeNetworkRouterAccessoryUUID = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];

    if (activeNetworkRouterAccessoryUUID)
    {
      activeNetworkRouterAccessoryUUID2 = [(HMDHomeNetworkRouterSettingsModel *)self activeNetworkRouterAccessoryUUID];
      v13 = [HMDAccessoryTransaction cd_getMKFAccessoryFromAccessoryUUID:activeNetworkRouterAccessoryUUID2];
LABEL_7:
      v15 = v13;

      goto LABEL_12;
    }

    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    if ([fieldCopy isEqualToString:@"home"])
    {
      v14 = objc_opt_class();
      activeNetworkRouterAccessoryUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [v14 cd_getHomeFromUUID:activeNetworkRouterAccessoryUUID2];
      goto LABEL_7;
    }

    v18.receiver = self;
    v18.super_class = HMDHomeNetworkRouterSettingsModel;
    null = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  v15 = null;
LABEL_12:

  return v15;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"activeNetworkRouterAccessoryUUID"])
  {
    networkAccessory = [objectCopy networkAccessory];

    modelID = [networkAccessory modelID];
    uUIDString = [modelID UUIDString];
    v14 = uUIDString;
    v15 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v15 = uUIDString;
    }

    v16 = v15;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HMDHomeNetworkRouterSettingsModel;
    v16 = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v16;
}

@end