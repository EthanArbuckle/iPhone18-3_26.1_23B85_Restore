@interface HDCodableMedicationScheduleIntervalData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCycleIntervalDays:(BOOL)days;
- (void)setHasDayOfWeek:(BOOL)week;
- (void)setHasDose:(BOOL)dose;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMedicationScheduleIntervalData

- (void)setHasDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCycleIntervalDays:(BOOL)days
{
  if (days)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDose:(BOOL)dose
{
  if (dose)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableMedicationScheduleIntervalData;
  v4 = [(HDCodableMedicationScheduleIntervalData *)&v8 description];
  dictionaryRepresentation = [(HDCodableMedicationScheduleIntervalData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  startTimeComponents = self->_startTimeComponents;
  if (startTimeComponents)
  {
    dictionaryRepresentation = [(HDCodableDateComponents *)startTimeComponents dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startTimeComponents"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_dayOfWeek];
    [dictionary setObject:v9 forKey:@"dayOfWeek"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cycleIndex];
  [dictionary setObject:v10 forKey:@"cycleIndex"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cycleIntervalDays];
  [dictionary setObject:v11 forKey:@"cycleIntervalDays"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dose];
    [dictionary setObject:v7 forKey:@"dose"];
  }

LABEL_8:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_startTimeComponents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    dayOfWeek = self->_dayOfWeek;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  cycleIndex = self->_cycleIndex;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  cycleIntervalDays = self->_cycleIntervalDays;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    dose = self->_dose;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_startTimeComponents)
  {
    v6 = toCopy;
    [toCopy setStartTimeComponents:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_dayOfWeek;
    *(toCopy + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 1) = self->_cycleIndex;
  *(toCopy + 48) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 2) = self->_cycleIntervalDays;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 4) = *&self->_dose;
    *(toCopy + 48) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableDateComponents *)self->_startTimeComponents copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_dayOfWeek;
    *(v5 + 48) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_cycleIntervalDays;
      *(v5 + 48) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_cycleIndex;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 32) = self->_dose;
    *(v5 + 48) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  startTimeComponents = self->_startTimeComponents;
  if (startTimeComponents | *(equalCopy + 5))
  {
    if (![(HDCodableDateComponents *)startTimeComponents isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_dayOfWeek != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_cycleIndex != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_cycleIntervalDays != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(equalCopy + 48) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_dose != *(equalCopy + 4))
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
  v3 = [(HDCodableDateComponents *)self->_startTimeComponents hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_dayOfWeek;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761 * self->_cycleIndex;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v12 = 0;
      return v6 ^ v3 ^ v7 ^ v8 ^ v12;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = 2654435761 * self->_cycleIntervalDays;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  dose = self->_dose;
  if (dose < 0.0)
  {
    dose = -dose;
  }

  *v4.i64 = floor(dose + 0.5);
  v10 = (dose - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v5, v4).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v6 ^ v3 ^ v7 ^ v8 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  startTimeComponents = self->_startTimeComponents;
  v6 = *(fromCopy + 5);
  if (startTimeComponents)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    startTimeComponents = [(HDCodableDateComponents *)startTimeComponents mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    startTimeComponents = [(HDCodableMedicationScheduleIntervalData *)self setStartTimeComponents:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 48);
  if ((v7 & 4) != 0)
  {
    self->_dayOfWeek = *(fromCopy + 3);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 48);
    if ((v7 & 1) == 0)
    {
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 48) & 1) == 0)
  {
    goto LABEL_9;
  }

  self->_cycleIndex = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 48);
  if ((v7 & 2) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_cycleIntervalDays = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_11:
    self->_dose = *(fromCopy + 4);
    *&self->_has |= 8u;
  }

LABEL_12:

  MEMORY[0x2821F96F8](startTimeComponents, fromCopy);
}

@end