@interface HMDHomePersonManagerSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)properties;
- (HMDHomePersonManagerSettingsModel)initWithHomeUUID:(id)a3;
- (NSUUID)zoneUUID;
- (id)createSettings;
- (void)setZoneUUID:(id)a3;
@end

@implementation HMDHomePersonManagerSettingsModel

- (id)createSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CD1C68]);
  v4 = [(HMDHomePersonManagerSettingsModel *)self zoneUUID];
  [v3 setFaceClassificationEnabled:v4 != 0];

  v5 = [v3 copy];

  return v5;
}

- (void)setZoneUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(HMDHomePersonManagerSettingsModel *)self setZoneUUIDString:v4];
}

- (NSUUID)zoneUUID
{
  v3 = [(HMDHomePersonManagerSettingsModel *)self zoneUUIDString];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [(HMDHomePersonManagerSettingsModel *)self zoneUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMDHomePersonManagerSettingsModel)initWithHomeUUID:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() modelIDForHomeUUID:v4];
  v6 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v5 parentUUID:v4];

  return v6;
}

+ (id)defaultModelForHomeUUID:(id)a3
{
  v3 = a3;
  v4 = [[HMDHomePersonManagerSettingsModel alloc] initWithHomeUUID:v3];

  return v4;
}

+ (id)modelIDForHomeUUID:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"A9E193D0-2AD8-4F4F-86C1-9BADE1CF3845"];
  v6 = MEMORY[0x277CCAD78];
  v7 = [v4 hm_convertToData];

  v8 = [v6 hmf_UUIDWithNamespace:v5 data:v7];

  return v8;
}

+ (id)properties
{
  if (properties_onceToken_159543 != -1)
  {
    dispatch_once(&properties_onceToken_159543, &__block_literal_global_159544);
  }

  v3 = properties__properties_159545;

  return v3;
}

void __47__HMDHomePersonManagerSettingsModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"zoneUUIDString";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_159545;
  properties__properties_159545 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end