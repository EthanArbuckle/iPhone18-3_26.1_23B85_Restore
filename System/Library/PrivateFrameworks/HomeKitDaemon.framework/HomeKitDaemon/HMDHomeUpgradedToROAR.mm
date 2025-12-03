@interface HMDHomeUpgradedToROAR
+ (id)defaultModelForHome:(id)home;
+ (id)modelIDForHome:(id)home;
@end

@implementation HMDHomeUpgradedToROAR

+ (id)defaultModelForHome:(id)home
{
  homeCopy = home;
  v5 = [HMDHomeUpgradedToROAR alloc];
  v6 = [self modelIDForHome:homeCopy];
  uuid = [homeCopy uuid];

  v8 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:uuid];

  return v8;
}

+ (id)modelIDForHome:(id)home
{
  homeCopy = home;
  v4 = [@"HMDROARModelUUIDSalt" dataUsingEncoding:4];
  v5 = MEMORY[0x277CCAD78];
  uuid = [homeCopy uuid];

  v7 = [v5 hmf_UUIDWithNamespace:uuid data:v4];

  return v7;
}

@end