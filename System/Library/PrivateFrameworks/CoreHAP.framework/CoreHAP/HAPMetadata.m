@interface HAPMetadata
+ (id)currentMetadataHook;
+ (id)getSharedInstance;
+ (id)shortenHAPType:(id)a3 baseUUIDSuffix:(id)a4;
+ (void)setCurrentMetadataHook:(id)a3;
- (BOOL)allowAssociatedService:(id)a3;
- (BOOL)isMandatoryCharacteristic:(id)a3 forService:(id)a4;
- (BOOL)isStandardHAPCharacteristic:(id)a3;
- (BOOL)isStandardHAPCharacteristicName:(id)a3;
- (BOOL)isStandardHAPService:(id)a3;
- (BOOL)isStandardHAPServiceName:(id)a3;
- (BOOL)isStandardHAPUnitName:(id)a3;
- (BOOL)parseMetadata:(id)a3;
- (BOOL)parseVersion:(id)a3;
- (BOOL)supportsAdditionalAuthorizationData:(id)a3 forService:(id)a4;
- (BOOL)validateMandatoryCharacteristics:(id)a3 forService:(id)a4;
- (HAPMetadata)init;
- (HAPMetadata)initWithDictionary:(id)a3 error:(id *)a4;
- (NSArray)hapCharacteristics;
- (NSArray)hapProperties;
- (NSArray)hapServices;
- (NSArray)hapSupportsAuthDataTuples;
- (NSArray)hapValueUnits;
- (NSDictionary)rawPlist;
- (id)btleToServiceType:(id)a3;
- (id)characteristicTypeFromUTI:(id)a3;
- (id)characteristicTypesChangingTargetState;
- (id)characteristicUTIFromType:(id)a3;
- (id)characteristicValueUnitOfType:(id)a3;
- (id)descriptionFromCharacteristicType:(id)a3;
- (id)descriptionFromServiceType:(id)a3;
- (id)generateDictionary;
- (id)generateHAPMetadataTuplesDictionary:(id)a3;
- (id)getDefaultCharacteristicMetadata:(id)a3;
- (id)getDefaultCharacteristicProperties:(id)a3;
- (id)getDefaultServiceProperties:(id)a3;
- (id)hapCharacteristicFromName:(id)a3;
- (id)hapCharacteristicFromType:(id)a3;
- (id)hapServiceFromName:(id)a3;
- (id)hapServiceFromType:(id)a3;
- (id)hapUnitFromName:(id)a3;
- (id)indexDictionary:(id)a3 keyPath:(id)a4;
- (id)parseCharacteristicMetadata:(id)a3 withName:(id)a4;
- (id)parseCharacteristicServiceTupleMetadata:(id)a3 withCharacteristicName:(id)a4;
- (id)parseCharacteristicServiceTuples:(id)a3;
- (id)parseCharacteristicValue:(id)a3;
- (id)parseCharacteristics:(id)a3;
- (id)parsePropertyMetadata:(id)a3 withType:(id)a4;
- (id)parseServiceCharacteristics:(id)a3;
- (id)parseServiceMetadata:(id)a3 withName:(id)a4;
- (id)parseUnitMetadata:(id)a3 withName:(id)a4;
- (id)serviceTypeFromUTI:(id)a3;
- (id)serviceTypeToBTLE:(id)a3;
- (id)serviceUTIFromType:(id)a3;
@end

@implementation HAPMetadata

