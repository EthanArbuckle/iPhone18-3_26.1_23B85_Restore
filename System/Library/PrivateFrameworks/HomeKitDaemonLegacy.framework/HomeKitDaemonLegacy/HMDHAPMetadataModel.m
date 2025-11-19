@interface HMDHAPMetadataModel
+ (id)allowedTypes;
+ (id)metadataModelObjectUUID;
+ (id)modelWithDictionary:(id)a3;
+ (id)properties;
- (id)metadataDictionary;
@end

@implementation HMDHAPMetadataModel

- (id)metadataDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277CFEDF0];
  v3 = [(HMDHAPMetadataModel *)self metadataVersion];
  v12[0] = v3;
  v11[1] = *MEMORY[0x277CFEDC0];
  v4 = [(HMDHAPMetadataModel *)self schemaVersion];
  v12[1] = v4;
  v11[2] = *MEMORY[0x277CFEDA0];
  v5 = [(HMDHAPMetadataModel *)self rawPlist];
  v12[2] = v5;
  v11[3] = *MEMORY[0x277CFED80];
  v6 = [(HMDHAPMetadataModel *)self legacyIDSData];
  v12[3] = v6;
  v11[4] = *MEMORY[0x277CFED78];
  v7 = [(HMDHAPMetadataModel *)self legacyCloudData];
  v12[4] = v7;
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

+ (id)modelWithDictionary:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CFEDF0];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFEDF0]];
  if (v5)
  {
    v6 = *MEMORY[0x277CFEDC0];
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFEDC0]];

    if (v7)
    {
      v8 = [HMDHAPMetadataModel alloc];
      v9 = +[HMDHAPMetadataModel metadataModelObjectUUID];
      v10 = objc_alloc(MEMORY[0x277CCAD78]);
      v11 = [v10 initWithUUIDString:*MEMORY[0x277CD23C8]];
      v5 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:1 uuid:v9 parentUUID:v11];

      v12 = [v3 objectForKeyedSubscript:v4];
      [(HMDHAPMetadataModel *)v5 setMetadataVersion:v12];

      v13 = [v3 objectForKeyedSubscript:v6];
      [(HMDHAPMetadataModel *)v5 setSchemaVersion:v13];

      v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFEDA0]];
      [(HMDHAPMetadataModel *)v5 setRawPlist:v14];

      v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFED80]];
      [(HMDHAPMetadataModel *)v5 setLegacyIDSData:v15];

      v16 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFED78]];
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
  v1 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v3 withSalts:&unk_286626CE0];
  v2 = metadataModelObjectUUID_metadataModelObjectUUID;
  metadataModelObjectUUID_metadataModelObjectUUID = v1;
}

+ (id)properties
{
  if (properties_onceToken_19161 != -1)
  {
    dispatch_once(&properties_onceToken_19161, &__block_literal_global_511);
  }

  v3 = properties__properties_19162;

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
  v6 = properties__properties_19162;
  properties__properties_19162 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end