@interface HDCodableWorkoutZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasObjectType:(BOOL)a3;
- (void)setHasStartQuantity:(BOOL)a3;
- (void)setHasTimeInZone:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutZone

- (void)setHasStartQuantity:(BOOL)a3
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

- (void)setHasObjectType:(BOOL)a3
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

- (void)setHasTimeInZone:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutZone;
  v4 = [(HDCodableWorkoutZone *)&v8 description];
  v5 = [(HDCodableWorkoutZone *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startQuantity];
    [v4 setObject:v9 forKey:@"startQuantity"];

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

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endQuantity];
  [v4 setObject:v10 forKey:@"endQuantity"];

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
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_objectType];
  [v4 setObject:v11 forKey:@"objectType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeInZone];
    [v4 setObject:v7 forKey:@"timeInZone"];
  }

LABEL_8:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startQuantity = self->_startQuantity;
    PBDataWriterWriteDoubleField();
    v4 = v10;
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

  endQuantity = self->_endQuantity;
  PBDataWriterWriteDoubleField();
  v4 = v10;
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
  objectType = self->_objectType;
  PBDataWriterWriteInt64Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    timeInZone = self->_timeInZone;
    PBDataWriterWriteInt64Field();
    v4 = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_uuid)
  {
    v6 = v4;
    [v4 setUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = *&self->_startQuantity;
    *(v4 + 48) |= 4u;
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

  *(v4 + 1) = *&self->_endQuantity;
  *(v4 + 48) |= 1u;
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
  *(v4 + 2) = self->_objectType;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 4) = self->_timeInZone;
    *(v4 + 48) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_startQuantity;
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
      *(v5 + 16) = self->_objectType;
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

  *(v5 + 8) = self->_endQuantity;
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
    *(v5 + 32) = self->_timeInZone;
    *(v5 + 48) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 5))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_startQuantity != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_endQuantity != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_objectType != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 48) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_timeInZone != *(v4 + 4))
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
  v3 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 4) != 0)
  {
    startQuantity = self->_startQuantity;
    if (startQuantity < 0.0)
    {
      startQuantity = -startQuantity;
    }

    *v4.i64 = floor(startQuantity + 0.5);
    v8 = (startQuantity - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    endQuantity = self->_endQuantity;
    if (endQuantity < 0.0)
    {
      endQuantity = -endQuantity;
    }

    *v4.i64 = floor(endQuantity + 0.5);
    v12 = (endQuantity - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_objectType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    return v6 ^ v3 ^ v10 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = 2654435761 * self->_timeInZone;
  return v6 ^ v3 ^ v10 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 5))
  {
    v6 = v4;
    [(HDCodableWorkoutZone *)self setUuid:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if ((v5 & 4) != 0)
  {
    self->_startQuantity = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 48);
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_5;
  }

  self->_endQuantity = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 48);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_objectType = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_7:
    self->_timeInZone = *(v4 + 4);
    *&self->_has |= 8u;
  }

LABEL_8:
}

@end