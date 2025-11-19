@interface _MRApplicationConnectionRequestInfoProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRApplicationConnectionRequestInfoProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionRequestInfoProtobuf;
  v4 = [(_MRApplicationConnectionRequestInfoProtobuf *)&v8 description];
  v5 = [(_MRApplicationConnectionRequestInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v5 = [(_MRDeviceInfoMessageProtobuf *)deviceInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"deviceInfo"];
  }

  client = self->_client;
  if (client)
  {
    v7 = [(_MRNowPlayingClientProtobuf *)client dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"client"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_client)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceInfo)
  {
    [v4 setDeviceInfo:?];
    v4 = v5;
  }

  if (self->_client)
  {
    [v5 setClient:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfo copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingClientProtobuf *)self->_client copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((deviceInfo = self->_deviceInfo, !(deviceInfo | v4[2])) || -[_MRDeviceInfoMessageProtobuf isEqual:](deviceInfo, "isEqual:")))
  {
    client = self->_client;
    if (client | v4[1])
    {
      v7 = [(_MRNowPlayingClientProtobuf *)client isEqual:?];
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
  deviceInfo = self->_deviceInfo;
  v6 = v4[2];
  v9 = v4;
  if (deviceInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRDeviceInfoMessageProtobuf *)deviceInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionRequestInfoProtobuf *)self setDeviceInfo:?];
  }

  v4 = v9;
LABEL_7:
  client = self->_client;
  v8 = v4[1];
  if (client)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRNowPlayingClientProtobuf *)client mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRApplicationConnectionRequestInfoProtobuf *)self setClient:?];
  }

  v4 = v9;
LABEL_13:
}

@end