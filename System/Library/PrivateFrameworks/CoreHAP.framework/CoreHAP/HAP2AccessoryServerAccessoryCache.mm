@interface HAP2AccessoryServerAccessoryCache
+ (id)accessoryCacheForAccessories:(id)accessories;
+ (id)peripheralInfoFromMetadata:(id)metadata;
- (HAP2AccessoryServerAccessoryCache)initWithBLEPeripheralInfo:(id)info cachedAccessories:(id)accessories sleepInterval:(id)interval metadataVersion:(id)version;
- (HAP2AccessoryServerAccessoryCache)initWithCoder:(id)coder;
- (HAP2AccessoryServerAccessoryCache)initWithMetadata:(id)metadata discoveredAccessories:(id)accessories sleepInterval:(id)interval;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithMetadata:(id)metadata discoveredAccessories:(id)accessories;
@end

@implementation HAP2AccessoryServerAccessoryCache

- (HAP2AccessoryServerAccessoryCache)initWithCoder:(id)coder
{
  v18[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP2.pe"];
  v6 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v18[2] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v8 = [v6 setWithArray:v7];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HAP2.ac"];
  v10 = v9;
  if (v5 && v9)
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP2.si"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HAP2.mv"];
    self = [(HAP2AccessoryServerAccessoryCache *)self initWithBLEPeripheralInfo:v5 cachedAccessories:v10 sleepInterval:v11 metadataVersion:v12];

    selfCopy = self;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "AccessoryCache: Unable to decode objects", v17, 2u);
    }

    selfCopy = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  peripheralInfo = [(HAP2AccessoryServerAccessoryCache *)self peripheralInfo];
  [coderCopy encodeObject:peripheralInfo forKey:@"HAP2.pe"];

  accessoryCache = [(HAP2AccessoryServerAccessoryCache *)self accessoryCache];
  [coderCopy encodeObject:accessoryCache forKey:@"HAP2.ac"];

  sleepInterval = [(HAP2AccessoryServerAccessoryCache *)self sleepInterval];
  [coderCopy encodeObject:sleepInterval forKey:@"HAP2.si"];

  metadataVersion = [(HAP2AccessoryServerAccessoryCache *)self metadataVersion];
  [coderCopy encodeObject:metadataVersion forKey:@"HAP2.mv"];
}

- (void)updateWithMetadata:(id)metadata discoveredAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  metadataCopy = metadata;
  v8 = [objc_opt_class() accessoryCacheForAccessories:accessoriesCopy];

  [(HAP2AccessoryServerAccessoryCache *)self setAccessoryCache:v8];
  v9 = [objc_opt_class() peripheralInfoFromMetadata:metadataCopy];

  [(HAP2AccessoryServerAccessoryCache *)self setPeripheralInfo:v9];
}

- (HAP2AccessoryServerAccessoryCache)initWithMetadata:(id)metadata discoveredAccessories:(id)accessories sleepInterval:(id)interval
{
  intervalCopy = interval;
  accessoriesCopy = accessories;
  metadataCopy = metadata;
  v11 = [objc_opt_class() peripheralInfoFromMetadata:metadataCopy];

  v12 = [objc_opt_class() accessoryCacheForAccessories:accessoriesCopy];

  v13 = HAPGetHAPMetadataVersion();
  v14 = [(HAP2AccessoryServerAccessoryCache *)self initWithBLEPeripheralInfo:v11 cachedAccessories:v12 sleepInterval:intervalCopy metadataVersion:v13];

  return v14;
}

- (HAP2AccessoryServerAccessoryCache)initWithBLEPeripheralInfo:(id)info cachedAccessories:(id)accessories sleepInterval:(id)interval metadataVersion:(id)version
{
  infoCopy = info;
  accessoriesCopy = accessories;
  intervalCopy = interval;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = HAP2AccessoryServerAccessoryCache;
  v15 = [(HAP2AccessoryServerAccessoryCache *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_peripheralInfo, info);
    objc_storeStrong(&v16->_accessoryCache, accessories);
    objc_storeStrong(&v16->_sleepInterval, interval);
    objc_storeStrong(&v16->_metadataVersion, version);
  }

  return v16;
}

+ (id)accessoryCacheForAccessories:(id)accessories
{
  v3 = MEMORY[0x277CBEB38];
  accessoriesCopy = accessories;
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(accessoriesCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke;
  v9[3] = &unk_2786D6150;
  v10 = v5;
  v6 = v5;
  [accessoriesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HAPBLEAccessoryCache alloc];
  v5 = [v3 identifier];
  v6 = [(HAPBLEAccessoryCache *)v4 initWithPairingIdentifier:v5];

  v7 = [v3 services];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke_2;
  v12[3] = &unk_2786D5B58;
  v13 = v6;
  v8 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v3 instanceID];

  v11 = [v9 numberWithUnsignedInteger:v10];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v11];
}

void __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCAD78];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [v6 type];
  v9 = [v7 initWithUUIDString:v8];

  v10 = [HAPBLEServiceCache alloc];
  v11 = [v6 instanceID];
  v12 = [v6 serviceProperties];
  v13 = [v6 linkedServices];
  v14 = [(HAPBLEServiceCache *)v10 initWithServiceUUID:v9 instanceId:v11 instanceOrder:a3 serviceProperties:v12 linkedServices:v13];

  v15 = [v6 characteristics];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke_3;
  v17[3] = &unk_2786D60B0;
  v18 = v14;
  v16 = v14;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  [*(a1 + 32) updateWithService:v16];
}

void __66__HAP2AccessoryServerAccessoryCache_accessoryCacheForAccessories___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 type];
  v12 = [v5 initWithUUIDString:v6];

  v7 = [HAPBLECharacteristicCache alloc];
  v8 = [v4 instanceID];
  v9 = [v4 properties];
  v10 = [v4 accessoryMetadata];

  v11 = [(HAPBLECharacteristicCache *)v7 initWithCharacteristicUUID:v12 instanceId:v8 characteristicProperties:v9 characteristicMetadata:v10];
  [*(a1 + 32) updateWithCharacteristic:v11];
}

+ (id)peripheralInfoFromMetadata:(id)metadata
{
  metadataCopy = metadata;
  protocolVersion = [metadataCopy protocolVersion];
  majorVersion = [protocolVersion majorVersion];
  protocolVersion2 = [metadataCopy protocolVersion];
  v7 = [protocolVersion2 minorVersion] + 10 * majorVersion;

  v8 = [metadataCopy hasPairings] ^ 1;
  v9 = [HAPBLEPeripheralInfo alloc];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(metadataCopy, "stateNumber")}];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(metadataCopy, "configNumber")}];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(metadataCopy, "category")}];
  name = [metadataCopy name];

  v15 = [(HAPBLEPeripheralInfo *)v9 initWithPeripheralInfo:0 advertisedProtocolVersion:v7 previousProtocolVersion:0 resumeSessionId:0 lastSeen:v10 statusFlags:v11 stateNumber:0.0 configNumber:v12 categoryIdentifier:v13 accessoryName:name];

  return v15;
}

@end