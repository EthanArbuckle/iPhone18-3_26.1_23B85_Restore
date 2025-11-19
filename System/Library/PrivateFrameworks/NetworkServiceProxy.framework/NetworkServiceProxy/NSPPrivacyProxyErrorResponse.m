@interface NSPPrivacyProxyErrorResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyErrorResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyErrorResponse;
  v4 = [(NSPPrivacyProxyErrorResponse *)&v8 description];
  v5 = [(NSPPrivacyProxyErrorResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  errorReason = self->_errorReason;
  if (errorReason)
  {
    [v3 setObject:errorReason forKey:@"errorReason"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_errorReason)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  errorReason = self->_errorReason;
  if (errorReason)
  {
    [a3 setErrorReason:errorReason];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_errorReason copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    errorReason = self->_errorReason;
    if (errorReason | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NSPPrivacyProxyErrorResponse *)self setErrorReason:?];
  }
}

@end