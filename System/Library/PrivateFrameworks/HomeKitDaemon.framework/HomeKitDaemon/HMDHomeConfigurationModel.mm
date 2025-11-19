@interface HMDHomeConfigurationModel
+ (id)properties;
@end

@implementation HMDHomeConfigurationModel

+ (id)properties
{
  if (properties_onceToken_263 != -1)
  {
    dispatch_once(&properties_onceToken_263, &__block_literal_global_266);
  }

  v3 = properties__properties_264;

  return v3;
}

void __39__HMDHomeConfigurationModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"configurationVersion";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_264;
  properties__properties_264 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end