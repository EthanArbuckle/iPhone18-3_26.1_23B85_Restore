@interface HMDServiceTransaction
+ (id)cd_createMKFCharacteristicFromDictionary:(id)dictionary context:(id)context;
+ (id)cd_modelTypeForCharacteristicFormat:(id)format;
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDServiceTransaction

+ (id)properties
{
  if (properties_onceToken_113723 != -1)
  {
    dispatch_once(&properties_onceToken_113723, &__block_literal_global_565);
  }

  v3 = properties__properties_113724;

  return v3;
}

void __35__HMDServiceTransaction_properties__block_invoke()
{
  v25[21] = *MEMORY[0x277D85DE8];
  v24[0] = @"instanceID";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[0] = v23;
  v24[1] = @"name";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[1] = v22;
  v24[2] = @"providedName";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[2] = v21;
  v24[3] = @"serviceType";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[3] = v20;
  v24[4] = @"associatedServiceType";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[4] = v19;
  v24[5] = @"serviceSubtype";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[5] = v18;
  v24[6] = @"labelIndex";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[6] = v17;
  v24[7] = @"labelNamespace";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[7] = v16;
  v24[8] = @"configurationState";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[8] = v15;
  v24[9] = @"linkedServices";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[9] = v14;
  v24[10] = @"hidden";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[10] = v13;
  v24[11] = @"primary";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[11] = v12;
  v24[12] = @"characteristics";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[12] = v0;
  v24[13] = @"expectedConfiguredName";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[13] = v1;
  v24[14] = @"lastKnownDiscoveryMode";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[14] = v2;
  v24[15] = @"lastKnownOperatingState";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[15] = v3;
  v24[16] = @"lastKnownOperatingStateAbnormalReasons";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[16] = v4;
  v24[17] = @"mediaSourceIdentifier";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[17] = v5;
  v24[18] = @"mediaSourceDisplayOrder";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[18] = v6;
  v24[19] = @"serviceProperties";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[19] = v7;
  v24[20] = @"matterEndpointID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v25[20] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:21];
  v10 = properties__properties_113724;
  properties__properties_113724 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"serviceType"])
  {
    v11 = @"serviceType";
LABEL_7:
    v12 = [(HMDBackingStoreModelObject *)self cd_uuidValueFromStringModelObjectField:v11];
LABEL_8:
    v13 = v12;
    goto LABEL_9;
  }

  if ([fieldCopy isEqualToString:@"serviceSubtype"])
  {
    v11 = @"serviceSubtype";
    goto LABEL_7;
  }

  if ([fieldCopy isEqualToString:@"associatedServiceType"])
  {
    v11 = @"associatedServiceType";
    goto LABEL_7;
  }

  if (![fieldCopy isEqualToString:@"characteristics_"])
  {
    v36.receiver = self;
    v36.super_class = HMDServiceTransaction;
    v12 = [(HMDBackingStoreModelObject *)&v36 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    goto LABEL_8;
  }

  if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"characteristics"])
  {
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = managedObject;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (!v18)
    {
      _HMFPreconditionFailure();
    }

    v19 = MEMORY[0x277CBEB58];
    characteristics = [(HMDServiceTransaction *)self characteristics];
    v21 = [v19 setWithCapacity:{objc_msgSend(characteristics, "count")}];

    characteristics2 = [(HMDServiceTransaction *)self characteristics];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke;
    v39[3] = &unk_278689DE8;
    v23 = v18;
    v40 = v23;
    v24 = contextCopy;
    v41 = v24;
    selfCopy = self;
    v25 = v21;
    v43 = v25;
    [characteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v39];

    characteristics3 = [v23 characteristics];
    v27 = [characteristics3 mutableCopy];

    [v27 minusSet:v25];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke_2;
    v37[3] = &unk_278686720;
    v38 = v24;
    [v27 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v35 = v28;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      [v23 modelID];
      v33 = v34 = v23;
      *buf = 138543874;
      v45 = v31;
      v46 = 2112;
      v47 = v32;
      v48 = 2112;
      v49 = v33;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Converted %@ characteristics into MKFCharacteristic for MKFService: %@", buf, 0x20u);

      v23 = v34;
      v28 = v35;
    }

    objc_autoreleasePoolPop(v28);
    v13 = [v25 copy];
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __90__HMDServiceTransaction_CoreData__cd_generateValueForProperty_managedObjectField_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 objectForKeyedSubscript:*MEMORY[0x277CD2138]];
  v4 = [*(a1 + 32) pr_findCharacteristicWithInstanceID:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 pr_updateWithDictionary:v11];
    v7 = [v6 managedObjectContext];

    if (!v7)
    {
      [*(a1 + 40) insertObject:v6];
    }
  }

  else
  {
    v8 = *(a1 + 48);
    v4 = [objc_opt_class() cd_createMKFCharacteristicFromDictionary:v11 context:*(a1 + 40)];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 setService:*(a1 + 32)];
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  [*(a1 + 56) addObject:v4];

