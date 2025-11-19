@interface HAPMetadataUnit
+ (id)init:(id)a3 withDictionary:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HAPMetadataUnit)initWithName:(id)a3 description:(id)a4;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataUnit

- (unint64_t)hash
{
  v3 = [(HAPMetadataUnit *)self name];
  v4 = [v3 hash];
  v5 = [(HAPMetadataUnit *)self unitDescription];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
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
    if (v6)
    {
      v7 = [(HAPMetadataUnit *)self name];
      v8 = [(HAPMetadataUnit *)v6 name];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HAPMetadataUnit *)self unitDescription];
        v10 = [(HAPMetadataUnit *)v6 unitDescription];
        v11 = [v9 isEqualToString:v10];
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
    v6 = [(HAPMetadataUnit *)self name];
    v7 = [(HAPMetadataUnit *)self unitDescription];
    v9 = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataUnit %@:  description: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetadataUnit *)self name];
  v5 = [(HAPMetadataUnit *)self unitDescription];
  v6 = [v3 stringWithFormat:@"Unit %@ - %@", v4, v5];

  return v6;
}

- (id)generateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HAPMetadataUnit *)self unitDescription];
  [v3 setObject:v4 forKeyedSubscript:@"DefaultDescription"];

  [v3 setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];

  return v3;
}

- (HAPMetadataUnit)initWithName:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HAPMetadataUnit;
  v8 = [(HAPMetadataUnit *)&v15 init];
  v9 = v8;
  if (v7 && v6)
  {
    if (v8)
    {
      v10 = [v6 copy];
      name = v9->_name;
      v9->_name = v10;

      v12 = [v7 copy];
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

+ (id)init:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = [a4 hmf_stringForKey:@"DefaultDescription"];
  v7 = [[HAPMetadataUnit alloc] initWithName:v5 description:v6];

  return v7;
}

@end