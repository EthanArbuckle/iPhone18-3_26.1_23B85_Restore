@interface HDCodableWorkoutConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLocationType:(BOOL)a3;
- (void)setHasWLengthValue:(BOOL)a3;
- (void)setHasWLocationType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutConfiguration

- (void)setHasLocationType:(BOOL)a3
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

- (void)setHasWLocationType:(BOOL)a3
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

- (void)setHasWLengthValue:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutConfiguration;
  v4 = [(HDCodableWorkoutConfiguration *)&v8 description];
  v5 = [(HDCodableWorkoutConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_activityType];
    [v3 setObject:v8 forKey:@"activityType"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_locationType];
  [v3 setObject:v9 forKey:@"locationType"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wLocationType];
  [v3 setObject:v10 forKey:@"wLocationType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_wLengthValue];
    [v3 setObject:v5 forKey:@"wLengthValue"];
  }

LABEL_6:
  wLengthUnitString = self->_wLengthUnitString;
  if (wLengthUnitString)
  {
    [v3 setObject:wLengthUnitString forKey:@"wLengthUnitString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if (has)
  {
    activityType = self->_activityType;
    PBDataWriterWriteInt64Field();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  locationType = self->_locationType;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  wLocationType = self->_wLocationType;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    wLengthValue = self->_wLengthValue;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_6:
  if (self->_wLengthUnitString)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_activityType;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_locationType;
  *(v4 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v4[4] = self->_wLocationType;
  *(v4 + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v4[3] = *&self->_wLengthValue;
    *(v4 + 48) |= 4u;
  }

LABEL_6:
  if (self->_wLengthUnitString)
  {
    v6 = v4;
    [v4 setWLengthUnitString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_activityType;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 32) = self->_wLocationType;
      *(v5 + 48) |= 8u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_locationType;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 4) != 0)
  {
LABEL_5:
    *(v5 + 24) = self->_wLengthValue;
    *(v5 + 48) |= 4u;
  }

LABEL_6:
  v8 = [(NSString *)self->_wLengthUnitString copyWithZone:a3];
  v9 = v6[5];
  v6[5] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_activityType != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_locationType != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_wLocationType != *(v4 + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_wLengthValue != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  wLengthUnitString = self->_wLengthUnitString;
  if (wLengthUnitString | *(v4 + 5))
  {
    v7 = [(NSString *)wLengthUnitString isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_activityType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_locationType;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      return v9 ^ v8 ^ v10 ^ v14 ^ [(NSString *)self->_wLengthUnitString hash:v3];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_wLocationType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  wLengthValue = self->_wLengthValue;
  if (wLengthValue < 0.0)
  {
    wLengthValue = -wLengthValue;
  }

  *v6.i64 = floor(wLengthValue + 0.5);
  v12 = (wLengthValue - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ [(NSString *)self->_wLengthUnitString hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_activityType = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_locationType = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  self->_wLocationType = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_5:
    self->_wLengthValue = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_6:
  if (*(v4 + 5))
  {
    v6 = v4;
    [(HDCodableWorkoutConfiguration *)self setWLengthUnitString:?];
    v4 = v6;
  }
}

@end