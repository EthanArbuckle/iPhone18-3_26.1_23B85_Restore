@interface HMDCharacteristicMetadata
+ (id)characteristicMetadataWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDCharacteristicMetadata)init;
- (HMDCharacteristicMetadata)initWithCoder:(id)a3;
- (HMDCharacteristicMetadata)initWithMinimumValue:(id)a3 maximumValue:(id)a4 stepValue:(id)a5 maxLength:(id)a6 validValues:(id)a7 format:(id)a8 units:(id)a9 manufacturerDescription:(id)a10;
- (NSString)description;
- (id)_descriptionDetails;
- (id)dictionaryRepresentation;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCharacteristicMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCharacteristicMetadata *)self minimumValue];
  [v4 encodeObject:v5 forKey:@"metadataMinimumValue"];

  v6 = [(HMDCharacteristicMetadata *)self maximumValue];
  [v4 encodeObject:v6 forKey:@"metadataMaximumValue"];

  v7 = [(HMDCharacteristicMetadata *)self stepValue];
  [v4 encodeObject:v7 forKey:@"metadataStepValue"];

  v8 = [(HMDCharacteristicMetadata *)self maxLength];
  [v4 encodeObject:v8 forKey:@"metadataMaxLength"];

  v9 = [(HMDCharacteristicMetadata *)self format];
  [v4 encodeObject:v9 forKey:@"metadataFormat"];

  v10 = [(HMDCharacteristicMetadata *)self units];
  [v4 encodeObject:v10 forKey:@"metadataUnits"];

  v11 = [(HMDCharacteristicMetadata *)self manufacturerDescription];
  [v4 encodeObject:v11 forKey:@"metadataUserDescription"];

  v12 = [(HMDCharacteristicMetadata *)self validValues];
  [v4 encodeObject:v12 forKey:@"metadataValidValues"];
}

- (HMDCharacteristicMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMinimumValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaximumValue"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataStepValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaxLength"];
  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metadataValidValues"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataFormat"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataUnits"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataUserDescription"];

  v13 = [(HMDCharacteristicMetadata *)self initWithMinimumValue:v5 maximumValue:v6 stepValue:v7 maxLength:v8 validValues:v9 format:v10 units:v11 manufacturerDescription:v12];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
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
    v7 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    minimumValue = self->_minimumValue;
    v9 = [(HMDCharacteristicMetadata *)v6 minimumValue];
    LODWORD(minimumValue) = HMFEqualObjects();

    if (!minimumValue)
    {
      goto LABEL_14;
    }

    maximumValue = self->_maximumValue;
    v11 = [(HMDCharacteristicMetadata *)v7 maximumValue];
    LODWORD(maximumValue) = HMFEqualObjects();

    if (!maximumValue)
    {
      goto LABEL_14;
    }

    stepValue = self->_stepValue;
    v13 = [(HMDCharacteristicMetadata *)v7 stepValue];
    LODWORD(stepValue) = HMFEqualObjects();

    if (!stepValue)
    {
      goto LABEL_14;
    }

    maxLength = self->_maxLength;
    v15 = [(HMDCharacteristicMetadata *)v7 maxLength];
    LODWORD(maxLength) = HMFEqualObjects();

    if (!maxLength)
    {
      goto LABEL_14;
    }

    format = self->_format;
    v17 = [(HMDCharacteristicMetadata *)v7 format];
    LODWORD(format) = HMFEqualObjects();

    if (!format)
    {
      goto LABEL_14;
    }

    units = self->_units;
    v19 = [(HMDCharacteristicMetadata *)v7 units];
    LODWORD(units) = HMFEqualObjects();

    if (!units)
    {
      goto LABEL_14;
    }

    manufacturerDescription = self->_manufacturerDescription;
    v21 = [(HMDCharacteristicMetadata *)v7 manufacturerDescription];
    LODWORD(manufacturerDescription) = HMFEqualObjects();

    if (manufacturerDescription)
    {
      validValues = self->_validValues;
      v23 = [(HMDCharacteristicMetadata *)v7 validValues];
      v24 = HMFEqualObjects();
    }

    else
    {
LABEL_14:
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(HMDCharacteristicMetadata *)self minimumValue];
  v4 = [v3 hash];

  v5 = [(HMDCharacteristicMetadata *)self maximumValue];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDCharacteristicMetadata *)self stepValue];
  v8 = [v7 hash];

  v9 = [(HMDCharacteristicMetadata *)self maxLength];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMDCharacteristicMetadata *)self format];
  v12 = [v11 hash];

  v13 = [(HMDCharacteristicMetadata *)self units];
  v14 = v12 ^ [v13 hash];

  v15 = [(HMDCharacteristicMetadata *)self manufacturerDescription];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(HMDCharacteristicMetadata *)self validValues];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  [v3 setObject:self->_minimumValue forKeyedSubscript:@"metadataMinimumValue"];
  [v3 setObject:self->_maximumValue forKeyedSubscript:@"metadataMaximumValue"];
  [v3 setObject:self->_stepValue forKeyedSubscript:@"metadataStepValue"];
  [v3 setObject:self->_maxLength forKeyedSubscript:@"metadataMaxLength"];
  [v3 setObject:self->_validValues forKeyedSubscript:@"metadataValidValues"];
  [v3 setObject:self->_manufacturerDescription forKeyedSubscript:@"metadataUserDescription"];
  [v3 setObject:self->_format forKeyedSubscript:@"metadataFormat"];
  [v3 setObject:self->_units forKeyedSubscript:@"metadataUnits"];

  return v3;
}

