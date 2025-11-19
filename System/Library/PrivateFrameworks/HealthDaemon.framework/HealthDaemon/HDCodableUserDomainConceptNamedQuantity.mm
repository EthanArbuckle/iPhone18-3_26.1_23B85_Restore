@interface HDCodableUserDomainConceptNamedQuantity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasValue:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableUserDomainConceptNamedQuantity

- (void)setHasValue:(BOOL)a3
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

- (void)setHasType:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableUserDomainConceptNamedQuantity;
  v4 = [(HDCodableUserDomainConceptNamedQuantity *)&v8 description];
  v5 = [(HDCodableUserDomainConceptNamedQuantity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    [v4 setObject:v6 forKey:@"value"];
  }

  unit = self->_unit;
  if (unit)
  {
    [v4 setObject:unit forKey:@"unit"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v4 setObject:v11 forKey:@"type"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [v4 setObject:v12 forKey:@"version"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v4 setObject:v13 forKey:@"timestamp"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v9 forKey:@"deleted"];
  }

LABEL_12:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
    v4 = v11;
  }

  if (self->_unit)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v11;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  version = self->_version;
  PBDataWriterWriteInt64Field();
  v4 = v11;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
  v4 = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    v4 = v11;
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = *&self->_value;
    *(v4 + 60) |= 4u;
  }

  if (self->_unit)
  {
    [v6 setUnit:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_type;
    *(v4 + 60) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 4) = self->_version;
  *(v4 + 60) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  *(v4 + 1) = *&self->_timestamp;
  *(v4 + 60) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(v4 + 56) = self->_deleted;
    *(v4 + 60) |= 0x10u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_value;
    *(v5 + 60) |= 4u;
  }

  v8 = [(NSString *)self->_unit copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_type;
    *(v5 + 60) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v5 + 8) = self->_timestamp;
      *(v5 + 60) |= 1u;
      if ((*&self->_has & 0x10) == 0)
      {
        return v5;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 32) = self->_version;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    *(v5 + 56) = self->_deleted;
    *(v5 + 60) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  name = self->_name;
  if (name | *(v4 + 5))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_29;
    }
  }

  has = self->_has;
  v7 = *(v4 + 60);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_value != *(v4 + 3))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_29;
  }

  unit = self->_unit;
  if (unit | *(v4 + 6))
  {
    if (![(NSString *)unit isEqual:?])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v7 = *(v4 + 60);
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_type != *(v4 + 2))
    {
      goto LABEL_29;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_29;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_29;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_29;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_29;
    }
  }

  else if (v7)
  {
    goto LABEL_29;
  }

  v9 = (v7 & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) != 0)
    {
      if (self->_deleted)
      {
        if ((*(v4 + 56) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (*(v4 + 56))
      {
        goto LABEL_29;
      }

      v9 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v9 = 0;
  }

LABEL_30:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v4.i64 = floor(value + 0.5);
    v8 = (value - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
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

  v10 = [(NSString *)self->_unit hash];
  if ((*&self->_has & 2) == 0)
  {
    v13 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v14 = 0;
    if (*&self->_has)
    {
      goto LABEL_12;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v13 = 2654435761 * self->_type;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v14 = 2654435761 * self->_version;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v11.i64 = floor(timestamp + 0.5);
  v16 = (timestamp - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v12, v11).i64;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabs(v16);
  }

LABEL_19:
  if ((*&self->_has & 0x10) != 0)
  {
    v19 = 2654435761 * self->_deleted;
  }

  else
  {
    v19 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v13 ^ v14 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 5))
  {
    [(HDCodableUserDomainConceptNamedQuantity *)self setName:?];
    v4 = v6;
  }

  if ((*(v4 + 60) & 4) != 0)
  {
    self->_value = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 6))
  {
    [(HDCodableUserDomainConceptNamedQuantity *)self setUnit:?];
    v4 = v6;
  }

  v5 = *(v4 + 60);
  if ((v5 & 2) != 0)
  {
    self->_type = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 60);
    if ((v5 & 8) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 60) & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_version = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_timestamp = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 60) & 0x10) != 0)
  {
LABEL_11:
    self->_deleted = *(v4 + 56);
    *&self->_has |= 0x10u;
  }

LABEL_12:
}

@end