@interface DRSProtoTaskingDeviceMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoTaskingDeviceMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingDeviceMetadata;
  v4 = [(DRSProtoTaskingDeviceMetadata *)&v8 description];
  v5 = [(DRSProtoTaskingDeviceMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    v5 = [(DRSProtoClientDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"device_metadata"];
  }

  build = self->_build;
  if (build)
  {
    [v3 setObject:build forKey:@"build"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceMetadata)
  {
    [v4 setDeviceMetadata:?];
    v4 = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoClientDeviceMetadata *)self->_deviceMetadata copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_build copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((deviceMetadata = self->_deviceMetadata, !(deviceMetadata | v4[2])) || -[DRSProtoClientDeviceMetadata isEqual:](deviceMetadata, "isEqual:")))
  {
    build = self->_build;
    if (build | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  deviceMetadata = self->_deviceMetadata;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[1])
  {
    [(DRSProtoTaskingDeviceMetadata *)self setBuild:?];
    v4 = v7;
  }
}

@end