@interface _MRCreateApplicationConnectionMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRCreateApplicationConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRCreateApplicationConnectionMessageProtobuf;
  v4 = [(_MRCreateApplicationConnectionMessageProtobuf *)&v8 description];
  v5 = [(_MRCreateApplicationConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  context = self->_context;
  if (context)
  {
    v5 = [(_MRApplicationConnectionContextProtobuf *)context dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"context"];
  }

  requestInfo = self->_requestInfo;
  if (requestInfo)
  {
    v7 = [(_MRApplicationConnectionRequestInfoProtobuf *)requestInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"requestInfo"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_requestInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_context)
  {
    [v4 setContext:?];
    v4 = v5;
  }

  if (self->_requestInfo)
  {
    [v5 setRequestInfo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRApplicationConnectionContextProtobuf *)self->_context copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRApplicationConnectionRequestInfoProtobuf *)self->_requestInfo copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((context = self->_context, !(context | v4[1])) || -[_MRApplicationConnectionContextProtobuf isEqual:](context, "isEqual:")))
  {
    requestInfo = self->_requestInfo;
    if (requestInfo | v4[2])
    {
      v7 = [(_MRApplicationConnectionRequestInfoProtobuf *)requestInfo isEqual:?];
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
  context = self->_context;
  v6 = v4[1];
  v9 = v4;
  if (context)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionContextProtobuf *)context mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRCreateApplicationConnectionMessageProtobuf *)self setContext:?];
  }

  v4 = v9;
LABEL_7:
  requestInfo = self->_requestInfo;
  v8 = v4[2];
  if (requestInfo)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRApplicationConnectionRequestInfoProtobuf *)requestInfo mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRCreateApplicationConnectionMessageProtobuf *)self setRequestInfo:?];
  }

  v4 = v9;
LABEL_13:
}

@end