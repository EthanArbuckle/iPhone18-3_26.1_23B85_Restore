@interface HMDHomeThreadNetworkModel
+ (id)defaultModelForHome:(id)a3;
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHome:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
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

+ (id)defaultModelForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeThreadNetworkModel alloc];
  v6 = [a1 modelIDForHomeUUID:v4];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  return v7;
}

+ (id)defaultModelForHome:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 uuid];

  v6 = [v4 defaultModelForHomeUUID:v5];

  return v6;
}

+ (id)modelIDForHomeUUID:(id)a3
{
  v3 = a3;
  v4 = [@"HMDHomeThreadNetworkModel" dataUsingEncoding:4];
  v5 = [MEMORY[0x277CCAD78] hmf_UUIDWithNamespace:v3 data:v4];

  return v5;
}

+ (id)modelIDForHome:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 uuid];

  v6 = [v4 modelIDForHomeUUID:v5];

  return v6;
}

@end