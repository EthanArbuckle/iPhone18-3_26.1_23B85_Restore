@interface _MRSetVolumeMutedMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSetVolumeMutedMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSetVolumeMutedMessageProtobuf;
  v4 = [(_MRSetVolumeMutedMessageProtobuf *)&v8 description];
  v5 = [(_MRSetVolumeMutedMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMuted];
    [v3 setObject:v4 forKey:@"isMuted"];
  }

  outputDeviceUID = self->_outputDeviceUID;
  if (outputDeviceUID)
  {
    [v3 setObject:outputDeviceUID forKey:@"outputDeviceUID"];
  }

  details = self->_details;
  if (details)
  {
    v7 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"details"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    isMuted = self->_isMuted;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_outputDeviceUID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_isMuted;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_outputDeviceUID)
  {
    [v4 setOutputDeviceUID:?];
    v4 = v5;
  }

  if (self->_details)
  {
    [v5 setDetails:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_isMuted;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_isMuted)
    {
      if (*(v4 + 24))
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
  if (outputDeviceUID | *(v4 + 2) && ![(NSString *)outputDeviceUID isEqual:?])
  {
    goto LABEL_9;
  }

  details = self->_details;
  if (details | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_isMuted = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 2))
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