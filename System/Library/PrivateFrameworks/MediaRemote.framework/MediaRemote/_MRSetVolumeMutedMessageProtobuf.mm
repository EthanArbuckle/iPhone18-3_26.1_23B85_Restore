@interface _MRSetVolumeMutedMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSetVolumeMutedMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetVolumeMutedMessageProtobuf;
  v4 = [(_MRSetVolumeMutedMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSetVolumeMutedMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMuted];
    [dictionary setObject:v4 forKey:@"isMuted"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [dictionary setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  details = self->_details;
  if (details)
  {
    dictionaryRepresentation = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"details"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    isMuted = self->_isMuted;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_isMuted;
    toCopy[28] |= 1u;
  }

  v5 = toCopy;
  if (self->_outputDeviceUID)
  {
    [toCopy setOutputDeviceUID:?];
    toCopy = v5;
  }

  if (self->_details)
  {
    [v5 setDetails:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_isMuted;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_isMuted)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID | *(equalCopy + 2) && ![(NSString *)outputDeviceUID isEqual:?])
  {
    goto LABEL_9;
  }

  details = self->_details;
  if (details | *(equalCopy + 1))
  {
    v8 = [(_MRRequestDetailsProtobuf *)details isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isMuted;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_outputDeviceUID hash]^ v3;
  return v4 ^ [(_MRRequestDetailsProtobuf *)self->_details hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_isMuted = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MRSetVolumeMutedMessageProtobuf *)self setOutputDeviceUID:?];
    v5 = v8;
  }

  details = self->_details;
  v7 = v5[1];
  if (details)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(_MRSetVolumeMutedMessageProtobuf *)self setDetails:?];
  }

  v5 = v8;
LABEL_11:
}

@end