LABEL_12:
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"primary"] & 1) != 0 || (objc_msgSend(fieldCopy, "isEqualToString:", @"hidden"))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:@"instanceID"])
  {
    instanceID = [objectCopy instanceID];
    uUIDString = HAPInstanceIDFromValue();
LABEL_11:
    v11 = uUIDString;
LABEL_12:

    goto LABEL_13;
  }

  if ([fieldCopy isEqualToString:@"serviceType"])
  {
    serviceType = [objectCopy serviceType];
LABEL_10:
    instanceID = serviceType;
    uUIDString = [serviceType UUIDString];
    goto LABEL_11;
  }

  if ([fieldCopy isEqualToString:@"serviceSubtype"])
  {
    serviceType = [objectCopy serviceSubtype];
    goto LABEL_10;
  }

  if ([fieldCopy isEqualToString:@"associatedServiceType"])
  {
    instanceID = [objectCopy associatedServiceType];
    uUIDString2 = [instanceID UUIDString];
    v17 = uUIDString2;
    v18 = *MEMORY[0x277CBEEE8];
    if (uUIDString2)
    {
      v18 = uUIDString2;
    }

    v11 = v18;

    goto LABEL_12;
  }

  if ([fieldCopy isEqualToString:@"characteristics"])
  {
    v19 = MEMORY[0x277CBEB18];
    characteristics = [objectCopy characteristics];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(characteristics, "count")}];

    characteristics2 = [objectCopy characteristics];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __115__HMDServiceTransaction_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke;
    v25[3] = &unk_278686720;
    v26 = v21;
    v23 = v21;
    [characteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

    v11 = [v23 copy];
  }

  else
  {
    v24.receiver = self;
    v24.super_class = HMDServiceTransaction;
    v11 = [(HMDBackingStoreModelObject *)&v24 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

LABEL_13:

  return v11;
}

void __115__HMDServiceTransaction_CoreData__cd_generateValueForModelObjectFromManagedObject_modelObjectField_modelFieldInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pr_dictionaryRepresentation];
  [v2 addObject:v3];
}

- (BOOL)cd_updateManagedObjectInContext:(id)context error:(id *)error
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HMDServiceTransaction;
  v7 = [(HMDBackingStoreModelObject *)&v11 cd_updateManagedObjectInContext:contextCopy error:error];
  if (v7)
  {
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    if ([managedObject hasPersistentChangedValues])
    {
      accessory = [managedObject accessory];
      [accessory maybeFixUpCharacteristicWriteActionsInContext:contextCopy];
    }
  }

  return v7;
}

+ (id)cd_createMKFCharacteristicFromDictionary:(id)dictionary context:(id)context
{
  v5 = *MEMORY[0x277CD2148];
  contextCopy = context;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:v5];
  v9 = [v8 objectForKeyedSubscript:@"metadataFormat"];
  v10 = v9;
  v11 = @"unknown";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [objc_opt_class() cd_modelTypeForCharacteristicFormat:v12];

  v14 = [(objc_class *)[HMCContext managedObjectClassFromProtocol:?]];
  v15 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v14 insertIntoManagedObjectContext:contextCopy];

  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2138]];
  [v15 setInstanceID:v16];

  [v15 pr_updateWithDictionary:dictionaryCopy];
  v17 = v15;
  if ([v17 conformsToProtocol:&unk_283EEC2D0])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

+ (id)cd_modelTypeForCharacteristicFormat:(id)format
{
  v3 = HAPCharacteristicFormatFromString();
  v4 = &unk_283EEC2D0;
  if ((v3 - 1) <= 0xE)
  {
    v5 = *off_278686740[v3 - 1];

    v4 = v5;
  }

  return v4;
}

@end