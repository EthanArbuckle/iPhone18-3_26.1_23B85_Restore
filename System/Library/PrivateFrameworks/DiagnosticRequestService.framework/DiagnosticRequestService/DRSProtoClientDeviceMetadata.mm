@interface DRSProtoClientDeviceMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoClientDeviceMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoClientDeviceMetadata;
  v4 = [(DRSProtoClientDeviceMetadata *)&v8 description];
  dictionaryRepresentation = [(DRSProtoClientDeviceMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  buildVariant = self->_buildVariant;
  if (buildVariant)
  {
    [dictionary setObject:buildVariant forKey:@"build_variant"];
  }

  deviceCategory = self->_deviceCategory;
  if (deviceCategory)
  {
    [v4 setObject:deviceCategory forKey:@"device_category"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v4 setObject:deviceModel forKey:@"device_model"];
  }

  platform = self->_platform;
  if (platform)
  {
    [v4 setObject:platform forKey:@"platform"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_buildVariant)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_platform)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_buildVariant)
  {
    [toCopy setBuildVariant:?];
    toCopy = v5;
  }

  if (self->_deviceCategory)
  {
    [v5 setDeviceCategory:?];
    toCopy = v5;
  }

  if (self->_deviceModel)
  {
    [v5 setDeviceModel:?];
    toCopy = v5;
  }

  if (self->_platform)
  {
    [v5 setPlatform:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_buildVariant copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceCategory copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_platform copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((buildVariant = self->_buildVariant, !(buildVariant | equalCopy[1])) || -[NSString isEqual:](buildVariant, "isEqual:")) && ((deviceCategory = self->_deviceCategory, !(deviceCategory | equalCopy[2])) || -[NSString isEqual:](deviceCategory, "isEqual:")) && ((deviceModel = self->_deviceModel, !(deviceModel | equalCopy[3])) || -[NSString isEqual:](deviceModel, "isEqual:")))
  {
    platform = self->_platform;
    if (platform | equalCopy[4])
    {
      v9 = [(NSString *)platform isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_buildVariant hash];
  v4 = [(NSString *)self->_deviceCategory hash]^ v3;
  v5 = [(NSString *)self->_deviceModel hash];
  return v4 ^ v5 ^ [(NSString *)self->_platform hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(DRSProtoClientDeviceMetadata *)self setBuildVariant:?];
  }

  if (fromCopy[2])
  {
    [(DRSProtoClientDeviceMetadata *)self setDeviceCategory:?];
  }

  if (fromCopy[3])
  {
    [(DRSProtoClientDeviceMetadata *)self setDeviceModel:?];
  }

  if (fromCopy[4])
  {
    [(DRSProtoClientDeviceMetadata *)self setPlatform:?];
  }
}

@end