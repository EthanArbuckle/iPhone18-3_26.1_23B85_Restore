@interface NSPPrivacyProxyQuota
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyQuota

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyQuota;
  v4 = [(NSPPrivacyProxyQuota *)&v8 description];
  v5 = [(NSPPrivacyProxyQuota *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_expiration];
    [v3 setObject:v4 forKey:@"expiration"];
  }

  cost = self->_cost;
  if (cost)
  {
    v6 = [(NSPPrivacyProxyCost *)cost dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"cost"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    expiration = self->_expiration;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_cost)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_expiration;
    *(v4 + 24) |= 1u;
  }

  if (self->_cost)
  {
    v5 = v4;
    [v4 setCost:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_expiration;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSPPrivacyProxyCost *)self->_cost copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_expiration != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  cost = self->_cost;
  if (cost | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    self->_expiration = v4[1];
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