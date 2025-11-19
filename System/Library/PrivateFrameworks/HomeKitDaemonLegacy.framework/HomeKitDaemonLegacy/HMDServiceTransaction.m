@interface HMDServiceTransaction
+ (id)properties;
@end

@implementation HMDServiceTransaction

+ (id)properties
{
  if (properties_onceToken_74706 != -1)
  {
    dispatch_once(&properties_onceToken_74706, &__block_literal_global_554);
  }

  v3 = properties__properties_74707;

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
  v10 = properties__properties_74707;
  properties__properties_74707 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

@end