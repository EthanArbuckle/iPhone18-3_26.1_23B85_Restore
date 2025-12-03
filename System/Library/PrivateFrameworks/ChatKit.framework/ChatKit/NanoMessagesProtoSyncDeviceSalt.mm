@interface NanoMessagesProtoSyncDeviceSalt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NanoMessagesProtoSyncDeviceSalt

- (id)description
{
  v7.receiver = self;
  v7.super_class = NanoMessagesProtoSyncDeviceSalt;
  v3 = [(NanoMessagesProtoSyncDeviceSalt *)&v7 description];
  dictionaryRepresentation = [(NanoMessagesProtoSyncDeviceSalt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  deviceSalt = self->_deviceSalt;
  if (deviceSalt)
  {
    [v3 setObject:deviceSalt forKey:@"deviceSalt"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_deviceSalt)
  {
    _PBDataWriterWriteDataField(to);
  }
}

- (void)copyTo:(id)to
{
  deviceSalt = self->_deviceSalt;
  if (deviceSalt)
  {
    [to setDeviceSalt:deviceSalt];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_deviceSalt copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    deviceSalt = self->_deviceSalt;
    if (deviceSalt | equalCopy[1])
    {
      v6 = [(NSData *)deviceSalt isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NanoMessagesProtoSyncDeviceSalt *)self setDeviceSalt:?];
  }
}

@end