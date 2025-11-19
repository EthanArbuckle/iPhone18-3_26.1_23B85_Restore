@interface HMDAccessorySettingGroupModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccessorySettingGroupModel

+ (id)properties
{
  if (properties_onceToken_221820 != -1)
  {
    dispatch_once(&properties_onceToken_221820, &__block_literal_global_187);
  }

  v3 = properties__properties_221821;

  return v3;
}

void __43__HMDAccessorySettingGroupModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_221821;
  properties__properties_221821 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"4E347E70-4576-4D21-B00D-A0054A1889A4" copy];

  return v2;
}

@end