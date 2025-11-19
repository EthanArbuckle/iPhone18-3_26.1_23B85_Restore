@interface HMDHomeMediaSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)modelNamespace;
+ (id)properties;
@end

@implementation HMDHomeMediaSettingsModel

+ (id)properties
{
  if (properties_onceToken_266 != -1)
  {
    dispatch_once(&properties_onceToken_266, &__block_literal_global_269);
  }

  v3 = properties__properties_267;

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
  v4 = properties__properties_267;
  properties__properties_267 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [HMDHomeMediaSettingsModel alloc];
  v6 = [a1 modelIDForHomeUUID:v4];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  [(HMDHomeMediaSettingsModel *)v7 setMinimumMediaUserPrivilege:&unk_286628510];
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
  if (modelNamespace_onceToken_261 != -1)
  {
    dispatch_once(&modelNamespace_onceToken_261, &__block_literal_global_263);
  }

  v3 = modelNamespace_namespace_260;

  return v3;
}

uint64_t __43__HMDHomeMediaSettingsModel_modelNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"CF85C76F-270E-41CF-8984-258A00E81134"];
  v1 = modelNamespace_namespace_260;
  modelNamespace_namespace_260 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end