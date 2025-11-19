@interface HMDHomeUpgradedToROAR
+ (id)defaultModelForHome:(id)a3;
+ (id)modelIDForHome:(id)a3;
@end

@implementation HMDHomeUpgradedToROAR

+ (id)defaultModelForHome:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeUpgradedToROAR alloc];
  v6 = [a1 modelIDForHome:v4];
  v7 = [v4 uuid];

  v8 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v7];

  return v8;
}

+ (id)modelIDForHome:(id)a3
{
  v3 = a3;
  v4 = [@"HMDROARModelUUIDSalt" dataUsingEncoding:4];
  v5 = MEMORY[0x277CCAD78];
  v6 = [v3 uuid];

  v7 = [v5 hmf_UUIDWithNamespace:v6 data:v4];

  return v7;
}

@end