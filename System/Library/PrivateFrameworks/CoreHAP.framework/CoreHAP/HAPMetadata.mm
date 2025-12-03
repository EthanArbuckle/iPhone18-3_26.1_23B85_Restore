@interface HAPMetadata
+ (id)currentMetadataHook;
+ (id)getSharedInstance;
+ (id)shortenHAPType:(id)type baseUUIDSuffix:(id)suffix;
+ (void)setCurrentMetadataHook:(id)hook;
- (BOOL)allowAssociatedService:(id)service;
- (BOOL)isMandatoryCharacteristic:(id)characteristic forService:(id)service;
- (BOOL)isStandardHAPCharacteristic:(id)characteristic;
- (BOOL)isStandardHAPCharacteristicName:(id)name;
- (BOOL)isStandardHAPService:(id)service;
- (BOOL)isStandardHAPServiceName:(id)name;
- (BOOL)isStandardHAPUnitName:(id)name;
- (BOOL)parseMetadata:(id)metadata;
- (BOOL)parseVersion:(id)version;
- (BOOL)supportsAdditionalAuthorizationData:(id)data forService:(id)service;
- (BOOL)validateMandatoryCharacteristics:(id)characteristics forService:(id)service;
- (HAPMetadata)init;
- (HAPMetadata)initWithDictionary:(id)dictionary error:(id *)error;
- (NSArray)hapCharacteristics;
- (NSArray)hapProperties;
- (NSArray)hapServices;
- (NSArray)hapSupportsAuthDataTuples;
- (NSArray)hapValueUnits;
- (NSDictionary)rawPlist;
- (id)btleToServiceType:(id)type;
- (id)characteristicTypeFromUTI:(id)i;
- (id)characteristicTypesChangingTargetState;
- (id)characteristicUTIFromType:(id)type;
- (id)characteristicValueUnitOfType:(id)type;
- (id)descriptionFromCharacteristicType:(id)type;
- (id)descriptionFromServiceType:(id)type;
- (id)generateDictionary;
- (id)generateHAPMetadataTuplesDictionary:(id)dictionary;
- (id)getDefaultCharacteristicMetadata:(id)metadata;
- (id)getDefaultCharacteristicProperties:(id)properties;
- (id)getDefaultServiceProperties:(id)properties;
- (id)hapCharacteristicFromName:(id)name;
- (id)hapCharacteristicFromType:(id)type;
- (id)hapServiceFromName:(id)name;
- (id)hapServiceFromType:(id)type;
- (id)hapUnitFromName:(id)name;
- (id)indexDictionary:(id)dictionary keyPath:(id)path;
- (id)parseCharacteristicMetadata:(id)metadata withName:(id)name;
- (id)parseCharacteristicServiceTupleMetadata:(id)metadata withCharacteristicName:(id)name;
- (id)parseCharacteristicServiceTuples:(id)tuples;
- (id)parseCharacteristicValue:(id)value;
- (id)parseCharacteristics:(id)characteristics;
- (id)parsePropertyMetadata:(id)metadata withType:(id)type;
- (id)parseServiceCharacteristics:(id)characteristics;
- (id)parseServiceMetadata:(id)metadata withName:(id)name;
- (id)parseUnitMetadata:(id)metadata withName:(id)name;
- (id)serviceTypeFromUTI:(id)i;
- (id)serviceTypeToBTLE:(id)e;
- (id)serviceUTIFromType:(id)type;
@end

@implementation HAPMetadata

