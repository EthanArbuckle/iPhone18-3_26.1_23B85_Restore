@interface NSPPrivacyProxyResolverInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWeight:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyResolverInfo

- (void)setHasWeight:(BOOL)a3
{
  if (a3)
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
  v5 = [(NSPPrivacyProxyResolverInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  dohURL = self->_dohURL;
  if (dohURL)
  {
    [v3 setObject:dohURL forKey:@"dohURL"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_dohURL)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_obliviousDoHConfig)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    weight = self->_weight;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    proxyIndex = self->_proxyIndex;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dohURL)
  {
    [v4 setDohURL:?];
    v4 = v6;
  }

  if (self->_obliviousDoHConfig)
  {
    [v6 setObliviousDoHConfig:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 7) = self->_weight;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 6) = self->_proxyIndex;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_dohURL copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_obliviousDoHConfig copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  dohURL = self->_dohURL;
  if (dohURL | *(v4 + 1))
  {
    if (![(NSString *)dohURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  obliviousDoHConfig = self->_obliviousDoHConfig;
  if (obliviousDoHConfig | *(v4 + 2))
  {
    if (![(NSData *)obliviousDoHConfig isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_weight != *(v4 + 7))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_proxyIndex != *(v4 + 6))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(NSPPrivacyProxyResolverInfo *)self setDohURL:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NSPPrivacyProxyResolverInfo *)self setObliviousDoHConfig:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_weight = v4[7];
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_proxyIndex = v4[6];
    *&self->_has |= 1u;
  }
}

@end