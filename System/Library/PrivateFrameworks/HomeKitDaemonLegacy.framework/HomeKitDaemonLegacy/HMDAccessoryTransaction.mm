@interface HMDAccessoryTransaction
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDAccessoryTransaction

+ (id)properties
{
  if (properties_onceToken != -1)
  {
    dispatch_once(&properties_onceToken, &__block_literal_global);
  }

  v3 = properties__properties;

  return v3;
}

void __37__HMDAccessoryTransaction_properties__block_invoke()
{
  v41[37] = *MEMORY[0x277D85DE8];
  v40[0] = @"name";
  v39 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[0] = v39;
  v40[1] = @"configuredName";
  v38 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[1] = v38;
  v40[2] = @"identifier";
  v37 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[2] = v37;
  v40[3] = @"providedName";
  v36 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[3] = v36;
  v40[4] = @"accessoryCategory";
  v35 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[4] = v35;
  v40[5] = @"roomUUID";
  v34 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[5] = v34;
  v40[6] = @"hostAccessoryUUID";
  v33 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[6] = v33;
  v40[7] = @"primary";
  v32 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v41[7] = v32;
  v40[8] = @"model";
  v31 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[8] = v31;
  v40[9] = @"manufacturer";
  v30 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[9] = v30;
  v40[10] = @"firmwareVersion";
  v29 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[10] = v29;
  v40[11] = @"displayableFirmwareVersion";
  v28 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[11] = v28;
  v40[12] = @"serialNumber";
  v27 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[12] = v27;
  v40[13] = @"productData";
  v26 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[13] = v26;
  v40[14] = @"productDataV2";
  v25 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[14] = v25;
  v40[15] = @"networkClientIdentifier";
  v24 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[15] = v24;
  v40[16] = @"networkRouterUUID";
  v23 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[16] = v23;
  v40[17] = @"targetNetworkProtectionMode";
  v22 = +[HMDBackingStoreModelObjectStorageInfo deprecatedField];
  v41[17] = v22;
  v40[18] = @"currentNetworkProtectionMode";
  v21 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[18] = v21;
  v40[19] = @"networkClientLAN";
  v20 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[19] = v20;
  v40[20] = @"networkClientProfileFingerprint";
  v19 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[20] = v19;
  v40[21] = @"wiFiUniquePreSharedKey";
  v18 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[21] = v18;
  v40[22] = @"wiFiCredentialType";
  v17 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[22] = v17;
  v40[23] = @"pendingConfigurationIdentifier";
  v16 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[23] = v16;
  v40[24] = @"blocked";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[24] = v15;
  v40[25] = @"appliedFirewallWANRules";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[25] = v14;
  v40[26] = @"lastNetworkAccessViolationOccurrenceSince1970";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[26] = v13;
  v40[27] = @"lastNetworkAccessViolationResetSince1970";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[27] = v12;
  v40[28] = @"suspendCapable";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[28] = v0;
  v40[29] = @"lastSeenDate";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[29] = v1;
  v40[30] = @"lowBattery";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[30] = v2;
  v40[31] = @"primaryProfileVersion";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[31] = v3;
  v40[32] = @"initialManufacturer";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[32] = v4;
  v40[33] = @"initialModel";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[33] = v5;
  v40[34] = @"initialCategoryIdentifier";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[34] = v6;
  v40[35] = @"sharedAdminAddedTimestamp";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[35] = v7;
  v40[36] = @"pairingsAuditedTimestamp";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v41[36] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:37];
  v10 = properties__properties;
  properties__properties = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = [(HMDBackingStoreModelObject *)self parentUUID];

  if (v4)
  {
    v5 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:v5];
  }

  v6 = [(HMDAccessoryTransaction *)self roomUUID];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [(HMDAccessoryTransaction *)self roomUUID];
    v9 = [v7 initWithUUIDString:v8];
    [v3 addObject:v9];
  }

  v10 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [(HMDAccessoryTransaction *)self hostAccessoryUUID];
    v13 = [v11 initWithUUIDString:v12];
    [v3 addObject:v13];
  }

  return v3;
}

@end