@interface NSPPrivacyProxySuccessResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxySuccessResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxySuccessResponse;
  v4 = [(NSPPrivacyProxySuccessResponse *)&v8 description];
  v5 = [(NSPPrivacyProxySuccessResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  quota = self->_quota;
  if (quota)
  {
    v5 = [(NSPPrivacyProxyQuota *)quota dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"quota"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_quota)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  quota = self->_quota;
  if (quota)
  {
    [a3 setQuota:quota];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSPPrivacyProxyQuota *)self->_quota copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    quota = self->_quota;
    if (quota | v4[1])
    {
      v6 = [(NSPPrivacyProxyQuota *)quota isEqual:?];
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
  quota = self->_quota;
  v6 = v4[1];
  if (quota)
  {
    if (v6)
    {
      [(NSPPrivacyProxyQuota *)quota mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(NSPPrivacyProxySuccessResponse *)self setQuota:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end