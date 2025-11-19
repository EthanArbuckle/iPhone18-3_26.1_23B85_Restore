@interface _MRDestinationProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRDestinationProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDestinationProtobuf;
  v4 = [(_MRDestinationProtobuf *)&v8 description];
  v5 = [(_MRDestinationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    v7 = [(_MRAVEndpointDescriptorProtobuf *)endpoint dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"endpoint"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    v9 = [(_MRNowPlayingPlayerPathProtobuf *)playerPath dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"playerPath"];
  }

  outputContextUID = self->_outputContextUID;
  if (outputContextUID)
  {
    [v4 setObject:outputContextUID forKey:@"outputContextUID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_endpoint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_outputContextUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_outputDeviceUID)
  {
    [v4 setOutputDeviceUID:?];
    v4 = v5;
  }

  if (self->_endpoint)
  {
    [v5 setEndpoint:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }

  if (self->_outputContextUID)
  {
    [v5 setOutputContextUID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(_MRAVEndpointDescriptorProtobuf *)self->_endpoint copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(_MRNowPlayingPlayerPathProtobuf *)self->_playerPath copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_outputContextUID copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((outputDeviceUID = self->_outputDeviceUID, !(outputDeviceUID | v4[3])) || -[NSString isEqual:](outputDeviceUID, "isEqual:")) && ((endpoint = self->_endpoint, !(endpoint | v4[1])) || -[_MRAVEndpointDescriptorProtobuf isEqual:](endpoint, "isEqual:")) && ((playerPath = self->_playerPath, !(playerPath | v4[4])) || -[_MRNowPlayingPlayerPathProtobuf isEqual:](playerPath, "isEqual:")))
  {
    outputContextUID = self->_outputContextUID;
    if (outputContextUID | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[3])
  {
    [(_MRDestinationProtobuf *)self setOutputDeviceUID:?];
  }

  endpoint = self->_endpoint;
  v5 = v8[1];
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
  v7 = v8[4];
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

  if (v8[2])
  {
    [(_MRDestinationProtobuf *)self setOutputContextUID:?];
  }
}

@end