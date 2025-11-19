@interface HDCodableUserDomainConceptProperty
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasIntegerValue:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasValueType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableUserDomainConceptProperty

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

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasValueType:(BOOL)a3
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

- (void)setHasIntegerValue:(BOOL)a3
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

- (void)setHasBoolValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableUserDomainConceptProperty;
  v4 = [(HDCodableUserDomainConceptProperty *)&v8 description];
  v5 = [(HDCodableUserDomainConceptProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v11 forKey:@"type"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [v3 setObject:v12 forKey:@"version"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v3 setObject:v13 forKey:@"timestamp"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_valueType];
    [v3 setObject:v5 forKey:@"valueType"];
  }

LABEL_6:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  v7 = self->_has;
  if (v7)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
    [v3 setObject:v14 forKey:@"doubleValue"];

    v7 = self->_has;
    if ((v7 & 2) == 0)
    {
LABEL_10:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_integerValue];
  [v3 setObject:v15 forKey:@"integerValue"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_BOOLValue];
    [v3 setObject:v8 forKey:@"BOOLValue"];
  }

LABEL_12:
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v3 setObject:dataValue forKey:@"dataValue"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v14 = v4;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v14;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  version = self->_version;
  PBDataWriterWriteInt64Field();
  v4 = v14;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
  v4 = v14;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    valueType = self->_valueType;
    PBDataWriterWriteInt64Field();
    v4 = v14;
  }

LABEL_6:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v14;
  }

  v7 = self->_has;
  if (v7)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v14;
    v7 = self->_has;
    if ((v7 & 2) == 0)
    {
LABEL_10:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  integerValue = self->_integerValue;
  PBDataWriterWriteInt64Field();
  v4 = v14;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    v4 = v14;
  }

LABEL_12:
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v14;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[4] = self->_type;
    *(v4 + 76) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_version;
  *(v4 + 76) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  v4[3] = *&self->_timestamp;
  *(v4 + 76) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v4[5] = self->_valueType;
    *(v4 + 76) |= 0x10u;
  }

LABEL_6:
  v7 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    v4[1] = *&self->_doubleValue;
    *(v4 + 76) |= 1u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  v4[2] = self->_integerValue;
  *(v4 + 76) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    *(v4 + 72) = self->_BOOLValue;
    *(v4 + 76) |= 0x40u;
  }

LABEL_12:
  if (self->_dataValue)
  {
    [v7 setDataValue:?];
    v4 = v7;
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
    *(v5 + 76) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
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

  *(v5 + 48) = self->_version;
  *(v5 + 76) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v5 + 24) = self->_timestamp;
  *(v5 + 76) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_valueType;
    *(v5 + 76) |= 0x10u;
  }

LABEL_6:
  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v6 + 64);
  *(v6 + 64) = v8;

  v10 = self->_has;
  if ((v10 & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    *(v6 + 16) = self->_integerValue;
    *(v6 + 76) |= 2u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(v6 + 8) = self->_doubleValue;
  *(v6 + 76) |= 1u;
  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v10 & 0x40) != 0)
  {
LABEL_9:
    *(v6 + 72) = self->_BOOLValue;
    *(v6 + 76) |= 0x40u;
  }

LABEL_10:
  v11 = [(NSData *)self->_dataValue copyWithZone:a3];
  v12 = *(v6 + 56);
  *(v6 + 56) = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  v6 = *(v4 + 76);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 76) & 8) == 0 || self->_type != *(v4 + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 76) & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 76) & 0x20) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 76) & 0x20) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 76) & 4) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 76) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 76) & 0x10) == 0 || self->_valueType != *(v4 + 5))
    {
      goto LABEL_40;
    }
  }

  else if ((*(v4 + 76) & 0x10) != 0)
  {
    goto LABEL_40;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 8))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = *(v4 + 76);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_40;
    }
  }

  else if (v6)
  {
    goto LABEL_40;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_integerValue != *(v4 + 2))
    {
      goto LABEL_40;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_40;
  }

  if ((has & 0x40) == 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    v9 = 0;
    goto LABEL_41;
  }

  if ((v6 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  v11 = *(v4 + 72);
  if (self->_BOOLValue)
  {
    if ((*(v4 + 72) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_40;
  }

LABEL_37:
  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 7))
  {
    v9 = [(NSData *)dataValue isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_41:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v5 = 2654435761 * self->_type;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = 2654435761 * self->_version;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_11:
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_valueType;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_stringValue hash];
  if (*&self->_has)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v13.i64 = floor(doubleValue + 0.5);
    v17 = (doubleValue - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v19 = 2654435761 * self->_integerValue;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_26;
    }

LABEL_28:
    v20 = 0;
    return v6 ^ v5 ^ v10 ^ v11 ^ v15 ^ v19 ^ v20 ^ v12 ^ [(NSData *)self->_dataValue hash];
  }

  v19 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  v20 = 2654435761 * self->_BOOLValue;
  return v6 ^ v5 ^ v10 ^ v11 ^ v15 ^ v19 ^ v20 ^ v12 ^ [(NSData *)self->_dataValue hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 76);
  if ((v5 & 8) != 0)
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 76);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(v4 + 76) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 76);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_19:
  self->_timestamp = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 76) & 0x10) != 0)
  {
LABEL_5:
    self->_valueType = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_6:
  v7 = v4;
  if (*(v4 + 8))
  {
    [(HDCodableUserDomainConceptProperty *)self setStringValue:?];
    v4 = v7;
  }

  v6 = *(v4 + 76);
  if (v6)
  {
    self->_doubleValue = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 76) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_integerValue = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 76) & 0x40) != 0)
  {
LABEL_11:
    self->_BOOLValue = *(v4 + 72);
    *&self->_has |= 0x40u;
  }

LABEL_12:
  if (*(v4 + 7))
  {
    [(HDCodableUserDomainConceptProperty *)self setDataValue:?];
    v4 = v7;
  }
}

@end