@interface HMDAccountModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccountModel

+ (id)properties
{
  if (properties_onceToken_58901 != -1)
  {
    dispatch_once(&properties_onceToken_58901, &__block_literal_global_282_58902);
  }

  v3 = properties__properties_58903;

  return v3;
}

void __29__HMDAccountModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"identifier";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_58903;
  properties__properties_58903 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"95E13552-1E95-4C7E-B2EE-3A010CB17DE9" copy];

  return v2;
}

@end