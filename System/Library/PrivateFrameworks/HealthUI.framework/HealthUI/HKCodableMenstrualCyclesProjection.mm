@interface HKCodableMenstrualCyclesProjection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndMean:(BOOL)mean;
- (void)setHasEndStandardDeviation:(BOOL)deviation;
- (void)setHasIsPartiallyLogged:(BOOL)logged;
- (void)setHasPredictionPrimarySource:(BOOL)source;
- (void)setHasStartMean:(BOOL)mean;
- (void)setHasStartStandardDeviation:(BOOL)deviation;
- (void)writeTo:(id)to;
@end

@implementation HKCodableMenstrualCyclesProjection

- (void)setHasStartMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasStartStandardDeviation:(BOOL)deviation
{
  if (deviation)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndMean:(BOOL)mean
{
  if (mean)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEndStandardDeviation:(BOOL)deviation
{
  if (deviation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsPartiallyLogged:(BOOL)logged
{
  if (logged)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPredictionPrimarySource:(BOOL)source
{
  if (source)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMenstrualCyclesProjection;
  v4 = [(HKCodableMenstrualCyclesProjection *)&v8 description];
  dictionaryRepresentation = [(HKCodableMenstrualCyclesProjection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startMean];
    [dictionary setObject:v11 forKey:@"startMean"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startStandardDeviation];
  [dictionary setObject:v12 forKey:@"startStandardDeviation"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endMean];
  [dictionary setObject:v13 forKey:@"endMean"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endStandardDeviation];
    [dictionary setObject:v5 forKey:@"endStandardDeviation"];
  }

LABEL_6:
  allDays = self->_allDays;
  if (allDays)
  {
    dictionaryRepresentation = [(HKCodableDayIndexRange *)allDays dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"allDays"];
  }

  v8 = self->_has;
  if ((v8 & 0x40) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPartiallyLogged];
    [dictionary setObject:v14 forKey:@"isPartiallyLogged"];

    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_10:
      if ((v8 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_daysOffsetFromCalendarMethod];
  [dictionary setObject:v15 forKey:@"daysOffsetFromCalendarMethod"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_predictionPrimarySource];
    [dictionary setObject:v9 forKey:@"predictionPrimarySource"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  if (self->_allDays)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = self->_has;
  if ((v5 & 0x40) != 0)
  {
    PBDataWriterWriteBOOLField();
    v5 = self->_has;
    if ((v5 & 1) == 0)
    {
LABEL_10:
      if ((v5 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    PBDataWriterWriteInt64Field();
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[5] = *&self->_startMean;
    *(toCopy + 68) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = *&self->_startStandardDeviation;
  *(toCopy + 68) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  toCopy[2] = *&self->_endMean;
  *(toCopy + 68) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    toCopy[3] = *&self->_endStandardDeviation;
    *(toCopy + 68) |= 4u;
  }

LABEL_6:
  if (self->_allDays)
  {
    v7 = toCopy;
    [toCopy setAllDays:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 64) = self->_isPartiallyLogged;
    *(toCopy + 68) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_10:
      if ((v6 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

  toCopy[1] = self->_daysOffsetFromCalendarMethod;
  *(toCopy + 68) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    toCopy[4] = self->_predictionPrimarySource;
    *(toCopy + 68) |= 8u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_startMean;
    *(v5 + 68) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_startStandardDeviation;
  *(v5 + 68) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v5 + 16) = self->_endMean;
  *(v5 + 68) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_endStandardDeviation;
    *(v5 + 68) |= 4u;
  }

LABEL_6:
  v8 = [(HKCodableDayIndexRange *)self->_allDays copyWithZone:zone];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v10 = self->_has;
  if ((v10 & 0x40) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    *(v6 + 8) = self->_daysOffsetFromCalendarMethod;
    *(v6 + 68) |= 1u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_9;
  }

  *(v6 + 64) = self->_isPartiallyLogged;
  *(v6 + 68) |= 0x40u;
  v10 = self->_has;
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v10 & 8) != 0)
  {
LABEL_9:
    *(v6 + 32) = self->_predictionPrimarySource;
    *(v6 + 68) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0 || self->_startMean != *(equalCopy + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 68) & 0x20) == 0 || self->_startStandardDeviation != *(equalCopy + 6))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 68) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_endMean != *(equalCopy + 2))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 68) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_endStandardDeviation != *(equalCopy + 3))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 68) & 4) != 0)
  {
    goto LABEL_41;
  }

  allDays = self->_allDays;
  if (allDays | *(equalCopy + 7))
  {
    if (![(HKCodableDayIndexRange *)allDays isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  if ((has & 0x40) == 0)
  {
    if ((*(equalCopy + 68) & 0x40) == 0)
    {
      goto LABEL_27;
    }

LABEL_41:
    v7 = 0;
    goto LABEL_42;
  }

  if ((*(equalCopy + 68) & 0x40) == 0)
  {
    goto LABEL_41;
  }

  if (self->_isPartiallyLogged)
  {
    if ((*(equalCopy + 64) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_41;
  }

LABEL_27:
  if (has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_daysOffsetFromCalendarMethod != *(equalCopy + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_41;
  }

  v7 = (*(equalCopy + 68) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0 || self->_predictionPrimarySource != *(equalCopy + 4))
    {
      goto LABEL_41;
    }

    v7 = 1;
  }

LABEL_42:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    startMean = self->_startMean;
    if (startMean < 0.0)
    {
      startMean = -startMean;
    }

    *v2.i64 = floor(startMean + 0.5);
    v7 = (startMean - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 0x20) != 0)
  {
    startStandardDeviation = self->_startStandardDeviation;
    if (startStandardDeviation < 0.0)
    {
      startStandardDeviation = -startStandardDeviation;
    }

    *v2.i64 = floor(startStandardDeviation + 0.5);
    v11 = (startStandardDeviation - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 2) != 0)
  {
    endMean = self->_endMean;
    if (endMean < 0.0)
    {
      endMean = -endMean;
    }

    *v2.i64 = floor(endMean + 0.5);
    v15 = (endMean - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    endStandardDeviation = self->_endStandardDeviation;
    if (endStandardDeviation < 0.0)
    {
      endStandardDeviation = -endStandardDeviation;
    }

    *v2.i64 = floor(endStandardDeviation + 0.5);
    v19 = (endStandardDeviation - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = [(HKCodableDayIndexRange *)self->_allDays hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v22 = 0;
    if (*&self->_has)
    {
      goto LABEL_35;
    }

LABEL_38:
    v23 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    v24 = 0;
    return v9 ^ v5 ^ v13 ^ v17 ^ v22 ^ v23 ^ v24 ^ v21;
  }

  v22 = 2654435761 * self->_isPartiallyLogged;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  v23 = 2654435761 * self->_daysOffsetFromCalendarMethod;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v24 = 2654435761 * self->_predictionPrimarySource;
  return v9 ^ v5 ^ v13 ^ v17 ^ v22 ^ v23 ^ v24 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 68);
  if ((v6 & 0x10) != 0)
  {
    self->_startMean = fromCopy[5];
    *&self->_has |= 0x10u;
    v6 = *(fromCopy + 68);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 68) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_startStandardDeviation = fromCopy[6];
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 68);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_endMean = fromCopy[2];
  *&self->_has |= 2u;
  if ((*(fromCopy + 68) & 4) != 0)
  {
LABEL_5:
    self->_endStandardDeviation = fromCopy[3];
    *&self->_has |= 4u;
  }

LABEL_6:
  allDays = self->_allDays;
  v8 = *(v5 + 7);
  if (allDays)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v10 = v5;
    allDays = [(HKCodableDayIndexRange *)allDays mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v10 = v5;
    allDays = [(HKCodableMenstrualCyclesProjection *)self setAllDays:?];
  }

  v5 = v10;
LABEL_16:
  v9 = *(v5 + 68);
  if ((v9 & 0x40) != 0)
  {
    self->_isPartiallyLogged = *(v5 + 64);
    *&self->_has |= 0x40u;
    v9 = *(v5 + 68);
    if ((v9 & 1) == 0)
    {
LABEL_18:
      if ((v9 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v5 + 68) & 1) == 0)
  {
    goto LABEL_18;
  }

  self->_daysOffsetFromCalendarMethod = v5[1];
  *&self->_has |= 1u;
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_19:
    self->_predictionPrimarySource = v5[4];
    *&self->_has |= 8u;
  }

LABEL_20:

  MEMORY[0x1EEE66BB8](allDays, v5);
}

@end