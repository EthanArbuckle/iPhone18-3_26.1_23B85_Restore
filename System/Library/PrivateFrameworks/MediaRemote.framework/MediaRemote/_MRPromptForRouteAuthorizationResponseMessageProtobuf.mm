@interface _MRPromptForRouteAuthorizationResponseMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRPromptForRouteAuthorizationResponseMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRPromptForRouteAuthorizationResponseMessageProtobuf;
  v4 = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  response = self->_response;
  if (response)
  {
    [dictionary setObject:response forKey:@"response"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_response)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  response = self->_response;
  if (response)
  {
    [to setResponse:response];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_response copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    response = self->_response;
    if (response | equalCopy[1])
    {
      v6 = [(NSString *)response isEqual:?];
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
  if (*(from + 1))
  {
    [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)self setResponse:?];
  }
}

@end