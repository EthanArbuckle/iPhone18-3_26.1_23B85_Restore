@interface NSPPrivacyProxyResolverInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWeight:(BOOL)weight;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyResolverInfo

- (void)setHasWeight:(BOOL)weight
{
  if (weight)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyResolverInfo;
  v4 = [(NSPPrivacyProxyResolverInfo *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyResolverInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  dohURL = self->_dohURL;
  if (dohURL)
  {
    [dictionary setObject:dohURL forKey:@"dohURL"];
  }

  obliviousDoHConfig = self->_obliviousDoHConfig;
  if (obliviousDoHConfig)
  {
    [v4 setObject:obliviousDoHConfig forKey:@"obliviousDoHConfig"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weight];
    [v4 setObject:v8 forKey:@"weight"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_proxyIndex];
    [v4 setObject:v9 forKey:@"proxyIndex"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_dohURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_obliviousDoHConfig)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    weight = self->_weight;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    proxyIndex = self->_proxyIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dohURL)
  {
    [toCopy setDohURL:?];
    toCopy = v6;
  }

  if (self->_obliviousDoHConfig)
  {
    [v6 setObliviousDoHConfig:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 7) = self->_weight;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 6) = self->_proxyIndex;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_dohURL copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_obliviousDoHConfig copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_weight;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_proxyIndex;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  dohURL = self->_dohURL;
  if (dohURL | *(equalCopy + 1))
  {
    if (![(NSString *)dohURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  obliviousDoHConfig = self->_obliviousDoHConfig;
  if (obliviousDoHConfig | *(equalCopy + 2))
  {
    if (![(NSData *)obliviousDoHConfig isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_weight != *(equalCopy + 7))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_proxyIndex != *(equalCopy + 6))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dohURL hash];
  v4 = [(NSData *)self->_obliviousDoHConfig hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_weight;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_proxyIndex;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NSPPrivacyProxyResolverInfo *)self setDohURL:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NSPPrivacyProxyResolverInfo *)self setObliviousDoHConfig:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_weight = fromCopy[7];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_proxyIndex = fromCopy[6];
    *&self->_has |= 1u;
  }
}

@end