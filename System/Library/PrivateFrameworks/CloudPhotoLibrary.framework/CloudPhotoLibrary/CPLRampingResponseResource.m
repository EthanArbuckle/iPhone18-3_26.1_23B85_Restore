@interface CPLRampingResponseResource
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLRampingResponseResource

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v6 = v4;
    [(CPLRampingResponseResource *)self setResource:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_allowed = *(v4 + 24);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_retryAfterMillis = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_resource hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_allowed;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_retryAfterMillis;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  resource = self->_resource;
  if (resource | *(v4 + 2))
  {
    if (![(NSString *)resource isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(v4 + 24);
    if (self->_allowed)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_11;
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) != 0 && self->_retryAfterMillis == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_resource copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_allowed;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_retryAfterMillis;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_resource)
  {
    v6 = v4;
    [v4 setResource:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 24) = self->_allowed;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_retryAfterMillis;
    *(v4 + 28) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_resource)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    allowed = self->_allowed;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    retryAfterMillis = self->_retryAfterMillis;
    PBDataWriterWriteInt64Field();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  resource = self->_resource;
  if (resource)
  {
    [v3 setObject:resource forKey:@"resource"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowed];
    [v4 setObject:v7 forKey:@"allowed"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_retryAfterMillis];
    [v4 setObject:v8 forKey:@"retryAfterMillis"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLRampingResponseResource;
  v4 = [(CPLRampingResponseResource *)&v8 description];
  v5 = [(CPLRampingResponseResource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasAllowed:(BOOL)a3
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

@end