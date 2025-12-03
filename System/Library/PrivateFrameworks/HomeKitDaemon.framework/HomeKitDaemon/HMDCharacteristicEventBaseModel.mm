@interface HMDCharacteristicEventBaseModel
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDCharacteristicEventBaseModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"service"])
  {
    v11 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"];
    v12 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"serviceID"];
    if (v11 || v12)
    {
      if (!v11 || !v12)
      {
        v19 = _HMFPreconditionFailure();
        return [(HMDCharacteristicEventBaseModel *)v19 cd_generateValueForModelObjectFromManagedObject:v20 modelObjectField:v21 modelFieldInfo:v22, v23];
      }

      accessory = [(HMDCharacteristicEventBaseModel *)self accessory];
      serviceID = [(HMDCharacteristicEventBaseModel *)self serviceID];
      v16 = serviceID;
      if (accessory && serviceID)
      {
        null = [HMDHAPAccessoryTransaction cd_getMKFServiceFromAccessoryUUID:accessory serviceInstanceId:serviceID];
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v13 = null;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDCharacteristicEventBaseModel;
    v13 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"accessory"])
  {
    service = [objectCopy service];
    accessory = [service accessory];
    modelID = [accessory modelID];
    uUIDString = [modelID UUIDString];
    v15 = uUIDString;
    v16 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v16 = uUIDString;
    }

    v17 = v16;

LABEL_9:
LABEL_10:

    goto LABEL_11;
  }

  if ([fieldCopy isEqualToString:@"serviceID"])
  {
    service = [objectCopy service];
    accessory = [service instanceID];
    v18 = HAPInstanceIDFromValue();
    modelID = v18;
    v19 = *MEMORY[0x277CBEEE8];
    if (v18)
    {
      v19 = v18;
    }

    v17 = v19;
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"characteristicID"])
  {
    service = [objectCopy characteristicID];
    v21 = HAPInstanceIDFromValue();
    accessory = v21;
    v22 = *MEMORY[0x277CBEEE8];
    if (v21)
    {
      v22 = v21;
    }

    v17 = v22;
    goto LABEL_10;
  }

  v23.receiver = self;
  v23.super_class = HMDCharacteristicEventBaseModel;
  v17 = [(HMDBackingStoreModelObject *)&v23 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_11:

  return v17;
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDCharacteristicEventBaseModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_194020 != -1)
  {
    dispatch_once(&properties_onceToken_194020, block);
  }

  v2 = properties__properties_194021;

  return v2;
}

void __45__HMDCharacteristicEventBaseModel_properties__block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDCharacteristicEventBaseModel;
  v2 = objc_msgSendSuper2(&v11, sel_properties);
  v3 = [v1 dictionaryWithDictionary:v2];
  v4 = properties__properties_194021;
  properties__properties_194021 = v3;

  v5 = properties__properties_194021;
  v12[0] = @"accessory";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v6;
  v12[1] = @"serviceID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v7;
  v12[2] = @"characteristicID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v5 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  serviceID = [(HMDCharacteristicEventBaseModel *)self serviceID];

  if (serviceID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    accessory = [(HMDCharacteristicEventBaseModel *)self accessory];
    v9 = [v7 initWithUUIDString:accessory];
    serviceID2 = [(HMDCharacteristicEventBaseModel *)self serviceID];
    v11 = [HMDService generateUUIDWithAccessoryUUID:v9 serviceID:serviceID2];

    [v3 addObject:v11];
  }

  return v3;
}

@end