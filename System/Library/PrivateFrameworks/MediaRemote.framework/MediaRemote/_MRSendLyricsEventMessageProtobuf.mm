@interface _MRSendLyricsEventMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendLyricsEventMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendLyricsEventMessageProtobuf;
  v4 = [(_MRSendLyricsEventMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendLyricsEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  event = self->_event;
  if (event)
  {
    dictionaryRepresentation = [(_MRLyricsEventProtobuf *)event dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"event"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  event = self->_event;
  if (event)
  {
    [to setEvent:event];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRLyricsEventProtobuf *)self->_event copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    event = self->_event;
    if (event | equalCopy[1])
    {
      v6 = [(_MRLyricsEventProtobuf *)event isEqual:?];
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
  event = self->_event;
  v6 = fromCopy[1];
  if (event)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRLyricsEventProtobuf *)event mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRSendLyricsEventMessageProtobuf *)self setEvent:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end