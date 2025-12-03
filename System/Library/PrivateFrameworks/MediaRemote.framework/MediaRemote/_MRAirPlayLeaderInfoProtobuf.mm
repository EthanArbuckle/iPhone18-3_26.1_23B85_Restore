@interface _MRAirPlayLeaderInfoProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRAirPlayLeaderInfoProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRAirPlayLeaderInfoProtobuf;
  v4 = [(_MRAirPlayLeaderInfoProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRAirPlayLeaderInfoProtobuf *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    [to setDeviceInfo:deviceInfo];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRDeviceInfoMessageProtobuf *)self->_deviceInfo copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    deviceInfo = self->_deviceInfo;
    if (deviceInfo | equalCopy[1])
    {
      v6 = [(_MRDeviceInfoMessageProtobuf *)deviceInfo isEqual:?];
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
  fromCopy = from;
  deviceInfo = self->_deviceInfo;
  v6 = fromCopy[1];
  if (deviceInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRDeviceInfoMessageProtobuf *)deviceInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRAirPlayLeaderInfoProtobuf *)self setDeviceInfo:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end