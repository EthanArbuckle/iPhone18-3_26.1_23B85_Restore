@interface HMDPhotosPersonManagerSettingsModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPhotosPersonManagerSettingsModel)initWithModelID:(id)d settings:(id)settings;
- (id)createSettings;
@end

@implementation HMDPhotosPersonManagerSettingsModel

- (id)createSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CD1C80]);
  zoneUUID = [(HMDPhotosPersonManagerSettingsModel *)self zoneUUID];
  [v3 setImportingFromPhotoLibraryEnabled:zoneUUID != 0];

  sharingFaceClassificationsEnabled = [(HMDPhotosPersonManagerSettingsModel *)self sharingFaceClassificationsEnabled];
  [v3 setSharingFaceClassificationsEnabled:{objc_msgSend(sharingFaceClassificationsEnabled, "BOOLValue")}];

  v6 = [v3 copy];

  return v6;
}

- (HMDPhotosPersonManagerSettingsModel)initWithModelID:(id)d settings:(id)settings
{
  settingsCopy = settings;
  dCopy = d;
  v8 = [HMDPhotosPersonManagerSettingsModel alloc];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v10 = [(HMBModel *)v8 initWithModelID:dCopy parentModelID:sentinelParentUUID];

  v11 = MEMORY[0x277CCABB0];
  isSharingFaceClassificationsEnabled = [settingsCopy isSharingFaceClassificationsEnabled];

  v13 = [v11 numberWithBool:isSharingFaceClassificationsEnabled];
  [(HMDPhotosPersonManagerSettingsModel *)v10 setSharingFaceClassificationsEnabled:v13];

  return v10;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_110272 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_110272, &__block_literal_global_9_110273);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_110274;

  return v3;
}

uint64_t __57__HMDPhotosPersonManagerSettingsModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BCF7ED70-4FE2-4186-8B8C-F4832AC1A54B"];
  v1 = sentinelParentUUID_sentinelParentUUID_110274;
  sentinelParentUUID_sentinelParentUUID_110274 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_110280 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_110280, &__block_literal_global_110281);
  }

  v3 = hmbProperties_properties_110282;

  return v3;
}

void __52__HMDPhotosPersonManagerSettingsModel_hmbProperties__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"sharingFaceClassificationsEnabled";
  v0 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v5[1] = @"zoneUUID";
  v6[0] = v0;
  v1 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = hmbProperties_properties_110282;
  hmbProperties_properties_110282 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end