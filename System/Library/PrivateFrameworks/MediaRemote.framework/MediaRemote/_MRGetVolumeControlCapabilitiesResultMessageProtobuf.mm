@interface _MRGetVolumeControlCapabilitiesResultMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGetVolumeControlCapabilitiesResultMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGetVolumeControlCapabilitiesResultMessageProtobuf;
  v4 = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  capabilities = self->_capabilities;
  if (capabilities)
  {
    [to setCapabilities:capabilities];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRVolumeControlAvailabilityProtobuf *)self->_capabilities copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    capabilities = self->_capabilities;
    if (capabilities | equalCopy[1])
    {
      v6 = [(_MRVolumeControlAvailabilityProtobuf *)capabilities isEqual:?];
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
  capabilities = self->_capabilities;
  v6 = fromCopy[1];
  if (capabilities)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRVolumeControlAvailabilityProtobuf *)capabilities mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)self setCapabilities:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end