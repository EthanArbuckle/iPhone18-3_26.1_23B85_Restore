@interface _MRSetListeningModeMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSetListeningModeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetListeningModeMessageProtobuf;
  v4 = [(_MRSetListeningModeMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSetListeningModeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [dictionary setObject:listeningMode forKey:@"listeningMode"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v4 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_listeningMode)
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
  if (self->_listeningMode)
  {
    [toCopy setListeningMode:?];
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
  v6 = [(NSString *)self->_listeningMode copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((listeningMode = self->_listeningMode, !(listeningMode | equalCopy[1])) || -[NSString isEqual:](listeningMode, "isEqual:")))
  {
    outputDeviceUID = self->_outputDeviceUID;
    if (outputDeviceUID | equalCopy[2])
    {
      v7 = [(NSString *)outputDeviceUID isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(_MRSetListeningModeMessageProtobuf *)self setListeningMode:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(_MRSetListeningModeMessageProtobuf *)self setOutputDeviceUID:?];
    fromCopy = v5;
  }
}

@end