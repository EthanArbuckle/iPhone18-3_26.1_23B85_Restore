@interface _MRSendVirtualTouchEventMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendVirtualTouchEventMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendVirtualTouchEventMessageProtobuf;
  v4 = [(_MRSendVirtualTouchEventMessageProtobuf *)&v8 description];
  v5 = [(_MRSendVirtualTouchEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_virtualDeviceID];
    [v3 setObject:v4 forKey:@"virtualDeviceID"];
  }

  event = self->_event;
  if (event)
  {
    v6 = [(_MRVirtualTouchEventProtobuf *)event dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"event"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    virtualDeviceID = self->_virtualDeviceID;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_event)
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
    v4[1] = self->_virtualDeviceID;
    *(v4 + 24) |= 1u;
  }

  if (self->_event)
  {
    v5 = v4;
    [v4 setEvent:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_virtualDeviceID;
    *(v5 + 24) |= 1u;
  }

  v7 = [(_MRVirtualTouchEventProtobuf *)self->_event copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_virtualDeviceID != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  event = self->_event;
  if (event | *(v4 + 2))
  {
    v7 = [(_MRVirtualTouchEventProtobuf *)event isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_virtualDeviceID;
  }

  else
  {
    v2 = 0;
  }

  return [(_MRVirtualTouchEventProtobuf *)self->_event hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    self->_virtualDeviceID = v4[1];
    *&self->_has |= 1u;
  }

  event = self->_event;
  v7 = v5[2];
  if (event)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(_MRVirtualTouchEventProtobuf *)event mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v5;
    [(_MRSendVirtualTouchEventMessageProtobuf *)self setEvent:?];
  }

  v5 = v8;
LABEL_9:
}

@end