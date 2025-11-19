@interface MXDeviceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXDeviceInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXDeviceInfo;
  v4 = [(MXDeviceInfo *)&v8 description];
  v5 = [(MXDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"device_name"];
  }

  deviceVersion = self->_deviceVersion;
  if (deviceVersion)
  {
    [v4 setObject:deviceVersion forKey:@"device_version"];
  }

  systemName = self->_systemName;
  if (systemName)
  {
    [v4 setObject:systemName forKey:@"system_name"];
  }

  systemVersion = self->_systemVersion;
  if (systemVersion)
  {
    [v4 setObject:systemVersion forKey:@"system_version"];
  }

  systemBuild = self->_systemBuild;
  if (systemBuild)
  {
    [v4 setObject:systemBuild forKey:@"system_build"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_deviceVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_systemName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceName)
  {
    [v4 setDeviceName:?];
    v4 = v5;
  }

  if (self->_deviceVersion)
  {
    [v5 setDeviceVersion:?];
    v4 = v5;
  }

  if (self->_systemName)
  {
    [v5 setSystemName:?];
    v4 = v5;
  }

  if (self->_systemVersion)
  {
    [v5 setSystemVersion:?];
    v4 = v5;
  }

  if (self->_systemBuild)
  {
    [v5 setSystemBuild:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_systemName copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_systemVersion copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_systemBuild copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((deviceName = self->_deviceName, !(deviceName | v4[1])) || -[NSString isEqual:](deviceName, "isEqual:")) && ((deviceVersion = self->_deviceVersion, !(deviceVersion | v4[2])) || -[NSString isEqual:](deviceVersion, "isEqual:")) && ((systemName = self->_systemName, !(systemName | v4[4])) || -[NSString isEqual:](systemName, "isEqual:")) && ((systemVersion = self->_systemVersion, !(systemVersion | v4[5])) || -[NSString isEqual:](systemVersion, "isEqual:")))
  {
    systemBuild = self->_systemBuild;
    if (systemBuild | v4[3])
    {
      v10 = [(NSString *)systemBuild isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceName hash];
  v4 = [(NSString *)self->_deviceVersion hash]^ v3;
  v5 = [(NSString *)self->_systemName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_systemVersion hash];
  return v6 ^ [(NSString *)self->_systemBuild hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(MXDeviceInfo *)self setDeviceName:?];
  }

  if (v4[2])
  {
    [(MXDeviceInfo *)self setDeviceVersion:?];
  }

  if (v4[4])
  {
    [(MXDeviceInfo *)self setSystemName:?];
  }

  if (v4[5])
  {
    [(MXDeviceInfo *)self setSystemVersion:?];
  }

  if (v4[3])
  {
    [(MXDeviceInfo *)self setSystemBuild:?];
  }
}

@end