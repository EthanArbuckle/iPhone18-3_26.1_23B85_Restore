@interface _MRGetVolumeMutedMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGetVolumeMutedMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGetVolumeMutedMessageProtobuf;
  v4 = [(_MRGetVolumeMutedMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGetVolumeMutedMessageProtobuf *)self dictionaryRepresentation];
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

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [to setOutputDeviceUID:outputDeviceUID];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    outputDeviceUID = self->_outputDeviceUID;
    if (outputDeviceUID | equalCopy[1])
    {
      v6 = [(NSString *)outputDeviceUID isEqual:?];
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
  if (*(from + 1))
  {
    [(_MRGetVolumeMutedMessageProtobuf *)self setOutputDeviceUID:?];
  }
}

@end