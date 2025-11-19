@interface HMDAccessorySettingModel
+ (id)properties;
+ (id)schemaHashRoot;
@end

@implementation HMDAccessorySettingModel

+ (id)properties
{
  if (properties_onceToken_262508 != -1)
  {
    dispatch_once(&properties_onceToken_262508, &__block_literal_global_252_262509);
  }

  v3 = properties__properties_262510;

  return v3;
}

void __38__HMDAccessorySettingModel_properties__block_invoke()
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = @"type";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[0] = v0;
  v8[1] = @"properties";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[1] = v1;
  v8[2] = @"name";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[2] = v2;
  v8[3] = @"value";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[3] = v3;
  v8[4] = @"configurationVersion";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[4] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = properties__properties_262510;
  properties__properties_262510 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)schemaHashRoot
{
  v2 = [@"C405A892-9917-4445-9F23-21BB5BAEAD2F" copy];

  return v2;
}

@end