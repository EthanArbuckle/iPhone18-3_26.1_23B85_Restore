@interface NSPPrivacyProxyTokenKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMetadataSize:(BOOL)a3;
- (void)setHasRotation:(BOOL)a3;
- (void)setHasTokenType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyTokenKey

- (void)setHasRotation:(BOOL)a3
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

- (void)setHasTokenType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMetadataSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenKey;
  v4 = [(NSPPrivacyProxyTokenKey *)&v8 description];
  v5 = [(NSPPrivacyProxyTokenKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_expiration];
    [v4 setObject:v9 forKey:@"expiration"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_rotation];
  [v4 setObject:v10 forKey:@"rotation"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tokenType];
  [v4 setObject:v11 forKey:@"tokenType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_metadataSize];
    [v4 setObject:v7 forKey:@"metadataSize"];
  }

LABEL_8:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_key)
  {
    __assert_rtn("[NSPPrivacyProxyTokenKey writeTo:]", "NSPPrivacyProxyTokenKey.m", 183, "nil != self->_key");
  }

  v11 = v4;
  PBDataWriterWriteDataField();
  has = self->_has;
  if (has)
  {
    expiration = self->_expiration;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    rotation = self->_rotation;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  v8 = v11;
  if ((has & 8) != 0)
  {
    tokenType = self->_tokenType;
    PBDataWriterWriteUint32Field();
    v8 = v11;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    metadataSize = self->_metadataSize;
    PBDataWriterWriteUint32Field();
    v8 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setKey:self->_key];
  has = self->_has;
  if (has)
  {
    *(v5 + 1) = self->_expiration;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 2) = self->_rotation;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v5 + 9) = self->_tokenType;
  *(v5 + 40) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 8) = self->_metadataSize;
    *(v5 + 40) |= 4u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_key copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_expiration;
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 36) = self->_tokenType;
      *(v5 + 40) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_rotation;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_metadataSize;
    *(v5 + 40) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSData *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_expiration != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_rotation != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_tokenType != *(v4 + 9))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_metadataSize != *(v4 + 8))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_expiration;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_rotation;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_tokenType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_metadataSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(NSPPrivacyProxyTokenKey *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    self->_expiration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_rotation = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_tokenType = *(v4 + 9);
  *&self->_has |= 8u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_7:
    self->_metadataSize = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end