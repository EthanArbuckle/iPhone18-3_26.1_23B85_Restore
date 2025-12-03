@interface HAPMetadataCharacteristic
- (BOOL)isEqual:(id)equal;
- (HAPMetadataCharacteristic)initWithName:(id)name uuid:(id)uuid description:(id)description format:(id)format properties:(id)properties;
- (id)description;
- (id)generateDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataCharacteristic

- (unint64_t)hash
{
  name = [(HAPMetadataCharacteristic *)self name];
  v4 = [name hash];
  uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
  v6 = [uuidStr hash] ^ v4;
  chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
  v8 = [chrDescription hash];
  format = [(HAPMetadataCharacteristic *)self format];
  v10 = v6 ^ v8 ^ [format hash];
  properties = [(HAPMetadataCharacteristic *)self properties];
  v12 = [properties hash];
  units = [(HAPMetadataCharacteristic *)self units];
  v14 = v12 ^ [units hash];
  valueMetadata = [(HAPMetadataCharacteristic *)self valueMetadata];
  v16 = v14 ^ [valueMetadata hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      v16 = 0;
LABEL_37:

      goto LABEL_38;
    }

    name = [(HAPMetadataCharacteristic *)self name];
    name2 = [(HAPMetadataCharacteristic *)v6 name];
    if (![name isEqualToString:name2])
    {
      v16 = 0;
LABEL_36:

      goto LABEL_37;
    }

    uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
    uuidStr2 = [(HAPMetadataCharacteristic *)v6 uuidStr];
    if (![uuidStr isEqualToString:uuidStr2])
    {
      v16 = 0;
LABEL_35:

      goto LABEL_36;
    }

    chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
    chrDescription2 = [(HAPMetadataCharacteristic *)v6 chrDescription];
    if (![chrDescription isEqualToString:chrDescription2])
    {
      v16 = 0;
LABEL_34:

      goto LABEL_35;
    }

    format = [(HAPMetadataCharacteristic *)self format];
    format2 = [(HAPMetadataCharacteristic *)v6 format];
    v34 = format;
    if (![format isEqualToString:format2])
    {
      v16 = 0;
LABEL_33:

      goto LABEL_34;
    }

    properties = [(HAPMetadataCharacteristic *)self properties];
    properties2 = [(HAPMetadataCharacteristic *)v6 properties];
    v32 = properties;
    if (![properties isEqualToNumber:properties2])
    {
      v16 = 0;
LABEL_32:

      goto LABEL_33;
    }

    units = [(HAPMetadataCharacteristic *)self units];
    if (units || ([(HAPMetadataCharacteristic *)v6 units], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      units2 = [(HAPMetadataCharacteristic *)self units];
      units3 = [(HAPMetadataCharacteristic *)v6 units];
      v29 = units2;
      if (![units2 isEqualToString:units3])
      {
        v16 = 0;
        goto LABEL_28;
      }

      v27 = 1;
    }

    else
    {
      v24 = 0;
      v27 = 0;
    }

    valueMetadata = [(HAPMetadataCharacteristic *)self valueMetadata];
    if (valueMetadata || ([(HAPMetadataCharacteristic *)v6 valueMetadata], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(HAPMetadataCharacteristic *)self valueMetadata:v22];
      [(HAPMetadataCharacteristic *)v6 valueMetadata];
      v18 = v26 = valueMetadata;
      v16 = [v25 isEqual:?];

      if (v26)
      {

        if (!v27)
        {
LABEL_29:
          v19 = units;
          if (!units)
          {

            v19 = 0;
          }

          goto LABEL_32;
        }

LABEL_28:

        goto LABEL_29;
      }

      v21 = v23;
    }

    else
    {
      v21 = 0;
      v16 = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = 1;
LABEL_38:

  return v16;
}

- (void)dump
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    name = [(HAPMetadataCharacteristic *)self name];
    uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
    chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
    format = [(HAPMetadataCharacteristic *)self format];
    properties = [(HAPMetadataCharacteristic *)self properties];
    units = [(HAPMetadataCharacteristic *)self units];
    v13 = 138544898;
    v14 = v5;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = uuidStr;
    v19 = 2112;
    v20 = chrDescription;
    v21 = 2112;
    v22 = format;
    v23 = 2112;
    v24 = properties;
    v25 = 2112;
    v26 = units;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharacteristic %@(%@):  description: %@  format: %@  properties: %@  units:%@", &v13, 0x48u);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HAPMetadataCharacteristic *)self name];
  uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
  chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
  format = [(HAPMetadataCharacteristic *)self format];
  properties = [(HAPMetadataCharacteristic *)self properties];
  v9 = [v3 stringWithFormat:@"HAPMetadataCharacteristic %@(%@) - %@ - format %@, properties %@", name, uuidStr, chrDescription, format, properties];

  return v9;
}

- (id)generateDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CBEB38];
  dictionaryCopy = dictionary;
  dictionary = [v4 dictionary];
  uuidStr = [(HAPMetadataCharacteristic *)self uuidStr];
  v8 = [HAPMetadata shortenHAPType:uuidStr baseUUIDSuffix:dictionaryCopy];

  [dictionary setObject:v8 forKeyedSubscript:@"ShortUUID"];
  chrDescription = [(HAPMetadataCharacteristic *)self chrDescription];
  [dictionary setObject:chrDescription forKeyedSubscript:@"DefaultDescription"];

  format = [(HAPMetadataCharacteristic *)self format];
  [dictionary setObject:format forKeyedSubscript:@"Format"];

  properties = [(HAPMetadataCharacteristic *)self properties];
  [dictionary setObject:properties forKeyedSubscript:@"Properties"];

  [dictionary setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];
  units = [(HAPMetadataCharacteristic *)self units];

  if (units)
  {
    units2 = [(HAPMetadataCharacteristic *)self units];
    [dictionary setObject:units2 forKeyedSubscript:@"Units"];
  }

  valueMetadata = [(HAPMetadataCharacteristic *)self valueMetadata];
  generateDictionary = [valueMetadata generateDictionary];
  [dictionary addEntriesFromDictionary:generateDictionary];

  return dictionary;
}

- (HAPMetadataCharacteristic)initWithName:(id)name uuid:(id)uuid description:(id)description format:(id)format properties:(id)properties
{
  nameCopy = name;
  uuidCopy = uuid;
  descriptionCopy = description;
  formatCopy = format;
  propertiesCopy = properties;
  v17 = propertiesCopy;
  v18 = 0;
  if (nameCopy && uuidCopy && descriptionCopy && formatCopy && propertiesCopy)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataCharacteristic;
    v18 = [(HAPMetadataCharacteristic *)&v29 init];
    if (v18)
    {
      v19 = [nameCopy copy];
      v20 = *(v18 + 1);
      *(v18 + 1) = v19;

      v21 = [uuidCopy copy];
      v22 = *(v18 + 3);
      *(v18 + 3) = v21;

      v23 = [descriptionCopy copy];
      v24 = *(v18 + 2);
      *(v18 + 2) = v23;

      v25 = [formatCopy copy];
      v26 = *(v18 + 5);
      *(v18 + 5) = v25;

      v27 = v17;
      self = *(v18 + 4);
      *(v18 + 4) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v18;
}

@end