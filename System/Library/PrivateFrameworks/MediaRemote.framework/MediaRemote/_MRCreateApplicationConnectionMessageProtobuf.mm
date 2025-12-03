@interface _MRCreateApplicationConnectionMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRCreateApplicationConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRCreateApplicationConnectionMessageProtobuf;
  v4 = [(_MRCreateApplicationConnectionMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRCreateApplicationConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = self->_context;
  if (context)
  {
    dictionaryRepresentation = [(_MRApplicationConnectionContextProtobuf *)context dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"context"];
  }

  requestInfo = self->_requestInfo;
  if (requestInfo)
  {
    dictionaryRepresentation2 = [(_MRApplicationConnectionRequestInfoProtobuf *)requestInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"requestInfo"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_context)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_requestInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_context)
  {
    [toCopy setContext:?];
    toCopy = v5;
  }

  if (self->_requestInfo)
  {
    [v5 setRequestInfo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRApplicationConnectionContextProtobuf *)self->_context copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(_MRApplicationConnectionRequestInfoProtobuf *)self->_requestInfo copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((context = self->_context, !(context | equalCopy[1])) || -[_MRApplicationConnectionContextProtobuf isEqual:](context, "isEqual:")))
  {
    requestInfo = self->_requestInfo;
    if (requestInfo | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  context = self->_context;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  requestInfo = self->_requestInfo;
  v8 = fromCopy[2];
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

  fromCopy = v9;
LABEL_13:
}

@end