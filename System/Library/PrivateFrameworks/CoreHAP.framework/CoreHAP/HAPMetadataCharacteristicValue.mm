@interface HAPMetadataCharacteristicValue
+ (id)initWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HAPMetadataCharacteristicValue)initWithMinLength:(id)a3 maxLength:(id)a4;
- (HAPMetadataCharacteristicValue)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5 validValues:(id)a6;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataCharacteristicValue

- (unint64_t)hash
{
  v3 = [(HAPMetadataCharacteristicValue *)self minLength];
  v4 = [v3 hash];
  v5 = [(HAPMetadataCharacteristicValue *)self maxLength];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPMetadataCharacteristicValue *)self minValue];
  v8 = [v7 hash];
  v9 = [(HAPMetadataCharacteristicValue *)self maxValue];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HAPMetadataCharacteristicValue *)self stepValue];
  v12 = [v11 hash];
  v13 = [(HAPMetadataCharacteristicValue *)self validValues];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self != v8)
  {
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
    if (!v10)
    {
      v12 = 0;
LABEL_71:

      goto LABEL_72;
    }

    v11 = [(HAPMetadataCharacteristicValue *)self minLength];
    if (v11 || ([(HAPMetadataCharacteristicValue *)v10 minLength], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(HAPMetadataCharacteristicValue *)self minLength];
      v4 = [(HAPMetadataCharacteristicValue *)v10 minLength];
      if (([v3 isEqualToNumber:v4] & 1) == 0)
      {

        v12 = 0;
        goto LABEL_68;
      }

      v49 = 1;
    }

    else
    {
      v48 = 0;
      v49 = 0;
    }

    v13 = [(HAPMetadataCharacteristicValue *)self maxLength];
    if (!v13)
    {
      v45 = [(HAPMetadataCharacteristicValue *)v10 maxLength];
      if (!v45)
      {
        v45 = 0;
        v46 = 0;
        goto LABEL_24;
      }
    }

    v6 = [(HAPMetadataCharacteristicValue *)self maxLength];
    v5 = [(HAPMetadataCharacteristicValue *)v10 maxLength];
    if ([v6 isEqualToNumber:v5])
    {
      v42 = v6;
      v46 = 1;
LABEL_24:
      v47 = [(HAPMetadataCharacteristicValue *)self minValue];
      if (v47 || ([(HAPMetadataCharacteristicValue *)v10 minValue], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = [(HAPMetadataCharacteristicValue *)self minValue];
        v15 = [(HAPMetadataCharacteristicValue *)v10 minValue];
        v44 = v14;
        v16 = v14;
        v6 = v15;
        if (![v16 isEqualToNumber:v15])
        {
          v12 = 0;
          goto LABEL_59;
        }

        v40 = 1;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = v5;
      v43 = [(HAPMetadataCharacteristicValue *)self maxValue];
      if (v43 || ([(HAPMetadataCharacteristicValue *)v10 maxValue], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = [(HAPMetadataCharacteristicValue *)self maxValue];
        v5 = [(HAPMetadataCharacteristicValue *)v10 maxValue];
        v39 = v17;
        if (![v17 isEqualToNumber:v5])
        {
          v12 = 0;
          goto LABEL_55;
        }

        v36 = 1;
      }

      else
      {
        v33 = 0;
        v36 = 0;
      }

      v37 = [(HAPMetadataCharacteristicValue *)self stepValue];
      if (v37 || ([(HAPMetadataCharacteristicValue *)v10 stepValue], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v18 = [(HAPMetadataCharacteristicValue *)self stepValue];
        v34 = [(HAPMetadataCharacteristicValue *)v10 stepValue];
        v35 = v18;
        if (![v18 isEqualToNumber:?])
        {
          v12 = 0;
LABEL_51:

LABEL_52:
          v24 = v37;
          if (!v37)
          {

            v24 = 0;
          }

          if (!v36)
          {
LABEL_56:
            v25 = v43;
            if (!v43)
            {

              v25 = 0;
            }

            v5 = v41;
            if (!v40)
            {
LABEL_60:
              v26 = v47;
              if (!v47)
              {

                v26 = 0;
              }

              if (v46)
              {
              }

              if (!v13)
              {
              }

              if (!v49)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
            }

LABEL_59:

            goto LABEL_60;
          }

LABEL_55:

          goto LABEL_56;
        }

        v32 = v6;
        v19 = 1;
      }

      else
      {
        v32 = v6;
        v29 = 0;
        v19 = 0;
      }

      v20 = [(HAPMetadataCharacteristicValue *)self validValues];
      if (v20 || ([(HAPMetadataCharacteristicValue *)v10 validValues], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v19;
        v31 = v5;
        v21 = [(HAPMetadataCharacteristicValue *)self validValues];
        v22 = [(HAPMetadataCharacteristicValue *)v10 validValues];
        v12 = [v21 isEqualToArray:v22];

        if (v20)
        {

          v5 = v31;
          if (!v30)
          {
            v6 = v32;
            goto LABEL_52;
          }

          v6 = v32;
          goto LABEL_51;
        }

        v5 = v31;
        LOBYTE(v19) = v30;
        v23 = v28;
      }

      else
      {
        v23 = 0;
        v12 = 1;
      }

      v6 = v32;
      if ((v19 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (v13)
    {
    }

    else
    {
    }

    v12 = 0;
    if (v49)
    {
LABEL_67:
    }

LABEL_68:
    if (!v11)
    {
    }

    goto LABEL_71;
  }

  v12 = 1;
LABEL_72:

  return v12;
}

- (void)dump
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPMetadataCharacteristicValue *)self description];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@%@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"ValueMetadata"];
  v4 = [(HAPMetadataCharacteristicValue *)self minLength];

  if (v4)
  {
    v5 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 appendFormat:@"  minLength:%@", v5];
  }

  v6 = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (v6)
  {
    v7 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 appendFormat:@"  maxLength:%@", v7];
  }

  v8 = [(HAPMetadataCharacteristicValue *)self minValue];

  if (v8)
  {
    v9 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 appendFormat:@"  minValue:%@", v9];
  }

  v10 = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (v10)
  {
    v11 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 appendFormat:@"  maxValue:%@", v11];
  }

  v12 = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (v12)
  {
    v13 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 appendFormat:@"  stepValue:%@", v13];
  }

  v14 = [(HAPMetadataCharacteristicValue *)self validValues];

  if (v14)
  {
    v15 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 appendFormat:@"  validValues:%@", v15];
  }

  return v3;
}

