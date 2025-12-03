@interface HAPMetadataCharacteristicValue
+ (id)initWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (HAPMetadataCharacteristicValue)initWithMinLength:(id)length maxLength:(id)maxLength;
- (HAPMetadataCharacteristicValue)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue validValues:(id)values;
- (id)description;
- (id)generateDictionary;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataCharacteristicValue

- (unint64_t)hash
{
  minLength = [(HAPMetadataCharacteristicValue *)self minLength];
  v4 = [minLength hash];
  maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];
  v6 = [maxLength hash] ^ v4;
  minValue = [(HAPMetadataCharacteristicValue *)self minValue];
  v8 = [minValue hash];
  maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];
  v10 = v6 ^ v8 ^ [maxValue hash];
  stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];
  v12 = [stepValue hash];
  validValues = [(HAPMetadataCharacteristicValue *)self validValues];
  v14 = v12 ^ [validValues hash];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
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

    minLength = [(HAPMetadataCharacteristicValue *)self minLength];
    if (minLength || ([(HAPMetadataCharacteristicValue *)v10 minLength], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      minLength2 = [(HAPMetadataCharacteristicValue *)self minLength];
      minLength3 = [(HAPMetadataCharacteristicValue *)v10 minLength];
      if (([minLength2 isEqualToNumber:minLength3] & 1) == 0)
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

    maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];
    if (!maxLength)
    {
      maxLength2 = [(HAPMetadataCharacteristicValue *)v10 maxLength];
      if (!maxLength2)
      {
        maxLength2 = 0;
        v46 = 0;
        goto LABEL_24;
      }
    }

    maxLength3 = [(HAPMetadataCharacteristicValue *)self maxLength];
    maxLength4 = [(HAPMetadataCharacteristicValue *)v10 maxLength];
    if ([maxLength3 isEqualToNumber:maxLength4])
    {
      v42 = maxLength3;
      v46 = 1;
LABEL_24:
      minValue = [(HAPMetadataCharacteristicValue *)self minValue];
      if (minValue || ([(HAPMetadataCharacteristicValue *)v10 minValue], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        minValue2 = [(HAPMetadataCharacteristicValue *)self minValue];
        minValue3 = [(HAPMetadataCharacteristicValue *)v10 minValue];
        v44 = minValue2;
        v16 = minValue2;
        maxLength3 = minValue3;
        if (![v16 isEqualToNumber:minValue3])
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

      v41 = maxLength4;
      maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];
      if (maxValue || ([(HAPMetadataCharacteristicValue *)v10 maxValue], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        maxValue2 = [(HAPMetadataCharacteristicValue *)self maxValue];
        maxLength4 = [(HAPMetadataCharacteristicValue *)v10 maxValue];
        v39 = maxValue2;
        if (![maxValue2 isEqualToNumber:maxLength4])
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

      stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];
      if (stepValue || ([(HAPMetadataCharacteristicValue *)v10 stepValue], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        stepValue2 = [(HAPMetadataCharacteristicValue *)self stepValue];
        stepValue3 = [(HAPMetadataCharacteristicValue *)v10 stepValue];
        v35 = stepValue2;
        if (![stepValue2 isEqualToNumber:?])
        {
          v12 = 0;
LABEL_51:

LABEL_52:
          v24 = stepValue;
          if (!stepValue)
          {

            v24 = 0;
          }

          if (!v36)
          {
LABEL_56:
            v25 = maxValue;
            if (!maxValue)
            {

              v25 = 0;
            }

            maxLength4 = v41;
            if (!v40)
            {
LABEL_60:
              v26 = minValue;
              if (!minValue)
              {

                v26 = 0;
              }

              if (v46)
              {
              }

              if (!maxLength)
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

        v32 = maxLength3;
        v19 = 1;
      }

      else
      {
        v32 = maxLength3;
        v29 = 0;
        v19 = 0;
      }

      validValues = [(HAPMetadataCharacteristicValue *)self validValues];
      if (validValues || ([(HAPMetadataCharacteristicValue *)v10 validValues], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v19;
        v31 = maxLength4;
        validValues2 = [(HAPMetadataCharacteristicValue *)self validValues];
        validValues3 = [(HAPMetadataCharacteristicValue *)v10 validValues];
        v12 = [validValues2 isEqualToArray:validValues3];

        if (validValues)
        {

          maxLength4 = v31;
          if (!v30)
          {
            maxLength3 = v32;
            goto LABEL_52;
          }

          maxLength3 = v32;
          goto LABEL_51;
        }

        maxLength4 = v31;
        LOBYTE(v19) = v30;
        v23 = v28;
      }

      else
      {
        v23 = 0;
        v12 = 1;
      }

      maxLength3 = v32;
      if ((v19 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (maxLength)
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
    if (!minLength)
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
  minLength = [(HAPMetadataCharacteristicValue *)self minLength];

  if (minLength)
  {
    minLength2 = [(HAPMetadataCharacteristicValue *)self minLength];
    [v3 appendFormat:@"  minLength:%@", minLength2];
  }

  maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (maxLength)
  {
    maxLength2 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [v3 appendFormat:@"  maxLength:%@", maxLength2];
  }

  minValue = [(HAPMetadataCharacteristicValue *)self minValue];

  if (minValue)
  {
    minValue2 = [(HAPMetadataCharacteristicValue *)self minValue];
    [v3 appendFormat:@"  minValue:%@", minValue2];
  }

  maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [v3 appendFormat:@"  maxValue:%@", maxValue2];
  }

  stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [v3 appendFormat:@"  stepValue:%@", stepValue2];
  }

  validValues = [(HAPMetadataCharacteristicValue *)self validValues];

  if (validValues)
  {
    validValues2 = [(HAPMetadataCharacteristicValue *)self validValues];
    [v3 appendFormat:@"  validValues:%@", validValues2];
  }

  return v3;
}

- (id)generateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  minLength = [(HAPMetadataCharacteristicValue *)self minLength];

  if (minLength)
  {
    minLength2 = [(HAPMetadataCharacteristicValue *)self minLength];
    [dictionary setObject:minLength2 forKeyedSubscript:@"MinLength"];
  }

  maxLength = [(HAPMetadataCharacteristicValue *)self maxLength];

  if (maxLength)
  {
    maxLength2 = [(HAPMetadataCharacteristicValue *)self maxLength];
    [dictionary setObject:maxLength2 forKeyedSubscript:@"MaxLength"];
  }

  minValue = [(HAPMetadataCharacteristicValue *)self minValue];

  if (minValue)
  {
    minValue2 = [(HAPMetadataCharacteristicValue *)self minValue];
    [dictionary setObject:minValue2 forKeyedSubscript:@"MinValue"];
  }

  maxValue = [(HAPMetadataCharacteristicValue *)self maxValue];

  if (maxValue)
  {
    maxValue2 = [(HAPMetadataCharacteristicValue *)self maxValue];
    [dictionary setObject:maxValue2 forKeyedSubscript:@"MaxValue"];
  }

  stepValue = [(HAPMetadataCharacteristicValue *)self stepValue];

  if (stepValue)
  {
    stepValue2 = [(HAPMetadataCharacteristicValue *)self stepValue];
    [dictionary setObject:stepValue2 forKeyedSubscript:@"StepValue"];
  }

  validValues = [(HAPMetadataCharacteristicValue *)self validValues];
  v15 = [validValues count];

  if (v15)
  {
    validValues2 = [(HAPMetadataCharacteristicValue *)self validValues];
    [dictionary setObject:validValues2 forKeyedSubscript:@"ValidValues"];
  }

  return dictionary;
}

- (HAPMetadataCharacteristicValue)initWithMinValue:(id)value maxValue:(id)maxValue stepValue:(id)stepValue validValues:(id)values
{
  valueCopy = value;
  maxValueCopy = maxValue;
  stepValueCopy = stepValue;
  valuesCopy = values;
  if (valueCopy || maxValueCopy || stepValueCopy)
  {
    v19.receiver = self;
    v19.super_class = HAPMetadataCharacteristicValue;
    v16 = [(HAPMetadataCharacteristicValue *)&v19 init];
    v15 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_minValue, value);
      objc_storeStrong(&v15->_maxValue, maxValue);
      objc_storeStrong(&v15->_stepValue, stepValue);
      v17 = valuesCopy;
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

- (HAPMetadataCharacteristicValue)initWithMinLength:(id)length maxLength:(id)maxLength
{
  lengthCopy = length;
  maxLengthCopy = maxLength;
  if (lengthCopy | maxLengthCopy)
  {
    v13.receiver = self;
    v13.super_class = HAPMetadataCharacteristicValue;
    v9 = [(HAPMetadataCharacteristicValue *)&v13 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_minLength, length);
      v11 = maxLengthCopy;
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

+ (id)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy hmf_numberForKey:@"MinLength"];
  v5 = [dictionaryCopy hmf_numberForKey:@"MaxLength"];
  if (v4 | v5)
  {
    v6 = [[HAPMetadataCharacteristicValue alloc] initWithMinLength:v4 maxLength:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy hmf_numberForKey:@"MinValue"];
  v8 = [dictionaryCopy hmf_numberForKey:@"MaxValue"];
  v9 = [dictionaryCopy hmf_numberForKey:@"StepValue"];
  v10 = [dictionaryCopy hmf_arrayForKey:@"ValidValues"];
  if (v7 || v8 || v9)
  {
    if (v6)
    {
      context = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        [dictionaryCopy hmf_stringForKey:@"ShortUUID"];
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