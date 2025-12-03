@interface _MRDestinationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRDestinationProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDestinationProtobuf;
  v4 = [(_MRDestinationProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRDestinationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [dictionary setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    dictionaryRepresentation = [(_MRAVEndpointDescriptorProtobuf *)endpoint dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"endpoint"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    dictionaryRepresentation2 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"playerPath"];
  }

  outputContextUID = self->_outputContextUID;
  if (outputContextUID)
  {
    [v4 setObject:outputContextUID forKey:@"outputContextUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_endpoint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_outputContextUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_outputDeviceUID)
  {
    [toCopy setOutputDeviceUID:?];
    toCopy = v5;
  }

  if (self->_endpoint)
  {
    [v5 setEndpoint:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }

  if (self->_outputContextUID)
  {
    [v5 setOutputContextUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(_MRAVEndpointDescriptorProtobuf *)self->_endpoint copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_outputContextUID copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((outputDeviceUID = self->_outputDeviceUID, !(outputDeviceUID | equalCopy[3])) || -[NSString isEqual:](outputDeviceUID, "isEqual:")) && ((endpoint = self->_endpoint, !(endpoint | equalCopy[1])) || -[_MRAVEndpointDescriptorProtobuf isEqual:](endpoint, "isEqual:")) && ((playerPath = self->_playerPath, !(playerPath | equalCopy[4])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](playerPath, "isEqual:")))
  {
    outputContextUID = self->_outputContextUID;
    if (outputContextUID | equalCopy[2])
    {
      v9 = [(NSString *)outputContextUID isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_outputDeviceUID hash];
  v4 = [(_MRAVEndpointDescriptorProtobuf *)self->_endpoint hash]^ v3;
  v5 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath hash];
  return v4 ^ v5 ^ [(NSString *)self->_outputContextUID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(_MRDestinationProtobuf *)self setOutputDeviceUID:?];
  }

  endpoint = self->_endpoint;
  v5 = fromCopy[1];
  if (endpoint)
  {
    if (v5)
    {
      [(_MRAVEndpointDescriptorProtobuf *)endpoint mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(_MRDestinationProtobuf *)self setEndpoint:?];
  }

  playerPath = self->_playerPath;
  v7 = fromCopy[4];
  if (playerPath)
  {
    if (v7)
    {
      [(_MRNowPlayingPlayerPathProtobuf *)playerPath mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(_MRDestinationProtobuf *)self setPlayerPath:?];
  }

  if (fromCopy[2])
  {
    [(_MRDestinationProtobuf *)self setOutputContextUID:?];
  }
}

@end