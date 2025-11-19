@interface HMDCharacteristicWriteActionModel
+ (id)properties;
- (BOOL)cd_updateManagedObjectInContext:(id)a3 error:(id *)a4;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)dependentUUIDs;
- (void)loadModelWithActionInformation:(id)a3;
@end

@implementation HMDCharacteristicWriteActionModel

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"accessory"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"])
    {
      v11 = [(HMDCharacteristicWriteActionModel *)self accessory];
      if (v11)
      {
        [HMDHAPAccessoryTransaction cd_getMKFHAPAccessoryFromAccessory:v11];
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
    if (![v9 isEqualToString:@"service"])
    {
      v26.receiver = self;
      v26.super_class = HMDCharacteristicWriteActionModel;
      v17 = [(HMDBackingStoreModelObject *)&v26 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
      goto LABEL_20;
    }

    v12 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"accessory"];
    v13 = [(HMDBackingStoreModelObject *)self propertyWasSet:@"serviceID"];
    if (v12 || v13)
    {
      if (v12 && v13)
      {
        v11 = [(HMDCharacteristicWriteActionModel *)self accessory];
        v14 = [(HMDCharacteristicWriteActionModel *)self serviceID];
        v15 = v14;
        if (v11 && v14)
        {
          v16 = [HMDHAPAccessoryTransaction cd_getMKFServiceFromAccessoryUUID:v11 serviceInstanceId:v14];
        }

        else
        {
          v16 = [MEMORY[0x277CBEB68] null];
        }

        v17 = v16;

        goto LABEL_15;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = HMFBooleanToString();
        v23 = HMFBooleanToString();
        *buf = 138544130;
        v28 = v21;
        v29 = 2112;
        v30 = v19;
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

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"accessory"])
  {
    v11 = [v8 accessory];

    if (v11)
    {
      v12 = [v8 accessory];
      v13 = [v12 modelID];
      v14 = [v13 UUIDString];
LABEL_12:
      v18 = v14;
LABEL_17:

      goto LABEL_18;
    }

    v12 = [v8 service];
    v13 = [v12 accessory];
    v16 = [v13 modelID];
    v21 = [v16 UUIDString];
    v22 = v21;
    v23 = *MEMORY[0x277CBEEE8];
    if (v21)
    {
      v23 = v21;
    }

    v18 = v23;

LABEL_16:
    goto LABEL_17;
  }

  if ([v9 isEqualToString:@"serviceID"])
  {
    v12 = [v8 service];
    v13 = [v12 instanceID];
    v15 = HAPInstanceIDFromValue();
    v16 = v15;
    v17 = *MEMORY[0x277CBEEE8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;
    goto LABEL_16;
  }

  if ([v9 isEqualToString:@"characteristicID"])
  {
    v12 = [v8 characteristicID];
    v19 = HAPInstanceIDFromValue();
    v13 = v19;
    v20 = *MEMORY[0x277CBEEE8];
    if (v19)
    {
      v20 = v19;
    }

    v14 = v20;
    goto LABEL_12;
  }

  v25.receiver = self;
  v25.super_class = HMDCharacteristicWriteActionModel;
  v18 = [(HMDBackingStoreModelObject *)&v25 cd_generateValueForModelObjectFromManagedObject:v8 modelObjectField:v9 modelFieldInfo:v10];
LABEL_18:

  return v18;
}

- (BOOL)cd_updateManagedObjectInContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = HMDCharacteristicWriteActionModel;
  v7 = [(HMDBackingStoreModelObject *)&v12 cd_updateManagedObjectInContext:v6 error:a4];
  if (v7)
  {
    v8 = [(HMDBackingStoreModelObject *)self managedObject];
    if ([v8 hasPersistentChangedValues])
    {
      v9 = [v8 service];
      v10 = [v9 accessory];
      [v10 maybeFixUpCharacteristicWriteActionsInContext:v6];
    }
  }

  return v7;
}

- (id)dependentUUIDs
{
  v15.receiver = self;
  v15.super_class = HMDCharacteristicWriteActionModel;
  v3 = [(HMDBackingStoreModelObject *)&v15 dependentUUIDs];
  v4 = [v3 mutableCopy];

  v5 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v5)
  {
    v6 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v4 addObject:v6];
  }

  v7 = [(HMDCharacteristicWriteActionModel *)self accessory];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [(HMDCharacteristicWriteActionModel *)self accessory];
    v10 = [v8 initWithUUIDString:v9];

    [v4 addObject:v10];
    v11 = [(HMDCharacteristicWriteActionModel *)self serviceID];

    if (v11)
    {
      v12 = [(HMDCharacteristicWriteActionModel *)self serviceID];
      v13 = [HMDService generateUUIDWithAccessoryUUID:v10 serviceID:v12];

      [v4 addObject:v13];
    }
  }

  return v4;
}

- (void)loadModelWithActionInformation:(id)a3
{
  v11.receiver = self;
  v11.super_class = HMDCharacteristicWriteActionModel;
  v4 = a3;
  [(HMDActionModel *)&v11 loadModelWithActionInformation:v4];
  v5 = [v4 hmf_stringForKey:{*MEMORY[0x277CCF0B0], v11.receiver, v11.super_class}];
  [(HMDCharacteristicWriteActionModel *)self setAccessory:v5];

  v6 = [v4 hmf_numberForKey:*MEMORY[0x277CD25F8]];
  v7 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setServiceID:v7];

  v8 = [v4 hmf_numberForKey:*MEMORY[0x277CD2140]];
  v9 = HAPInstanceIDFromValue();
  [(HMDCharacteristicWriteActionModel *)self setCharacteristicID:v9];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  [(HMDCharacteristicWriteActionModel *)self setTargetValue:v10];
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDCharacteristicWriteActionModel_properties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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