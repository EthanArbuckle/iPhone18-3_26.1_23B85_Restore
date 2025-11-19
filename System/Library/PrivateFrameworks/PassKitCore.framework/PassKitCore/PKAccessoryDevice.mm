@interface PKAccessoryDevice
+ (id)mockAccessoryDevice;
- (PKAccessoryDevice)initWithCoder:(id)a3;
- (PKAccessoryDevice)initWithDictionary:(id)a3 endpointUUID:(id)a4;
- (id)accessoryTypeString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccessoryDevice

+ (id)mockAccessoryDevice
{
  v17[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v15 = 0x3FF0000000000000;
  [v2 appendBytes:&v15 length:8];
  v15 = 0;
  [v2 appendBytes:&v15 length:8];
  [v2 appendBytes:&v15 length:8];
  v15 = 0x3FF0000000000000;
  [v2 appendBytes:&v15 length:8];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v15 = 0;
  [v3 appendBytes:&v15 length:8];
  [v3 appendBytes:&v15 length:8];
  [v3 appendBytes:&v15 length:8];
  v15 = 0x3FF0000000000000;
  [v3 appendBytes:&v15 length:8];
  v4 = _MergedGlobals_174();
  v16[0] = v4;
  v5 = [v2 copy];
  v17[0] = v5;
  v6 = off_1ED6D10D8();
  v16[1] = v6;
  v7 = [v3 copy];
  v17[1] = v7;
  v8 = off_1ED6D10E0();
  v16[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithChar:86];
  v16[3] = @"isMock";
  v17[2] = v9;
  v17[3] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v12 = [v11 UUIDString];

  v13 = [[PKAccessoryDevice alloc] initWithDictionary:v10 endpointUUID:v12];

  return v13;
}

- (PKAccessoryDevice)initWithDictionary:(id)a3 endpointUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PKAccessoryDevice;
  v9 = [(PKAccessoryDevice *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointUUID, a4);
    objc_storeStrong(&v10->_dictionary, a3);
    v11 = _MergedGlobals_174();
    v12 = [v7 objectForKeyedSubscript:v11];
    primaryColorData = v10->_primaryColorData;
    v10->_primaryColorData = v12;

    v14 = off_1ED6D10D8();
    v15 = [v7 objectForKeyedSubscript:v14];
    secondaryColorData = v10->_secondaryColorData;
    v10->_secondaryColorData = v15;

    v17 = off_1ED6D10E0();
    v18 = [v7 objectForKeyedSubscript:v17];
    type = v10->_type;
    v10->_type = v18;

    v10->_isMock = [v7 PKBoolForKey:@"isMock"];
  }

  return v10;
}

- (id)accessoryTypeString
{
  v2 = [(NSNumber *)self->_type charValue];
  if (v2 <= 0x4B)
  {
    if (v2 == 57)
    {
      return @"Charging Cable";
    }

    if (v2 != 66)
    {
      if (v2 == 67)
      {
        return @"Clear Case";
      }

      return @"Unidentified";
    }

    return @"Battery Pack";
  }

  else if (v2 > 85)
  {
    if (v2 != 86)
    {
      if (v2 == 87)
      {
        return @"Wallet";
      }

      return @"Unidentified";
    }

    return @"Sleeve";
  }

  else
  {
    if (v2 != 76)
    {
      if (v2 == 83)
      {
        return @"Silicon Case";
      }

      return @"Unidentified";
    }

    return @"Leather Case";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  endpointUUID = self->_endpointUUID;
  v5 = [(PKAccessoryDevice *)self accessoryTypeString];
  v6 = v5;
  secondaryColorData = @"N/A";
  primaryColorData = self->_primaryColorData;
  if (!primaryColorData)
  {
    primaryColorData = @"N/A";
  }

  if (self->_secondaryColorData)
  {
    secondaryColorData = self->_secondaryColorData;
  }

  v9 = [v3 stringWithFormat:@"Accessory endpointUUID: %@, type: %@, primary color: %@, secondary color: %@", endpointUUID, v5, primaryColorData, secondaryColorData];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  endpointUUID = self->_endpointUUID;
  v5 = a3;
  [v5 encodeObject:endpointUUID forKey:@"endpointUUID"];
  [v5 encodeObject:self->_primaryColorData forKey:@"primaryColorData"];
  [v5 encodeObject:self->_secondaryColorData forKey:@"secondaryColorData"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeBool:self->_isMock forKey:@"isMock"];
}

- (PKAccessoryDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAccessoryDevice *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointUUID"];
    endpointUUID = v5->_endpointUUID;
    v5->_endpointUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryColorData"];
    primaryColorData = v5->_primaryColorData;
    v5->_primaryColorData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryColorData"];
    secondaryColorData = v5->_secondaryColorData;
    v5->_secondaryColorData = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v12;

    v5->_isMock = [v4 decodeBoolForKey:@"isMock"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_endpointUUID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_primaryColorData copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_secondaryColorData copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSNumber *)self->_type copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 8) = self->_isMock;
  return v5;
}

@end