@interface _MRSetListeningModeMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSetListeningModeMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetListeningModeMessageProtobuf;
  v4 = [(_MRSetListeningModeMessageProtobuf *)&v8 description];
  v5 = [(_MRSetListeningModeMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  listeningMode = self->_listeningMode;
  if (listeningMode)
  {
    [v3 setObject:listeningMode forKey:@"listeningMode"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v4 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_listeningMode)
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
  if (self->_listeningMode)
  {
    [v4 setListeningMode:?];
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
  v6 = [(NSString *)self->_listeningMode copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((listeningMode = self->_listeningMode, !(listeningMode | v4[1])) || -[NSString isEqual:](listeningMode, "isEqual:")))
  {
    outputDeviceUID = self->_outputDeviceUID;
    if (outputDeviceUID | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(_MRSetListeningModeMessageProtobuf *)self setListeningMode:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(_MRSetListeningModeMessageProtobuf *)self setOutputDeviceUID:?];
    v4 = v5;
  }
}

@end