- (id)generateHAPMetadataTuplesDictionary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
        v12 = [v11 characteristicType];
        v13 = [(HAPMetadata *)self characteristicUTIFromType:v12];

        v14 = [v11 serviceType];
        v15 = [(HAPMetadata *)self serviceUTIFromType:v14];

        v16 = [v5 objectForKeyedSubscript:v13];
        if (!v16)
        {
          v16 = [MEMORY[0x277CBEB18] array];
          [v5 setObject:v16 forKeyedSubscript:v13];
        }

        [v16 addObject:v15];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HAPMetadata *)self hapBaseUUIDSuffix];

  if (v4)
  {
    v5 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    [v3 setObject:v5 forKeyedSubscript:@"Base UUID"];
  }

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v7 = [(HAPMetadata *)self hapValueUnits];
  v8 = [v7 countByEnumeratingWithState:&v82 objects:v93 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v82 + 1) + 8 * i);
        v13 = [v12 generateDictionary];
        v14 = [v12 name];
        [v6 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v82 objects:v93 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v3 setObject:v6 forKeyedSubscript:@"Units"];
  }

  v66 = v3;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v16 = [(HAPMetadata *)self hapProperties];
  v17 = [v16 countByEnumeratingWithState:&v78 objects:v92 count:16];
  v65 = v6;
  v67 = v15;
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v78 + 1) + 8 * j);
        v22 = [v21 generateDictionary];
        if (v22)
        {
          v23 = [v21 propertyType];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        else
        {
          v24 = objc_autoreleasePoolPush();
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v21 propertyType];
            *buf = 138543618;
            v89 = v26;
            v90 = 2112;
            v91 = v27;
            _os_log_impl(&dword_22AADC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP property %@", buf, 0x16u);

            v15 = v67;
          }

          objc_autoreleasePoolPop(v24);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    [v66 setObject:v15 forKeyedSubscript:@"Properties"];
  }

  v28 = [(HAPMetadata *)self hapSupportsAuthDataTuples];
  v29 = [(HAPMetadata *)self generateHAPMetadataTuplesDictionary:v28];

  if ([v29 count])
  {
    [v66 setObject:v29 forKeyedSubscript:@"SupportsAuthorizationData"];
  }

  v64 = v29;
  v30 = [MEMORY[0x277CBEB38] dictionary];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v31 = [(HAPMetadata *)self hapCharacteristics];
  v32 = [v31 countByEnumeratingWithState:&v74 objects:v87 count:16];
  v69 = v30;
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
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v74 + 1) + 8 * k);
        v37 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v38 = [v36 generateDictionary:v37];

        if (v38)
        {
          v39 = [v36 name];
          [v30 setObject:v38 forKeyedSubscript:v39];
        }

        else
        {
          v40 = objc_autoreleasePoolPush();
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = HMFGetLogIdentifier();
            v43 = [v36 name];
            *buf = 138543618;
            v89 = v42;
            v90 = 2112;
            v91 = v43;
            _os_log_impl(&dword_22AADC000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP characteristic %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v40);
          v30 = v69;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v33);
  }

  if ([v30 count])
  {
    [v66 setObject:v30 forKeyedSubscript:@"Characteristics"];
  }

  v44 = [MEMORY[0x277CBEB38] dictionary];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v45 = [(HAPMetadata *)self hapServices];
  v46 = [v45 countByEnumeratingWithState:&v70 objects:v86 count:16];
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
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v70 + 1) + 8 * v49);
        v51 = [(HAPMetadata *)self hapBaseUUIDSuffix];
        v52 = [v50 generateDictionary:v51 metadata:self];

        if (v52)
        {
          v53 = [v50 name];
          [v44 setObject:v52 forKeyedSubscript:v53];
        }

        else
        {
          v54 = objc_autoreleasePoolPush();
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v56 = v48;
            v57 = self;
            v58 = v44;
            v60 = v59 = v45;
            v61 = [v50 name];
            *buf = 138543618;
            v89 = v60;
            v90 = 2112;
            v91 = v61;
            _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate dictionary for HAP service %@", buf, 0x16u);

            v45 = v59;
            v44 = v58;
            self = v57;
            v48 = v56;
            v47 = v68;
          }

          objc_autoreleasePoolPop(v54);
        }

        ++v49;
      }

      while (v47 != v49);
      v47 = [v45 countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v47);
  }

  if ([v44 count])
  {
    [v66 setObject:v44 forKeyedSubscript:@"Services"];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v66;
}

