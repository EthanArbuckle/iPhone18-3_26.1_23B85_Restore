@interface HMDHomeThreadNetworkModel
+ (id)defaultModelForHome:(id)home;
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHome:(id)home;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)properties;
@end

@implementation HMDHomeThreadNetworkModel

+ (id)properties
{
  if (properties_onceToken_322 != -1)
  {
    dispatch_once(&properties_onceToken_322, &__block_literal_global_325_81588);
  }

  v3 = properties__properties_323;

  return v3;
}

void __39__HMDHomeThreadNetworkModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"threadNetworkID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_323;
  properties__properties_323 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomeThreadNetworkModel alloc];
  v6 = [self modelIDForHomeUUID:dCopy];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:dCopy];

  return v7;
}

+ (id)defaultModelForHome:(id)home
{
  homeCopy = home;
  v4 = objc_opt_class();
  uuid = [homeCopy uuid];

  v6 = [v4 defaultModelForHomeUUID:uuid];

  return v6;
}

+ (id)modelIDForHomeUUID:(id)d
{
  dCopy = d;
  v4 = [@"HMDHomeThreadNetworkModel" dataUsingEncoding:4];
  v5 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:dCopy data:v4];

  return v5;
}

+ (id)modelIDForHome:(id)home
{
  homeCopy = home;
  v4 = objc_opt_class();
  uuid = [homeCopy uuid];

  v6 = [v4 modelIDForHomeUUID:uuid];

  return v6;
}

@end