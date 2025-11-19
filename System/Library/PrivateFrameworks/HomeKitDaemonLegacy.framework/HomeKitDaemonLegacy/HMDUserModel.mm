@interface HMDUserModel
+ (id)properties;
@end

@implementation HMDUserModel

+ (id)properties
{
  if (properties_onceToken_1290 != -1)
  {
    dispatch_once(&properties_onceToken_1290, &__block_literal_global_1293);
  }

  v3 = properties__properties_1291;

  return v3;
}

void __26__HMDUserModel_properties__block_invoke()
{
  v17[13] = *MEMORY[0x277D85DE8];
  v16[0] = @"accountHandle";
  v15 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[0] = v15;
  v16[1] = @"accountIdentifier";
  v14 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[1] = v14;
  v16[2] = @"pairingIdentity";
  v13 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[2] = v13;
  v16[3] = @"privilege";
  v12 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[3] = v12;
  v16[4] = @"remoteAccessAllowed";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[4] = v0;
  v16[5] = @"presenceAuthorizationStatus";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[5] = v1;
  v16[6] = @"changeTag";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[6] = v2;
  v16[7] = @"userID";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:0];
  v17[7] = v3;
  v16[8] = @"camerasAccessLevel";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[8] = v4;
  v16[9] = @"announceAccessAllowed";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[9] = v5;
  v16[10] = @"announceAccessLevel";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[10] = v6;
  v16[11] = @"analysisAccessSelection";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[11] = v7;
  v16[12] = @"matterCASEAuthenticatedTagID";
  v8 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v17[12] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:13];
  v10 = properties__properties_1291;
  properties__properties_1291 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

@end