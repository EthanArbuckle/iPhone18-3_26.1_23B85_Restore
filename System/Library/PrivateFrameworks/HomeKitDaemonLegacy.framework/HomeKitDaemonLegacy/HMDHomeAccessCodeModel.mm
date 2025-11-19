@interface HMDHomeAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)a3 accessCodeValue:(id)a4;
+ (id)properties;
- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)a3 value:(id)a4 label:(id)a5;
@end

@implementation HMDHomeAccessCodeModel

- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)a3 value:(id)a4 label:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:v10 accessCodeValue:v8];
  v12 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v11 parentUUID:v10];

  if (v12)
  {
    [(HMDHomeAccessCodeModel *)v12 setValue:v8];
    [(HMDHomeAccessCodeModel *)v12 setLabel:v9];
  }

  return v12;
}

+ (id)modelUUIDForHomeUUID:(id)a3 accessCodeValue:(id)a4
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a3;
  v7 = [a4 dataUsingEncoding:4];
  v8 = [v5 hmf_UUIDWithNamespace:v6 data:v7];

  return v8;
}

+ (id)properties
{
  if (properties_onceToken_109939 != -1)
  {
    dispatch_once(&properties_onceToken_109939, &__block_literal_global_109940);
  }

  v3 = properties__properties_109941;

  return v3;
}

void __36__HMDHomeAccessCodeModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"label";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v5[1] = @"value";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_109941;
  properties__properties_109941 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end