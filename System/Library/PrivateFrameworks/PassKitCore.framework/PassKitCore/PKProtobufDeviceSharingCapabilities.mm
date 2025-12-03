@interface PKProtobufDeviceSharingCapabilities
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufDeviceSharingCapabilities

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufDeviceSharingCapabilities;
  v4 = [(PKProtobufDeviceSharingCapabilities *)&v8 description];
  dictionaryRepresentation = [(PKProtobufDeviceSharingCapabilities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  handle = self->_handle;
  if (handle)
  {
    [dictionary setObject:handle forKey:@"handle"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [dictionary setObject:altDSID forKey:@"altDSID"];
  }

  deviceRegion = self->_deviceRegion;
  if (deviceRegion)
  {
    [dictionary setObject:deviceRegion forKey:@"deviceRegion"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsManatee];
    [dictionary setObject:v8 forKey:@"supportsManatee"];
  }

  fromDeviceVersion = self->_fromDeviceVersion;
  if (fromDeviceVersion)
  {
    [dictionary setObject:fromDeviceVersion forKey:@"fromDeviceVersion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_handle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
  }

  v4 = toCopy;
  if (self->_deviceRegion)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_fromDeviceVersion)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[10] = self->_version;
  v5 = toCopy;
  if (self->_handle)
  {
    [toCopy setHandle:?];
    toCopy = v5;
  }

  if (self->_altDSID)
  {
    [v5 setAltDSID:?];
    toCopy = v5;
  }

  if (self->_deviceRegion)
  {
    [v5 setDeviceRegion:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 44) = self->_supportsManatee;
    *(toCopy + 48) |= 1u;
  }

  if (self->_fromDeviceVersion)
  {
    [v5 setFromDeviceVersion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_handle copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_altDSID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_deviceRegion copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 44) = self->_supportsManatee;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSData *)self->_fromDeviceVersion copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (self->_version != *(equalCopy + 10))
  {
    goto LABEL_14;
  }

  handle = self->_handle;
  if (handle | *(equalCopy + 4))
  {
    if (![(NSString *)handle isEqual:?])
    {
      goto LABEL_14;
    }
  }

  altDSID = self->_altDSID;
  if (altDSID | *(equalCopy + 1))
  {
    if (![(NSString *)altDSID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  deviceRegion = self->_deviceRegion;
  if (deviceRegion | *(equalCopy + 2))
  {
    if (![(NSString *)deviceRegion isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v8 = *(equalCopy + 48);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((*(equalCopy + 48) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(equalCopy + 44);
  if (!self->_supportsManatee)
  {
LABEL_10:
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  if ((*(equalCopy + 44) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  fromDeviceVersion = self->_fromDeviceVersion;
  if (fromDeviceVersion | *(equalCopy + 3))
  {
    v10 = [(NSData *)fromDeviceVersion isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_handle hash];
  v5 = [(NSString *)self->_altDSID hash];
  v6 = [(NSString *)self->_deviceRegion hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_supportsManatee;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v7 ^ (2654435761 * version) ^ [(NSData *)self->_fromDeviceVersion hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 10);
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setHandle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setAltDSID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setDeviceRegion:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 48))
  {
    self->_supportsManatee = *(fromCopy + 44);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setFromDeviceVersion:?];
    fromCopy = v5;
  }
}

@end