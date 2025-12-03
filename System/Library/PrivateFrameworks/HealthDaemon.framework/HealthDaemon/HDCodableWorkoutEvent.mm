@interface HDCodableWorkoutEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedDateIntervalStartDate;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasSwimmingStrokeStyle:(BOOL)style;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutEvent

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSwimmingStrokeStyle:(BOOL)style
{
  if (style)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
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
  v8.super_class = HDCodableWorkoutEvent;
  v4 = [(HDCodableWorkoutEvent *)&v8 description];
  dictionaryRepresentation = [(HDCodableWorkoutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v10 forKey:@"type"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
  [dictionary setObject:v11 forKey:@"date"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_swimmingStrokeStyle];
    [dictionary setObject:v5 forKey:@"swimmingStrokeStyle"];
  }

LABEL_5:
  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    dictionaryRepresentation = [(HDCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadataDictionary"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [dictionary setObject:v8 forKey:@"duration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  date = self->_date;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    swimmingStrokeStyle = self->_swimmingStrokeStyle;
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  if (self->_metadataDictionary)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = self->_type;
    *(toCopy + 48) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  toCopy[1] = *&self->_date;
  *(toCopy + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[3] = self->_swimmingStrokeStyle;
    *(toCopy + 48) |= 4u;
  }

LABEL_5:
  if (self->_metadataDictionary)
  {
    v6 = toCopy;
    [toCopy setMetadataDictionary:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = *&self->_duration;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_type;
    *(v5 + 48) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(v5 + 8) = self->_date;
  *(v5 + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_swimmingStrokeStyle;
    *(v5 + 48) |= 4u;
  }

LABEL_5:
  v8 = [(HDCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:zone];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_duration;
    *(v6 + 48) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_type != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_swimmingStrokeStyle != *(equalCopy + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(equalCopy + 5))
  {
    if (![(HDCodableMetadataDictionary *)metadataDictionary isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(equalCopy + 2))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_type;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v2.i64 = floor(date + 0.5);
  v7 = (date - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_swimmingStrokeStyle;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HDCodableMetadataDictionary *)self->_metadataDictionary hash];
  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v12.i64 = floor(duration + 0.5);
    v16 = (duration - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v14 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 48);
  if ((v6 & 8) != 0)
  {
    self->_type = *(fromCopy + 4);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 48);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_date = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_4:
    self->_swimmingStrokeStyle = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  metadataDictionary = self->_metadataDictionary;
  v8 = *(v5 + 5);
  if (metadataDictionary)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    [(HDCodableMetadataDictionary *)metadataDictionary mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    [(HDCodableWorkoutEvent *)self setMetadataDictionary:?];
  }

  v5 = v9;
LABEL_14:
  if ((*(v5 + 48) & 2) != 0)
  {
    self->_duration = *(v5 + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

- (id)decodedDateIntervalStartDate
{
  if ([(HDCodableWorkoutEvent *)self hasDate])
  {
    date = self->_date;
    v4 = HDDecodeDateForValue();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end