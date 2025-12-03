@interface HMDHAPMetadataModel
+ (id)allowedTypes;
+ (id)metadataModelObjectUUID;
+ (id)modelWithDictionary:(id)dictionary;
+ (id)properties;
- (id)metadataDictionary;
@end

@implementation HMDHAPMetadataModel

- (id)metadataDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CFEDF0];
  metadataVersion = [(HMDHAPMetadataModel *)self metadataVersion];
  v12[0] = metadataVersion;
  v11[1] = *MEMORY[0x277CFEDC0];
  schemaVersion = [(HMDHAPMetadataModel *)self schemaVersion];
  v12[1] = schemaVersion;
  v11[2] = *MEMORY[0x277CFEDA0];
  rawPlist = [(HMDHAPMetadataModel *)self rawPlist];
  v12[2] = rawPlist;
  v11[3] = *MEMORY[0x277CFED80];
  legacyIDSData = [(HMDHAPMetadataModel *)self legacyIDSData];
  v12[3] = legacyIDSData;
  v11[4] = *MEMORY[0x277CFED78];
  legacyCloudData = [(HMDHAPMetadataModel *)self legacyCloudData];
  v12[4] = legacyCloudData;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)allowedTypes
{
  if (allowedTypes_onceToken != -1)
  {
    dispatch_once(&allowedTypes_onceToken, &__block_literal_global_540);
  }

  v3 = allowedTypes__allowedTypes;

  return v3;
}

void __35__HMDHAPMetadataModel_allowedTypes__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:5];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8}];
  v3 = allowedTypes__allowedTypes;
  allowedTypes__allowedTypes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)modelWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = *MEMORY[0x277CFEDF0];
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFEDF0]];
  if (v5)
  {
    v6 = *MEMORY[0x277CFEDC0];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFEDC0]];

    if (v7)
    {
      v8 = [HMDHAPMetadataModel alloc];
      v9 = +[HMDHAPMetadataModel metadataModelObjectUUID];
      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = [v10 initWithUUIDString:*MEMORY[0x277CD23C8]];
      v5 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:1 uuid:v9 parentUUID:v11];

      v12 = [dictionaryCopy objectForKeyedSubscript:v4];
      [(HMDHAPMetadataModel *)v5 setMetadataVersion:v12];

      v13 = [dictionaryCopy objectForKeyedSubscript:v6];
      [(HMDHAPMetadataModel *)v5 setSchemaVersion:v13];

      v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFEDA0]];
      [(HMDHAPMetadataModel *)v5 setRawPlist:v14];

      v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFED80]];
      [(HMDHAPMetadataModel *)v5 setLegacyIDSData:v15];

      v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFED78]];
      [(HMDHAPMetadataModel *)v5 setLegacyCloudData:v16];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)metadataModelObjectUUID
{
  if (metadataModelObjectUUID_onceToken != -1)
  {
    dispatch_once(&metadataModelObjectUUID_onceToken, &__block_literal_global_530);
  }

  v3 = metadataModelObjectUUID_metadataModelObjectUUID;

  return v3;
}

void __46__HMDHAPMetadataModel_metadataModelObjectUUID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [v0 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v1 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v3 withSalts:&unk_283E75608];
  v2 = metadataModelObjectUUID_metadataModelObjectUUID;
  metadataModelObjectUUID_metadataModelObjectUUID = v1;
}

+ (id)properties
{
  if (properties_onceToken_26483 != -1)
  {
    dispatch_once(&properties_onceToken_26483, &__block_literal_global_511);
  }

  v3 = properties__properties_26484;

  return v3;
}

void __33__HMDHAPMetadataModel_properties__block_invoke()
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = @"metadataVersion";
  v0 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[0] = v0;
  v8[1] = @"schemaVersion";
  v1 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[1] = v1;
  v8[2] = @"rawPlist";
  v2 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[2] = v2;
  v8[3] = @"legacyIDSData";
  v3 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[3] = v3;
  v8[4] = @"legacyCloudData";
  v4 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v9[4] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = properties__properties_26484;
  properties__properties_26484 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end