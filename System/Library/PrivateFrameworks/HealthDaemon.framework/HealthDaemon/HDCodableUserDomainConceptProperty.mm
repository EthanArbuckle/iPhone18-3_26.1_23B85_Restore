@interface HDCodableUserDomainConceptProperty
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasIntegerValue:(BOOL)value;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasType:(BOOL)type;
- (void)setHasValueType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCodableUserDomainConceptProperty

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

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasValueType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIntegerValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasBoolValue:(BOOL)value
{
  if (value)
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
  dictionaryRepresentation = [(HDCodableUserDomainConceptProperty *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v11 forKey:@"type"];

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
  [dictionary setObject:v12 forKey:@"version"];

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
  [dictionary setObject:v13 forKey:@"timestamp"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_valueType];
    [dictionary setObject:v5 forKey:@"valueType"];
  }

LABEL_6:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [dictionary setObject:stringValue forKey:@"stringValue"];
  }

  v7 = self->_has;
  if (v7)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
    [dictionary setObject:v14 forKey:@"doubleValue"];

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
  [dictionary setObject:v15 forKey:@"integerValue"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_BOOLValue];
    [dictionary setObject:v8 forKey:@"BOOLValue"];
  }

LABEL_12:
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [dictionary setObject:dataValue forKey:@"dataValue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v14 = toCopy;
  if ((has & 8) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v14;
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
  toCopy = v14;
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
  toCopy = v14;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    valueType = self->_valueType;
    PBDataWriterWriteInt64Field();
    toCopy = v14;
  }

LABEL_6:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  v7 = self->_has;
  if (v7)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
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
  toCopy = v14;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

LABEL_12:
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v14;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = self->_type;
    *(toCopy + 76) |= 8u;
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

  toCopy[6] = self->_version;
  *(toCopy + 76) |= 0x20u;
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
  toCopy[3] = *&self->_timestamp;
  *(toCopy + 76) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    toCopy[5] = self->_valueType;
    *(toCopy + 76) |= 0x10u;
  }

LABEL_6:
  v7 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[1] = *&self->_doubleValue;
    *(toCopy + 76) |= 1u;
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

  toCopy[2] = self->_integerValue;
  *(toCopy + 76) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    *(toCopy + 72) = self->_BOOLValue;
    *(toCopy + 76) |= 0x40u;
  }

LABEL_12:
  if (self->_dataValue)
  {
    [v7 setDataValue:?];
    toCopy = v7;
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
  v8 = [(NSString *)self->_stringValue copyWithZone:zone];
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
  v11 = [(NSData *)self->_dataValue copyWithZone:zone];
  v12 = *(v6 + 56);
  *(v6 + 56) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_40;
  }

  has = self->_has;
  v6 = *(equalCopy + 76);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0 || self->_type != *(equalCopy + 4))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 76) & 0x20) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 76) & 0x20) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_40;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 76) & 0x10) == 0 || self->_valueType != *(equalCopy + 5))
    {
      goto LABEL_40;
    }
  }

  else if ((*(equalCopy + 76) & 0x10) != 0)
  {
    goto LABEL_40;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 8))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_40;
    }

    has = self->_has;
    v6 = *(equalCopy + 76);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_doubleValue != *(equalCopy + 1))
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
    if ((v6 & 2) == 0 || self->_integerValue != *(equalCopy + 2))
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

  v11 = *(equalCopy + 72);
  if (self->_BOOLValue)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_40;
  }

LABEL_37:
  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 7))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 76);
  if ((v5 & 8) != 0)
  {
    self->_type = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 76);
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

  else if ((*(fromCopy + 76) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 76);
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
  self->_timestamp = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 76) & 0x10) != 0)
  {
LABEL_5:
    self->_valueType = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_6:
  v7 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(HDCodableUserDomainConceptProperty *)self setStringValue:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 76);
  if (v6)
  {
    self->_doubleValue = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 76);
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

  else if ((*(fromCopy + 76) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_integerValue = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 76) & 0x40) != 0)
  {
LABEL_11:
    self->_BOOLValue = *(fromCopy + 72);
    *&self->_has |= 0x40u;
  }

LABEL_12:
  if (*(fromCopy + 7))
  {
    [(HDCodableUserDomainConceptProperty *)self setDataValue:?];
    fromCopy = v7;
  }
}

@end