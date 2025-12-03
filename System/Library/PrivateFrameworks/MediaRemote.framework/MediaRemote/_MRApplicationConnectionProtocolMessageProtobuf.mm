@interface _MRApplicationConnectionProtocolMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRApplicationConnectionProtocolMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionProtocolMessageProtobuf;
  v4 = [(_MRApplicationConnectionProtocolMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRApplicationConnectionProtocolMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  applicationMessage = self->_applicationMessage;
  if (applicationMessage)
  {
    dictionaryRepresentation = [(_MRApplicationConnectionMessageProtobuf *)applicationMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"applicationMessage"];
  }

  context = self->_context;
  if (context)
  {
    dictionaryRepresentation2 = [(_MRApplicationConnectionContextProtobuf *)context dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"context"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_applicationMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_applicationMessage)
  {
    [toCopy setApplicationMessage:?];
    toCopy = v5;
  }

  if (self->_context)
  {
    [v5 setContext:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRApplicationConnectionMessageProtobuf *)self->_applicationMessage copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRApplicationConnectionContextProtobuf *)self->_context copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((applicationMessage = self->_applicationMessage, !(applicationMessage | equalCopy[1])) || -[_MRApplicationConnectionMessageProtobuf isEqual:](applicationMessage, "isEqual:")))
  {
    context = self->_context;
    if (context | equalCopy[2])
    {
      v7 = [(_MRApplicationConnectionContextProtobuf *)context isEqual:?];
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
  applicationMessage = self->_applicationMessage;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (applicationMessage)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionMessageProtobuf *)applicationMessage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionProtocolMessageProtobuf *)self setApplicationMessage:?];
  }

  fromCopy = v9;
LABEL_7:
  context = self->_context;
  v8 = fromCopy[2];
  if (context)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRApplicationConnectionContextProtobuf *)context mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRApplicationConnectionProtocolMessageProtobuf *)self setContext:?];
  }

  fromCopy = v9;
LABEL_13:
}

@end