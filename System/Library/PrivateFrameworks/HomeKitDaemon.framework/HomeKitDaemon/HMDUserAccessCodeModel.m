@interface HMDUserAccessCodeModel
+ (id)modelUUIDWithUUID:(id)a3;
+ (id)properties;
- (HMDUserAccessCodeModel)initWithUserUUID:(id)a3;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (void)cd_populateParentRelationshipInContext:(id)a3 error:(id *)a4;
@end

@implementation HMDUserAccessCodeModel

- (void)cd_populateParentRelationshipInContext:(id)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = HMDUserAccessCodeModel;
  v6 = [(HMDBackingStoreModelObject *)&v13 cd_fetchParentForManagedObjectUsingParentReferenceName:@"user" error:?];
  if (v6)
  {
    v7 = v6;
    v8 = [(HMDBackingStoreModelObject *)self managedObject];
    v9 = v8;
    v10 = @"user";
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HMDUserAccessCodeModel;
    v11 = [(HMDBackingStoreModelObject *)&v12 cd_fetchParentForManagedObjectUsingParentReferenceName:@"guest" error:a4];
    if (!v11)
    {
      return;
    }

    v7 = v11;
    v8 = [(HMDBackingStoreModelObject *)self managedObject];
    v9 = v8;
    v10 = @"guest";
  }

  [v8 setValue:v7 forKey:v10];
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
      v14 = 0;
      goto LABEL_11;
    }

    v11 = [(HMDUserAccessCodeModel *)self value];
  }

  else
  {
    if ([v9 isEqualToString:@"home"])
    {
      v12 = [(HMDBackingStoreModelObject *)self parentUUID];
      v13 = [HMDUserModel cd_getMKFUserFromUUID:v12];

      v14 = [v13 home];

      goto LABEL_11;
    }

    if ([v9 isEqualToString:@"modelID"])
    {
      v11 = [(HMDBackingStoreModelObject *)self uuid];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = HMDUserAccessCodeModel;
      v11 = [(HMDBackingStoreModelObject *)&v16 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
    }
  }

  v14 = v11;
LABEL_11:

  return v14;
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
    v14.super_class = HMDUserAccessCodeModel;
    v11 = [(HMDBackingStoreModelObject *)&v14 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  v12 = v11;

  return v12;
}

+ (id)modelUUIDWithUUID:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"9DB6E60C-3E4F-44A3-94F6-14DB51D3E800"];
  v6 = MEMORY[0x277CCAD78];
  v7 = [v4 hm_convertToData];

  v8 = [v6 hmf_UUIDWithNamespace:v5 data:v7];

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

- (HMDUserAccessCodeModel)initWithUserUUID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() modelUUIDWithUUID:v4];
  v6 = [MEMORY[0x277CCAD78] UUID];
  [(HMDUserAccessCodeModel *)self setHh2ModelID:v6];

  v7 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v5 parentUUID:v4];
  return v7;
}

@end