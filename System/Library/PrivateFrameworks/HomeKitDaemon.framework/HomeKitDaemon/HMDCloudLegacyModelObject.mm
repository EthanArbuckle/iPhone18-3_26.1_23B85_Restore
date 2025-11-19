@interface HMDCloudLegacyModelObject
+ (id)properties;
@end

@implementation HMDCloudLegacyModelObject

+ (id)properties
{
  if (properties_onceToken_99 != -1)
  {
    dispatch_once(&properties_onceToken_99, &__block_literal_global_102);
  }

  v3 = properties__properties_100;

  return v3;
}

void __39__HMDCloudLegacyModelObject_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"legacyRecordType";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"data1";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"data2";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_100;
  properties__properties_100 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end