- (id)generateHAPMetadataTuplesDictionary:(id)dictionary
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = dictionaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        characteristicType = [v11 characteristicType];
        v13 = [(HAPMetadata *)self characteristicUTIFromType:characteristicType];

        serviceType = [v11 serviceType];
        v15 = [(HAPMetadata *)self serviceUTIFromType:serviceType];

        array = [v5 objectForKeyedSubscript:v13];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v5 setObject:array forKeyedSubscript:v13];
        }

        [array addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)generateDictionary
{
  v94 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];

  if (hapBaseUUIDSuffix)
  {
    hapBaseUUIDSuffix2 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    [dictionary setObject:hapBaseUUIDSuffix2 forKeyedSubscript:@"Base UUID"];
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  hapValueUnits = [(HAPMetadata *)self hapValueUnits];
  v8 = [hapValueUnits countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v83;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v83 != v10)
        {
          objc_enumerationMutation(hapValueUnits);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        generateDictionary = [v12 generateDictionary];
        name = [v12 name];
        [dictionary2 setObject:generateDictionary forKeyedSubscript:name];
      }

      v9 = [hapValueUnits countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v9);
  }

  if ([dictionary2 count])
  {
    [dictionary setObject:dictionary2 forKeyedSubscript:@"Units"];
  }

  v66 = dictionary;
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  hapProperties = [(HAPMetadata *)self hapProperties];
  v17 = [hapProperties countByEnumeratingWithState:&v78 objects:v92 count:16];
  v65 = dictionary2;
  v67 = dictionary3;
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(hapProperties);
        }

        v21 = *(*(&v78 + 1) + 8 * j);
        generateDictionary2 = [v21 generateDictionary];
        if (generateDictionary2)
        {
          propertyType = [v21 propertyType];
          [dictionary3 setObject:generateDictionary2 forKeyedSubscript:propertyType];
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            propertyType2 = [v21 propertyType];
            *buf = 138543618;
            v89 = v26;
            v90 = 2112;
            v91 = propertyType2;
            _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP property %@", buf, 0x16u);

            dictionary3 = v67;
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v18 = [hapProperties countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v18);
  }

  if ([dictionary3 count])
  {
    [v66 setObject:dictionary3 forKeyedSubscript:@"Properties"];
  }

  hapSupportsAuthDataTuples = [(HAPMetadata *)self hapSupportsAuthDataTuples];
  v29 = [(HAPMetadata *)self generateHAPMetadataTuplesDictionary:hapSupportsAuthDataTuples];

  if ([v29 count])
  {
    [v66 setObject:v29 forKeyedSubscript:@"SupportsAuthorizationData"];
  }

  v64 = v29;
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  hapCharacteristics = [(HAPMetadata *)self hapCharacteristics];
  v32 = [hapCharacteristics countByEnumeratingWithState:&v74 objects:v87 count:16];
  v69 = dictionary4;
  if (v32)
  {
    v33 = v32;
    v34 = *v75;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v75 != v34)
        {
          objc_enumerationMutation(hapCharacteristics);
        }

        v36 = *(*(&v74 + 1) + 8 * k);
        hapBaseUUIDSuffix3 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v38 = [v36 generateDictionary:hapBaseUUIDSuffix3];

        if (v38)
        {
          name2 = [v36 name];
          [dictionary4 setObject:v38 forKeyedSubscript:name2];
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = HMFGetLogIdentifier();
            name3 = [v36 name];
            *buf = 138543618;
            v89 = v42;
            v90 = 2112;
            v91 = name3;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
          dictionary4 = v69;
        }
      }

      v33 = [hapCharacteristics countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v33);
  }

  if ([dictionary4 count])
  {
    [v66 setObject:dictionary4 forKeyedSubscript:@"Characteristics"];
  }

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  hapServices = [(HAPMetadata *)self hapServices];
  v46 = [hapServices countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v71;
    do
    {
      v49 = 0;
      v68 = v47;
      do
      {
        if (*v71 != v48)
        {
          objc_enumerationMutation(hapServices);
        }

        v50 = *(*(&v70 + 1) + 8 * v49);
        hapBaseUUIDSuffix4 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v52 = [v50 generateDictionary:hapBaseUUIDSuffix4 metadata:self];

        if (v52)
        {
          name4 = [v50 name];
          [dictionary5 setObject:v52 forKeyedSubscript:name4];
        }

        else
        {
          v54 = objc_autoreleasePoolPush();
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v56 = v48;
            selfCopy = self;
            v58 = dictionary5;
            v60 = v59 = hapServices;
            name5 = [v50 name];
            *buf = 138543618;
            v89 = v60;
            v90 = 2112;
            v91 = name5;
            _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP service %@", buf, 0x16u);

            hapServices = v59;
            dictionary5 = v58;
            self = selfCopy;
            v48 = v56;
            v47 = v68;
          }

          objc_autoreleasePoolPop(v54);
        }

        ++v49;
      }

      while (v47 != v49);
      v47 = [hapServices countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v47);
  }

  if ([dictionary5 count])
  {
    [v66 setObject:dictionary5 forKeyedSubscript:@"Services"];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v66;
}

- (NSDictionary)rawPlist
{
  v12 = *MEMORY[0x277D85DE8];
  generateDictionary = [(HAPMetadata *)self generateDictionary];
  v3 = generateDictionary;
  if (generateDictionary)
  {
    v4 = generateDictionary;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate plist.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)hapSupportsAuthDataTuples
{
  v3 = objc_opt_new();
  hapSupportsAuthDataSetOffset = [(HAPMetadata *)self hapSupportsAuthDataSetOffset];
  metadata = [(HAPMetadata *)self metadata];
  v5 = [metadata hmf_readObjectAtOffset:&hapSupportsAuthDataSetOffset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__HAPMetadata_hapSupportsAuthDataTuples__block_invoke;
  v11[3] = &unk_2786D55C0;
  v12 = v3;
  selfCopy = self;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __40__HAPMetadata_hapSupportsAuthDataTuples__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) parseCharacteristicServiceTupleMetadata:a3 withCharacteristicName:a2];
  v4 = [v5 allObjects];
  [v3 addObjectsFromArray:v4];
}

