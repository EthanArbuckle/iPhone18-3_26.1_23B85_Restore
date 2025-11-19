@interface HMDResidentDeviceModel
+ (id)properties;
@end

@implementation HMDResidentDeviceModel

+ (id)properties
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"deviceUUID";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v2;
  v10[1] = @"enabled";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[1] = v3;
  v10[2] = @"confirmed";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[2] = v4;
  v10[3] = @"device";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[3] = v5;
  v10[4] = @"changeToken";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end