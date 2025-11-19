@interface HMDHomeMediaSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)modelNamespace;
+ (id)properties;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
@end

@implementation HMDHomeMediaSettingsModel

+ (id)properties
{
  if (properties_onceToken_334 != -1)
  {
    dispatch_once(&properties_onceToken_334, &__block_literal_global_337);
  }

  v3 = properties__properties_335;

  return v3;
}

void __39__HMDHomeMediaSettingsModel_properties__block_invoke()
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"minimumMediaUserPrivilege";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[0] = v0;
  v6[1] = @"mediaPeerToPeerEnabled";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[1] = v1;
  v6[2] = @"mediaPassword";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v4 = properties__properties_335;
  properties__properties_335 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeMediaSettingsModel alloc];
  v6 = [a1 modelIDForHomeUUID:v4];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  [(HMDHomeMediaSettingsModel *)v7 setMinimumMediaUserPrivilege:&unk_283E72C08];
  [(HMDHomeMediaSettingsModel *)v7 setMediaPeerToPeerEnabled:MEMORY[0x277CBEC28]];
  [(HMDHomeMediaSettingsModel *)v7 setMediaPassword:0];

  return v7;
}

+ (id)modelIDForHomeUUID:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [v3 dataWithLength:16];
  [v4 getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = +[HMDHomeMediaSettingsModel modelNamespace];
  v8 = [v6 initWithNamespace:v7 data:v5];

  return v8;
}

+ (id)modelNamespace
{
  if (modelNamespace_onceToken_329 != -1)
  {
    dispatch_once(&modelNamespace_onceToken_329, &__block_literal_global_331);
  }

  v3 = modelNamespace_namespace_328;

  return v3;
}

void __43__HMDHomeMediaSettingsModel_modelNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CF85C76F-270E-41CF-8984-258A00E81134"];
  v1 = modelNamespace_namespace_328;
  modelNamespace_namespace_328 = v0;
}

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"home"])
  {
    v11 = objc_opt_class();
    v12 = [(HMDBackingStoreModelObject *)self parentUUID];
    v13 = [v11 cd_getHomeFromUUID:v12];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDHomeMediaSettingsModel;
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v13;
}

@end