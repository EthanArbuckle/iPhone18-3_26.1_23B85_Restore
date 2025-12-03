@interface PKPaymentDeviceMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentDeviceMetadata:(id)metadata;
- (NSString)extensiveLatitude;
- (NSString)extensiveLongitude;
- (PKPaymentDeviceMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentDeviceMetadata

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  secureElementIdentifier = self->_secureElementIdentifier;
  if (secureElementIdentifier)
  {
    [v3 setObject:secureElementIdentifier forKeyedSubscript:@"secureElementIdentifier"];
  }

  uniqueDeviceIdentifier = self->_uniqueDeviceIdentifier;
  if (uniqueDeviceIdentifier)
  {
    [v4 setObject:uniqueDeviceIdentifier forKeyedSubscript:@"uniqueDeviceIdentifier"];
  }

  uniqueChipIdentifier = self->_uniqueChipIdentifier;
  if (uniqueChipIdentifier)
  {
    [v4 setObject:uniqueChipIdentifier forKeyedSubscript:@"uniqueChipIdentifier"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKeyedSubscript:@"serialNumber"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v4 setObject:deviceName forKeyedSubscript:@"deviceName"];
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v4 setObject:phoneNumber forKeyedSubscript:@"phoneNumber"];
  }

  signedPhoneNumber = self->_signedPhoneNumber;
  if (signedPhoneNumber)
  {
    [v4 setObject:signedPhoneNumber forKeyedSubscript:@"signedPhoneNumber"];
  }

  signedPhoneNumberVersion = self->_signedPhoneNumberVersion;
  if (signedPhoneNumberVersion)
  {
    [v4 setObject:signedPhoneNumberVersion forKeyedSubscript:@"signedPhoneNumberVersion"];
  }

  extensiveLatitude = [(PKPaymentDeviceMetadata *)self extensiveLatitude];
  if (extensiveLatitude)
  {
    [v4 setObject:extensiveLatitude forKeyedSubscript:@"extensiveLatitude"];
  }

  extensiveLongitude = [(PKPaymentDeviceMetadata *)self extensiveLongitude];
  if (extensiveLongitude)
  {
    [v4 setObject:extensiveLongitude forKeyedSubscript:@"extensiveLongitude"];
  }

  return v4;
}

