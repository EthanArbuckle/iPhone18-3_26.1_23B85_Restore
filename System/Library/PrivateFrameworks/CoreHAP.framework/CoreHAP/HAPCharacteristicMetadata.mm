@interface HAPCharacteristicMetadata
- (BOOL)isEqualToCharacteristicMetadata:(id)metadata;
- (HAPCharacteristicMetadata)initWithCoder:(id)coder;
- (HAPCharacteristicMetadata)initWithConstraints:(id)constraints description:(id)description format:(id)format units:(id)units;
- (id)_generateValidConstraints:(id)constraints;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAPCharacteristicMetadata

- (HAPCharacteristicMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicMetadata;
  v5 = [(HAPCharacteristicMetadata *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MC"];
    constraints = v5->_constraints;
    v5->_constraints = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MD"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MF"];
    format = v5->_format;
    v5->_format = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    units = v5->_units;
    v5->_units = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  constraints = [(HAPCharacteristicMetadata *)self constraints];
  [coderCopy encodeObject:constraints forKey:@"MC"];

  manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [coderCopy encodeObject:manufacturerDescription forKey:@"MD"];

  format = [(HAPCharacteristicMetadata *)self format];
  [coderCopy encodeObject:format forKey:@"MF"];

  units = [(HAPCharacteristicMetadata *)self units];
  [coderCopy encodeObject:units forKey:@"MU"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    constraints = [(HAPCharacteristicMetadata *)self constraints];
    v7 = [constraints copyWithZone:zone];
    v8 = v5[1];
    v5[1] = v7;

    manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v10 = [manufacturerDescription copyWithZone:zone];
    v11 = v5[2];
    v5[2] = v10;

    format = [(HAPCharacteristicMetadata *)self format];
    v13 = [format copyWithZone:zone];
    v14 = v5[3];
    v5[3] = v13;

    units = [(HAPCharacteristicMetadata *)self units];
    v16 = [units copyWithZone:zone];
    v17 = v5[4];
    v5[4] = v16;
  }

  return v5;
}

- (BOOL)isEqualToCharacteristicMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self == metadataCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    manufacturerDescription2 = [(HAPCharacteristicMetadata *)metadataCopy manufacturerDescription];
    if (manufacturerDescription | manufacturerDescription2)
    {
      v7 = manufacturerDescription2;
      v8 = [manufacturerDescription isEqualToString:manufacturerDescription2];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    format = [(HAPCharacteristicMetadata *)self format];
    format2 = [(HAPCharacteristicMetadata *)metadataCopy format];
    if (format | format2)
    {
      v12 = format2;
      v13 = [format isEqualToString:format2];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    units = [(HAPCharacteristicMetadata *)self units];
    units2 = [(HAPCharacteristicMetadata *)metadataCopy units];
    if (!(units | units2) || (v16 = units2, v17 = [units isEqualToString:units2], v16, units, v17))
    {
      constraints = [(HAPCharacteristicMetadata *)self constraints];
      constraints2 = [(HAPCharacteristicMetadata *)metadataCopy constraints];
      if (constraints == constraints2)
      {
        v9 = 1;
      }

      else
      {
        constraints3 = [(HAPCharacteristicMetadata *)self constraints];
        constraints4 = [(HAPCharacteristicMetadata *)metadataCopy constraints];
        v9 = [constraints3 isEqualToMetadataConstraints:constraints4];
      }
    }

    else
    {
LABEL_11:
      v9 = 0;
    }
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  constraints = [(HAPCharacteristicMetadata *)self constraints];
  v4 = [constraints hash];
  manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  v6 = [manufacturerDescription hash] ^ v4;
  format = [(HAPCharacteristicMetadata *)self format];
  v8 = [format hash];
  units = [(HAPCharacteristicMetadata *)self units];
  v10 = v8 ^ [units hash];

  return v6 ^ v10;
}

- (id)_generateValidConstraints:(id)constraints
{
  constraintsCopy = constraints;
  format = [(HAPCharacteristicMetadata *)self format];
  v6 = [format isEqualToString:@"string"];

  v7 = constraintsCopy;
  if (v6)
  {
    v7 = constraintsCopy;
    if (!constraintsCopy)
    {
      v7 = objc_alloc_init(HAPMetadataConstraints);
    }

    maxLength = [(HAPMetadataConstraints *)v7 maxLength];

    if (!maxLength)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:64];
      [(HAPMetadataConstraints *)v7 setMaxLength:v9];
    }
  }

  minimumValue = [(HAPMetadataConstraints *)v7 minimumValue];
  if (minimumValue)
  {
    goto LABEL_11;
  }

  minimumValue = [(HAPMetadataConstraints *)v7 maximumValue];
  if (minimumValue || ([(HAPMetadataConstraints *)v7 stepValue], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 minLength], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 maxLength], (minimumValue = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_11:

LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  validValues = [(HAPMetadataConstraints *)v7 validValues];
  v14 = [validValues count];

  if (v14)
  {
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = HAPCharacteristicMetadata;
  v4 = [(HMFObject *)&v10 description];
  [v3 appendFormat:@"%@  ", v4];

  constraints = [(HAPCharacteristicMetadata *)self constraints];
  [v3 appendFormat:@"Constraints: %@  ", constraints];

  manufacturerDescription = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v3 appendFormat:@"Description: %@  ", manufacturerDescription];

  format = [(HAPCharacteristicMetadata *)self format];
  [v3 appendFormat:@"Format: %@  ", format];

  units = [(HAPCharacteristicMetadata *)self units];
  [v3 appendFormat:@"Units: %@  ", units];

  return v3;
}

- (HAPCharacteristicMetadata)initWithConstraints:(id)constraints description:(id)description format:(id)format units:(id)units
{
  v45 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  descriptionCopy = description;
  formatCopy = format;
  unitsCopy = units;
  v14 = unitsCopy;
  if (!constraintsCopy && !descriptionCopy && !formatCopy && !unitsCopy)
  {
LABEL_13:
    selfCopy2 = 0;
    goto LABEL_17;
  }

  v15 = constraintsCopy;
  maxLength = [v15 maxLength];
  if (maxLength)
  {
    v17 = maxLength;
    [v15 maxLength];
    v18 = v41 = v14;
    formatCopy2 = format;
    unitsCopy2 = units;
    v20 = v15;
    selfCopy = self;
    v22 = constraintsCopy;
    v23 = formatCopy;
    v24 = descriptionCopy;
    unsignedIntValue = [v18 unsignedIntValue];

    v14 = v41;
    v26 = unsignedIntValue >= 0x101;
    descriptionCopy = v24;
    formatCopy = v23;
    constraintsCopy = v22;
    self = selfCopy;
    v15 = v20;
    units = unitsCopy2;
    format = formatCopy2;
    if (v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@### Value of maxLength exceeds maximum allowed value", buf, 0xCu);

        v14 = v41;
      }

      objc_autoreleasePoolPop(v27);
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v32;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize metadata because of invalid arguments", buf, 0xCu);

        v14 = v41;
      }

      objc_autoreleasePoolPop(v30);
      goto LABEL_13;
    }
  }

  v42.receiver = self;
  v42.super_class = HAPCharacteristicMetadata;
  v34 = [(HAPCharacteristicMetadata *)&v42 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_manufacturerDescription, description);
    objc_storeStrong(&v35->_format, format);
    objc_storeStrong(&v35->_units, units);
    v36 = [(HAPCharacteristicMetadata *)v35 _generateValidConstraints:v15];
    constraints = v35->_constraints;
    v35->_constraints = v36;
  }

  self = v35;
  selfCopy2 = self;
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

@end