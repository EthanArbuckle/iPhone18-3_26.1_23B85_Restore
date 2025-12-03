@interface PKDeviceSharingCapabilities
+ (id)deviceSharingCapbilitesRequestWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (PKDeviceSharingCapabilities)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDeviceSharingCapabilities

+ (id)deviceSharingCapbilitesRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKDeviceSharingCapabilities);
  handle = [protobufCopy handle];
  [(PKDeviceSharingCapabilities *)v4 setHandle:handle];

  altDSID = [protobufCopy altDSID];
  [(PKDeviceSharingCapabilities *)v4 setAltDSID:altDSID];

  deviceRegion = [protobufCopy deviceRegion];
  [(PKDeviceSharingCapabilities *)v4 setDeviceRegion:deviceRegion];

  -[PKDeviceSharingCapabilities setSupportsManatee:](v4, "setSupportsManatee:", [protobufCopy supportsManatee]);
  fromDeviceVersion = [protobufCopy fromDeviceVersion];

  if (fromDeviceVersion)
  {
    v9 = MEMORY[0x1E696ACD0];
    v10 = objc_opt_class();
    fromDeviceVersion2 = [protobufCopy fromDeviceVersion];
    v12 = [v9 unarchivedObjectOfClass:v10 fromData:fromDeviceVersion2 error:0];
    [(PKDeviceSharingCapabilities *)v4 setFromDeviceVersion:v12];
  }

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufDeviceSharingCapabilities);
  handle = [(PKDeviceSharingCapabilities *)self handle];
  [(PKProtobufDeviceSharingCapabilities *)v3 setHandle:handle];

  altDSID = [(PKDeviceSharingCapabilities *)self altDSID];
  [(PKProtobufDeviceSharingCapabilities *)v3 setAltDSID:altDSID];

  deviceRegion = [(PKDeviceSharingCapabilities *)self deviceRegion];
  [(PKProtobufDeviceSharingCapabilities *)v3 setDeviceRegion:deviceRegion];

  [(PKProtobufDeviceSharingCapabilities *)v3 setSupportsManatee:[(PKDeviceSharingCapabilities *)self supportsManatee]];
  fromDeviceVersion = [(PKDeviceSharingCapabilities *)self fromDeviceVersion];

  if (fromDeviceVersion)
  {
    v8 = MEMORY[0x1E696ACC8];
    fromDeviceVersion2 = [(PKDeviceSharingCapabilities *)self fromDeviceVersion];
    v10 = [v8 archivedDataWithRootObject:fromDeviceVersion2 requiringSecureCoding:1 error:0];
    [(PKProtobufDeviceSharingCapabilities *)v3 setFromDeviceVersion:v10];
  }

  return v3;
}

- (PKDeviceSharingCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKDeviceSharingCapabilities;
  v5 = [(PKDeviceSharingCapabilities *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v5->_supportsManatee = [coderCopy decodeBoolForKey:@"supportsManatee"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceRegion"];
    deviceRegion = v5->_deviceRegion;
    v5->_deviceRegion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromDeviceVersion"];
    fromDeviceVersion = v5->_fromDeviceVersion;
    v5->_fromDeviceVersion = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  handle = self->_handle;
  coderCopy = coder;
  [coderCopy encodeObject:handle forKey:@"handle"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeBool:self->_supportsManatee forKey:@"supportsManatee"];
  [coderCopy encodeObject:self->_deviceRegion forKey:@"deviceRegion"];
  [coderCopy encodeObject:self->_fromDeviceVersion forKey:@"fromDeviceVersion"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_handle];
  [array safelyAddObject:self->_altDSID];
  [array safelyAddObject:self->_deviceRegion];
  [array safelyAddObject:self->_fromDeviceVersion];
  v4 = PKCombinedHash(17, array);
  v5 = self->_supportsManatee - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_handle copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_altDSID copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_deviceRegion copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(PKOSVersionRequirement *)self->_fromDeviceVersion copyWithZone:zone];
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
  asDictionary = [(PKOSVersionRequirement *)self->_fromDeviceVersion asDictionary];
  [v3 appendFormat:@"fromDeviceVersion: '%@'; ", asDictionary];

  v6 = [v3 copy];

  return v6;
}

@end