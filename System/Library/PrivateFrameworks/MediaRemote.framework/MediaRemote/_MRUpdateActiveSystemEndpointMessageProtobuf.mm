@interface _MRUpdateActiveSystemEndpointMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRUpdateActiveSystemEndpointMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateActiveSystemEndpointMessageProtobuf;
  v4 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    dictionaryRepresentation = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)request dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  request = self->_request;
  if (request)
  {
    [to setRequest:request];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self->_request copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    request = self->_request;
    if (request | equalCopy[1])
    {
      v6 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)request isEqual:?];
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
  request = self->_request;
  v6 = fromCopy[1];
  if (request)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRUpdateActiveSystemEndpointRequestProtobuf *)request mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self setRequest:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end