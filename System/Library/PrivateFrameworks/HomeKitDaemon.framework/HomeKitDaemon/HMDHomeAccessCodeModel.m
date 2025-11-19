@interface HMDHomeAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)a3 accessCodeValue:(id)a4;
+ (id)properties;
- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)a3 value:(id)a4 label:(id)a5;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
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
    v13 = [MEMORY[0x277CCAD78] UUID];
    [(HMDHomeAccessCodeModel *)v12 setHh2ModelID:v13];
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
  if (properties_onceToken_166072 != -1)
  {
    dispatch_once(&properties_onceToken_166072, &__block_literal_global_166073);
  }

  v3 = properties__properties_166074;

  return v3;
}

void __36__HMDHomeAccessCodeModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"label";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v7[0] = v0;
  v6[1] = @"value";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v7[1] = v1;
  v6[2] = @"hh2ModelID";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_166074;
  properties__properties_166074 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"accessCode"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"value"])
    {
      v13 = 0;
      goto LABEL_11;
    }

    v11 = [(HMDHomeAccessCodeModel *)self value];
  }

  else
  {
    if ([v9 isEqualToString:@"home"])
    {
      v12 = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [HMDHomeModel cd_getHomeFromUUID:v12];

      goto LABEL_11;
    }

    if ([v9 isEqualToString:@"modelID"])
    {
      v11 = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = HMDHomeAccessCodeModel;
      v11 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
    }
  }

  v13 = v11;
LABEL_11:

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"value"])
  {
    v11 = [v10 accessCode];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDHomeAccessCodeModel;
    v11 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  v12 = v11;

  return v12;
}

@end