- (NSDictionary)rawPlist
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(HAPMetadata *)self generateDictionary];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v14 = [(HAPMetadata *)self hapSupportsAuthDataSetOffset];
  v4 = [(HAPMetadata *)self metadata];
  v5 = [v4 hmf_readObjectAtOffset:&v14];

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
  v13 = self;
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
  v14 = [(HAPMetadata *)self hapServiceMapOffset];
  v4 = [(HAPMetadata *)self metadata];
  v5 = [v4 hmf_readObjectAtOffset:&v14];

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
  v13 = self;
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
  v14 = [(HAPMetadata *)self hapCharacteristicMapOffset];
  v4 = [(HAPMetadata *)self metadata];
  v5 = [v4 hmf_readObjectAtOffset:&v14];

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
  v13 = self;
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
  v14 = [(HAPMetadata *)self hapPropertyMapOffset];
  v4 = [(HAPMetadata *)self metadata];
  v5 = [v4 hmf_readObjectAtOffset:&v14];

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
  v13 = self;
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
  v14 = [(HAPMetadata *)self hapUnitMapOffset];
  v4 = [(HAPMetadata *)self metadata];
  v5 = [v4 hmf_readObjectAtOffset:&v14];

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
  v13 = self;
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

- (id)hapUnitFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self metadata];
  v6 = [v5 hmf_objectForKey:v4 forDictionaryAtOffset:{-[HAPMetadata hapUnitMapOffset](self, "hapUnitMapOffset")}];

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

  v9 = [(HAPMetadata *)self parseUnitMetadata:v8 withName:v4];

  return v9;
}

- (id)hapServiceFromType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapBaseUUIDSuffix];
  v6 = [HAPMetadata shortenHAPType:v4 baseUUIDSuffix:v5];

  v7 = [(HAPMetadata *)self metadata];
  v8 = [v7 hmf_objectForKey:v6 forDictionaryAtOffset:{-[HAPMetadata hapServiceShortUUIDToNameMapOffset](self, "hapServiceShortUUIDToNameMapOffset")}];

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

- (id)hapServiceFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self metadata];
  v6 = [v5 hmf_objectForKey:v4 forDictionaryAtOffset:{-[HAPMetadata hapServiceMapOffset](self, "hapServiceMapOffset")}];

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

  v9 = [(HAPMetadata *)self parseServiceMetadata:v8 withName:v4];

  return v9;
}

- (id)hapCharacteristicFromType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapBaseUUIDSuffix];
  v6 = [HAPMetadata shortenHAPType:v4 baseUUIDSuffix:v5];

  v7 = [(HAPMetadata *)self metadata];
  v8 = [v7 hmf_objectForKey:v6 forDictionaryAtOffset:{-[HAPMetadata hapCharacteristicShortUUIDToNameMapOffset](self, "hapCharacteristicShortUUIDToNameMapOffset")}];

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

- (id)hapCharacteristicFromName:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self metadata];
  v6 = [v5 hmf_objectForKey:v4 forDictionaryAtOffset:{-[HAPMetadata hapCharacteristicMapOffset](self, "hapCharacteristicMapOffset")}];

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

  v9 = [(HAPMetadata *)self parseCharacteristicMetadata:v8 withName:v4];

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

- (id)getDefaultServiceProperties:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 properties];

  return v4;
}

- (id)getDefaultCharacteristicProperties:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 properties];

  return v4;
}

- (id)getDefaultCharacteristicMetadata:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 valueMetadata];
  v5 = [v4 minLength];
  if (v5 || ([v4 maxLength], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "minValue"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "maxValue"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_6:
    v6 = objc_alloc_init(HAPMetadataConstraints);
    v7 = [v4 minValue];
    [(HAPMetadataConstraints *)v6 setMinimumValue:v7];

    v8 = [v4 maxValue];
    [(HAPMetadataConstraints *)v6 setMaximumValue:v8];

    v9 = [v4 stepValue];
    [(HAPMetadataConstraints *)v6 setStepValue:v9];

    v10 = [v4 minLength];
    [(HAPMetadataConstraints *)v6 setMinLength:v10];

    v11 = [v4 maxLength];
    [(HAPMetadataConstraints *)v6 setMaxLength:v11];

    v12 = [v4 validValues];
    [(HAPMetadataConstraints *)v6 setValidValues:v12];

    goto LABEL_7;
  }

  v6 = [v4 stepValue];

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v13 = [HAPCharacteristicMetadata alloc];
  v14 = [v3 chrDescription];
  v15 = [v3 format];
  v16 = [v3 units];
  v17 = [(HAPCharacteristicMetadata *)v13 initWithConstraints:v6 description:v14 format:v15 units:v16];

  return v17;
}

