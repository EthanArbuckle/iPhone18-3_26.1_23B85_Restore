@interface HMDSharedHomeModel
+ (id)properties;
@end

@implementation HMDSharedHomeModel

+ (id)properties
{
  if (properties_onceToken_215 != -1)
  {
    dispatch_once(&properties_onceToken_215, &__block_literal_global_218_81491);
  }

  v3 = properties__properties_216;

  return v3;
}

void __32__HMDSharedHomeModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"homeData";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"configurationVersion";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_216;
  properties__properties_216 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end