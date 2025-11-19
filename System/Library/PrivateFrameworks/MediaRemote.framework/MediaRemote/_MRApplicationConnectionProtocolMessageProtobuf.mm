@interface _MRApplicationConnectionProtocolMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRApplicationConnectionProtocolMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionProtocolMessageProtobuf;
  v4 = [(_MRApplicationConnectionProtocolMessageProtobuf *)&v8 description];
  v5 = [(_MRApplicationConnectionProtocolMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  applicationMessage = self->_applicationMessage;
  if (applicationMessage)
  {
    v5 = [(_MRApplicationConnectionMessageProtobuf *)applicationMessage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"applicationMessage"];
  }

  context = self->_context;
  if (context)
  {
    v7 = [(_MRApplicationConnectionContextProtobuf *)context dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"context"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_applicationMessage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_applicationMessage)
  {
    [v4 setApplicationMessage:?];
    v4 = v5;
  }

  if (self->_context)
  {
    [v5 setContext:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRApplicationConnectionMessageProtobuf *)self->_applicationMessage copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRApplicationConnectionContextProtobuf *)self->_context copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((applicationMessage = self->_applicationMessage, !(applicationMessage | v4[1])) || -[_MRApplicationConnectionMessageProtobuf isEqual:](applicationMessage, "isEqual:")))
  {
    context = self->_context;
    if (context | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  applicationMessage = self->_applicationMessage;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  context = self->_context;
  v8 = v4[2];
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

  v4 = v9;
LABEL_13:
}

@end