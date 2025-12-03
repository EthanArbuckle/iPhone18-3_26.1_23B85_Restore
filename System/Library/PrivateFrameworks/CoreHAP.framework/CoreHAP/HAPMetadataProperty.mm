@interface HAPMetadataProperty
+ (id)init:(id)init withDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (HAPMetadataProperty)initWithType:(id)type bitPosition:(id)position description:(id)description;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataProperty

- (unint64_t)hash
{
  propertyType = [(HAPMetadataProperty *)self propertyType];
  v4 = [propertyType hash];
  propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
  v6 = [propertyDescription hash] ^ v4;
  bitPosition = [(HAPMetadataProperty *)self bitPosition];
  v8 = [bitPosition hash];

  return v6 ^ v8;
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
      v14 = 0;
LABEL_21:

      goto LABEL_22;
    }

    propertyType = [(HAPMetadataProperty *)self propertyType];
    propertyType2 = [(HAPMetadataProperty *)v6 propertyType];
    if (![propertyType isEqualToString:propertyType2])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
    propertyDescription2 = [(HAPMetadataProperty *)v6 propertyDescription];
    if (![propertyDescription isEqualToString:propertyDescription2])
    {
      v14 = 0;
LABEL_19:

      goto LABEL_20;
    }

    bitPosition = [(HAPMetadataProperty *)self bitPosition];
    if (bitPosition || ([(HAPMetadataProperty *)v6 bitPosition], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      bitPosition2 = [(HAPMetadataProperty *)self bitPosition];
      bitPosition3 = [(HAPMetadataProperty *)v6 bitPosition];
      v14 = [bitPosition2 isEqualToNumber:bitPosition3];

      if (bitPosition)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v16 = 0;
      v14 = 1;
    }

    goto LABEL_18;
  }

  v14 = 1;
LABEL_22:

  return v14;
}

- (void)dump
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    propertyType = [(HAPMetadataProperty *)self propertyType];
    propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
    bitPosition = [(HAPMetadataProperty *)self bitPosition];
    v10 = 138544130;
    v11 = v5;
    v12 = 2112;
    v13 = propertyType;
    v14 = 2112;
    v15 = propertyDescription;
    v16 = 2112;
    v17 = bitPosition;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataProperty %@:  description: %@  bitPosition: %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  propertyType = [(HAPMetadataProperty *)self propertyType];
  propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
  bitPosition = [(HAPMetadataProperty *)self bitPosition];
  v7 = [v3 stringWithFormat:@"Unit %@ - %@ - bit %@", propertyType, propertyDescription, bitPosition];

  return v7;
}

- (id)generateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  bitPosition = [(HAPMetadataProperty *)self bitPosition];
  [dictionary setObject:bitPosition forKeyedSubscript:@"Position"];

  propertyDescription = [(HAPMetadataProperty *)self propertyDescription];
  [dictionary setObject:propertyDescription forKeyedSubscript:@"DefaultDescription"];

  [dictionary setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];

  return dictionary;
}

- (HAPMetadataProperty)initWithType:(id)type bitPosition:(id)position description:(id)description
{
  typeCopy = type;
  positionCopy = position;
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = HAPMetadataProperty;
  v11 = [(HAPMetadataProperty *)&v18 init];
  v12 = v11;
  if (descriptionCopy)
  {
    if (v11)
    {
      v13 = [typeCopy copy];
      propertyType = v12->_propertyType;
      v12->_propertyType = v13;

      objc_storeStrong(&v12->_bitPosition, position);
      v15 = [descriptionCopy copy];
      propertyDescription = v12->_propertyDescription;
      v12->_propertyDescription = v15;
    }

    else
    {
      propertyDescription = 0;
    }
  }

  else
  {
    propertyDescription = v11;
    v12 = 0;
  }

  return v12;
}

+ (id)init:(id)init withDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  initCopy = init;
  v7 = [dictionaryCopy hmf_numberForKey:@"Position"];
  v8 = [dictionaryCopy hmf_stringForKey:@"DefaultDescription"];

  v9 = [[HAPMetadataProperty alloc] initWithType:initCopy bitPosition:v7 description:v8];

  return v9;
}

@end