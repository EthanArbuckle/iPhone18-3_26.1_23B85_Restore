@interface _MRSendLyricsEventMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendLyricsEventMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendLyricsEventMessageProtobuf;
  v4 = [(_MRSendLyricsEventMessageProtobuf *)&v8 description];
  v5 = [(_MRSendLyricsEventMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  event = self->_event;
  if (event)
  {
    v5 = [(_MRLyricsEventProtobuf *)event dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"event"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_event)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  event = self->_event;
  if (event)
  {
    [a3 setEvent:event];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRLyricsEventProtobuf *)self->_event copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    event = self->_event;
    if (event | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  event = self->_event;
  v6 = v4[1];
  if (event)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRLyricsEventProtobuf *)event mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRSendLyricsEventMessageProtobuf *)self setEvent:?];
  }

  v4 = v7;
LABEL_7:
}

@end