- (NSString)extensiveLongitude
{
  [(CLLocation *)self->_location coordinate];
  if (self->_location)
  {
    v4 = &stru_1F227FD28;
    if (v3 >= 0.0)
    {
      v4 = @"+";
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%.2f", v4, *&v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)extensiveLatitude
{
  [(CLLocation *)self->_location coordinate];
  if (self->_location)
  {
    v4 = &stru_1F227FD28;
    if (v3 >= 0.0)
    {
      v4 = @"+";
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%.2f", v4, *&v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPaymentDeviceMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKPaymentDeviceMetadata;
  v5 = [(PKPaymentDeviceMetadata *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDeviceIdentifier"];
    uniqueDeviceIdentifier = v5->_uniqueDeviceIdentifier;
    v5->_uniqueDeviceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueChipIdentifier"];
    uniqueChipIdentifier = v5->_uniqueChipIdentifier;
    v5->_uniqueChipIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementIdentifier"];
    secureElementIdentifier = v5->_secureElementIdentifier;
    v5->_secureElementIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    v19 = v5->_phoneNumber;
    v5->_phoneNumber = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedPhoneNumber"];
    signedPhoneNumber = v5->_signedPhoneNumber;
    v5->_signedPhoneNumber = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedPhoneNumberVersion"];
    signedPhoneNumberVersion = v5->_signedPhoneNumberVersion;
    v5->_signedPhoneNumberVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jsblSequenceCounter"];
    primaryJSBLSequenceCounter = v5->_primaryJSBLSequenceCounter;
    v5->_primaryJSBLSequenceCounter = v26;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueDeviceIdentifier = self->_uniqueDeviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueDeviceIdentifier forKey:@"uniqueDeviceIdentifier"];
  [coderCopy encodeObject:self->_uniqueChipIdentifier forKey:@"uniqueChipIdentifier"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_secureElementIdentifier forKey:@"secureElementIdentifier"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_signedPhoneNumber forKey:@"signedPhoneNumber"];
  [coderCopy encodeObject:self->_signedPhoneNumberVersion forKey:@"signedPhoneNumberVersion"];
  [coderCopy encodeObject:self->_primaryJSBLSequenceCounter forKey:@"jsblSequenceCounter"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(CLLocation *)self->_location copyWithZone:zone];
  v11 = v5[10];
  v5[10] = v10;

  v12 = [(NSString *)self->_signedPhoneNumber copyWithZone:zone];
  v13 = v5[8];
  v5[8] = v12;

  v14 = [(NSString *)self->_signedPhoneNumberVersion copyWithZone:zone];
  v15 = v5[9];
  v5[9] = v14;

  v16 = [(NSNumber *)self->_primaryJSBLSequenceCounter copyWithZone:zone];
  v17 = v5[2];
  v5[2] = v16;

  v18 = [(NSString *)self->_uniqueDeviceIdentifier copyWithZone:zone];
  v19 = v5[4];
  v5[4] = v18;

  v20 = [(NSNumber *)self->_uniqueChipIdentifier copyWithZone:zone];
  v21 = v5[5];
  v5[5] = v20;

  v22 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v23 = v5[6];
  v5[6] = v22;

  v24 = [(NSString *)self->_secureElementIdentifier copyWithZone:zone];
  v25 = v5[3];
  v5[3] = v24;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"uniqueDeviceIdentifier: '%@'; ", self->_uniqueDeviceIdentifier];
  [v6 appendFormat:@"uniqueChipIdentifier: '%@'; ", self->_uniqueChipIdentifier];
  [v6 appendFormat:@"serialNumber: '%@'; ", self->_serialNumber];
  [v6 appendFormat:@"phoneNumber: '%@'; ", self->_phoneNumber];
  [v6 appendFormat:@"deviceName: '%@'; ", self->_deviceName];
  [v6 appendFormat:@"location: '%@'; ", self->_location];
  [v6 appendFormat:@"secureElementIdentifier: '%@'; ", self->_secureElementIdentifier];
  [v6 appendFormat:@"signedPhoneNumber: '%@'; ", self->_signedPhoneNumber];
  [v6 appendFormat:@"signedPhoneNumberVersion: '%@'; ", self->_signedPhoneNumberVersion];
  [v6 appendFormat:@"primaryJSBLSequenceCounter: '%@'; ", self->_primaryJSBLSequenceCounter];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_uniqueDeviceIdentifier)
  {
    [array addObject:?];
  }

  if (self->_uniqueChipIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_serialNumber)
  {
    [v4 addObject:?];
  }

  if (self->_phoneNumber)
  {
    [v4 addObject:?];
  }

  if (self->_deviceName)
  {
    [v4 addObject:?];
  }

  if (self->_location)
  {
    [v4 addObject:?];
  }

  if (self->_secureElementIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_signedPhoneNumber)
  {
    [v4 addObject:?];
  }

  if (self->_signedPhoneNumberVersion)
  {
    [v4 addObject:?];
  }

  if (self->_primaryJSBLSequenceCounter)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentDeviceMetadata *)self isEqualToPaymentDeviceMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentDeviceMetadata:(id)metadata
{
  metadataCopy = metadata;
  uniqueDeviceIdentifier = self->_uniqueDeviceIdentifier;
  v6 = metadataCopy[4];
  if (uniqueDeviceIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (uniqueDeviceIdentifier != v6)
    {
      goto LABEL_51;
    }
  }

  else if (([(NSString *)uniqueDeviceIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_51;
  }

  uniqueChipIdentifier = self->_uniqueChipIdentifier;
  v9 = metadataCopy[5];
  if (uniqueChipIdentifier && v9)
  {
    if (([(NSNumber *)uniqueChipIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (uniqueChipIdentifier != v9)
  {
    goto LABEL_51;
  }

  serialNumber = self->_serialNumber;
  v11 = metadataCopy[6];
  if (serialNumber && v11)
  {
    if (([(NSString *)serialNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (serialNumber != v11)
  {
    goto LABEL_51;
  }

  phoneNumber = self->_phoneNumber;
  v13 = metadataCopy[7];
  if (phoneNumber && v13)
  {
    if (([(NSString *)phoneNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (phoneNumber != v13)
  {
    goto LABEL_51;
  }

  deviceName = self->_deviceName;
  v15 = metadataCopy[1];
  if (deviceName && v15)
  {
    if (([(NSString *)deviceName isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (deviceName != v15)
  {
    goto LABEL_51;
  }

  secureElementIdentifier = self->_secureElementIdentifier;
  v17 = metadataCopy[3];
  if (secureElementIdentifier && v17)
  {
    if (([(NSString *)secureElementIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (secureElementIdentifier != v17)
  {
    goto LABEL_51;
  }

  location = self->_location;
  v19 = metadataCopy[10];
  if (location && v19)
  {
    if (([(CLLocation *)location isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (location != v19)
  {
    goto LABEL_51;
  }

  signedPhoneNumber = self->_signedPhoneNumber;
  v21 = metadataCopy[8];
  if (signedPhoneNumber && v21)
  {
    if (([(NSString *)signedPhoneNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (signedPhoneNumber != v21)
  {
    goto LABEL_51;
  }

  signedPhoneNumberVersion = self->_signedPhoneNumberVersion;
  v23 = metadataCopy[9];
  if (!signedPhoneNumberVersion || !v23)
  {
    if (signedPhoneNumberVersion == v23)
    {
      goto LABEL_47;
    }

LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  if (([(NSString *)signedPhoneNumberVersion isEqual:?]& 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  primaryJSBLSequenceCounter = self->_primaryJSBLSequenceCounter;
  v25 = metadataCopy[2];
  if (primaryJSBLSequenceCounter && v25)
  {
    v26 = [(NSNumber *)primaryJSBLSequenceCounter isEqual:?];
  }

  else
  {
    v26 = primaryJSBLSequenceCounter == v25;
  }

LABEL_52:

  return v26;
}

@end