- (BOOL)supportsAdditionalAuthorizationData:(id)a3 forService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HAPMetadataTuple alloc] initWithCharacteristicType:v7 serviceType:v6];

  v9 = [(HAPMetadata *)self hapSupportsAuthDataTuples];
  LOBYTE(self) = [v9 containsObject:v8];

  return self;
}

- (id)serviceTypeToBTLE:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceFromType:v4];
  v6 = [v5 btleuuidStr];

  if (v6)
  {
    v7 = [v5 btleuuidStr];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)btleToServiceType:(id)a3
{
  v4 = a3;
  if ([v4 hasSuffix:@"-0000-1000-8000-00805F9B34FB"])
  {
    v5 = [v4 length];
    if (v5 == [@"00000000-0000-1000-8000-00805F9B34FB" length])
    {
      v6 = [v4 substringWithRange:{4, 4}];
      v7 = v6;
      if (v6)
      {
        v8 = v6;

        v4 = v8;
      }
    }
  }

  v9 = [(HAPMetadata *)self metadata];
  v10 = [v9 hmf_objectForKey:v4 forDictionaryAtOffset:{-[HAPMetadata hapServiceBTLEShortUUIDToNameMapOffset](self, "hapServiceBTLEShortUUIDToNameMapOffset")}];

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

  v14 = [v13 uuidStr];

  return v14;
}

- (id)characteristicValueUnitOfType:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 units];

  return v4;
}

- (BOOL)isMandatoryCharacteristic:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = [(HAPMetadata *)self hapServiceFromType:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mandatoryCharacteristics];
    v10 = [v9 containsObject:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionFromCharacteristicType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapCharacteristicFromType:v4];
  v6 = [v5 chrDescription];
  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

- (id)descriptionFromServiceType:(id)a3
{
  v4 = a3;
  v5 = [(HAPMetadata *)self hapServiceFromType:v4];
  v6 = [v5 svcDescription];
  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)validateMandatoryCharacteristics:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = [(HAPMetadata *)self hapServiceFromType:a4];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v6];

  v9 = MEMORY[0x277CBEB98];
  v10 = [v7 mandatoryCharacteristics];
  v11 = [v9 setWithArray:v10];

  v12 = [v7 mandatoryCharacteristics];
  if ([v12 count])
  {
    v13 = [v11 isSubsetOfSet:v8];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)allowAssociatedService:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 allowAssociatedService];

  return v4;
}

- (BOOL)isStandardHAPUnitName:(id)a3
{
  v3 = [(HAPMetadata *)self hapUnitFromName:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristicName:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromName:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPCharacteristic:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPServiceName:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromName:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isStandardHAPService:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)characteristicTypeFromUTI:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromName:a3];
  v4 = [v3 uuidStr];

  return v4;
}

- (id)characteristicUTIFromType:(id)a3
{
  v3 = [(HAPMetadata *)self hapCharacteristicFromType:a3];
  v4 = [v3 name];

  return v4;
}

- (id)serviceTypeFromUTI:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromName:a3];
  v4 = [v3 uuidStr];

  return v4;
}

- (id)serviceUTIFromType:(id)a3
{
  v3 = [(HAPMetadata *)self hapServiceFromType:a3];
  v4 = [v3 name];

  return v4;
}

