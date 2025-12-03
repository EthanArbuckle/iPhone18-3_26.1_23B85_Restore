@interface HKCodableHandwashingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasMeetsGoal:(BOOL)goal;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableHandwashingEvent

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMeetsGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHandwashingEvent;
  v4 = [(HKCodableHandwashingEvent *)&v8 description];
  dictionaryRepresentation = [(HKCodableHandwashingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [dictionary setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [dictionary setObject:v6 forKey:@"endDate"];
  }

  averageDuration = self->_averageDuration;
  if (averageDuration)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)averageDuration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"averageDuration"];
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [dictionary setObject:v12 forKey:@"count"];

    v9 = self->_has;
    if ((v9 & 1) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_averageDailyCount];
  [dictionary setObject:v13 forKey:@"averageDailyCount"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_meetsGoal];
    [dictionary setObject:v10 forKey:@"meetsGoal"];
  }

LABEL_11:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_averageDuration)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = self->_has;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v5 = self->_has;
    if ((v5 & 1) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_startDate;
    *(toCopy + 52) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[3] = *&self->_endDate;
    *(toCopy + 52) |= 4u;
  }

  if (self->_averageDuration)
  {
    v7 = toCopy;
    [toCopy setAverageDuration:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    toCopy[2] = self->_count;
    *(toCopy + 52) |= 2u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  toCopy[1] = self->_averageDailyCount;
  *(toCopy + 52) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    *(toCopy + 48) = self->_meetsGoal;
    *(toCopy + 52) |= 0x10u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_startDate;
    *(v5 + 52) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_endDate;
    *(v5 + 52) |= 4u;
  }

  v8 = [(HKCodableQuantity *)self->_averageDuration copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 8) = self->_averageDailyCount;
    *(v6 + 52) |= 1u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 16) = self->_count;
  *(v6 + 52) |= 2u;
  v10 = self->_has;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 0x10) != 0)
  {
LABEL_8:
    *(v6 + 48) = self->_meetsGoal;
    *(v6 + 52) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0 || self->_startDate != *(equalCopy + 4))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_endDate != *(equalCopy + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_27;
  }

  averageDuration = self->_averageDuration;
  if (averageDuration | *(equalCopy + 5))
  {
    if (![(HKCodableQuantity *)averageDuration isEqual:?])
    {
      goto LABEL_27;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_count != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_27;
  }

  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_averageDailyCount != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_27;
  }

  v7 = (*(equalCopy + 52) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 52) & 0x10) != 0)
    {
      if (self->_meetsGoal)
      {
        if ((*(equalCopy + 48) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (*(equalCopy + 48))
      {
        goto LABEL_27;
      }

      v7 = 1;
      goto LABEL_28;
    }

LABEL_27:
    v7 = 0;
  }

LABEL_28:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v2.i64 = floor(startDate + 0.5);
    v7 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v11 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(HKCodableQuantity *)self->_averageDuration hash];
  if ((*&self->_has & 2) == 0)
  {
    v14 = 0;
    if (*&self->_has)
    {
      goto LABEL_19;
    }

LABEL_22:
    v15 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v16 = 0;
    return v9 ^ v5 ^ v14 ^ v15 ^ v16 ^ v13;
  }

  v14 = 2654435761 * self->_count;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v15 = 2654435761 * self->_averageDailyCount;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v16 = 2654435761 * self->_meetsGoal;
  return v9 ^ v5 ^ v14 ^ v15 ^ v16 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 52);
  if ((v6 & 8) != 0)
  {
    self->_startDate = fromCopy[4];
    *&self->_has |= 8u;
    v6 = *(fromCopy + 52);
  }

  if ((v6 & 4) != 0)
  {
    self->_endDate = fromCopy[3];
    *&self->_has |= 4u;
  }

  averageDuration = self->_averageDuration;
  v8 = *(v5 + 5);
  if (averageDuration)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v10 = v5;
    averageDuration = [(HKCodableQuantity *)averageDuration mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v10 = v5;
    averageDuration = [(HKCodableHandwashingEvent *)self setAverageDuration:?];
  }

  v5 = v10;
LABEL_11:
  v9 = *(v5 + 52);
  if ((v9 & 2) != 0)
  {
    self->_count = v5[2];
    *&self->_has |= 2u;
    v9 = *(v5 + 52);
    if ((v9 & 1) == 0)
    {
LABEL_13:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v5 + 52) & 1) == 0)
  {
    goto LABEL_13;
  }

  self->_averageDailyCount = v5[1];
  *&self->_has |= 1u;
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_14:
    self->_meetsGoal = *(v5 + 48);
    *&self->_has |= 0x10u;
  }

LABEL_15:

  MEMORY[0x1EEE66BB8](averageDuration, v5);
}

@end