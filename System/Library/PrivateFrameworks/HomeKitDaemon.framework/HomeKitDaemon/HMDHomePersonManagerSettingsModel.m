@interface HMDHomePersonManagerSettingsModel
+ (id)defaultModelForHomeUUID:(id)a3;
+ (id)modelIDForHomeUUID:(id)a3;
+ (id)properties;
- (HMDHomePersonManagerSettingsModel)initWithHomeUUID:(id)a3;
- (NSUUID)zoneUUID;
- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5;
- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5;
- (id)createSettings;
- (void)setZoneUUID:(id)a3;
@end

@implementation HMDHomePersonManagerSettingsModel

- (id)cd_generateValueForProperty:(id)a3 managedObjectField:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"zoneUUID"])
  {
    if ([(HMDBackingStoreModelObject *)self propertyWasSet:@"zoneUUIDString"])
    {
      v11 = [(HMDHomePersonManagerSettingsModel *)self zoneUUID];
      v12 = v11;
      v13 = *MEMORY[0x277CBEEE8];
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else if ([v9 isEqualToString:@"home"])
  {
    v15 = objc_opt_class();
    v16 = [(HMDBackingStoreModelObject *)self parentUUID];
    v14 = [v15 cd_getHomeFromUUID:v16];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HMDHomePersonManagerSettingsModel;
    v14 = [(HMDBackingStoreModelObject *)&v18 cd_generateValueForProperty:v8 managedObjectField:v9 context:v10];
  }

  return v14;
}

- (id)cd_generateValueForModelObjectFromManagedObject:(id)a3 modelObjectField:(id)a4 modelFieldInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v8 isEqualToString:@"zoneUUIDString"])
  {
    v11 = [v10 zoneUUID];

    v12 = [v11 UUIDString];
    v13 = v12;
    v14 = *MEMORY[0x277CBEEE8];
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDHomePersonManagerSettingsModel;
    v15 = [(HMDBackingStoreModelObject *)&v17 cd_generateValueForModelObjectFromManagedObject:v10 modelObjectField:v8 modelFieldInfo:v9];
  }

  return v15;
}

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
  if (properties_onceToken_236403 != -1)
  {
    dispatch_once(&properties_onceToken_236403, &__block_literal_global_236404);
  }

  v3 = properties__properties_236405;

  return v3;
}

void __47__HMDHomePersonManagerSettingsModel_properties__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"zoneUUIDString";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v5[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = properties__properties_236405;
  properties__properties_236405 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end