- (id)generateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HAPMetadataCharacteristicValue *)self minLength];

  if (v4)
  {
    v5 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 setObject:v5 forKeyedSubscript:@"MinLength"];
  }

  v6 = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (v6)
  {
    v7 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 setObject:v7 forKeyedSubscript:@"MaxLength"];
  }

  v8 = [(HAPMetadataCharacteristicValue *)self minValue];

  if (v8)
  {
    v9 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 setObject:v9 forKeyedSubscript:@"MinValue"];
  }

  v10 = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (v10)
  {
    v11 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 setObject:v11 forKeyedSubscript:@"MaxValue"];
  }

  v12 = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (v12)
  {
    v13 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 setObject:v13 forKeyedSubscript:@"StepValue"];
  }

  v14 = [(HAPMetadataCharacteristicValue *)self validValues];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 setObject:v16 forKeyedSubscript:@"ValidValues"];
  }

  return v3;
}

- (HAPMetadataCharacteristicValue)initWithMinValue:(id)a3 maxValue:(id)a4 stepValue:(id)a5 validValues:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11 || v12 || v13)
  {
    v19.receiver = self;
    v19.super_class = HAPMetadataCharacteristicValue;
    v16 = [(HAPMetadataCharacteristicValue *)&v19 init];
    v15 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_minValue, a3);
      objc_storeStrong(&v15->_maxValue, a4);
      objc_storeStrong(&v15->_stepValue, a5);
      v17 = v14;
      self = v15->_validValues;
      v15->_validValues = v17;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (HAPMetadataCharacteristicValue)initWithMinLength:(id)a3 maxLength:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 | v8)
  {
    v13.receiver = self;
    v13.super_class = HAPMetadataCharacteristicValue;
    v9 = [(HAPMetadataCharacteristicValue *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_minLength, a3);
      v11 = v8;
      self = v10->_maxLength;
      v10->_maxLength = v11;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)initWithDictionary:(id)a3
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

@end