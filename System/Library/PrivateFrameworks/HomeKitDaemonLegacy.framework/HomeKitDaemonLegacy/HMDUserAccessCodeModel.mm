@interface HMDUserAccessCodeModel
+ (id)modelUUIDWithUUID:(id)d;
+ (id)properties;
- (HMDUserAccessCodeModel)initWithUserUUID:(id)d;
@end

@implementation HMDUserAccessCodeModel

+ (id)modelUUIDWithUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"9DB6E60C-3E4F-44A3-94F6-14DB51D3E800"];
  v6 = MEMORY[0x277CCAD78];
  hm_convertToData = [dCopy hm_convertToData];

  v8 = [v6 hmf_UUIDWithNamespace:v5 data:hm_convertToData];

  return v8;
}

+ (id)properties
{
  if (properties_onceToken_133933 != -1)
  {
    dispatch_once(&properties_onceToken_133933, &__block_literal_global_133934);
  }

  v3 = properties__properties_133935;

  return v3;
}

void __36__HMDUserAccessCodeModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"value";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v5[1] = @"changedByUserUUID";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_133935;
  properties__properties_133935 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (HMDUserAccessCodeModel)initWithUserUUID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() modelUUIDWithUUID:dCopy];
  v6 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v5 parentUUID:dCopy];

  return v6;
}

@end