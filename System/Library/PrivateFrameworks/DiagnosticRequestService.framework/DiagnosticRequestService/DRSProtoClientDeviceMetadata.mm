@interface DRSProtoClientDeviceMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoClientDeviceMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoClientDeviceMetadata;
  v4 = [(DRSProtoClientDeviceMetadata *)&v8 description];
  v5 = [(DRSProtoClientDeviceMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  buildVariant = self->_buildVariant;
  if (buildVariant)
  {
    [v3 setObject:buildVariant forKey:@"build_variant"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_buildVariant)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceCategory)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_platform)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_buildVariant)
  {
    [v4 setBuildVariant:?];
    v4 = v5;
  }

  if (self->_deviceCategory)
  {
    [v5 setDeviceCategory:?];
    v4 = v5;
  }

  if (self->_deviceModel)
  {
    [v5 setDeviceModel:?];
    v4 = v5;
  }

  if (self->_platform)
  {
    [v5 setPlatform:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_buildVariant copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceCategory copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_platform copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((buildVariant = self->_buildVariant, !(buildVariant | v4[1])) || -[NSString isEqual:](buildVariant, "isEqual:")) && ((deviceCategory = self->_deviceCategory, !(deviceCategory | v4[2])) || -[NSString isEqual:](deviceCategory, "isEqual:")) && ((deviceModel = self->_deviceModel, !(deviceModel | v4[3])) || -[NSString isEqual:](deviceModel, "isEqual:")))
  {
    platform = self->_platform;
    if (platform | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(DRSProtoClientDeviceMetadata *)self setBuildVariant:?];
  }

  if (v4[2])
  {
    [(DRSProtoClientDeviceMetadata *)self setDeviceCategory:?];
  }

  if (v4[3])
  {
    [(DRSProtoClientDeviceMetadata *)self setDeviceModel:?];
  }

  if (v4[4])
  {
    [(DRSProtoClientDeviceMetadata *)self setPlatform:?];
  }
}

@end