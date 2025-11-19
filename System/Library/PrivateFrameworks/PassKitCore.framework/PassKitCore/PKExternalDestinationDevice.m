@interface PKExternalDestinationDevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExternalDestinationDevice:(id)a3;
- (NSString)deviceClass;
- (PKExternalDestinationDevice)initWithCoder:(id)a3;
- (PKExternalDestinationDevice)initWithDictionary:(id)a3;
- (PKExternalDestinationDevice)initWithIdentifier:(id)a3 serialNumber:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKExternalDestinationDevice

- (PKExternalDestinationDevice)initWithDictionary:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  v24.receiver = self;
  v24.super_class = PKExternalDestinationDevice;
  v5 = [(PKExternalDestinationDevice *)&v24 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"deviceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"deviceSerialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    if (v5->_identifier && v5->_serialNumber)
    {
      v10 = [v4 PKStringForKey:@"name"];
      name = v5->_name;
      v5->_name = v10;

      v5->_eligibilityStatus = [v4 PKIntegerForKey:@"eligibilityStatus"];
      v12 = [v4 PKStringForKey:@"deviceType"];
      osType = v5->_osType;
      v5->_osType = v12;

      v14 = [v4 PKStringForKey:@"deviceModelType"];
      model = v5->_model;
      v5->_model = v14;

      v16 = [v4 PKDictionaryForKey:@"deviceImageUrl"];
      v17 = [v16 PKDictionaryForKey:@"infobox"];

      v18 = [v17 PKURLForKey:@"2x"];
      imageURL2x = v5->_imageURL2x;
      v5->_imageURL2x = v18;

      v20 = [v17 PKURLForKey:@"3x"];
      imageURL3x = v5->_imageURL3x;
      v5->_imageURL3x = v20;

      goto LABEL_6;
    }

    self = 0;
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

LABEL_6:
  self = v5;
  v22 = self;
LABEL_9:

  return v22;
}

- (PKExternalDestinationDevice)initWithIdentifier:(id)a3 serialNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKExternalDestinationDevice;
  v9 = [(PKExternalDestinationDevice *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_serialNumber, a4);
    v10->_eligibilityStatus = 1;
  }

  return v10;
}

- (NSString)deviceClass
{
  v3 = self->_osType;
  if (v3 == @"iOS")
  {
    return @"iPhone";
  }

  v4 = v3;
  if (v3)
  {
    v5 = [(__CFString *)v3 caseInsensitiveCompare:@"iOS"];

    if (!v5)
    {
      return @"iPhone";
    }
  }

  v6 = self->_osType;
  if (v6 == @"iPadOS")
  {
    return @"iPad";
  }

  v7 = v6;
  if (v6)
  {
    v8 = [(__CFString *)v6 caseInsensitiveCompare:@"iPadOS"];

    if (!v8)
    {
      return @"iPad";
    }
  }

  v9 = self->_osType;
  if (v9 == @"WatchOS")
  {
    return @"Watch";
  }

  v10 = v9;
  if (v9)
  {
    v11 = [(__CFString *)v9 caseInsensitiveCompare:@"WatchOS"];

    if (!v11)
    {
      return @"Watch";
    }
  }

  v12 = self->_osType;
  if (v12 == @"macOS")
  {
    return @"Mac";
  }

  v13 = v12;
  if (v12)
  {
    v14 = [(__CFString *)v12 caseInsensitiveCompare:@"macOS"];

    if (!v14)
    {
      return @"Mac";
    }
  }

  v15 = self->_osType;
  if (v15 == @"visionOS")
  {
    return @"RealityDevice";
  }

  v16 = v15;
  if (v15 && (v17 = [(__CFString *)v15 caseInsensitiveCompare:@"visionOS"], v16, !v17))
  {
    return @"RealityDevice";
  }

  else
  {
    return 0;
  }
}

- (PKExternalDestinationDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKExternalDestinationDevice;
  v5 = [(PKExternalDestinationDevice *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eligibilityStatus"];
    v5->_eligibilityStatus = [v12 integerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osType"];
    osType = v5->_osType;
    v5->_osType = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL2x"];
    imageURL2x = v5->_imageURL2x;
    v5->_imageURL2x = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL3x"];
    imageURL3x = v5->_imageURL3x;
    v5->_imageURL3x = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [v6 encodeObject:self->_name forKey:@"name"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_eligibilityStatus];
  [v6 encodeObject:v5 forKey:@"eligibilityStatus"];

  [v6 encodeObject:self->_osType forKey:@"osType"];
  [v6 encodeObject:self->_model forKey:@"model"];
  [v6 encodeObject:self->_imageURL2x forKey:@"imageURL2x"];
  [v6 encodeObject:self->_imageURL3x forKey:@"imageURL3x"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"serialNumber: '%@'; ", self->_serialNumber];
  [v6 appendFormat:@"name: '%@'; ", self->_name];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_eligibilityStatus];
  [v6 appendFormat:@"eligibilityStatus: '%@'; ", v7];

  [v6 appendFormat:@"osType: '%@'; ", self->_osType];
  [v6 appendFormat:@"model: '%@'; ", self->_model];
  [v6 appendFormat:@"imageURL2x: '%@'; ", self->_imageURL2x];
  [v6 appendFormat:@"imageURL3x: '%@'; ", self->_imageURL3x];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_serialNumber];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_osType];
  [v3 safelyAddObject:self->_model];
  [v3 safelyAddObject:self->_imageURL2x];
  [v3 safelyAddObject:self->_imageURL3x];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_eligibilityStatus - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKExternalDestinationDevice *)self isEqualToExternalDestinationDevice:v5];
  }

  return v6;
}

- (BOOL)isEqualToExternalDestinationDevice:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_38;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_38;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_38;
  }

  serialNumber = self->_serialNumber;
  v9 = v4[2];
  if (serialNumber && v9)
  {
    if (([(NSString *)serialNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (serialNumber != v9)
  {
    goto LABEL_38;
  }

  name = self->_name;
  v11 = v4[3];
  if (name && v11)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (name != v11)
  {
    goto LABEL_38;
  }

  if (self->_eligibilityStatus != v4[4])
  {
    goto LABEL_38;
  }

  osType = self->_osType;
  v13 = v4[5];
  if (osType && v13)
  {
    if (([(NSString *)osType isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (osType != v13)
  {
    goto LABEL_38;
  }

  model = self->_model;
  v15 = v4[6];
  if (model && v15)
  {
    if (([(NSString *)model isEqual:?]& 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (model != v15)
  {
    goto LABEL_38;
  }

  imageURL2x = self->_imageURL2x;
  v17 = v4[7];
  if (!imageURL2x || !v17)
  {
    if (imageURL2x == v17)
    {
      goto LABEL_34;
    }

LABEL_38:
    v20 = 0;
    goto LABEL_39;
  }

  if (([(NSURL *)imageURL2x isEqual:?]& 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  imageURL3x = self->_imageURL3x;
  v19 = v4[8];
  if (imageURL3x && v19)
  {
    v20 = [(NSURL *)imageURL3x isEqual:?];
  }

  else
  {
    v20 = imageURL3x == v19;
  }

LABEL_39:

  return v20;
}

@end