@interface _MRUpdateActiveSystemEndpointMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRUpdateActiveSystemEndpointMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateActiveSystemEndpointMessageProtobuf;
  v4 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)&v8 description];
  v5 = [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  request = self->_request;
  if (request)
  {
    v5 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)request dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_request)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  request = self->_request;
  if (request)
  {
    [a3 setRequest:request];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRUpdateActiveSystemEndpointRequestProtobuf *)self->_request copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    request = self->_request;
    if (request | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  request = self->_request;
  v6 = v4[1];
  if (request)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRUpdateActiveSystemEndpointRequestProtobuf *)request mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRUpdateActiveSystemEndpointMessageProtobuf *)self setRequest:?];
  }

  v4 = v7;
LABEL_7:
}

@end