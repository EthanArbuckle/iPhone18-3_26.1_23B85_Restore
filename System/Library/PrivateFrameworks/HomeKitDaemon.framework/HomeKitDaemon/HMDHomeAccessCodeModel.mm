@interface HMDHomeAccessCodeModel
+ (id)modelUUIDForHomeUUID:(id)d accessCodeValue:(id)value;
+ (id)properties;
- (HMDHomeAccessCodeModel)initWithHomeUUID:(id)d value:(id)value label:(id)label;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(HMDHomeAccessCodeModel *)v12 setHh2ModelID:uUID];
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

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"accessCode"])
  {
    if (![(HMDBackingStoreModelObject *)self propertyWasSet:@"value"])
    {
      v13 = 0;
      goto LABEL_11;
    }

    value = [(HMDHomeAccessCodeModel *)self value];
  }

  else
  {
    if ([fieldCopy isEqualToString:@"home"])
    {
      parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [HMDHomeModel cd_getHomeFromUUID:parentUUID];

      goto LABEL_11;
    }

    if ([fieldCopy isEqualToString:@"modelID"])
    {
      value = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = HMDHomeAccessCodeModel;
      value = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    }
  }

  v13 = value;
LABEL_11:

  return v13;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info
{
  fieldCopy = field;
  infoCopy = info;
  objectCopy = object;
  if ([fieldCopy isEqualToString:@"value"])
  {
    accessCode = [objectCopy accessCode];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HMDHomeAccessCodeModel;
    accessCode = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  v12 = accessCode;

  return v12;
}

@end