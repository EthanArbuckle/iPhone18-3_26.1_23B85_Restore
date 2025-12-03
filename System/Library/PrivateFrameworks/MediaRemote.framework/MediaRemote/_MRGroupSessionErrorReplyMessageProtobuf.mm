@interface _MRGroupSessionErrorReplyMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionErrorReplyMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionErrorReplyMessageProtobuf;
  v4 = [(_MRGroupSessionErrorReplyMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionErrorReplyMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  errorMessage = self->_errorMessage;
  if (errorMessage)
  {
    [dictionary setObject:errorMessage forKey:@"errorMessage"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_errorMessage)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  errorMessage = self->_errorMessage;
  if (errorMessage)
  {
    [to setErrorMessage:errorMessage];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_errorMessage copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    errorMessage = self->_errorMessage;
    if (errorMessage | equalCopy[1])
    {
      v6 = [(NSString *)errorMessage isEqual:?];
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
    [(_MRGroupSessionErrorReplyMessageProtobuf *)self setErrorMessage:?];
  }
}

@end