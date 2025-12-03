@interface HMDHomeAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)d accessCodeValue:(id)value;
+ (id)properties;
- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)d value:(id)value label:(id)label;
@end

@implementation HMDHomeAccessCodeModel

- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)d value:(id)value label:(id)label
{
  valueCopy = value;
  labelCopy = label;
  dCopy = d;
  v11 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:dCopy accessCodeValue:valueCopy];
  v12 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v11 parentUUID:dCopy];

  if (v12)
  {
    [(HMDHomeAccessCodeModel *)v12 setValue:valueCopy];
    [(HMDHomeAccessCodeModel *)v12 setLabel:labelCopy];
  }

  return v12;
}

+ (id)modelUUIDForHomeUUID:(id)d accessCodeValue:(id)value
{
  v5 = MEMORY[0x277CCAD78];
  dCopy = d;
  v7 = [value dataUsingEncoding:4];
  v8 = [v5 hmf_UUIDWithNamespace:dCopy data:v7];

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