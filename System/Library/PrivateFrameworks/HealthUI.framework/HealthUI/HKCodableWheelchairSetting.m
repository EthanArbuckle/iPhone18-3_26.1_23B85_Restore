@interface HKCodableWheelchairSetting
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsUsingWheelchair:(BOOL)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableWheelchairSetting

- (void)setHasIsUsingWheelchair:(BOOL)a3
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

- (void)setHasMinimumSupportedVersion:(BOOL)a3
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
  v8.super_class = HKCodableWheelchairSetting;
  v4 = [(HKCodableWheelchairSetting *)&v8 description];
  v5 = [(HKCodableWheelchairSetting *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUsingWheelchair];
    [v3 setObject:v7 forKey:@"isUsingWheelchair"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
  [v3 setObject:v8 forKey:@"latestSupportedVersion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v5 forKey:@"minimumSupportedVersion"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  v4 = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[24] = self->_isUsingWheelchair;
    v4[28] |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 1) = self->_latestSupportedVersion;
  v4[28] |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 2) = self->_minimumSupportedVersion;
    v4[28] |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 24) = self->_isUsingWheelchair;
    *(result + 28) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_latestSupportedVersion;
  *(result + 28) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_minimumSupportedVersion;
  *(result + 28) |= 2u;
  return result;
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
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_18;
  }

  if (self->_isUsingWheelchair)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_18;
  }

  v5 = (*(v4 + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
    {
      goto LABEL_18;
    }

    v5 = 1;
  }

LABEL_19:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_isUsingWheelchair;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_latestSupportedVersion;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_minimumSupportedVersion;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_isUsingWheelchair = *(v4 + 24);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_latestSupportedVersion = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 28) & 2) != 0)
  {
LABEL_4:
    self->_minimumSupportedVersion = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end