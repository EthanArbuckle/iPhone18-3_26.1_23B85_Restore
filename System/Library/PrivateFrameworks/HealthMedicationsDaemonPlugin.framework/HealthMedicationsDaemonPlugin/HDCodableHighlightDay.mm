@interface HDCodableHighlightDay
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsPaddedDay:(BOOL)day;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation HDCodableHighlightDay

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsPaddedDay:(BOOL)day
{
  if (day)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableHighlightDay;
  v4 = [(HDCodableHighlightDay *)&v8 description];
  dictionaryRepresentation = [(HDCodableHighlightDay *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
    [dictionary setObject:v7 forKey:@"date"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_status];
  [dictionary setObject:v8 forKey:@"status"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPaddedDay];
    [dictionary setObject:v5 forKey:@"isPaddedDay"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  status = self->_status;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    isPaddedDay = self->_isPaddedDay;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_date;
    *(toCopy + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 17) = self->_status;
  *(toCopy + 20) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 16) = self->_isPaddedDay;
    *(toCopy + 20) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_date;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 17) = self->_status;
  *(result + 20) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 16) = self->_isPaddedDay;
  *(result + 20) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0)
    {
      goto LABEL_15;
    }

    v7 = *(equalCopy + 17);
    if (self->_status)
    {
      if ((*(equalCopy + 17) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 17))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 20) & 4) != 0)
  {
    goto LABEL_15;
  }

  v5 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) != 0)
    {
      if (self->_isPaddedDay)
      {
        if (*(equalCopy + 16))
        {
          goto LABEL_23;
        }
      }

      else if (!*(equalCopy + 16))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v6 = (date - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_status;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v8 ^ v4 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_isPaddedDay;
  return v8 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_date = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 20) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_status = *(fromCopy + 17);
  *&self->_has |= 4u;
  if ((*(fromCopy + 20) & 2) != 0)
  {
LABEL_4:
    self->_isPaddedDay = *(fromCopy + 16);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end