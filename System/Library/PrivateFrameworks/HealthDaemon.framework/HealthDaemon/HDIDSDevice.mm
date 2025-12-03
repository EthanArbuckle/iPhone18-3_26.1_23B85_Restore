@interface HDIDSDevice
- (BOOL)isEqual:(id)equal;
- (HDIDSDevice)initWithIDSDevice:(id)device;
- (HDIDSDevice)initWithIdentifier:(id)identifier name:(id)name destinationID:(id)d deviceType:(int64_t)type buildVersion:(id)version;
- (unint64_t)hash;
@end

@implementation HDIDSDevice

- (HDIDSDevice)initWithIdentifier:(id)identifier name:(id)name destinationID:(id)d deviceType:(int64_t)type buildVersion:(id)version
{
  identifierCopy = identifier;
  nameCopy = name;
  dCopy = d;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = HDIDSDevice;
  v16 = [(HDIDSDevice *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v19;

    v21 = [dCopy copy];
    destinationID = v16->_destinationID;
    v16->_destinationID = v21;

    v16->_deviceType = type;
    v23 = [versionCopy copy];
    buildVersion = v16->_buildVersion;
    v16->_buildVersion = v23;
  }

  return v16;
}

- (HDIDSDevice)initWithIDSDevice:(id)device
{
  if (device)
  {
    deviceCopy = device;
    uniqueID = [deviceCopy uniqueID];
    name = [deviceCopy name];
    v7 = IDSCopyIDForDevice();
    deviceType = [deviceCopy deviceType];
    productBuildVersion = [deviceCopy productBuildVersion];

    self = [(HDIDSDevice *)self initWithIdentifier:uniqueID name:name destinationID:v7 deviceType:deviceType buildVersion:productBuildVersion];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = self->_identifier;
      v7 = v5->_identifier;
      if (identifier != v7 && (!v7 || ![(NSString *)identifier isEqualToString:?]))
      {
        goto LABEL_18;
      }

      name = self->_name;
      v9 = v5->_name;
      if (name != v9 && (!v9 || ![(NSString *)name isEqualToString:?]))
      {
        goto LABEL_18;
      }

      destinationID = self->_destinationID;
      v11 = v5->_destinationID;
      if (destinationID != v11 && (!v11 || ![(NSString *)destinationID isEqualToString:?]))
      {
        goto LABEL_18;
      }

      if (self->_deviceType != v5->_deviceType)
      {
        goto LABEL_18;
      }

      buildVersion = self->_buildVersion;
      v13 = v5->_buildVersion;
      if (buildVersion == v13)
      {
        v14 = 1;
        goto LABEL_19;
      }

      if (v13)
      {
        v14 = [(NSString *)buildVersion isEqualToString:?];
      }

      else
      {
LABEL_18:
        v14 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(NSString *)self->_destinationID hash];
  buildVersion = self->_buildVersion;
  v7 = v4 ^ v5 ^ self->_deviceType;
  return v7 ^ [(NSString *)buildVersion hash];
}

@end