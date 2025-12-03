@interface HMDHomePersonManagerSettingsModel
+ (id)defaultModelForHomeUUID:(id)d;
+ (id)modelIDForHomeUUID:(id)d;
+ (id)properties;
- (HMDHomePersonManagerSettingsModel)initWithHomeUUID:(id)d;
- (NSUUID)zoneUUID;
- (id)createSettings;
- (void)setZoneUUID:(id)d;
@end

@implementation HMDHomePersonManagerSettingsModel

- (id)createSettings
{
  v3 = objc_alloc_init(MEMORY[0x277CD1C68]);
  zoneUUID = [(HMDHomePersonManagerSettingsModel *)self zoneUUID];
  [v3 setFaceClassificationEnabled:zoneUUID != 0];

  v5 = [v3 copy];

  return v5;
}

- (void)setZoneUUID:(id)d
{
  uUIDString = [d UUIDString];
  [(HMDHomePersonManagerSettingsModel *)self setZoneUUIDString:uUIDString];
}

- (NSUUID)zoneUUID
{
  zoneUUIDString = [(HMDHomePersonManagerSettingsModel *)self zoneUUIDString];
  if (zoneUUIDString)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    zoneUUIDString2 = [(HMDHomePersonManagerSettingsModel *)self zoneUUIDString];
    v6 = [v4 initWithUUIDString:zoneUUIDString2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMDHomePersonManagerSettingsModel)initWithHomeUUID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() modelIDForHomeUUID:dCopy];
  v6 = [(HMDBackingStoreModelObject *)self initWithObjectChangeType:1 uuid:v5 parentUUID:dCopy];

  return v6;
}

+ (id)defaultModelForHomeUUID:(id)d
{
  dCopy = d;
  v4 = [[HMDHomePersonManagerSettingsModel alloc] initWithHomeUUID:dCopy];

  return v4;
}

+ (id)modelIDForHomeUUID:(id)d
{
  v3 = MEMORY[0x277CCAD78];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"A9E193D0-2AD8-4F4F-86C1-9BADE1CF3845"];
  v6 = MEMORY[0x277CCAD78];
  hm_convertToData = [dCopy hm_convertToData];

  v8 = [v6 hmf_UUIDWithNamespace:v5 data:hm_convertToData];

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