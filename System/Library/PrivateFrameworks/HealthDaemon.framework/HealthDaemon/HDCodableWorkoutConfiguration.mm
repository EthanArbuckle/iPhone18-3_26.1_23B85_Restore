@interface HDCodableWorkoutConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLocationType:(BOOL)type;
- (void)setHasWLengthValue:(BOOL)value;
- (void)setHasWLocationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutConfiguration

- (void)setHasLocationType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasWLocationType:(BOOL)type
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

- (void)setHasWLengthValue:(BOOL)value
{
  if (value)
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
  dictionaryRepresentation = [(HDCodableWorkoutConfiguration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_activityType];
    [dictionary setObject:v8 forKey:@"activityType"];

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
  [dictionary setObject:v9 forKey:@"locationType"];

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
  [dictionary setObject:v10 forKey:@"wLocationType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_wLengthValue];
    [dictionary setObject:v5 forKey:@"wLengthValue"];
  }

LABEL_6:
  wLengthUnitString = self->_wLengthUnitString;
  if (wLengthUnitString)
  {
    [dictionary setObject:wLengthUnitString forKey:@"wLengthUnitString"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if (has)
  {
    activityType = self->_activityType;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
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
  toCopy = v10;
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
  toCopy = v10;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    wLengthValue = self->_wLengthValue;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

LABEL_6:
  if (self->_wLengthUnitString)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_activityType;
    *(toCopy + 48) |= 1u;
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

  toCopy[2] = self->_locationType;
  *(toCopy + 48) |= 2u;
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
  toCopy[4] = self->_wLocationType;
  *(toCopy + 48) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    toCopy[3] = *&self->_wLengthValue;
    *(toCopy + 48) |= 4u;
  }

LABEL_6:
  if (self->_wLengthUnitString)
  {
    v6 = toCopy;
    [toCopy setWLengthUnitString:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(NSString *)self->_wLengthUnitString copyWithZone:zone];
  v9 = v6[5];
  v6[5] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_activityType != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_locationType != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_wLocationType != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_wLengthValue != *(equalCopy + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  wLengthUnitString = self->_wLengthUnitString;
  if (wLengthUnitString | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_activityType = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
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

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_locationType = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
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
  self->_wLocationType = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_5:
    self->_wLengthValue = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_6:
  if (*(fromCopy + 5))
  {
    v6 = fromCopy;
    [(HDCodableWorkoutConfiguration *)self setWLengthUnitString:?];
    fromCopy = v6;
  }
}

@end