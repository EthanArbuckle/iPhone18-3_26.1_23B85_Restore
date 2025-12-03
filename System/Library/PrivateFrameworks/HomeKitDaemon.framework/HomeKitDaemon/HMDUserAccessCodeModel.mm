@interface HMDUserAccessCodeModel
+ (id)modelUUIDWithUUID:(id)d;
+ (id)properties;
- (HMDUserAccessCodeModel)initWithUserUUID:(id)d;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)object modelObjectField:(id)field modelFieldInfo:(id)info;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
- (void)cd_populateParentRelationshipInContext:(id)context error:(id *)error;
@end

@implementation HMDUserAccessCodeModel

- (void)cd_populateParentRelationshipInContext:(id)context error:(id *)error
{
  v13.receiver = self;
  v13.super_class = HMDUserAccessCodeModel;
  v6 = [(HMDBackingStoreModelObject *)&v13 cd_fetchParentForManagedObjectUsingParentReferenceName:@"user" error:?];
  if (v6)
  {
    v7 = v6;
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    v9 = managedObject;
    v10 = @"user";
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HMDUserAccessCodeModel;
    v11 = [(HMDBackingStoreModelObject *)&v12 cd_fetchParentForManagedObjectUsingParentReferenceName:@"guest" error:error];
    if (!v11)
    {
      return;
    }

    v7 = v11;
    managedObject = [(HMDBackingStoreModelObject *)self managedObject];
    v9 = managedObject;
    v10 = @"guest";
  }

  [managedObject setValue:v7 forKey:v10];
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
      home = 0;
      goto LABEL_11;
    }

    value = [(HMDUserAccessCodeModel *)self value];
  }

  else
  {
    if ([fieldCopy isEqualToString:@"home"])
    {
      parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [HMDUserModel cd_getMKFUserFromUUID:parentUUID];

      home = [v13 home];

      goto LABEL_11;
    }

    if ([fieldCopy isEqualToString:@"modelID"])
    {
      value = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = HMDUserAccessCodeModel;
      value = [(HMDBackingStoreModelObject *)&v16 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
    }
  }

  home = value;
LABEL_11:

  return home;
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
    v14.super_class = HMDUserAccessCodeModel;
    accessCode = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:objectCopy modelObjectField:fieldCopy modelFieldInfo:infoCopy];
  }

  v12 = accessCode;

  return v12;
}

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
  if (properties_onceToken_200477 != -1)
  {
    dispatch_once(&properties_onceToken_200477, &__block_literal_global_200478);
  }

  v3 = properties__properties_200479;

  return v3;
}

void __36__HMDUserAccessCodeModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"value";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class() logging:3];
  v7[0] = v0;
  v6[1] = @"changedByUserUUID";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"hh2ModelID";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_200479;
  properties__properties_200479 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (HMDUserAccessCodeModel)initWithUserUUID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() modelUUIDWithUUID:dCopy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(HMDUserAccessCodeModel *)self setHh2ModelID:uUID];

  v7 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v5 parentUUID:dCopy];
  return v7;
}

@end