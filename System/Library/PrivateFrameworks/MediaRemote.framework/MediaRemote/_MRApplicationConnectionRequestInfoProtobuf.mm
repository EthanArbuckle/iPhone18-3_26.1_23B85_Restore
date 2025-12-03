@interface _MRApplicationConnectionRequestInfoProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRApplicationConnectionRequestInfoProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionRequestInfoProtobuf;
  v4 = [(_MRApplicationConnectionRequestInfoProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRApplicationConnectionRequestInfoProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    dictionaryRepresentation = [(_MRDeviceInfoMessageProtobuf *)deviceInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceInfo"];
  }

  client = self->_client;
  if (client)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingClientProtobuf *)client dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"client"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_client)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceInfo)
  {
    [toCopy setDeviceInfo:?];
    toCopy = v5;
  }

  if (self->_client)
  {
    [v5 setClient:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfo copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(_MRNowPlayingClientProtobuf *)self->_client copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deviceInfo = self->_deviceInfo, !(deviceInfo | equalCopy[2])) || -[_MRDeviceInfoMessageProtobuf isEqual:](deviceInfo, "isEqual:")))
  {
    client = self->_client;
    if (client | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceInfo = self->_deviceInfo;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  client = self->_client;
  v8 = fromCopy[1];
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

  fromCopy = v9;
LABEL_13:
}

@end