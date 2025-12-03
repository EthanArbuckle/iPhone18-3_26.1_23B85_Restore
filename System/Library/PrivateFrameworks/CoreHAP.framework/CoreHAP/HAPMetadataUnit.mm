@interface HAPMetadataUnit
+ (id)init:(id)init withDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (HAPMetadataUnit)initWithName:(id)name description:(id)description;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataUnit

- (unint64_t)hash
{
  name = [(HAPMetadataUnit *)self name];
  v4 = [name hash];
  unitDescription = [(HAPMetadataUnit *)self unitDescription];
  v6 = [unitDescription hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
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
    if (v6)
    {
      name = [(HAPMetadataUnit *)self name];
      name2 = [(HAPMetadataUnit *)v6 name];
      if ([name isEqualToString:name2])
      {
        unitDescription = [(HAPMetadataUnit *)self unitDescription];
        unitDescription2 = [(HAPMetadataUnit *)v6 unitDescription];
        v11 = [unitDescription isEqualToString:unitDescription2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)dump
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    name = [(HAPMetadataUnit *)self name];
    unitDescription = [(HAPMetadataUnit *)self unitDescription];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = name;
    v13 = 2112;
    v14 = unitDescription;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataUnit %@:  description: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HAPMetadataUnit *)self name];
  unitDescription = [(HAPMetadataUnit *)self unitDescription];
  v6 = [v3 stringWithFormat:@"Unit %@ - %@", name, unitDescription];

  return v6;
}

- (id)generateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  unitDescription = [(HAPMetadataUnit *)self unitDescription];
  [dictionary setObject:unitDescription forKeyedSubscript:@"DefaultDescription"];

  [dictionary setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];

  return dictionary;
}

- (HAPMetadataUnit)initWithName:(id)name description:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = HAPMetadataUnit;
  v8 = [(HAPMetadataUnit *)&v15 init];
  v9 = v8;
  if (descriptionCopy && nameCopy)
  {
    if (v8)
    {
      v10 = [nameCopy copy];
      name = v9->_name;
      v9->_name = v10;

      v12 = [descriptionCopy copy];
      unitDescription = v9->_unitDescription;
      v9->_unitDescription = v12;
    }

    else
    {
      unitDescription = 0;
    }
  }

  else
  {
    unitDescription = v8;
    v9 = 0;
  }

  return v9;
}

+ (id)init:(id)init withDictionary:(id)dictionary
{
  initCopy = init;
  v6 = [dictionary hmf_stringForKey:@"DefaultDescription"];
  v7 = [[HAPMetadataUnit alloc] initWithName:initCopy description:v6];

  return v7;
}

@end