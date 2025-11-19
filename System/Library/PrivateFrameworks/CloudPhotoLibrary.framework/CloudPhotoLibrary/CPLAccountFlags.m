@interface CPLAccountFlags
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReason:(id)a3;
- (int)reason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDefaultHEVC:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CPLAccountFlags

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_defaultHEVC = *(v4 + 20);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_reason = *(v4 + 4);
  *&self->_has |= 2u;
  if (*(v4 + 24))
  {
LABEL_4:
    self->_version = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_defaultHEVC;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_reason;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_version;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 24) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 20);
  if (self->_defaultHEVC)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_reason != *(v4 + 4))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_version != *(v4 + 1))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 20) = self->_defaultHEVC;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_reason;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_version;
  *(result + 24) |= 1u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[20] = self->_defaultHEVC;
    v4[24] |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 4) = self->_reason;
  v4[24] |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = self->_version;
    v4[24] |= 1u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    defaultHEVC = self->_defaultHEVC;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  reason = self->_reason;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    version = self->_version;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultHEVC];
    [v3 setObject:v7 forKey:@"defaultHEVC"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  reason = self->_reason;
  if (reason >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reason];
  }

  else
  {
    v9 = off_1E861C920[reason];
  }

  [v3 setObject:v9 forKey:@"reason"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
  [v3 setObject:v5 forKey:@"version"];

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLAccountFlags;
  v4 = [(CPLAccountFlags *)&v8 description];
  v5 = [(CPLAccountFlags *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Upgrade"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Expired"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasReason:(BOOL)a3
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

- (int)reason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_reason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDefaultHEVC:(BOOL)a3
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

@end