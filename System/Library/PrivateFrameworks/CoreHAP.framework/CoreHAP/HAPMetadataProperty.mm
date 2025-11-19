@interface HAPMetadataProperty
+ (id)init:(id)a3 withDictionary:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HAPMetadataProperty)initWithType:(id)a3 bitPosition:(id)a4 description:(id)a5;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataProperty

- (unint64_t)hash
{
  v3 = [(HAPMetadataProperty *)self propertyType];
  v4 = [v3 hash];
  v5 = [(HAPMetadataProperty *)self propertyDescription];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPMetadataProperty *)self bitPosition];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

    v7 = [(HAPMetadataProperty *)self propertyType];
    v8 = [(HAPMetadataProperty *)v6 propertyType];
    if (![v7 isEqualToString:v8])
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v9 = [(HAPMetadataProperty *)self propertyDescription];
    v10 = [(HAPMetadataProperty *)v6 propertyDescription];
    if (![v9 isEqualToString:v10])
    {
      v14 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v11 = [(HAPMetadataProperty *)self bitPosition];
    if (v11 || ([(HAPMetadataProperty *)v6 bitPosition], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [(HAPMetadataProperty *)self bitPosition];
      v13 = [(HAPMetadataProperty *)v6 bitPosition];
      v14 = [v12 isEqualToNumber:v13];

      if (v11)
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
    v6 = [(HAPMetadataProperty *)self propertyType];
    v7 = [(HAPMetadataProperty *)self propertyDescription];
    v8 = [(HAPMetadataProperty *)self bitPosition];
    v10 = 138544130;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataProperty %@:  description: %@  bitPosition: %@", &v10, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetadataProperty *)self propertyType];
  v5 = [(HAPMetadataProperty *)self propertyDescription];
  v6 = [(HAPMetadataProperty *)self bitPosition];
  v7 = [v3 stringWithFormat:@"Unit %@ - %@ - bit %@", v4, v5, v6];

  return v7;
}

- (id)generateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HAPMetadataProperty *)self bitPosition];
  [v3 setObject:v4 forKeyedSubscript:@"Position"];

  v5 = [(HAPMetadataProperty *)self propertyDescription];
  [v3 setObject:v5 forKeyedSubscript:@"DefaultDescription"];

  [v3 setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];

  return v3;
}

- (HAPMetadataProperty)initWithType:(id)a3 bitPosition:(id)a4 description:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HAPMetadataProperty;
  v11 = [(HAPMetadataProperty *)&v18 init];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v13 = [v8 copy];
      propertyType = v12->_propertyType;
      v12->_propertyType = v13;

      objc_storeStrong(&v12->_bitPosition, a4);
      v15 = [v10 copy];
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

+ (id)init:(id)a3 withDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 hmf_numberForKey:@"Position"];
  v8 = [v5 hmf_stringForKey:@"DefaultDescription"];

  v9 = [[HAPMetadataProperty alloc] initWithType:v6 bitPosition:v7 description:v8];

  return v9;
}

@end