- (NSArray)hapServices
{
  v3 = objc_opt_new();
  hapServiceMapOffset = [(HAPMetadata *)self hapServiceMapOffset];
  metadata = [(HAPMetadata *)self metadata];
  v5 = [metadata hmf_readObjectAtOffset:&hapServiceMapOffset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __26__HAPMetadata_hapServices__block_invoke;
  v11[3] = &unk_2786D5598;
  v12 = v3;
  selfCopy = self;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __26__HAPMetadata_hapServices__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) parseServiceMetadata:a3 withName:a2];
  [v3 addObject:v4];
}

- (NSArray)hapCharacteristics
{
  v3 = objc_opt_new();
  hapCharacteristicMapOffset = [(HAPMetadata *)self hapCharacteristicMapOffset];
  metadata = [(HAPMetadata *)self metadata];
  v5 = [metadata hmf_readObjectAtOffset:&hapCharacteristicMapOffset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__HAPMetadata_hapCharacteristics__block_invoke;
  v11[3] = &unk_2786D5598;
  v12 = v3;
  selfCopy = self;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __33__HAPMetadata_hapCharacteristics__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) parseCharacteristicMetadata:a3 withName:a2];
  [v3 addObject:v4];
}

- (NSArray)hapProperties
{
  v3 = objc_opt_new();
  hapPropertyMapOffset = [(HAPMetadata *)self hapPropertyMapOffset];
  metadata = [(HAPMetadata *)self metadata];
  v5 = [metadata hmf_readObjectAtOffset:&hapPropertyMapOffset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__HAPMetadata_hapProperties__block_invoke;
  v11[3] = &unk_2786D5598;
  v12 = v3;
  selfCopy = self;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __28__HAPMetadata_hapProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) parsePropertyMetadata:a3 withType:a2];
  [v3 addObject:v4];
}

- (NSArray)hapValueUnits
{
  v3 = objc_opt_new();
  hapUnitMapOffset = [(HAPMetadata *)self hapUnitMapOffset];
  metadata = [(HAPMetadata *)self metadata];
  v5 = [metadata hmf_readObjectAtOffset:&hapUnitMapOffset];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__HAPMetadata_hapValueUnits__block_invoke;
  v11[3] = &unk_2786D5598;
  v12 = v3;
  selfCopy = self;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __28__HAPMetadata_hapValueUnits__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) parseUnitMetadata:a3 withName:a2];
  [v3 addObject:v4];
}

