@interface _MRVolumeControlCapabilitiesDidChangeMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRVolumeControlCapabilitiesDidChangeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRVolumeControlCapabilitiesDidChangeMessageProtobuf;
  v4 = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  capabilities = self->_capabilities;
  if (capabilities)
  {
    dictionaryRepresentation = [(_MRVolumeControlAvailabilityProtobuf *)capabilities dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"capabilities"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [dictionary setObject:endpointUID forKey:@"endpointUID"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [dictionary setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_capabilities)
  {
    [toCopy setCapabilities:?];
    toCopy = v5;
  }

  if (self->_endpointUID)
  {
    [v5 setEndpointUID:?];
    toCopy = v5;
  }

  if (self->_outputDeviceUID)
  {
    [v5 setOutputDeviceUID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRVolumeControlAvailabilityProtobuf *)self->_capabilities copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_endpointUID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((capabilities = self->_capabilities, !(capabilities | equalCopy[1])) || -[_MRVolumeControlAvailabilityProtobuf isEqual:](capabilities, "isEqual:")) && ((endpointUID = self->_endpointUID, !(endpointUID | equalCopy[2])) || -[NSString isEqual:](endpointUID, "isEqual:")))
  {
    outputDeviceUID = self->_outputDeviceUID;
    if (outputDeviceUID | equalCopy[3])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  capabilities = self->_capabilities;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self setEndpointUID:?];
    fromCopy = v7;
  }

  if (fromCopy[3])
  {
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)self setOutputDeviceUID:?];
    fromCopy = v7;
  }
}

@end