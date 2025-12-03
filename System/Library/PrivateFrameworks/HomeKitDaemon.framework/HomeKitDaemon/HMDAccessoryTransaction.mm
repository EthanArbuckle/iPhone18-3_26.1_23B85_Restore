@interface HMDAccessoryTransaction
+ (id)cd_getMKFAccessoryFromAccessory:(id)accessory;
+ (id)cd_getMKFAccessoryFromAccessoryUUID:(id)d;
+ (id)cd_getMKFRoom:(id)room;
+ (id)properties;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (id)dependentUUIDs;
@end

@implementation HMDAccessoryTransaction

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"productData"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"productDataV2"])
    {
      productDataV2 = [(HMDAccessoryTransaction *)self productDataV2];
      roomUUID = productDataV2;
      v13 = *MEMORY[0x277CBEEE8];
      if (productDataV2)
      {
        v13 = productDataV2;
      }

      defaultRoom = v13;
      goto LABEL_31;
    }

LABEL_24:
    defaultRoom = 0;
    goto LABEL_34;
  }

  if ([fieldCopy isEqualToString:@"room"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"roomUUID"])
    {
      goto LABEL_24;
    }

    roomUUID = [(HMDAccessoryTransaction *)self roomUUID];

    if (roomUUID)
    {
      v15 = objc_alloc(MEMORY[0x277CCAD78]);
      roomUUID2 = [(HMDAccessoryTransaction *)self roomUUID];
      roomUUID = [v15 initWithUUIDString:roomUUID2];

      if (roomUUID)
      {
        defaultRoom = [objc_opt_class() cd_getMKFRoom:roomUUID];
        if (defaultRoom)
        {
LABEL_31:

          goto LABEL_34;
        }
      }
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v20;
      v45 = 2112;
      v46 = roomUUID;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did not find the room with UUID (%@). Using default Room.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    parentUUID = [(HMDBackingStoreModelObject *)selfCopy parentUUID];
    v42 = 0;
    v22 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:parentUUID ofModelType:objc_opt_class() error:&v42];
    v23 = v42;

    if (!v22 || v23)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        [(HMDBackingStoreModelObject *)v33 parentUUID];
        v36 = v39 = v32;
        *buf = 138543874;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        v47 = 2112;
        v48 = v23;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unable to find NSManagedObject for home with UUID %@: %@", buf, 0x20u);

        v32 = v39;
      }

      objc_autoreleasePoolPop(v32);
      defaultRoom = 0;
    }

    else
    {
      defaultRoom = [v22 defaultRoom];
    }

LABEL_30:
    goto LABEL_31;
  }

  if ([fieldCopy isEqualToString:@"hostAccessory"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"hostAccessoryUUID"])
    {
      goto LABEL_24;
    }

    hostAccessoryUUID = [(HMDAccessoryTransaction *)self hostAccessoryUUID];

    if (hostAccessoryUUID)
    {
      v25 = objc_alloc(MEMORY[0x277CCAD78]);
      hostAccessoryUUID2 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];
      roomUUID = [v25 initWithUUIDString:hostAccessoryUUID2];

      if (roomUUID)
      {
        v41 = 0;
        defaultRoom = [HMDBackingStore cdlsFetchManagedObjectWithUUID:roomUUID ofManagedObjectType:objc_opt_class() error:&v41];
        v23 = v41;
        if (!defaultRoom)
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543874;
            v44 = v30;
            v45 = 2112;
            v46 = roomUUID;
            v47 = 2112;
            v48 = v23;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFAccessory for host accessory with UUID %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
        }

        goto LABEL_30;
      }
    }

    null = [MEMORY[0x277CBEB68] null];
  }

  else
  {
    v40.receiver = self;
    v40.super_class = HMDAccessoryTransaction;
    null = [(HMDBackingStoreModelObject *)&v40 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  defaultRoom = null;
LABEL_34:

  v37 = *MEMORY[0x277D85DE8];

  return defaultRoom;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  objectCopy = object;
  fieldCopy = field;
  infoCopy = info;
  if ([fieldCopy isEqualToString:@"blocked"])
  {
    v11 = 0;
    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"productDataV2"])
  {
    productData = [objectCopy productData];
    v13 = productData;
    v14 = *MEMORY[0x277CBEEE8];
    if (productData)
    {
      v14 = productData;
    }

    v11 = v14;
LABEL_14:

    goto LABEL_15;
  }

  if ([fieldCopy isEqualToString:@"roomUUID"])
  {
    room = [objectCopy room];
LABEL_11:
    v13 = room;
    modelID = [room modelID];
    uUIDString = [modelID UUIDString];
    v18 = uUIDString;
    v19 = *MEMORY[0x277CBEEE8];
    if (uUIDString)
    {
      v19 = uUIDString;
    }

    v11 = v19;

    goto LABEL_14;
  }

  if ([fieldCopy isEqualToString:@"hostAccessoryUUID"])
  {
    room = [objectCopy hostAccessory];
    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = HMDAccessoryTransaction;
  v11 = [(HMDBackingStoreModelObject *)&v21 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
LABEL_15:

  return v11;
}

+ (id)cd_getMKFRoom:(id)room
{
  v22 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  v15 = 0;
  v5 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:roomCopy ofModelType:objc_opt_class() error:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = roomCopy;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to find NSManagedObject for room with UUID %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)cd_getMKFAccessoryFromAccessory:(id)accessory
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
  }

  v5 = accessoryCopy;
  v17 = 0;
  v6 = [HMDBackingStore cdlsFetchManagedObjectWithUUID:accessoryCopy ofManagedObjectType:objc_opt_class() error:&v17];
  v7 = v17;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v14 = v6;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the MKFAccessory from UUID : %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)cd_getMKFAccessoryFromAccessoryUUID:(id)d
{
  dCopy = d;
  v4 = objc_opt_class();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:dCopy];

  v6 = [v4 cd_getMKFAccessoryFromAccessory:v5];

  return v6;
}

