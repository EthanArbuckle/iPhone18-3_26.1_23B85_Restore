@interface HAPMetadataService
- (BOOL)isEqual:(id)equal;
- (HAPMetadataService)initWithName:(id)name uuid:(id)uuid description:(id)description mandatoryChrTypes:(id)types properties:(id)properties linkedServices:(id)services;
- (id)description;
- (id)generateDictionary:(id)dictionary metadata:(id)metadata;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataService

- (unint64_t)hash
{
  name = [(HAPMetadataService *)self name];
  v3 = [name hash];
  uuidStr = [(HAPMetadataService *)self uuidStr];
  v5 = [uuidStr hash] ^ v3;
  svcDescription = [(HAPMetadataService *)self svcDescription];
  v7 = [svcDescription hash];
  btleuuidStr = [(HAPMetadataService *)self btleuuidStr];
  v9 = v5 ^ v7 ^ [btleuuidStr hash];
  properties = [(HAPMetadataService *)self properties];
  v11 = [properties hash];
  linkedServices = [(HAPMetadataService *)self linkedServices];
  v13 = v11 ^ [linkedServices hash];
  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v15 = v9 ^ v13 ^ [mandatoryCharacteristics hash];
  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v17 = v15 ^ [optionalCharacteristics hash];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPMetadataService allowAssociatedService](self, "allowAssociatedService")}];
  v19 = [v18 hash];

  return v17 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    if (!v7)
    {
      LOBYTE(v14) = 0;
LABEL_64:

      goto LABEL_65;
    }

    name = [(HAPMetadataService *)self name];
    name2 = [(HAPMetadataService *)v7 name];
    if (![name isEqualToString:name2])
    {
      LOBYTE(v14) = 0;
LABEL_63:

      goto LABEL_64;
    }

    uuidStr = [(HAPMetadataService *)self uuidStr];
    uuidStr2 = [(HAPMetadataService *)v7 uuidStr];
    if (![uuidStr isEqualToString:uuidStr2])
    {
      LOBYTE(v14) = 0;
LABEL_62:

      goto LABEL_63;
    }

    svcDescription = [(HAPMetadataService *)self svcDescription];
    svcDescription2 = [(HAPMetadataService *)v7 svcDescription];
    if (![svcDescription isEqualToString:svcDescription2])
    {
      LOBYTE(v14) = 0;
LABEL_61:

      goto LABEL_62;
    }

    btleuuidStr = [(HAPMetadataService *)self btleuuidStr];
    if (btleuuidStr || ([(HAPMetadataService *)v7 btleuuidStr], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      btleuuidStr2 = [(HAPMetadataService *)self btleuuidStr];
      btleuuidStr3 = [(HAPMetadataService *)v7 btleuuidStr];
      v41 = btleuuidStr2;
      if (![btleuuidStr2 isEqualToString:?])
      {
        LOBYTE(v14) = 0;
        goto LABEL_57;
      }

      v39 = 1;
    }

    else
    {
      v36 = 0;
      v39 = 0;
    }

    properties = [(HAPMetadataService *)self properties];
    if (properties || ([(HAPMetadataService *)v7 properties], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      btleuuidStr2 = [(HAPMetadataService *)self properties];
      [(HAPMetadataService *)v7 properties];
      v37 = v38 = btleuuidStr2;
      if (![btleuuidStr2 isEqualToNumber:v37])
      {
        LOBYTE(v14) = 0;
        goto LABEL_54;
      }

      v35 = 1;
    }

    else
    {
      v31 = 0;
      v35 = 0;
    }

    linkedServices = [(HAPMetadataService *)self linkedServices];
    if (linkedServices || ([(HAPMetadataService *)v7 linkedServices], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      btleuuidStr2 = [(HAPMetadataService *)self linkedServices];
      linkedServices2 = [(HAPMetadataService *)v7 linkedServices];
      v33 = btleuuidStr2;
      if (![btleuuidStr2 isEqualToArray:linkedServices2])
      {
        LOBYTE(v14) = 0;
        goto LABEL_51;
      }

      v30 = 1;
    }

    else
    {
      v26 = 0;
      v30 = 0;
    }

    mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
    if (mandatoryCharacteristics || ([(HAPMetadataService *)v7 mandatoryCharacteristics], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      btleuuidStr2 = [(HAPMetadataService *)self mandatoryCharacteristics];
      mandatoryCharacteristics2 = [(HAPMetadataService *)v7 mandatoryCharacteristics];
      v28 = btleuuidStr2;
      if (![btleuuidStr2 isEqual:mandatoryCharacteristics2])
      {
        LOBYTE(v14) = 0;
        goto LABEL_48;
      }

      v25 = 1;
    }

    else
    {
      v22 = 0;
      v25 = 0;
    }

    optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
    if (optionalCharacteristics || ([(HAPMetadataService *)v7 optionalCharacteristics], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      optionalCharacteristics2 = [(HAPMetadataService *)self optionalCharacteristics];
      optionalCharacteristics3 = [(HAPMetadataService *)v7 optionalCharacteristics];
      v23 = optionalCharacteristics2;
      v17 = optionalCharacteristics2;
      btleuuidStr2 = optionalCharacteristics3;
      if (![v17 isEqual:optionalCharacteristics3])
      {
        LOBYTE(v14) = 0;
LABEL_45:

LABEL_46:
        if (optionalCharacteristics)
        {

          if (!v25)
          {
            goto LABEL_49;
          }
        }

        else
        {

          if ((v25 & 1) == 0)
          {
LABEL_49:
            if (mandatoryCharacteristics)
            {

              if (!v30)
              {
                goto LABEL_52;
              }
            }

            else
            {

              if ((v30 & 1) == 0)
              {
LABEL_52:
                if (linkedServices)
                {

                  if (!v35)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {

                  if ((v35 & 1) == 0)
                  {
LABEL_55:
                    if (properties)
                    {

                      if (!v39)
                      {
LABEL_58:
                        if (!btleuuidStr)
                        {
                        }

                        goto LABEL_61;
                      }
                    }

                    else
                    {

                      if ((v39 & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

LABEL_57:

                    goto LABEL_58;
                  }
                }

LABEL_54:

                goto LABEL_55;
              }
            }

LABEL_51:

            goto LABEL_52;
          }
        }

LABEL_48:

        goto LABEL_49;
      }

      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    allowAssociatedService = [(HAPMetadataService *)self allowAssociatedService];
    v14 = allowAssociatedService ^ [(HAPMetadataService *)v7 allowAssociatedService]^ 1;
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  LOBYTE(v14) = 1;
LABEL_65:

  return v14;
}

- (void)dump
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    name = [(HAPMetadataService *)self name];
    uuidStr = [(HAPMetadataService *)self uuidStr];
    svcDescription = [(HAPMetadataService *)self svcDescription];
    *buf = 138544130;
    v59 = v5;
    v60 = 2112;
    v61 = name;
    v62 = 2112;
    v63 = uuidStr;
    v64 = 2112;
    v65 = svcDescription;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharacteristic %@(%@):  description: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      allowAssociatedService = [(HAPMetadataService *)self allowAssociatedService];
      *buf = 138543618;
      v59 = v11;
      v60 = 2048;
      v61 = allowAssociatedService;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@AllowAssociatedService: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v14 = [mandatoryCharacteristics count];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Mandatory characteristics:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(HAPMetadataService *)self mandatoryCharacteristics];
    v18 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            name2 = [v22 name];
            uuidStr2 = [v22 uuidStr];
            chrDescription = [v22 chrDescription];
            *buf = 138544130;
            v59 = v25;
            v60 = 2112;
            v61 = name2;
            v62 = 2112;
            v63 = uuidStr2;
            v64 = 2112;
            v65 = chrDescription;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v19);
    }
  }

  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v30 = [optionalCharacteristics count];

  if (v30)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v33;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Optional characteristics:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obja = [(HAPMetadataService *)self optionalCharacteristics];
    v34 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(obja);
          }

          v38 = *(*(&v48 + 1) + 8 * j);
          v39 = objc_autoreleasePoolPush();
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            name3 = [v38 name];
            uuidStr3 = [v38 uuidStr];
            chrDescription2 = [v38 chrDescription];
            *buf = 138544130;
            v59 = v41;
            v60 = 2112;
            v61 = name3;
            v62 = 2112;
            v63 = uuidStr3;
            v64 = 2112;
            v65 = chrDescription2;
            _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v39);
        }

        v35 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v35);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v38 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v5 = [mandatoryCharacteristics countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(mandatoryCharacteristics);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        name = [v9 name];
        uuidStr = [v9 uuidStr];
        [string appendFormat:@"%@(%@), ", name, uuidStr];
      }

      v6 = [mandatoryCharacteristics countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  string2 = [MEMORY[0x277CCAB68] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v14 = [optionalCharacteristics countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(optionalCharacteristics);
        }

        v18 = *(*(&v28 + 1) + 8 * j);
        name2 = [v18 name];
        uuidStr2 = [v18 uuidStr];
        [string2 appendFormat:@"%@(%@), ", name2, uuidStr2];
      }

      v15 = [optionalCharacteristics countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  v21 = MEMORY[0x277CCACA8];
  name3 = [(HAPMetadataService *)self name];
  uuidStr3 = [(HAPMetadataService *)self uuidStr];
  svcDescription = [(HAPMetadataService *)self svcDescription];
  v25 = [v21 stringWithFormat:@"HAPMetadataService %@(%@) - %@ - mandatory %@, optional %@", name3, uuidStr3, svcDescription, string, string2];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)generateDictionary:(id)dictionary metadata:(id)metadata
{
  v44 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  uuidStr = [(HAPMetadataService *)self uuidStr];
  v32 = dictionaryCopy;
  v10 = [HAPMetadata shortenHAPType:uuidStr baseUUIDSuffix:dictionaryCopy];
  [dictionary setObject:v10 forKeyedSubscript:@"ShortUUID"];

  svcDescription = [(HAPMetadataService *)self svcDescription];
  [dictionary setObject:svcDescription forKeyedSubscript:@"DefaultDescription"];

  [dictionary setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];
  btleuuidStr = [(HAPMetadataService *)self btleuuidStr];

  if (btleuuidStr)
  {
    btleuuidStr2 = [(HAPMetadataService *)self btleuuidStr];
    [dictionary setObject:btleuuidStr2 forKeyedSubscript:@"BTLE_ShortUUID"];
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  v15 = objc_autoreleasePoolPush();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  mandatoryCharacteristics = [(HAPMetadataService *)self mandatoryCharacteristics];
  v17 = [mandatoryCharacteristics countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(mandatoryCharacteristics);
        }

        v21 = [metadataCopy characteristicUTIFromType:*(*(&v38 + 1) + 8 * i)];
        if (v21)
        {
          [array addObject:v21];
        }
      }

      v18 = [mandatoryCharacteristics countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v15);
  if ([array count])
  {
    [dictionary2 setObject:array forKeyedSubscript:@"Required"];
  }

  array2 = [MEMORY[0x277CBEB18] array];

  v23 = objc_autoreleasePoolPush();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  optionalCharacteristics = [(HAPMetadataService *)self optionalCharacteristics];
  v25 = [optionalCharacteristics countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(optionalCharacteristics);
        }

        v29 = [metadataCopy characteristicUTIFromType:*(*(&v34 + 1) + 8 * j)];
        if (v29)
        {
          [array2 addObject:v29];
        }
      }

      v26 = [optionalCharacteristics countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(v23);
  if ([array2 count])
  {
    [dictionary2 setObject:array2 forKeyedSubscript:@"Optional"];
  }

  if ([dictionary2 count])
  {
    [dictionary setObject:dictionary2 forKeyedSubscript:@"Characteristics"];
  }

  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"AllowAssociatedService"];
  }

  v30 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (HAPMetadataService)initWithName:(id)name uuid:(id)uuid description:(id)description mandatoryChrTypes:(id)types properties:(id)properties linkedServices:(id)services
{
  nameCopy = name;
  uuidCopy = uuid;
  descriptionCopy = description;
  typesCopy = types;
  propertiesCopy = properties;
  servicesCopy = services;
  v20 = 0;
  if (nameCopy && uuidCopy && descriptionCopy)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataService;
    v20 = [(HAPMetadataService *)&v29 init];
    if (v20)
    {
      v21 = [nameCopy copy];
      v22 = *(v20 + 2);
      *(v20 + 2) = v21;

      v23 = [uuidCopy copy];
      v24 = *(v20 + 4);
      *(v20 + 4) = v23;

      v25 = [descriptionCopy copy];
      v26 = *(v20 + 3);
      *(v20 + 3) = v25;

      objc_storeStrong(v20 + 8, types);
      objc_storeStrong(v20 + 6, properties);
      v27 = servicesCopy;
      self = *(v20 + 7);
      *(v20 + 7) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v20;
}

@end