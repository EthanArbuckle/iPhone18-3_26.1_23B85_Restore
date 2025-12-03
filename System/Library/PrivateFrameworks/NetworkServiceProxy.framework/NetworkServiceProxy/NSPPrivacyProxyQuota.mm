@interface NSPPrivacyProxyQuota
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyQuota

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyQuota;
  v4 = [(NSPPrivacyProxyQuota *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyQuota *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_expiration];
    [dictionary setObject:v4 forKey:@"expiration"];
  }

  cost = self->_cost;
  if (cost)
  {
    dictionaryRepresentation = [(NSPPrivacyProxyCost *)cost dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"cost"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    expiration = self->_expiration;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_cost)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_expiration;
    *(toCopy + 24) |= 1u;
  }

  if (self->_cost)
  {
    v5 = toCopy;
    [toCopy setCost:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_expiration;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSPPrivacyProxyCost *)self->_cost copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_expiration != *(equalCopy + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  cost = self->_cost;
  if (cost | *(equalCopy + 2))
  {
    v7 = [(NSPPrivacyProxyCost *)cost isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_expiration;
  }

  else
  {
    v2 = 0;
  }

  return [(NSPPrivacyProxyCost *)self->_cost hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[3])
  {
    self->_expiration = fromCopy[1];
    *&self->_has |= 1u;
  }

  cost = self->_cost;
  v7 = v5[2];
  if (cost)
  {
    if (v7)
    {
      [(NSPPrivacyProxyCost *)cost mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(NSPPrivacyProxyQuota *)self setCost:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end