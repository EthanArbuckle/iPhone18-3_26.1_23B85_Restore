@interface HMDHomeSettingsModel
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)modelNamespace;
+ (id)properties;
- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context;
@end

@implementation HMDHomeSettingsModel

- (id)cd_generateValueForProperty:(id)property managedObjectField:(id)field context:(id)context
{
  propertyCopy = property;
  fieldCopy = field;
  contextCopy = context;
  if ([fieldCopy isEqualToString:@"home"])
  {
    v11 = objc_opt_class();
    parentUUID = [(HMDBackingStoreModelObject *)self parentUUID];
    v13 = [v11 cd_getHomeFromUUID:parentUUID];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = HMDHomeSettingsModel;
    v13 = [(HMDBackingStoreModelObject *)&v15 cd_generateValueForProperty:propertyCopy managedObjectField:fieldCopy context:contextCopy];
  }

  return v13;
}

+ (id)properties
{
  if (properties_onceToken_312 != -1)
  {
    dispatch_once(&properties_onceToken_312, &__block_literal_global_315_124211);
  }

  v3 = properties__properties_313;

  return v3;
}

void __34__HMDHomeSettingsModel_properties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"automaticSoftwareUpdateEnabled";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[1] = @"automaticThirdPartyAccessorySoftwareUpdateEnabled";
  v6[0] = v0;
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = properties__properties_313;
  properties__properties_313 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v5 = [HMDHomeSettingsModel alloc];
  v6 = [self modelIDForHomeUUID:dCopy];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:dCopy];

  [(HMDHomeSettingsModel *)v7 setAutomaticSoftwareUpdateEnabled:MEMORY[0x277CBEC38]];
  [(HMDHomeSettingsModel *)v7 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:MEMORY[0x277CBEC28]];

  return v7;
}

+ (id)modelIDForHomeUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [v3 dataWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v7 = +[HMDHomeSettingsModel modelNamespace];
  v8 = [v6 initWithNamespace:v7 data:v5];

  return v8;
}

+ (id)modelNamespace
{
  if (modelNamespace_onceToken != -1)
  {
    dispatch_once(&modelNamespace_onceToken, &__block_literal_global_308);
  }

  v3 = modelNamespace_namespace;

  return v3;
}

void __38__HMDHomeSettingsModel_modelNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"56E19F0B-2058-4E17-998F-75A96A576767"];
  v1 = modelNamespace_namespace;
  modelNamespace_namespace = v0;
}

@end