@interface _MRSendVirtualTouchEventMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendVirtualTouchEventMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendVirtualTouchEventMessageProtobuf;
  v4 = [(_MRSendVirtualTouchEventMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendVirtualTouchEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_virtualDeviceID];
    [dictionary setObject:v4 forKey:@"virtualDeviceID"];
  }

  event = self->_event;
  if (event)
  {
    dictionaryRepresentation = [(_MRVirtualTouchEventProtobuf *)event dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"event"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    virtualDeviceID = self->_virtualDeviceID;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_event)
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
    toCopy[1] = self->_virtualDeviceID;
    *(toCopy + 24) |= 1u;
  }

  if (self->_event)
  {
    v5 = toCopy;
    [toCopy setEvent:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_virtualDeviceID;
    *(v5 + 24) |= 1u;
  }

  v7 = [(_MRVirtualTouchEventProtobuf *)self->_event copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_virtualDeviceID != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  event = self->_event;
  if (event | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    self->_virtualDeviceID = fromCopy[1];
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