+ (id)properties
{
  if (properties_onceToken_281420 != -1)
  {
    dispatch_once(&properties_onceToken_281420, &__block_literal_global_281421);
  }

  v3 = properties__properties_281422;

  return v3;
}

void __37__HMDAccessoryTransaction_properties__block_invoke()
{
  v39[35] = *MEMORY[0x277D85DE8];
  v38[0] = @"name";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[0] = v37;
  v38[1] = @"configuredName";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[1] = v36;
  v38[2] = @"identifier";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[2] = v35;
  v38[3] = @"providedName";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[3] = v34;
  v38[4] = @"accessoryCategory";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[4] = v33;
  v38[5] = @"roomUUID";
  v32 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[5] = v32;
  v38[6] = @"hostAccessoryUUID";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[6] = v31;
  v38[7] = @"primary";
  v30 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v39[7] = v30;
  v38[8] = @"model";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[8] = v29;
  v38[9] = @"manufacturer";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[9] = v28;
  v38[10] = @"firmwareVersion";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[10] = v27;
  v38[11] = @"displayableFirmwareVersion";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[11] = v26;
  v38[12] = @"serialNumber";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[12] = v25;
  v38[13] = @"productData";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[13] = v24;
  v38[14] = @"productDataV2";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[14] = v23;
  v38[15] = @"networkClientIdentifier";
  v22 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[15] = v22;
  v38[16] = @"networkRouterUUID";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[16] = v21;
  v38[17] = @"targetNetworkProtectionMode";
  v20 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v39[17] = v20;
  v38[18] = @"currentNetworkProtectionMode";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[18] = v19;
  v38[19] = @"networkClientLAN";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[19] = v18;
  v38[20] = @"networkClientProfileFingerprint";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[20] = v17;
  v38[21] = @"wiFiUniquePreSharedKey";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[21] = v16;
  v38[22] = @"wiFiCredentialType";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[22] = v15;
  v38[23] = @"pendingConfigurationIdentifier";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[23] = v14;
  v38[24] = @"blocked";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[24] = v13;
  v38[25] = @"appliedFirewallWANRules";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[25] = v12;
  v38[26] = @"lastNetworkAccessViolationOccurrenceSince1970";
  v11 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[26] = v11;
  v38[27] = @"lastNetworkAccessViolationResetSince1970";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[27] = v0;
  v38[28] = @"suspendCapable";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[28] = v1;
  v38[29] = @"lastSeenDate";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[29] = v2;
  v38[30] = @"lowBattery";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[30] = v3;
  v38[31] = @"primaryProfileVersion";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[31] = v4;
  v38[32] = @"initialManufacturer";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[32] = v5;
  v38[33] = @"initialModel";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[33] = v6;
  v38[34] = @"initialCategoryIdentifier";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v39[34] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:35];
  v9 = properties__properties_281422;
  properties__properties_281422 = v8;

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

  roomUUID = [(HMDAccessoryTransaction *)self roomUUID];

  if (roomUUID)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    roomUUID2 = [(HMDAccessoryTransaction *)self roomUUID];
    v9 = [v7 initWithUUIDString:roomUUID2];
    [v3 addObject:v9];
  }

  hostAccessoryUUID = [(HMDAccessoryTransaction *)self hostAccessoryUUID];

  if (hostAccessoryUUID)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    hostAccessoryUUID2 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];
    v13 = [v11 initWithUUIDString:hostAccessoryUUID2];
    [v3 addObject:v13];
  }

  return v3;
}

@end