- (id)_descriptionDetails
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  v4 = [(HMDCharacteristicMetadata *)self format];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(HMDCharacteristicMetadata *)self format];
    v7 = [v5 stringWithFormat:@"Format: %@", v6];
    [v3 addObject:v7];
  }

  v8 = [(HMDCharacteristicMetadata *)self units];

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(HMDCharacteristicMetadata *)self units];
    v11 = [v9 stringWithFormat:@"Units: %@", v10];
    [v3 addObject:v11];
  }

  v12 = [(HMDCharacteristicMetadata *)self minimumValue];

  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(HMDCharacteristicMetadata *)self minimumValue];
    v15 = [v13 stringWithFormat:@"MinValue: %@", v14];
    [v3 addObject:v15];
  }

  v16 = [(HMDCharacteristicMetadata *)self maximumValue];

  if (v16)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(HMDCharacteristicMetadata *)self maximumValue];
    v19 = [v17 stringWithFormat:@"MaxValue: %@", v18];
    [v3 addObject:v19];
  }

  v20 = [(HMDCharacteristicMetadata *)self stepValue];

  if (v20)
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [(HMDCharacteristicMetadata *)self stepValue];
    v23 = [v21 stringWithFormat:@"StepValue: %@", v22];
    [v3 addObject:v23];
  }

  v24 = [(HMDCharacteristicMetadata *)self maxLength];

  if (v24)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [(HMDCharacteristicMetadata *)self maxLength];
    v27 = [v25 stringWithFormat:@"Max length: %@", v26];
    [v3 addObject:v27];
  }

  v28 = [(HMDCharacteristicMetadata *)self manufacturerDescription];

  if (v28)
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [(HMDCharacteristicMetadata *)self manufacturerDescription];
    v31 = [v29 stringWithFormat:@"Manufacturer Description: %@", v30];
    [v3 addObject:v31];
  }

  v32 = [(HMDCharacteristicMetadata *)self validValues];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Valid Values: "];
    [v3 addObject:v34];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = [(HMDCharacteristicMetadata *)self validValues];
    v36 = [v35 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v45;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, ", *(*(&v44 + 1) + 8 * i)];
          [v3 addObject:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v37);
    }
  }

  v41 = [v3 componentsJoinedByString:{@", "}];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [(HMDCharacteristicMetadata *)self _descriptionDetails];
  v5 = [v3 dictionaryWithObject:v4 forKey:*MEMORY[0x277D0F170]];

  return v5;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"[%@"];
  v4 = [(HMDCharacteristicMetadata *)self _descriptionDetails];
  [v3 appendString:v4];

  [v3 appendString:@" ]"];

  return v3;
}

- (HMDCharacteristicMetadata)initWithMinimumValue:(id)a3 maximumValue:(id)a4 stepValue:(id)a5 maxLength:(id)a6 validValues:(id)a7 format:(id)a8 units:(id)a9 manufacturerDescription:(id)a10
{
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v34.receiver = self;
  v34.super_class = HMDCharacteristicMetadata;
  v21 = [(HMDCharacteristicMetadata *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_minimumValue, a3);
    objc_storeStrong(&v22->_maximumValue, a4);
    objc_storeStrong(&v22->_stepValue, a5);
    objc_storeStrong(&v22->_maxLength, a6);
    objc_storeStrong(&v22->_validValues, a7);
    v23 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:{v18, v30, v31, v32, v33}];
    format = v22->_format;
    v22->_format = v23;

    v25 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v19];
    units = v22->_units;
    v22->_units = v25;

    v27 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v20];
    manufacturerDescription = v22->_manufacturerDescription;
    v22->_manufacturerDescription = v27;
  }

  return v22;
}

- (HMDCharacteristicMetadata)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)characteristicMetadataWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"metadataMinimumValue"];
  v6 = [v4 hmf_numberForKey:@"metadataMaximumValue"];
  v7 = [v4 hmf_numberForKey:@"metadataStepValue"];
  v8 = [v4 hmf_numberForKey:@"metadataMaxLength"];
  v9 = [v4 hmf_arrayForKey:@"metadataValidValues"];
  v10 = [v4 hmf_stringForKey:@"metadataUserDescription"];
  v11 = [v4 hmf_stringForKey:@"metadataFormat"];
  v12 = [v4 hmf_stringForKey:@"metadataUnits"];

  if (v10 || v11 || v12 || ([v5 doubleValue], v14 = v13, objc_msgSend(v6, "doubleValue"), v14 < v15))
  {
    v16 = [[a1 alloc] initWithMinimumValue:v5 maximumValue:v6 stepValue:v7 maxLength:v8 validValues:v9 format:v11 units:v12 manufacturerDescription:v10];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end