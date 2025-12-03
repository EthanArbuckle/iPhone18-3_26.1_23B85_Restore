@interface HMDLightProfileNaturalLightingActionModel
+ (id)properties;
- (BOOL)isNaturalLightingEnabled;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDLightProfileNaturalLightingActionModel

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDLightProfileNaturalLightingActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_112595 != -1)
  {
    dispatch_once(&properties_onceToken_112595, block);
  }

  v2 = properties_properties;

  return v2;
}

void __55__HMDLightProfileNaturalLightingActionModel_properties__block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v13.receiver = *(a1 + 32);
  v13.super_class = &OBJC_METACLASS___HMDLightProfileNaturalLightingActionModel;
  v1 = objc_msgSendSuper2(&v13, sel_properties);
  v2 = [v1 mutableCopy];

  v15[0] = @"naturalLightingEnabledField";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[0] = v3;
  v15[1] = @"lightProfileUUID";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[1] = v4;
  v15[2] = @"accessoryUUID";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v16[2] = v5;
  v15[3] = @"serviceUUIDs";
  v6 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:v6 additionalDecodeClasses:v7];
  v16[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v2 addEntriesFromDictionary:v9];

  v10 = [v2 copy];
  v11 = properties_properties;
  properties_properties = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v14.receiver = self;
  v14.super_class = HMDLightProfileNaturalLightingActionModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v14 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:parentUUID2];
  }

  accessoryUUID = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];

  if (accessoryUUID)
  {
    accessoryUUID2 = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];
    [v4 addObject:accessoryUUID2];
  }

  serviceUUIDs = [(HMDLightProfileNaturalLightingActionModel *)self serviceUUIDs];

  if (serviceUUIDs)
  {
    serviceUUIDs2 = [(HMDLightProfileNaturalLightingActionModel *)self serviceUUIDs];
    allObjects = [serviceUUIDs2 allObjects];
    [v4 addObjectsFromArray:allObjects];
  }

  v12 = [v4 copy];

  return v12;
}

- (BOOL)isNaturalLightingEnabled
{
  naturalLightingEnabledField = [(HMDLightProfileNaturalLightingActionModel *)self naturalLightingEnabledField];
  bOOLValue = [naturalLightingEnabledField BOOLValue];

  return bOOLValue;
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"accessory"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessoryUUID"])
    {
      accessoryUUID = [(HMDLightProfileNaturalLightingActionModel *)self accessoryUUID];
      if (accessoryUUID)
      {
        [HMDHAPAccessoryTransaction cd_getMKFHAPAccessoryFromAccessoryUUID:accessoryUUID];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v12 = ;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDLightProfileNaturalLightingActionModel;
    v12 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v12;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"accessoryUUID"])
  {
    accessory = [objectCopy accessory];

    modelID = [accessory modelID];
    v13 = modelID;
    v14 = *MEMORY[0x277CBEEE8];
    if (modelID)
    {
      v14 = modelID;
    }

    v15 = v14;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDLightProfileNaturalLightingActionModel;
    v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  return v15;
}

@end