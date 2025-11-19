@interface HMDPhotosPersonManagerSettingsModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPhotosPersonManagerSettingsModel)initWithModelID:(id)a3 settings:(id)a4;
- (id)createSettings;
@end

@implementation HMDPhotosPersonManagerSettingsModel

- (id)createSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CD1C80]);
  v4 = [(HMDPhotosPersonManagerSettingsModel *)self zoneUUID];
  [v3 setImportingFromPhotoLibraryEnabled:v4 != 0];

  v5 = [(HMDPhotosPersonManagerSettingsModel *)self sharingFaceClassificationsEnabled];
  [v3 setSharingFaceClassificationsEnabled:{objc_msgSend(v5, "BOOLValue")}];

  v6 = [v3 copy];

  return v6;
}

- (HMDPhotosPersonManagerSettingsModel)initWithModelID:(id)a3 settings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDPhotosPersonManagerSettingsModel alloc];
  v9 = [objc_opt_class() sentinelParentUUID];
  v10 = [(HMBModel *)v8 initWithModelID:v7 parentModelID:v9];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v6 isSharingFaceClassificationsEnabled];

  v13 = [v11 numberWithBool:v12];
  [(HMDPhotosPersonManagerSettingsModel *)v10 setSharingFaceClassificationsEnabled:v13];

  return v10;
}

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_166534 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_166534, &__block_literal_global_9_166535);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_166536;

  return v3;
}

void __57__HMDPhotosPersonManagerSettingsModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BCF7ED70-4FE2-4186-8B8C-F4832AC1A54B"];
  v1 = sentinelParentUUID_sentinelParentUUID_166536;
  sentinelParentUUID_sentinelParentUUID_166536 = v0;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_166542 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_166542, &__block_literal_global_166543);
  }

  v3 = hmbProperties_properties_166544;

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
  v3 = hmbProperties_properties_166544;
  hmbProperties_properties_166544 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end