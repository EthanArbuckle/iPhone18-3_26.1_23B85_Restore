@interface HAPCharacteristicMetadata
- (BOOL)isEqualToCharacteristicMetadata:(id)a3;
- (HAPCharacteristicMetadata)initWithCoder:(id)a3;
- (HAPCharacteristicMetadata)initWithConstraints:(id)a3 description:(id)a4 format:(id)a5 units:(id)a6;
- (id)_generateValidConstraints:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAPCharacteristicMetadata

- (HAPCharacteristicMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HAPCharacteristicMetadata;
  v5 = [(HAPCharacteristicMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MC"];
    constraints = v5->_constraints;
    v5->_constraints = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MD"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MF"];
    format = v5->_format;
    v5->_format = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MU"];
    units = v5->_units;
    v5->_units = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPCharacteristicMetadata *)self constraints];
  [v4 encodeObject:v5 forKey:@"MC"];

  v6 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v4 encodeObject:v6 forKey:@"MD"];

  v7 = [(HAPCharacteristicMetadata *)self format];
  [v4 encodeObject:v7 forKey:@"MF"];

  v8 = [(HAPCharacteristicMetadata *)self units];
  [v4 encodeObject:v8 forKey:@"MU"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HAPCharacteristicMetadata *)self constraints];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[1];
    v5[1] = v7;

    v9 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v12 = [(HAPCharacteristicMetadata *)self format];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[3];
    v5[3] = v13;

    v15 = [(HAPCharacteristicMetadata *)self units];
    v16 = [v15 copyWithZone:a3];
    v17 = v5[4];
    v5[4] = v16;
  }

  return v5;
}

- (BOOL)isEqualToCharacteristicMetadata:(id)a3
{
  v4 = a3;
  if (self == v4)
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

    v5 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
    v6 = [(HAPCharacteristicMetadata *)v4 manufacturerDescription];
    if (v5 | v6)
    {
      v7 = v6;
      v8 = [v5 isEqualToString:v6];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v10 = [(HAPCharacteristicMetadata *)self format];
    v11 = [(HAPCharacteristicMetadata *)v4 format];
    if (v10 | v11)
    {
      v12 = v11;
      v13 = [v10 isEqualToString:v11];

      if (!v13)
      {
        goto LABEL_11;
      }
    }

    v14 = [(HAPCharacteristicMetadata *)self units];
    v15 = [(HAPCharacteristicMetadata *)v4 units];
    if (!(v14 | v15) || (v16 = v15, v17 = [v14 isEqualToString:v15], v16, v14, v17))
    {
      v18 = [(HAPCharacteristicMetadata *)self constraints];
      v19 = [(HAPCharacteristicMetadata *)v4 constraints];
      if (v18 == v19)
      {
        v9 = 1;
      }

      else
      {
        v20 = [(HAPCharacteristicMetadata *)self constraints];
        v21 = [(HAPCharacteristicMetadata *)v4 constraints];
        v9 = [v20 isEqualToMetadataConstraints:v21];
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
  v3 = [(HAPCharacteristicMetadata *)self constraints];
  v4 = [v3 hash];
  v5 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPCharacteristicMetadata *)self format];
  v8 = [v7 hash];
  v9 = [(HAPCharacteristicMetadata *)self units];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)_generateValidConstraints:(id)a3
{
  v4 = a3;
  v5 = [(HAPCharacteristicMetadata *)self format];
  v6 = [v5 isEqualToString:@"string"];

  v7 = v4;
  if (v6)
  {
    v7 = v4;
    if (!v4)
    {
      v7 = objc_alloc_init(HAPMetadataConstraints);
    }

    v8 = [(HAPMetadataConstraints *)v7 maxLength];

    if (!v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:64];
      [(HAPMetadataConstraints *)v7 setMaxLength:v9];
    }
  }

  v10 = [(HAPMetadataConstraints *)v7 minimumValue];
  if (v10)
  {
    goto LABEL_11;
  }

  v10 = [(HAPMetadataConstraints *)v7 maximumValue];
  if (v10 || ([(HAPMetadataConstraints *)v7 stepValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 minLength], (v10 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HAPMetadataConstraints *)v7 maxLength], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_11:

LABEL_12:
    v11 = v7;
    goto LABEL_13;
  }

  v13 = [(HAPMetadataConstraints *)v7 validValues];
  v14 = [v13 count];

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

  v5 = [(HAPCharacteristicMetadata *)self constraints];
  [v3 appendFormat:@"Constraints: %@  ", v5];

  v6 = [(HAPCharacteristicMetadata *)self manufacturerDescription];
  [v3 appendFormat:@"Description: %@  ", v6];

  v7 = [(HAPCharacteristicMetadata *)self format];
  [v3 appendFormat:@"Format: %@  ", v7];

  v8 = [(HAPCharacteristicMetadata *)self units];
  [v3 appendFormat:@"Units: %@  ", v8];

  return v3;
}

- (HAPCharacteristicMetadata)initWithConstraints:(id)a3 description:(id)a4 format:(id)a5 units:(id)a6
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v10 && !v11 && !v12 && !v13)
  {
LABEL_13:
    v33 = 0;
    goto LABEL_17;
  }

  v15 = v10;
  v16 = [v15 maxLength];
  if (v16)
  {
    v17 = v16;
    [v15 maxLength];
    v18 = v41 = v14;
    v40 = a5;
    v19 = a6;
    v20 = v15;
    v21 = self;
    v22 = v10;
    v23 = v12;
    v24 = v11;
    v25 = [v18 unsignedIntValue];

    v14 = v41;
    v26 = v25 >= 0x101;
    v11 = v24;
    v12 = v23;
    v10 = v22;
    self = v21;
    v15 = v20;
    a6 = v19;
    a5 = v40;
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
    objc_storeStrong(&v34->_manufacturerDescription, a4);
    objc_storeStrong(&v35->_format, a5);
    objc_storeStrong(&v35->_units, a6);
    v36 = [(HAPCharacteristicMetadata *)v35 _generateValidConstraints:v15];
    constraints = v35->_constraints;
    v35->_constraints = v36;
  }

  self = v35;
  v33 = self;
LABEL_17:

  v38 = *MEMORY[0x277D85DE8];
  return v33;
}

@end