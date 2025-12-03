@interface MXDeviceInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXDeviceInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXDeviceInfo;
  v4 = [(MXDeviceInfo *)&v8 description];
  dictionaryRepresentation = [(MXDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"device_name"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_deviceVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceName)
  {
    [toCopy setDeviceName:?];
    toCopy = v5;
  }

  if (self->_deviceVersion)
  {
    [v5 setDeviceVersion:?];
    toCopy = v5;
  }

  if (self->_systemName)
  {
    [v5 setSystemName:?];
    toCopy = v5;
  }

  if (self->_systemVersion)
  {
    [v5 setSystemVersion:?];
    toCopy = v5;
  }

  if (self->_systemBuild)
  {
    [v5 setSystemBuild:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_deviceVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_systemName copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_systemVersion copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_systemBuild copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deviceName = self->_deviceName, !(deviceName | equalCopy[1])) || -[NSString isEqual:](deviceName, "isEqual:")) && ((deviceVersion = self->_deviceVersion, !(deviceVersion | equalCopy[2])) || -[NSString isEqual:](deviceVersion, "isEqual:")) && ((systemName = self->_systemName, !(systemName | equalCopy[4])) || -[NSString isEqual:](systemName, "isEqual:")) && ((systemVersion = self->_systemVersion, !(systemVersion | equalCopy[5])) || -[NSString isEqual:](systemVersion, "isEqual:")))
  {
    systemBuild = self->_systemBuild;
    if (systemBuild | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(MXDeviceInfo *)self setDeviceName:?];
  }

  if (fromCopy[2])
  {
    [(MXDeviceInfo *)self setDeviceVersion:?];
  }

  if (fromCopy[4])
  {
    [(MXDeviceInfo *)self setSystemName:?];
  }

  if (fromCopy[5])
  {
    [(MXDeviceInfo *)self setSystemVersion:?];
  }

  if (fromCopy[3])
  {
    [(MXDeviceInfo *)self setSystemBuild:?];
  }
}

@end