@interface _MRConfigureConnectionMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRConfigureConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRConfigureConnectionMessageProtobuf;
  v4 = [(_MRConfigureConnectionMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRConfigureConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  groupID = self->_groupID;
  if (groupID)
  {
    [dictionary setObject:groupID forKey:@"groupID"];
  }

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  sourceOutputDeviceUID = self->_sourceOutputDeviceUID;
  if (sourceOutputDeviceUID)
  {
    [v4 setObject:sourceOutputDeviceUID forKey:@"sourceOutputDeviceUID"];
  }

  sourceOutputDeviceName = self->_sourceOutputDeviceName;
  if (sourceOutputDeviceName)
  {
    [v4 setObject:sourceOutputDeviceName forKey:@"sourceOutputDeviceName"];
  }

  destinationOutputDeviceUID = self->_destinationOutputDeviceUID;
  if (destinationOutputDeviceUID)
  {
    [v4 setObject:destinationOutputDeviceUID forKey:@"destinationOutputDeviceUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_groupID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceOutputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceOutputDeviceName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_destinationOutputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_groupID)
  {
    [toCopy setGroupID:?];
    toCopy = v5;
  }

  if (self->_serviceName)
  {
    [v5 setServiceName:?];
    toCopy = v5;
  }

  if (self->_sourceOutputDeviceUID)
  {
    [v5 setSourceOutputDeviceUID:?];
    toCopy = v5;
  }

  if (self->_sourceOutputDeviceName)
  {
    [v5 setSourceOutputDeviceName:?];
    toCopy = v5;
  }

  if (self->_destinationOutputDeviceUID)
  {
    [v5 setDestinationOutputDeviceUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_groupID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_serviceName copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_sourceOutputDeviceUID copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_sourceOutputDeviceName copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_destinationOutputDeviceUID copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((groupID = self->_groupID, !(groupID | equalCopy[2])) || -[NSString isEqual:](groupID, "isEqual:")) && ((serviceName = self->_serviceName, !(serviceName | equalCopy[3])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((sourceOutputDeviceUID = self->_sourceOutputDeviceUID, !(sourceOutputDeviceUID | equalCopy[5])) || -[NSString isEqual:](sourceOutputDeviceUID, "isEqual:")) && ((sourceOutputDeviceName = self->_sourceOutputDeviceName, !(sourceOutputDeviceName | equalCopy[4])) || -[NSString isEqual:](sourceOutputDeviceName, "isEqual:")))
  {
    destinationOutputDeviceUID = self->_destinationOutputDeviceUID;
    if (destinationOutputDeviceUID | equalCopy[1])
    {
      v10 = [(NSString *)destinationOutputDeviceUID isEqual:?];
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
  v3 = [(NSString *)self->_groupID hash];
  v4 = [(NSString *)self->_serviceName hash]^ v3;
  v5 = [(NSString *)self->_sourceOutputDeviceUID hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sourceOutputDeviceName hash];
  return v6 ^ [(NSString *)self->_destinationOutputDeviceUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setGroupID:?];
  }

  if (fromCopy[3])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setServiceName:?];
  }

  if (fromCopy[5])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setSourceOutputDeviceUID:?];
  }

  if (fromCopy[4])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setSourceOutputDeviceName:?];
  }

  if (fromCopy[1])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setDestinationOutputDeviceUID:?];
  }
}

@end