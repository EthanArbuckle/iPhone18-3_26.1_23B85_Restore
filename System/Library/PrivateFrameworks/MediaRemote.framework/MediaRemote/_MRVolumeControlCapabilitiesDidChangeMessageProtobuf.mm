@interface _MRVolumeControlCapabilitiesDidChangeMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRVolumeControlCapabilitiesDidChangeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVolumeControlCapabilitiesDidChangeMessageProtobuf;
  v4 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)&v8 description];
  v5 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  capabilities = self->_capabilities;
  if (capabilities)
  {
    v5 = [(_MRVolumeControlAvailabilityProtobuf *)capabilities dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"capabilities"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [v3 setObject:endpointUID forKey:@"endpointUID"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_capabilities)
  {
    [v4 setCapabilities:?];
    v4 = v5;
  }

  if (self->_endpointUID)
  {
    [v5 setEndpointUID:?];
    v4 = v5;
  }

  if (self->_outputDeviceUID)
  {
    [v5 setOutputDeviceUID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRVolumeControlAvailabilityProtobuf *)self->_capabilities copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_endpointUID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((capabilities = self->_capabilities, !(capabilities | v4[1])) || -[_MRVolumeControlAvailabilityProtobuf isEqual:](capabilities, "isEqual:")) && ((endpointUID = self->_endpointUID, !(endpointUID | v4[2])) || -[NSString isEqual:](endpointUID, "isEqual:")))
  {
    outputDeviceUID = self->_outputDeviceUID;
    if (outputDeviceUID | v4[3])
    {
      v8 = [(NSString *)outputDeviceUID isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(_MRVolumeControlAvailabilityProtobuf *)self->_capabilities hash];
  v4 = [(NSString *)self->_endpointUID hash]^ v3;
  return v4 ^ [(NSString *)self->_outputDeviceUID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  capabilities = self->_capabilities;
  v6 = v4[1];
  v7 = v4;
  if (capabilities)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRVolumeControlAvailabilityProtobuf *)capabilities mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self setCapabilities:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self setEndpointUID:?];
    v4 = v7;
  }

  if (v4[3])
  {
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self setOutputDeviceUID:?];
    v4 = v7;
  }
}

@end