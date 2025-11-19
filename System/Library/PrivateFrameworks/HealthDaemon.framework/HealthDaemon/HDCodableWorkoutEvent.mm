@interface HDCodableWorkoutEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedDateIntervalStartDate;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasSwimmingStrokeStyle:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutEvent

- (void)setHasType:(BOOL)a3
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

- (void)setHasSwimmingStrokeStyle:(BOOL)a3
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

- (void)setHasDuration:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutEvent;
  v4 = [(HDCodableWorkoutEvent *)&v8 description];
  v5 = [(HDCodableWorkoutEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v10 forKey:@"type"];

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
  [v3 setObject:v11 forKey:@"date"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_swimmingStrokeStyle];
    [v3 setObject:v5 forKey:@"swimmingStrokeStyle"];
  }

LABEL_5:
  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary)
  {
    v7 = [(HDCodableMetadataDictionary *)metadataDictionary dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"metadataDictionary"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
    [v3 setObject:v8 forKey:@"duration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = self->_type;
    *(v4 + 48) |= 8u;
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

  v4[1] = *&self->_date;
  *(v4 + 48) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_swimmingStrokeStyle;
    *(v4 + 48) |= 4u;
  }

LABEL_5:
  if (self->_metadataDictionary)
  {
    v6 = v4;
    [v4 setMetadataDictionary:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[2] = *&self->_duration;
    *(v4 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(HDCodableMetadataDictionary *)self->_metadataDictionary copyWithZone:a3];
  v9 = *(v6 + 40);
  *(v6 + 40) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_duration;
    *(v6 + 48) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_swimmingStrokeStyle != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  metadataDictionary = self->_metadataDictionary;
  if (metadataDictionary | *(v4 + 5))
  {
    if (![(HDCodableMetadataDictionary *)metadataDictionary isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
    v6 = *(v4 + 48);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if ((v6 & 8) != 0)
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 8u;
    v6 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_date = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_4:
    self->_swimmingStrokeStyle = *(v4 + 3);
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