@interface HMDCharacteristicWriteActionModel
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDCharacteristicWriteActionModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"accessory"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"])
    {
      accessory = [(HMDCharacteristicWriteActionModel *)self accessory];
      if (accessory)
      {
        [HMDHAPAccessoryTransaction cd_getMKFHAPAccessoryFromAccessory:accessory];
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }
      v17 = ;
LABEL_15:

      goto LABEL_20;
    }
  }

  else
  {
    if (![fieldCopy isEqualToString:@"service"])
    {
      v26.receiver = self;
      v26.super_class = HMDCharacteristicWriteActionModel;
      v17 = [(HMDBackingStoreModelObject *)&v26 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
      goto LABEL_20;
    }

    v12 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"];
    v13 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"serviceID"];
    if (v12 || v13)
    {
      if (v12 && v13)
      {
        accessory = [(HMDCharacteristicWriteActionModel *)self accessory];
        serviceID = [(HMDCharacteristicWriteActionModel *)self serviceID];
        v15 = serviceID;
        if (accessory && serviceID)
        {
          null = [HMDHAPAccessoryTransaction cd_getMKFServiceFromAccessoryUUID:accessory serviceInstanceId:serviceID];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        v17 = null;

        goto LABEL_15;
      }

      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = HMFBooleanToString();
        v23 = HMFBooleanToString();
        *buf = 138544130;
        v28 = v21;
        v29 = 2112;
        v30 = selfCopy;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@: Cannot resolve service (haveAccessoryUUID=%@, haveServiceID=%@)", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v17 = 0;
LABEL_20:

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"accessory"])
  {
    accessory = [objectCopy accessory];

    if (accessory)
    {
      accessory2 = [objectCopy accessory];
      modelID = [accessory2 modelID];
      uUIDString = [modelID UUIDString];
LABEL_12:
      v18 = uUIDString;
LABEL_17:

      goto LABEL_18;
    }

    accessory2 = [objectCopy service];
    modelID = [accessory2 accessory];
    v13ModelID = [modelID modelID];
    uUIDString2 = [v13ModelID UUIDString];
    v22 = uUIDString2;
    v23 = *MEMORY[0x277CBEEE8];
    if (uUIDString2)
    {
      v23 = uUIDString2;
    }

    v18 = v23;

LABEL_16:
    goto LABEL_17;
  }

  if ([fieldCopy isEqualToString:@"serviceID"])
  {
    accessory2 = [objectCopy service];
    modelID = [accessory2 instanceID];
    v15 = HAPInstanceIDFromValue();
    v13ModelID = v15;
    v17 = *MEMORY[0x277CBEEE8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;
    goto LABEL_16;
  }

  if ([fieldCopy isEqualToString:@"characteristicID"])
  {
    accessory2 = [objectCopy characteristicID];
    v19 = HAPInstanceIDFromValue();
    modelID = v19;
    v20 = *MEMORY[0x277CBEEE8];
    if (v19)
    {
      v20 = v19;
    }

    uUIDString = v20;
    goto LABEL_12;
  }

  v25.receiver = self;
  v25.super_class = HMDCharacteristicWriteActionModel;
  v18 = [(HMDBackingStoreModelObject *)&v25 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_18:

  return v18;
}

- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HMDCharacteristicWriteActionModel;
  v7 = [(HMDBackingStoreModelObject *)&v12 cd_updateManagedObjectInContext:contextCopy error:error];
  if (v7)
  {
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    if ([managedObject hasPersistentChangedValues])
    {
      service = [managedObject service];
      accessory = [service accessory];
      [accessory maybeFixUpCharacteristicWriteActionsInContext:contextCopy];
    }
  }

  return v7;
}

- (id)dependentUUIDs
{
  v15.receiver = self;
  v15.super_class = HMDCharacteristicWriteActionModel;
  dependentUUIDs = [(HMDBackingStoreModelObject *)&v15 dependentUUIDs];
  v4 = [dependentUUIDs mutableCopy];

  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:parentUUID2];
  }

  accessory = [(HMDCharacteristicWriteActionModel *)self accessory];

  if (accessory)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    accessory2 = [(HMDCharacteristicWriteActionModel *)self accessory];
    v10 = [v8 initWithUUIDString:accessory2];

    [v4 addObject:v10];
    serviceID = [(HMDCharacteristicWriteActionModel *)self serviceID];

    if (serviceID)
    {
      serviceID2 = [(HMDCharacteristicWriteActionModel *)self serviceID];
      v13 = [HMDService generateUUIDWithAccessoryUUID:v10 serviceID:serviceID2];

      [v4 addObject:v13];
    }
  }

  return v4;
}

- (void)loadModelWithActionInformation:(id)information
{
  v11.receiver = self;
  v11.super_class = HMDCharacteristicWriteActionModel;
  informationCopy = information;
  [(HMDActionModel *)&v11 loadModelWithActionInformation:informationCopy];
  v5 = [informationCopy hmf_stringForKey:{*MEMORY[0x277CCF0B0], v11.receiver, v11.super_class}];
  [(HMDCharacteristicWriteActionModel *)self setAccessory:v5];

  v6 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD25F8]];
  v7 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setServiceID:v7];

  v8 = [informationCopy hmf_numberForKey:*MEMORY[0x277CD2140]];
  v9 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setCharacteristicID:v9];

  v10 = [informationCopy objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  [(HMDCharacteristicWriteActionModel *)self setTargetValue:v10];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCharacteristicWriteActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (properties_onceToken_184206 != -1)
  {
    dispatch_once(&properties_onceToken_184206, block);
  }

  v2 = properties__properties_184207;

  return v2;
}

void __47__HMDCharacteristicWriteActionModel_properties__block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v11.receiver = *(a1 + 32);
  v11.super_class = &OBJC_METACLASS___HMDCharacteristicWriteActionModel;
  v1 = objc_msgSendSuper2(&v11, sel_properties);
  v2 = [v1 mutableCopy];
  v3 = properties__properties_184207;
  properties__properties_184207 = v2;

  v4 = properties__properties_184207;
  v12[0] = @"accessory";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[0] = v5;
  v12[1] = @"serviceID";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[1] = v6;
  v12[2] = @"characteristicID";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[2] = v7;
  v12[3] = @"targetValue";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  [v4 addEntriesFromDictionary:v9];

  v10 = *MEMORY[0x277D85DE8];
}

@end