@interface DRSProtoTaskingDeviceMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoTaskingDeviceMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingDeviceMetadata;
  v4 = [(DRSProtoTaskingDeviceMetadata *)&v8 description];
  dictionaryRepresentation = [(DRSProtoTaskingDeviceMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    dictionaryRepresentation = [(DRSProtoClientDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"device_metadata"];
  }

  build = self->_build;
  if (build)
  {
    [dictionary setObject:build forKey:@"build"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceMetadata)
  {
    [toCopy setDeviceMetadata:?];
    toCopy = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoClientDeviceMetadata *)self->_deviceMetadata copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_build copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deviceMetadata = self->_deviceMetadata, !(deviceMetadata | equalCopy[2])) || -[DRSProtoClientDeviceMetadata isEqual:](deviceMetadata, "isEqual:")))
  {
    build = self->_build;
    if (build | equalCopy[1])
    {
      v7 = [(NSString *)build isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceMetadata = self->_deviceMetadata;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (deviceMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoClientDeviceMetadata *)deviceMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingDeviceMetadata *)self setDeviceMetadata:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[1])
  {
    [(DRSProtoTaskingDeviceMetadata *)self setBuild:?];
    fromCopy = v7;
  }
}

@end