- (BOOL)parseMetadata:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"Base UUID"];
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
  v8 = [MEMORY[0x277CBEB28] data];
  v26 = [v4 hmf_dictionaryForKey:@"Units"];
  -[HAPMetadata setHapUnitMapOffset:](self, "setHapUnitMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v26];
  v25 = [v4 hmf_dictionaryForKey:@"Properties"];
  -[HAPMetadata setHapPropertyMapOffset:](self, "setHapPropertyMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v25];
  v9 = [v4 hmf_dictionaryForKey:@"Characteristics"];
  -[HAPMetadata setHapCharacteristicMapOffset:](self, "setHapCharacteristicMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v9];
  v24 = [(HAPMetadata *)self indexDictionary:v9 keyPath:@"ShortUUID"];
  -[HAPMetadata setHapCharacteristicShortUUIDToNameMapOffset:](self, "setHapCharacteristicShortUUIDToNameMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v24];
  v10 = [v4 hmf_dictionaryForKey:@"Services"];
  -[HAPMetadata setHapServiceMapOffset:](self, "setHapServiceMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v10];
  v11 = [(HAPMetadata *)self indexDictionary:v10 keyPath:@"ShortUUID"];
  -[HAPMetadata setHapServiceShortUUIDToNameMapOffset:](self, "setHapServiceShortUUIDToNameMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v11];
  v12 = [(HAPMetadata *)self indexDictionary:v10 keyPath:@"BTLE_ShortUUID"];
  -[HAPMetadata setHapServiceBTLEShortUUIDToNameMapOffset:](self, "setHapServiceBTLEShortUUIDToNameMapOffset:", [v8 length]);
  [v8 hmf_appendObject:v12];
  v13 = [v4 hmf_dictionaryForKey:@"SupportsAuthorizationData"];
  -[HAPMetadata setHapSupportsAuthDataSetOffset:](self, "setHapSupportsAuthDataSetOffset:", [v8 length]);
  [v8 hmf_appendObject:v13];
  v14 = [v8 hmf_copyAsMemoryMappedData];
  [(HAPMetadata *)self setMetadata:v14];

  v15 = 1;
LABEL_10:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)indexDictionary:(id)a3 keyPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
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
        v15 = [v14 valueForKeyPath:v6];
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

- (id)parseCharacteristicServiceTuples:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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

- (id)parseCharacteristicServiceTupleMetadata:(id)a3 withCharacteristicName:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAPMetadata *)self characteristicTypeFromUTI:v7];
  if (v8)
  {
    v32 = v7;
    v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      v31 = v6;
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
          v7 = v32;
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
          v6 = v31;
          goto LABEL_22;
        }

        v18 = v17;
        [v9 addObject:v17];

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
          v6 = v31;
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
      v7 = v32;
      goto LABEL_21;
    }

LABEL_11:

    v19 = [v9 copy];
    v7 = v32;
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
      v41 = v7;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unknown characteristic '%@' while parsing tuple", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parseServiceMetadata:(id)a3 withName:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"ShortUUID"];
  v9 = [v8 length];
  if (v9 == kMetadataShortUUIDLength)
  {
    v10 = [v6 hmf_stringForKey:@"DefaultDescription"];
    v11 = [v6 hmf_dictionaryForKey:@"Characteristics"];
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
        v50 = v7;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@service %@: No mandatory characteristics", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v26 = 0;
      goto LABEL_27;
    }

    v44 = v11;
    v14 = [v6 hmf_numberForKey:@"ServiceProperties"];
    v42 = [v6 hmf_arrayForKey:@"LinkedServices"];
    v15 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    v16 = [v8 stringByAppendingString:v15];
    [v16 hmf_stringWithSmallestEncoding];
    v18 = v17 = v6;

    v43 = v18;
    v45 = v14;
    v46 = v10;
    v19 = [[HAPMetadataService alloc] initWithName:v7 uuid:v18 description:v10 mandatoryChrTypes:v13 properties:v14 linkedServices:v42];
    if (!v19)
    {
      v26 = 0;
      v11 = v44;
      v6 = v17;
LABEL_26:

      v10 = v46;
LABEL_27:

      goto LABEL_28;
    }

    v20 = [v17 hmf_stringForKey:@"BTLE_ShortUUID"];
    v11 = v44;
    v6 = v17;
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
          v50 = v7;
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
      v25 = [v6 hmf_BOOLForKey:@"AllowAssociatedService" isPresent:buf];
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
        v50 = v7;
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
    v50 = v7;
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

- (id)parseServiceCharacteristics:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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

- (id)parseCharacteristics:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
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
        v15 = [v13 uuidStr];
        [v5 setObject:v14 forKey:v15];
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

- (id)parseCharacteristicMetadata:(id)a3 withName:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"ShortUUID"];
  v9 = [v8 length];
  if (v9 == kMetadataShortUUIDLength)
  {
    v10 = [v6 hmf_stringForKey:@"DefaultDescription"];
    v11 = [v6 hmf_stringForKey:@"Format"];
    v12 = [v6 hmf_numberForKey:@"Properties"];
    v13 = [(HAPMetadata *)self hapBaseUUIDSuffix];
    v14 = [v8 stringByAppendingString:v13];
    v15 = [v14 hmf_stringWithSmallestEncoding];

    v16 = [[HAPMetadataCharacteristic alloc] initWithName:v7 uuid:v15 description:v10 format:v11 properties:v12];
    if (v16)
    {
      v17 = [v6 hmf_stringForKey:@"Units"];
      [(HAPMetadataCharacteristic *)v16 setUnits:v17];

      v18 = [(HAPMetadata *)self parseCharacteristicValue:v6];
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
        v32 = v7;
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
      v32 = v7;
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

- (id)parseCharacteristicValue:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 hmf_numberForKey:@"MinLength"];
  v5 = [v3 hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 hmf_numberForKey:@"MinValue"];
  v8 = [v3 hmf_numberForKey:@"MaxValue"];
  v9 = [v3 hmf_numberForKey:@"StepValue"];
  v10 = [v3 hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      context = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        [v3 hmf_stringForKey:@"ShortUUID"];
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

- (id)parsePropertyMetadata:(id)a3 withType:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hmf_numberForKey:@"Position"];
  v8 = [v5 hmf_stringForKey:@"DefaultDescription"];
  v9 = [[HAPMetadataProperty alloc] initWithType:v6 bitPosition:v7 description:v8];
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
      v18 = v6;
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

- (id)parseUnitMetadata:(id)a3 withName:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hmf_stringForKey:@"DefaultDescription"];
  v8 = [[HAPMetadataUnit alloc] initWithName:v6 description:v7];
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
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse HAP unit %@ description %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)parseVersion:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"Version"];
  [(HAPMetadata *)self setVersion:v5];

  v6 = [v4 hmf_numberForKey:@"SchemaVersion"];

  [(HAPMetadata *)self setSchemaVersion:v6];
  v7 = [(HAPMetadata *)self version];
  if (v7)
  {
    v8 = [(HAPMetadata *)self schemaVersion];
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HAPMetadata)initWithDictionary:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v28.receiver = self;
  v28.super_class = HAPMetadata;
  v7 = [(HAPMetadata *)&v28 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  if (![(HAPMetadata *)v7 parseVersion:v6])
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
    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = 1001;
    goto LABEL_15;
  }

  v9 = [(HAPMetadata *)v8 schemaVersion];
  v10 = [v9 unsignedIntegerValue];

  if (v10 != 1)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HAPMetadata *)v8 schemaVersion];
      *buf = 138543874;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2048;
      v34 = 1;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Newer schema version %@, current %lu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    if (!a4)
    {
      goto LABEL_21;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = 1004;
LABEL_15:
    [v17 errorWithHMErrorCode:v18];
    *a4 = v13 = 0;
    goto LABEL_22;
  }

  v11 = [v6 hmf_dictionaryForKey:@"HAP"];
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
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:1001];
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

+ (id)shortenHAPType:(id)a3 baseUUIDSuffix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasSuffix:v6])
  {
    v7 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v6, "length")}];
  }

  else
  {
    v7 = v5;
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

+ (void)setCurrentMetadataHook:(id)a3
{
  currentMetadataHook = MEMORY[0x231885210](a3, a2);

  MEMORY[0x2821F96F8]();
}

+ (id)currentMetadataHook
{
  v2 = MEMORY[0x231885210](currentMetadataHook, a2);

  return v2;
}

@end