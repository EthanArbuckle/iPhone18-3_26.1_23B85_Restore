@interface _MRConfigureConnectionMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRConfigureConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRConfigureConnectionMessageProtobuf;
  v4 = [(_MRConfigureConnectionMessageProtobuf *)&v8 description];
  v5 = [(_MRConfigureConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  groupID = self->_groupID;
  if (groupID)
  {
    [v3 setObject:groupID forKey:@"groupID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_groupID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourceOutputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourceOutputDeviceName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_destinationOutputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_groupID)
  {
    [v4 setGroupID:?];
    v4 = v5;
  }

  if (self->_serviceName)
  {
    [v5 setServiceName:?];
    v4 = v5;
  }

  if (self->_sourceOutputDeviceUID)
  {
    [v5 setSourceOutputDeviceUID:?];
    v4 = v5;
  }

  if (self->_sourceOutputDeviceName)
  {
    [v5 setSourceOutputDeviceName:?];
    v4 = v5;
  }

  if (self->_destinationOutputDeviceUID)
  {
    [v5 setDestinationOutputDeviceUID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_groupID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_serviceName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_sourceOutputDeviceUID copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_sourceOutputDeviceName copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_destinationOutputDeviceUID copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((groupID = self->_groupID, !(groupID | v4[2])) || -[NSString isEqual:](groupID, "isEqual:")) && ((serviceName = self->_serviceName, !(serviceName | v4[3])) || -[NSString isEqual:](serviceName, "isEqual:")) && ((sourceOutputDeviceUID = self->_sourceOutputDeviceUID, !(sourceOutputDeviceUID | v4[5])) || -[NSString isEqual:](sourceOutputDeviceUID, "isEqual:")) && ((sourceOutputDeviceName = self->_sourceOutputDeviceName, !(sourceOutputDeviceName | v4[4])) || -[NSString isEqual:](sourceOutputDeviceName, "isEqual:")))
  {
    destinationOutputDeviceUID = self->_destinationOutputDeviceUID;
    if (destinationOutputDeviceUID | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setGroupID:?];
  }

  if (v4[3])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setServiceName:?];
  }

  if (v4[5])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setSourceOutputDeviceUID:?];
  }

  if (v4[4])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setSourceOutputDeviceName:?];
  }

  if (v4[1])
  {
    [(_MRConfigureConnectionMessageProtobuf *)self setDestinationOutputDeviceUID:?];
  }
}

@end