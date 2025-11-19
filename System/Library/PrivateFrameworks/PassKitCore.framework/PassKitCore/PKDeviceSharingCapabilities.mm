@interface PKDeviceSharingCapabilities
+ (id)deviceSharingCapbilitesRequestWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKDeviceSharingCapabilities)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDeviceSharingCapabilities

+ (id)deviceSharingCapbilitesRequestWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDeviceSharingCapabilities);
  v5 = [v3 handle];
  [(PKDeviceSharingCapabilities *)v4 setHandle:v5];

  v6 = [v3 altDSID];
  [(PKDeviceSharingCapabilities *)v4 setAltDSID:v6];

  v7 = [v3 deviceRegion];
  [(PKDeviceSharingCapabilities *)v4 setDeviceRegion:v7];

  -[PKDeviceSharingCapabilities setSupportsManatee:](v4, "setSupportsManatee:", [v3 supportsManatee]);
  v8 = [v3 fromDeviceVersion];

  if (v8)
  {
    v9 = MEMORY[0x1E696ACD0];
    v10 = objc_opt_class();
    v11 = [v3 fromDeviceVersion];
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:v11 error:0];
    [(PKDeviceSharingCapabilities *)v4 setFromDeviceVersion:v12];
  }

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufDeviceSharingCapabilities);
  v4 = [(PKDeviceSharingCapabilities *)self handle];
  [(PKProtobufDeviceSharingCapabilities *)v3 setHandle:v4];

  v5 = [(PKDeviceSharingCapabilities *)self altDSID];
  [(PKProtobufDeviceSharingCapabilities *)v3 setAltDSID:v5];

  v6 = [(PKDeviceSharingCapabilities *)self deviceRegion];
  [(PKProtobufDeviceSharingCapabilities *)v3 setDeviceRegion:v6];

  [(PKProtobufDeviceSharingCapabilities *)v3 setSupportsManatee:[(PKDeviceSharingCapabilities *)self supportsManatee]];
  v7 = [(PKDeviceSharingCapabilities *)self fromDeviceVersion];

  if (v7)
  {
    v8 = MEMORY[0x1E696ACC8];
    v9 = [(PKDeviceSharingCapabilities *)self fromDeviceVersion];
    v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    [(PKProtobufDeviceSharingCapabilities *)v3 setFromDeviceVersion:v10];
  }

  return v3;
}

- (PKDeviceSharingCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKDeviceSharingCapabilities;
  v5 = [(PKDeviceSharingCapabilities *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v5->_supportsManatee = [v4 decodeBoolForKey:@"supportsManatee"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceRegion"];
    deviceRegion = v5->_deviceRegion;
    v5->_deviceRegion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromDeviceVersion"];
    fromDeviceVersion = v5->_fromDeviceVersion;
    v5->_fromDeviceVersion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  handle = self->_handle;
  v5 = a3;
  [v5 encodeObject:handle forKey:@"handle"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v5 encodeBool:self->_supportsManatee forKey:@"supportsManatee"];
  [v5 encodeObject:self->_deviceRegion forKey:@"deviceRegion"];
  [v5 encodeObject:self->_fromDeviceVersion forKey:@"fromDeviceVersion"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_handle];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_deviceRegion];
  [v3 safelyAddObject:self->_fromDeviceVersion];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_supportsManatee - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    goto LABEL_23;
  }

  v8 = v6[2];
  v9 = self->_handle;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {
      goto LABEL_22;
    }

    v12 = [(NSString *)v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v13 = *(v7 + 3);
  v9 = self->_altDSID;
  v14 = v13;
  v11 = v14;
  if (v9 == v14)
  {
  }

  else
  {
    if (!v9 || !v14)
    {
      goto LABEL_22;
    }

    v15 = [(NSString *)v9 isEqualToString:v14];

    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v16 = *(v7 + 4);
  v9 = self->_deviceRegion;
  v17 = v16;
  v11 = v17;
  if (v9 != v17)
  {
    if (v9 && v17)
    {
      v18 = [(NSString *)v9 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_22:

    goto LABEL_23;
  }

LABEL_26:
  fromDeviceVersion = self->_fromDeviceVersion;
  v22 = *(v7 + 5);
  if (fromDeviceVersion && v22)
  {
    if ([(PKOSVersionRequirement *)fromDeviceVersion isEqual:?])
    {
      goto LABEL_31;
    }
  }

  else if (fromDeviceVersion == v22)
  {
LABEL_31:
    v19 = self->_supportsManatee == v7[8];
    goto LABEL_24;
  }

LABEL_23:
  v19 = 0;
LABEL_24:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_handle copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_altDSID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_deviceRegion copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(PKOSVersionRequirement *)self->_fromDeviceVersion copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 8) = self->_supportsManatee;
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"handle: '%@'; ", self->_handle];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  [v3 appendFormat:@"deviceRegion: '%@'; ", self->_deviceRegion];
  if (self->_supportsManatee)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"supportsManatee: '%@'; ", v4];
  v5 = [(PKOSVersionRequirement *)self->_fromDeviceVersion asDictionary];
  [v3 appendFormat:@"fromDeviceVersion: '%@'; ", v5];

  v6 = [v3 copy];

  return v6;
}

@end