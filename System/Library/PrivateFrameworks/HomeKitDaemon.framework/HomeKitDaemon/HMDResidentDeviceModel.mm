@interface HMDResidentDeviceModel
+ (id)properties;
@end

@implementation HMDResidentDeviceModel

+ (id)properties
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"deviceUUID";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v2;
  v11[1] = @"enabled";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[1] = v3;
  v11[2] = @"confirmed";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[2] = v4;
  v11[3] = @"device";
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[3] = v5;
  v11[4] = @"residentCapabilities";
  v6 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[4] = v6;
  v11[5] = @"changeToken";
  v7 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end