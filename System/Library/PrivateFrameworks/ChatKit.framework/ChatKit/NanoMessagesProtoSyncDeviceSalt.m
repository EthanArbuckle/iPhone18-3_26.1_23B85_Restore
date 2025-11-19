@interface NanoMessagesProtoSyncDeviceSalt
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NanoMessagesProtoSyncDeviceSalt

- (id)description
{
  v7.receiver = self;
  v7.super_class = NanoMessagesProtoSyncDeviceSalt;
  v3 = [(NanoMessagesProtoSyncDeviceSalt *)&v7 description];
  v4 = [(NanoMessagesProtoSyncDeviceSalt *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_deviceSalt)
  {
    _PBDataWriterWriteDataField(a3);
  }
}

- (void)copyTo:(id)a3
{
  deviceSalt = self->_deviceSalt;
  if (deviceSalt)
  {
    [a3 setDeviceSalt:deviceSalt];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_deviceSalt copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    deviceSalt = self->_deviceSalt;
    if (deviceSalt | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NanoMessagesProtoSyncDeviceSalt *)self setDeviceSalt:?];
  }
}

@end