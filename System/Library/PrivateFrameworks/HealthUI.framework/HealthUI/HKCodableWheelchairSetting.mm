@interface HKCodableWheelchairSetting
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsUsingWheelchair:(BOOL)wheelchair;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HKCodableWheelchairSetting

- (void)setHasIsUsingWheelchair:(BOOL)wheelchair
{
  if (wheelchair)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
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
  dictionaryRepresentation = [(HKCodableWheelchairSetting *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUsingWheelchair];
    [dictionary setObject:v7 forKey:@"isUsingWheelchair"];

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
  [dictionary setObject:v8 forKey:@"latestSupportedVersion"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [dictionary setObject:v5 forKey:@"minimumSupportedVersion"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
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
  toCopy = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[24] = self->_isUsingWheelchair;
    toCopy[28] |= 4u;
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

  *(toCopy + 1) = self->_latestSupportedVersion;
  toCopy[28] |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 2) = self->_minimumSupportedVersion;
    toCopy[28] |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 28) & 4) == 0)
  {
    goto LABEL_18;
  }

  if (self->_isUsingWheelchair)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_18;
  }

LABEL_4:
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_latestSupportedVersion != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_18;
  }

  v5 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_minimumSupportedVersion != *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_isUsingWheelchair = *(fromCopy + 24);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
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

  else if ((*(fromCopy + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_latestSupportedVersion = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 28) & 2) != 0)
  {
LABEL_4:
    self->_minimumSupportedVersion = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end