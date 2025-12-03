@interface NSPPrivacyProxyErrorResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyErrorResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyErrorResponse;
  v4 = [(NSPPrivacyProxyErrorResponse *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyErrorResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  errorReason = self->_errorReason;
  if (errorReason)
  {
    [dictionary setObject:errorReason forKey:@"errorReason"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_errorReason)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  errorReason = self->_errorReason;
  if (errorReason)
  {
    [to setErrorReason:errorReason];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_errorReason copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    errorReason = self->_errorReason;
    if (errorReason | equalCopy[1])
    {
      v6 = [(NSString *)errorReason isEqual:?];
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
    [(NSPPrivacyProxyErrorResponse *)self setErrorReason:?];
  }
}

@end