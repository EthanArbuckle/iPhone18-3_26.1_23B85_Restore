@interface NSPPrivacyProxySuccessResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxySuccessResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxySuccessResponse;
  v4 = [(NSPPrivacyProxySuccessResponse *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxySuccessResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  quota = self->_quota;
  if (quota)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyQuota *)quota dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"quota"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_quota)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  quota = self->_quota;
  if (quota)
  {
    [to setQuota:quota];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSPPrivacyProxyQuota *)self->_quota copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    quota = self->_quota;
    if (quota | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  quota = self->_quota;
  v6 = fromCopy[1];
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