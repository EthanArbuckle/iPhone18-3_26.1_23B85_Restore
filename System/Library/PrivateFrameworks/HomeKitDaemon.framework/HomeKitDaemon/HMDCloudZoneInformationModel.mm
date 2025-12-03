@interface HMDCloudZoneInformationModel
+ (id)properties;
- (id)dependentUUIDs;
@end

@implementation HMDCloudZoneInformationModel

- (id)dependentUUIDs
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:1];
  parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(HMDBackingStoreModelObject *)self parentUUID];
    [v3 addObject:parentUUID2];
  }

  return v3;
}

+ (id)properties
{
  if (properties_onceToken_133810 != -1)
  {
    dispatch_once(&properties_onceToken_133810, &__block_literal_global_133811);
  }

  v3 = properties__properties_133812;

  return v3;
}

void __42__HMDCloudZoneInformationModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"ownerName";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_133812;
  properties__properties_133812 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end