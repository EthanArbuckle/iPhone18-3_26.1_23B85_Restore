@interface HMDAnnounceUserSettingsModel
+ (id)modelIDNamespace;
+ (id)properties;
- (HMDAnnounceUserSettingsModel)initWithUserUUID:(id)d;
- (id)modelIDForUser:(id)user;
@end

@implementation HMDAnnounceUserSettingsModel

- (HMDAnnounceUserSettingsModel)initWithUserUUID:(id)d
{
  dCopy = d;
  v5 = [HMDAnnounceUserSettingsModel alloc];
  v6 = [(HMDAnnounceUserSettingsModel *)self modelIDForUser:dCopy];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithUUID:v6 parentUUID:dCopy];

  return v7;
}

- (id)modelIDForUser:(id)user
{
  v3 = MEMORY[0x277CCAD78];
  userCopy = user;
  v5 = [v3 alloc];
  v6 = +[HMDAnnounceUserSettingsModel modelIDNamespace];
  uUIDString = [userCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v5 initWithNamespace:v6 data:v8];

  return v9;
}

+ (id)properties
{
  if (properties_onceToken_30996 != -1)
  {
    dispatch_once(&properties_onceToken_30996, &__block_literal_global_3);
  }

  v3 = properties__properties_30997;

  return v3;
}

void __42__HMDAnnounceUserSettingsModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"announceNotificationModeForCurrentDevice";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_30997;
  properties__properties_30997 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)modelIDNamespace
{
  if (modelIDNamespace_onceToken != -1)
  {
    dispatch_once(&modelIDNamespace_onceToken, &__block_literal_global_31004);
  }

  v3 = modelIDNamespace_modelIDNamespace;

  return v3;
}

void __48__HMDAnnounceUserSettingsModel_modelIDNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"cf5e2c56-ea81-4471-88d4-0a0a0063000c"];
  v1 = modelIDNamespace_modelIDNamespace;
  modelIDNamespace_modelIDNamespace = v0;
}

@end