- (id)hapUnitFromName:(id)name
{
  nameCopy = name;
  metadata = [(HAPMetadata *)self metadata];
  v6 = [metadata hmf_objectForKey:nameCopy forDictionaryAtOffset:{-[HAPMetadata hapUnitMapOffset](self, "hapUnitMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HAPMetadata *)self parseUnitMetadata:v8 withName:nameCopy];

  return v9;
}

- (id)hapServiceFromType:(id)type
{
  typeCopy = type;
  hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
  v6 = [HAPMetadata shortenHAPType:typeCopy baseUUIDSuffix:hapBaseUUIDSuffix];

  metadata = [(HAPMetadata *)self metadata];
  v8 = [metadata hmf_objectForKey:v6 forDictionaryAtOffset:{-[HAPMetadata hapServiceShortUUIDToNameMapOffset](self, "hapServiceShortUUIDToNameMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(HAPMetadata *)self hapServiceFromName:v10];

  return v11;
}

- (id)hapServiceFromName:(id)name
{
  nameCopy = name;
  metadata = [(HAPMetadata *)self metadata];
  v6 = [metadata hmf_objectForKey:nameCopy forDictionaryAtOffset:{-[HAPMetadata hapServiceMapOffset](self, "hapServiceMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HAPMetadata *)self parseServiceMetadata:v8 withName:nameCopy];

  return v9;
}

- (id)hapCharacteristicFromType:(id)type
{
  typeCopy = type;
  hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
  v6 = [HAPMetadata shortenHAPType:typeCopy baseUUIDSuffix:hapBaseUUIDSuffix];

  metadata = [(HAPMetadata *)self metadata];
  v8 = [metadata hmf_objectForKey:v6 forDictionaryAtOffset:{-[HAPMetadata hapCharacteristicShortUUIDToNameMapOffset](self, "hapCharacteristicShortUUIDToNameMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(HAPMetadata *)self hapCharacteristicFromName:v10];

  return v11;
}

- (id)hapCharacteristicFromName:(id)name
{
  nameCopy = name;
  metadata = [(HAPMetadata *)self metadata];
  v6 = [metadata hmf_objectForKey:nameCopy forDictionaryAtOffset:{-[HAPMetadata hapCharacteristicMapOffset](self, "hapCharacteristicMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HAPMetadata *)self parseCharacteristicMetadata:v8 withName:nameCopy];

  return v9;
}

- (id)characteristicTypesChangingTargetState
{
  if (characteristicTypesChangingTargetState_onceToken != -1)
  {
    dispatch_once(&characteristicTypesChangingTargetState_onceToken, &__block_literal_global_17005);
  }

  v3 = characteristicTypesChangingTargetState_characteristicTypes;

  return v3;
}

void __53__HAPMetadata_characteristicTypesChangingTargetState__block_invoke()
{
  v0 = characteristicTypesChangingTargetState_characteristicTypes;
  characteristicTypesChangingTargetState_characteristicTypes = &unk_283EA9BF0;
}

- (id)getDefaultServiceProperties:(id)properties
{
  v3 = [(HAPMetadata *)self hapServiceFromType:properties];
  properties = [v3 properties];

  return properties;
}

- (id)getDefaultCharacteristicProperties:(id)properties
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:properties];
  properties = [v3 properties];

  return properties;
}

- (id)getDefaultCharacteristicMetadata:(id)metadata
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:metadata];
  valueMetadata = [v3 valueMetadata];
  minLength = [valueMetadata minLength];
  if (minLength || ([valueMetadata maxLength], (minLength = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(valueMetadata, "minValue"), (minLength = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(valueMetadata, "maxValue"), (minLength = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    stepValue2 = objc_alloc_init(HAPMetadataConstraints);
    minValue = [valueMetadata minValue];
    [(HAPMetadataConstraints *)stepValue2 setMinimumValue:minValue];

    maxValue = [valueMetadata maxValue];
    [(HAPMetadataConstraints *)stepValue2 setMaximumValue:maxValue];

    stepValue = [valueMetadata stepValue];
    [(HAPMetadataConstraints *)stepValue2 setStepValue:stepValue];

    minLength2 = [valueMetadata minLength];
    [(HAPMetadataConstraints *)stepValue2 setMinLength:minLength2];

    maxLength = [valueMetadata maxLength];
    [(HAPMetadataConstraints *)stepValue2 setMaxLength:maxLength];

    validValues = [valueMetadata validValues];
    [(HAPMetadataConstraints *)stepValue2 setValidValues:validValues];

    goto LABEL_7;
  }

  stepValue2 = [valueMetadata stepValue];

  if (stepValue2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = [HAPCharacteristicMetadata alloc];
  chrDescription = [v3 chrDescription];
  format = [v3 format];
  units = [v3 units];
  v17 = [(HAPCharacteristicMetadata *)v13 initWithConstraints:stepValue2 description:chrDescription format:format units:units];

  return v17;
}

- (BOOL)supportsAdditionalAuthorizationData:(id)data forService:(id)service
{
  serviceCopy = service;
  dataCopy = data;
  v8 = [[HAPMetadataTuple alloc] initWithCharacteristicType:dataCopy serviceType:serviceCopy];

  hapSupportsAuthDataTuples = [(HAPMetadata *)self hapSupportsAuthDataTuples];
  LOBYTE(self) = [hapSupportsAuthDataTuples containsObject:v8];

  return self;
}

- (id)serviceTypeToBTLE:(id)e
{
  eCopy = e;
  v5 = [(HAPMetadata *)self hapServiceFromType:eCopy];
  btleuuidStr = [v5 btleuuidStr];

  if (btleuuidStr)
  {
    btleuuidStr2 = [v5 btleuuidStr];
  }

  else
  {
    btleuuidStr2 = eCopy;
  }

  v8 = btleuuidStr2;

  return v8;
}

- (id)btleToServiceType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasSuffix:@"-0000-1000-8000-00805F9B34FB"])
  {
    v5 = [typeCopy length];
    if (v5 == [@"00000000-0000-1000-8000-00805F9B34FB" length])
    {
      v6 = [typeCopy substringWithRange:{4, 4}];
      v7 = v6;
      if (v6)
      {
        v8 = v6;

        typeCopy = v8;
      }
    }
  }

  metadata = [(HAPMetadata *)self metadata];
  v10 = [metadata hmf_objectForKey:typeCopy forDictionaryAtOffset:{-[HAPMetadata hapServiceBTLEShortUUIDToNameMapOffset](self, "hapServiceBTLEShortUUIDToNameMapOffset")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HAPMetadata *)self hapServiceFromName:v12];

  uuidStr = [v13 uuidStr];

  return uuidStr;
}

- (id)characteristicValueUnitOfType:(id)type
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:type];
  units = [v3 units];

  return units;
}

- (BOOL)isMandatoryCharacteristic:(id)characteristic forService:(id)service
{
  characteristicCopy = characteristic;
  v7 = [(HAPMetadata *)self hapServiceFromType:service];
  v8 = v7;
  if (v7)
  {
    mandatoryCharacteristics = [v7 mandatoryCharacteristics];
    v10 = [mandatoryCharacteristics containsObject:characteristicCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionFromCharacteristicType:(id)type
{
  typeCopy = type;
  v5 = [(HAPMetadata *)self hapCharacteristicFromType:typeCopy];
  chrDescription = [v5 chrDescription];
  if (!chrDescription)
  {
    chrDescription = typeCopy;
  }

  return chrDescription;
}

- (id)descriptionFromServiceType:(id)type
{
  typeCopy = type;
  v5 = [(HAPMetadata *)self hapServiceFromType:typeCopy];
  svcDescription = [v5 svcDescription];
  if (!svcDescription)
  {
    svcDescription = typeCopy;
  }

  return svcDescription;
}

- (BOOL)validateMandatoryCharacteristics:(id)characteristics forService:(id)service
{
  characteristicsCopy = characteristics;
  v7 = [(HAPMetadata *)self hapServiceFromType:service];
  v8 = [MEMORY[0x277CBEB98] setWithArray:characteristicsCopy];

  v9 = MEMORY[0x277CBEB98];
  mandatoryCharacteristics = [v7 mandatoryCharacteristics];
  v11 = [v9 setWithArray:mandatoryCharacteristics];

  mandatoryCharacteristics2 = [v7 mandatoryCharacteristics];
  if ([mandatoryCharacteristics2 count])
  {
    v13 = [v11 isSubsetOfSet:v8];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)allowAssociatedService:(id)service
{
  v3 = [(HAPMetadata *)self hapServiceFromType:service];
  allowAssociatedService = [v3 allowAssociatedService];

  return allowAssociatedService;
}

- (BOOL)isStandardHAPUnitName:(id)name
{
  v3 = [(HAPMetadata *)self hapUnitFromName:name];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristicName:(id)name
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromName:name];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristic:(id)characteristic
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:characteristic];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPServiceName:(id)name
{
  v3 = [(HAPMetadata *)self hapServiceFromName:name];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPService:(id)service
{
  v3 = [(HAPMetadata *)self hapServiceFromType:service];
  v4 = v3 != 0;

  return v4;
}

- (id)characteristicTypeFromUTI:(id)i
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromName:i];
  uuidStr = [v3 uuidStr];

  return uuidStr;
}

- (id)characteristicUTIFromType:(id)type
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:type];
  name = [v3 name];

  return name;
}

- (id)serviceTypeFromUTI:(id)i
{
  v3 = [(HAPMetadata *)self hapServiceFromName:i];
  uuidStr = [v3 uuidStr];

  return uuidStr;
}

- (id)serviceUTIFromType:(id)type
{
  v3 = [(HAPMetadata *)self hapServiceFromType:type];
  name = [v3 name];

  return name;
}

- (BOOL)parseMetadata:(id)metadata
{
  v33 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = [metadataCopy hmf_stringForKey:@"Base UUID"];
  v6 = v5;
  if (!v5)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      v19 = "%{public}@Failed to parse HAP base UUID suffix";
      v20 = v17;
      v21 = 12;
LABEL_8:
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    }

LABEL_9:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_10;
  }

  v7 = [v5 length];
  if (v7 != kMetadataBaseUUIDSuffixLength)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v18;
      v29 = 2048;
      v30 = [v6 length];
      v31 = 2048;
      v32 = kMetadataBaseUUIDSuffixLength;
      v19 = "%{public}@Base UUID suffix length is %lu, should be %lu";
      v20 = v17;
      v21 = 32;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(HAPMetadata *)self setHapBaseUUIDSuffix:v6];
  data = [MEMORY[0x277CBEB28] data];
  v26 = [metadataCopy hmf_dictionaryForKey:@"Units"];
  -[HAPMetadata setHapUnitMapOffset:](self, "setHapUnitMapOffset:", [data length]);
  [data hmf_appendObject:v26];
  v25 = [metadataCopy hmf_dictionaryForKey:@"Properties"];
  -[HAPMetadata setHapPropertyMapOffset:](self, "setHapPropertyMapOffset:", [data length]);
  [data hmf_appendObject:v25];
  v9 = [metadataCopy hmf_dictionaryForKey:@"Characteristics"];
  -[HAPMetadata setHapCharacteristicMapOffset:](self, "setHapCharacteristicMapOffset:", [data length]);
  [data hmf_appendObject:v9];
  v24 = [(HAPMetadata *)self indexDictionary:v9 keyPath:@"ShortUUID"];
  -[HAPMetadata setHapCharacteristicShortUUIDToNameMapOffset:](self, "setHapCharacteristicShortUUIDToNameMapOffset:", [data length]);
  [data hmf_appendObject:v24];
  v10 = [metadataCopy hmf_dictionaryForKey:@"Services"];
  -[HAPMetadata setHapServiceMapOffset:](self, "setHapServiceMapOffset:", [data length]);
  [data hmf_appendObject:v10];
  v11 = [(HAPMetadata *)self indexDictionary:v10 keyPath:@"ShortUUID"];
  -[HAPMetadata setHapServiceShortUUIDToNameMapOffset:](self, "setHapServiceShortUUIDToNameMapOffset:", [data length]);
  [data hmf_appendObject:v11];
  v12 = [(HAPMetadata *)self indexDictionary:v10 keyPath:@"BTLE_ShortUUID"];
  -[HAPMetadata setHapServiceBTLEShortUUIDToNameMapOffset:](self, "setHapServiceBTLEShortUUIDToNameMapOffset:", [data length]);
  [data hmf_appendObject:v12];
  v13 = [metadataCopy hmf_dictionaryForKey:@"SupportsAuthorizationData"];
  -[HAPMetadata setHapSupportsAuthDataSetOffset:](self, "setHapSupportsAuthDataSetOffset:", [data length]);
  [data hmf_appendObject:v13];
  hmf_copyAsMemoryMappedData = [data hmf_copyAsMemoryMappedData];
  [(HAPMetadata *)self setMetadata:hmf_copyAsMemoryMappedData];

  v15 = 1;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)indexDictionary:(id)dictionary keyPath:(id)path
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = dictionaryCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v18}];
        v15 = [v14 valueForKeyPath:pathCopy];
        if (v15)
        {
          [v7 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)parseCharacteristicServiceTuples:(id)tuples
{
  v23 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(tuplesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = tuplesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v6 hmf_arrayForKey:{v11, v18}];
        v13 = [(HAPMetadata *)self parseCharacteristicServiceTupleMetadata:v12 withCharacteristicName:v11];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v5 unionSet:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v5 copy];
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)parseCharacteristicServiceTupleMetadata:(id)metadata withCharacteristicName:(id)name
{
  v45 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  nameCopy = name;
  v8 = [(HAPMetadata *)self characteristicTypeFromUTI:nameCopy];
  if (v8)
  {
    v32 = nameCopy;
    v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(metadataCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = metadataCopy;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      v31 = metadataCopy;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v15 = [(HAPMetadata *)self serviceTypeFromUTI:v14];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = [[HAPMetadataTuple alloc] initWithCharacteristicType:v8 serviceType:v15];
        if (!v17)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = HMFGetOSLogHandle();
          nameCopy = v32;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = HMFGetLogIdentifier();
            *buf = 138543874;
            v39 = v28;
            v40 = 2112;
            v41 = v32;
            v42 = 2112;
            v43 = v14;
            _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP metadata tuple %@,%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
LABEL_21:

          v19 = 0;
          metadataCopy = v31;
          goto LABEL_22;
        }

        v18 = v17;
        [v9 addObject:v17];

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
          metadataCopy = v31;
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v25;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unknown service '%@' while parsing tuple", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      nameCopy = v32;
      goto LABEL_21;
    }

LABEL_11:

    v19 = [v9 copy];
    nameCopy = v32;
LABEL_22:
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v22;
      v40 = 2112;
      v41 = nameCopy;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown characteristic '%@' while parsing tuple", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parseServiceMetadata:(id)metadata withName:(id)name
{
  v55 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  nameCopy = name;
  v8 = [metadataCopy hmf_stringForKey:@"ShortUUID"];
  v9 = [v8 length];
  if (v9 == kMetadataShortUUIDLength)
  {
    v10 = [metadataCopy hmf_stringForKey:@"DefaultDescription"];
    v11 = [metadataCopy hmf_dictionaryForKey:@"Characteristics"];
    v12 = [v11 hmf_arrayForKey:@"Required"];
    v13 = [(HAPMetadata *)self parseServiceCharacteristics:v12];

    if (![v13 count])
    {
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v32;
        v49 = 2112;
        v50 = nameCopy;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@service %@: No mandatory characteristics", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v26 = 0;
      goto LABEL_27;
    }

    v44 = v11;
    v14 = [metadataCopy hmf_numberForKey:@"ServiceProperties"];
    v42 = [metadataCopy hmf_arrayForKey:@"LinkedServices"];
    hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
    v16 = [v8 stringByAppendingString:hapBaseUUIDSuffix];
    [v16 hmf_stringWithSmallestEncoding];
    v18 = v17 = metadataCopy;

    v43 = v18;
    v45 = v14;
    v46 = v10;
    v19 = [[HAPMetadataService alloc] initWithName:nameCopy uuid:v18 description:v10 mandatoryChrTypes:v13 properties:v14 linkedServices:v42];
    if (!v19)
    {
      v26 = 0;
      v11 = v44;
      metadataCopy = v17;
LABEL_26:

      v10 = v46;
LABEL_27:

      goto LABEL_28;
    }

    v20 = [v17 hmf_stringForKey:@"BTLE_ShortUUID"];
    v11 = v44;
    metadataCopy = v17;
    v21 = v20;
    if (v20)
    {
      v22 = [v20 length];
      if (v22 != kMetadataBTLEUUIDLength)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v35 = contexta = v33;
          *buf = 138544130;
          v48 = v35;
          v49 = 2112;
          v50 = nameCopy;
          v51 = 2112;
          v52 = v21;
          v53 = 2048;
          v54 = kMetadataBTLEUUIDLength;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, "%{public}@service %@: BTLE UUID '%@' length needs to be %lu", buf, 0x2Au);

          v33 = contexta;
        }

        objc_autoreleasePoolPop(v33);
        v26 = 0;
        goto LABEL_25;
      }

      [(HAPMetadataService *)v19 setBtleuuidStr:v21];
    }

    v23 = [v44 hmf_arrayForKey:@"Optional"];
    v24 = [(HAPMetadata *)self parseServiceCharacteristics:v23];

    if (v24)
    {
      if ([v24 count])
      {
        [(HAPMetadataService *)v19 setOptionalCharacteristics:v24];
      }

      buf[0] = 0;
      v25 = [metadataCopy hmf_BOOLForKey:@"AllowAssociatedService" isPresent:buf];
      [(HAPMetadataService *)v19 setAllowAssociatedService:buf[0] & v25 & 1];
      v26 = v19;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v39;
        v49 = 2112;
        v50 = nameCopy;
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%{public}@service %@: Error parsing optional characteristics", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v26 = 0;
    }

LABEL_25:
    goto LABEL_26;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138544130;
    v48 = v29;
    v49 = 2112;
    v50 = nameCopy;
    v51 = 2112;
    v52 = v8;
    v53 = 2048;
    v54 = kMetadataShortUUIDLength;
    _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@service %@: UUID '%@' length needs to be %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v27);
  v26 = 0;
LABEL_28:

  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)parseServiceCharacteristics:(id)characteristics
{
  v29 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = characteristicsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [(HAPMetadata *)self characteristicTypeFromUTI:v11, v20];
        if (!v12)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v25 = v17;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@Undefined characteristic %@ referenced", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v14 = 0;
          goto LABEL_13;
        }

        v13 = v12;
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v5 copy];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)parseCharacteristics:(id)characteristics
{
  v24 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(characteristicsCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = characteristicsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v6 hmf_dictionaryForKey:{v11, v19}];
        v13 = [(HAPMetadata *)self parseCharacteristicMetadata:v12 withName:v11];
        if (!v13)
        {

          v16 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        uuidStr = [v13 uuidStr];
        [v5 setObject:v14 forKey:uuidStr];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v5 copy];
LABEL_11:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseCharacteristicMetadata:(id)metadata withName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  nameCopy = name;
  v8 = [metadataCopy hmf_stringForKey:@"ShortUUID"];
  v9 = [v8 length];
  if (v9 == kMetadataShortUUIDLength)
  {
    v10 = [metadataCopy hmf_stringForKey:@"DefaultDescription"];
    v11 = [metadataCopy hmf_stringForKey:@"Format"];
    v12 = [metadataCopy hmf_numberForKey:@"Properties"];
    hapBaseUUIDSuffix = [(HAPMetadata *)self hapBaseUUIDSuffix];
    v14 = [v8 stringByAppendingString:hapBaseUUIDSuffix];
    hmf_stringWithSmallestEncoding = [v14 hmf_stringWithSmallestEncoding];

    v16 = [[HAPMetadataCharacteristic alloc] initWithName:nameCopy uuid:hmf_stringWithSmallestEncoding description:v10 format:v11 properties:v12];
    if (v16)
    {
      v17 = [metadataCopy hmf_stringForKey:@"Units"];
      [(HAPMetadataCharacteristic *)v16 setUnits:v17];

      v18 = [(HAPMetadata *)self parseCharacteristicValue:metadataCopy];
      if (v18)
      {
        [(HAPMetadataCharacteristic *)v16 setValueMetadata:v18];
      }

      v19 = v16;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v25 = v28 = v23;
        *buf = 138544130;
        v30 = v25;
        v31 = 2112;
        v32 = nameCopy;
        v33 = 2112;
        v34 = v8;
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@characteristic %@: Failed to parse - UUID %@  description %@", buf, 0x2Au);

        v23 = v28;
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v30 = v22;
      v31 = 2112;
      v32 = nameCopy;
      v33 = 2112;
      v34 = v8;
      v35 = 2048;
      v36 = kMetadataShortUUIDLength;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@characteristic %@: UUID '%@' length needs to be %lu", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v16 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)parseCharacteristicValue:(id)value
{
  v32 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v4 = [valueCopy hmf_numberForKey:@"MinLength"];
  v5 = [valueCopy hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [valueCopy hmf_numberForKey:@"MinValue"];
  v8 = [valueCopy hmf_numberForKey:@"MaxValue"];
  v9 = [valueCopy hmf_numberForKey:@"StepValue"];
  v10 = [valueCopy hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      context = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        [valueCopy hmf_stringForKey:@"ShortUUID"];
        *buf = 138544898;
        v19 = v16;
        v21 = v20 = 2112;
        v12 = v21;
        v22 = 2112;
        v23 = v4;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v5;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Characteristic %@ has both length and value metadata: minLength %@  maxLength %@  minValue %@  maxValue %@  stepValue %@", buf, 0x48u);
      }

      objc_autoreleasePoolPop(context);
    }

    v13 = [[HAPMetadataCharacteristicValue alloc] initWithMinValue:v7 maxValue:v8 stepValue:v9 validValues:v10];

    v6 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)parsePropertyMetadata:(id)metadata withType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  typeCopy = type;
  v7 = [metadataCopy hmf_numberForKey:@"Position"];
  v8 = [metadataCopy hmf_stringForKey:@"DefaultDescription"];
  v9 = [[HAPMetadataProperty alloc] initWithType:typeCopy bitPosition:v7 description:v8];
  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v12;
      v17 = 2112;
      v18 = typeCopy;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP property %@ bitPosition %@ description %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)parseUnitMetadata:(id)metadata withName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  nameCopy = name;
  v7 = [metadataCopy hmf_stringForKey:@"DefaultDescription"];
  v8 = [[HAPMetadataUnit alloc] initWithName:nameCopy description:v7];
  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = nameCopy;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP unit %@ description %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)parseVersion:(id)version
{
  versionCopy = version;
  v5 = [versionCopy hmf_numberForKey:@"Version"];
  [(HAPMetadata *)self setVersion:v5];

  v6 = [versionCopy hmf_numberForKey:@"SchemaVersion"];

  [(HAPMetadata *)self setSchemaVersion:v6];
  version = [(HAPMetadata *)self version];
  if (version)
  {
    schemaVersion = [(HAPMetadata *)self schemaVersion];
    v9 = schemaVersion != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HAPMetadata)initWithDictionary:(id)dictionary error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = HAPMetadata;
  v7 = [(HAPMetadata *)&v28 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (![(HAPMetadata *)v7 parseVersion:dictionaryCopy])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v16;
      _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse version information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (!error)
    {
      goto LABEL_21;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = 1001;
    goto LABEL_15;
  }

  schemaVersion = [(HAPMetadata *)v8 schemaVersion];
  unsignedIntegerValue = [schemaVersion unsignedIntegerValue];

  if (unsignedIntegerValue != 1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      schemaVersion2 = [(HAPMetadata *)v8 schemaVersion];
      *buf = 138543874;
      v30 = v21;
      v31 = 2112;
      v32 = schemaVersion2;
      v33 = 2048;
      v34 = 1;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Newer schema version %@, current %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (!error)
    {
      goto LABEL_21;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = 1004;
LABEL_15:
    [v17 errorWithHMErrorCode:v18];
    *error = v13 = 0;
    goto LABEL_22;
  }

  v11 = [dictionaryCopy hmf_dictionaryForKey:@"HAP"];
  v12 = objc_autoreleasePoolPush();
  if (![(HAPMetadata *)v8 parseMetadata:v11])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v25;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:1001];
    }

    objc_autoreleasePoolPop(v12);

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  objc_autoreleasePoolPop(v12);

LABEL_6:
  v13 = v8;
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HAPMetadata)init
{
  v5.receiver = self;
  v5.super_class = HAPMetadata;
  v2 = [(HAPMetadata *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HAPMetadata *)v2 setHapBaseUUIDSuffix:@"-0000-1000-8000-0026BB765291"];
  }

  return v3;
}

+ (id)shortenHAPType:(id)type baseUUIDSuffix:(id)suffix
{
  typeCopy = type;
  suffixCopy = suffix;
  if ([typeCopy hasSuffix:suffixCopy])
  {
    v7 = [typeCopy substringToIndex:{objc_msgSend(typeCopy, "length") - objc_msgSend(suffixCopy, "length")}];
  }

  else
  {
    v7 = typeCopy;
  }

  v8 = v7;

  return v8;
}

+ (id)getSharedInstance
{
  v3 = currentMetadataHook;
  if (currentMetadataHook)
  {
    v3 = (*(currentMetadataHook + 16))();
    v2 = vars8;
  }

  return v3;
}

+ (void)setCurrentMetadataHook:(id)hook
{
  currentMetadataHook = MEMORY[0x231885210](hook, a2);

  MEMORY[0x2821F96F8]();
}

+ (id)currentMetadataHook
{
  v2 = MEMORY[0x231885210](currentMetadataHook, a2);

  return v2;
}

@end