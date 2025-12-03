@interface HMDHomeThreadNetworkModel
+ (id)defaultModelForHome:(id)home;
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHome:(id)home;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)properties;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDHomeThreadNetworkModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"home"])
  {
    v11 = objc_opt_class();
    parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
    v13 = [v11 cd_getHomeFromUUID:parentUUID];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDHomeThreadNetworkModel;
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

+ (id)properties
{
  if (properties_onceToken_389 != -1)
  {
    dispatch_once(&properties_onceToken_389, &__block_literal_global_392);
  }

  v3 = properties__properties_390;

  return v3;
}

void __39__HMDHomeThreadNetworkModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"threadNetworkID";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_390;
  properties__properties_390 = v1;

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