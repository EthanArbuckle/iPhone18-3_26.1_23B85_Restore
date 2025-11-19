@interface HMDRoomModel
+ (id)properties;
@end

@implementation HMDRoomModel

+ (id)properties
{
  if (properties_onceToken_155181 != -1)
  {
    dispatch_once(&properties_onceToken_155181, &__block_literal_global_197_155182);
  }

  v3 = properties__properties_155183;

  return v3;
}

void __26__HMDRoomModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"name";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_155183;
  properties__properties_155183 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end