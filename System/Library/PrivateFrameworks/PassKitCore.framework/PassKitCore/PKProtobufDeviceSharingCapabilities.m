@interface PKProtobufDeviceSharingCapabilities
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufDeviceSharingCapabilities

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufDeviceSharingCapabilities;
  v4 = [(PKProtobufDeviceSharingCapabilities *)&v8 description];
  v5 = [(PKProtobufDeviceSharingCapabilities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  handle = self->_handle;
  if (handle)
  {
    [v3 setObject:handle forKey:@"handle"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v3 setObject:altDSID forKey:@"altDSID"];
  }

  deviceRegion = self->_deviceRegion;
  if (deviceRegion)
  {
    [v3 setObject:deviceRegion forKey:@"deviceRegion"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsManatee];
    [v3 setObject:v8 forKey:@"supportsManatee"];
  }

  fromDeviceVersion = self->_fromDeviceVersion;
  if (fromDeviceVersion)
  {
    [v3 setObject:fromDeviceVersion forKey:@"fromDeviceVersion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_handle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
  }

  v4 = v5;
  if (self->_deviceRegion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_fromDeviceVersion)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[10] = self->_version;
  v5 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v5;
  }

  if (self->_altDSID)
  {
    [v5 setAltDSID:?];
    v4 = v5;
  }

  if (self->_deviceRegion)
  {
    [v5 setDeviceRegion:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 44) = self->_supportsManatee;
    *(v4 + 48) |= 1u;
  }

  if (self->_fromDeviceVersion)
  {
    [v5 setFromDeviceVersion:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_version;
  v6 = [(NSString *)self->_handle copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_altDSID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_deviceRegion copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 44) = self->_supportsManatee;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSData *)self->_fromDeviceVersion copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (self->_version != *(v4 + 10))
  {
    goto LABEL_14;
  }

  handle = self->_handle;
  if (handle | *(v4 + 4))
  {
    if (![(NSString *)handle isEqual:?])
    {
      goto LABEL_14;
    }
  }

  altDSID = self->_altDSID;
  if (altDSID | *(v4 + 1))
  {
    if (![(NSString *)altDSID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  deviceRegion = self->_deviceRegion;
  if (deviceRegion | *(v4 + 2))
  {
    if (![(NSString *)deviceRegion isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v8 = *(v4 + 48);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(v4 + 44);
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

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  fromDeviceVersion = self->_fromDeviceVersion;
  if (fromDeviceVersion | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 10);
  v5 = v4;
  if (*(v4 + 4))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setHandle:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setAltDSID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setDeviceRegion:?];
    v4 = v5;
  }

  if (*(v4 + 48))
  {
    self->_supportsManatee = *(v4 + 44);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufDeviceSharingCapabilities *)self setFromDeviceVersion:?];
    v4 = v5;
  }
}

@end