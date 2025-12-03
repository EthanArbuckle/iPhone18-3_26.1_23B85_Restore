@interface HDCodableTimestampedKeyValuePair
- (BOOL)isEqual:(id)equal;
- (HDCodableTimestampedKeyValuePair)initWithKey:(id)key value:(id)value timestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedTimestamp;
- (id)decodedValue;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumberIntValue:(BOOL)value;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setTimestampWithDate:(id)date;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation HDCodableTimestampedKeyValuePair

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

- (void)setHasNumberIntValue:(BOOL)value
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTimestampedKeyValuePair;
  v4 = [(HDCodableTimestampedKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(HDCodableTimestampedKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v4 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberIntValue];
  [v4 setObject:v12 forKey:@"numberIntValue"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberDoubleValue];
    [v4 setObject:v7 forKey:@"numberDoubleValue"];
  }

LABEL_7:
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"stringValue"];
  }

  bytesValue = self->_bytesValue;
  if (bytesValue)
  {
    [v4 setObject:bytesValue forKey:@"bytesValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  numberIntValue = self->_numberIntValue;
  PBDataWriterWriteInt64Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_6:
    numberDoubleValue = self->_numberDoubleValue;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_7:
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_bytesValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_timestamp;
    *(toCopy + 56) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = self->_numberIntValue;
  *(toCopy + 56) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 1) = *&self->_numberDoubleValue;
    *(toCopy + 56) |= 1u;
  }

LABEL_7:
  if (self->_stringValue)
  {
    [v6 setStringValue:?];
    toCopy = v6;
  }

  if (self->_bytesValue)
  {
    [v6 setBytesValue:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_numberIntValue;
    *(v5 + 56) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_timestamp;
  *(v5 + 56) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_numberDoubleValue;
    *(v5 + 56) |= 1u;
  }

LABEL_5:
  v9 = [(NSString *)self->_stringValue copyWithZone:zone];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  v11 = [(NSData *)self->_bytesValue copyWithZone:zone];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  key = self->_key;
  if (key | *(equalCopy + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(equalCopy + 56);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_numberIntValue != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_numberDoubleValue != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_23;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 6) && ![(NSString *)stringValue isEqual:?])
  {
    goto LABEL_23;
  }

  bytesValue = self->_bytesValue;
  if (bytesValue | *(equalCopy + 4))
  {
    v9 = [(NSData *)bytesValue isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v4.i64 = floor(timestamp + 0.5);
    v8 = (timestamp - *v4.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_numberIntValue;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  numberDoubleValue = self->_numberDoubleValue;
  if (numberDoubleValue < 0.0)
  {
    numberDoubleValue = -numberDoubleValue;
  }

  *v4.i64 = floor(numberDoubleValue + 0.5);
  v12 = (numberDoubleValue - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
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

LABEL_17:
  v15 = v6 ^ v3 ^ v10 ^ v14 ^ [(NSString *)self->_stringValue hash];
  return v15 ^ [(NSData *)self->_bytesValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HDCodableTimestampedKeyValuePair *)self setKey:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 56);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 56) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_numberIntValue = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 56))
  {
LABEL_6:
    self->_numberDoubleValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(fromCopy + 6))
  {
    [(HDCodableTimestampedKeyValuePair *)self setStringValue:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(HDCodableTimestampedKeyValuePair *)self setBytesValue:?];
    fromCopy = v6;
  }
}

- (HDCodableTimestampedKeyValuePair)initWithKey:(id)key value:(id)value timestamp:(id)timestamp
{
  keyCopy = key;
  valueCopy = value;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = HDCodableTimestampedKeyValuePair;
  v11 = [(HDCodableTimestampedKeyValuePair *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HDCodableTimestampedKeyValuePair *)v11 setKey:keyCopy];
    [(HDCodableTimestampedKeyValuePair *)v12 setValue:valueCopy];
    [(HDCodableTimestampedKeyValuePair *)v12 setTimestampWithDate:timestampCopy];
  }

  return v12;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([valueCopy hk_hasFloatingPointValue])
    {
      [valueCopy doubleValue];
      [(HDCodableTimestampedKeyValuePair *)self setNumberDoubleValue:?];
    }

    else
    {
      -[HDCodableTimestampedKeyValuePair setNumberIntValue:](self, "setNumberIntValue:", [valueCopy longLongValue]);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy copy];
    [(HDCodableTimestampedKeyValuePair *)self setStringValue:v4];
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy copy];
    [(HDCodableTimestampedKeyValuePair *)self setBytesValue:v4];
    goto LABEL_9;
  }

  if (valueCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid value %@ of class %@", valueCopy, objc_opt_class()}];
  }

LABEL_10:
}

- (void)setTimestampWithDate:(id)date
{
  [date timeIntervalSinceReferenceDate];

  [(HDCodableTimestampedKeyValuePair *)self setTimestamp:?];
}

- (id)decodedValue
{
  if (*&self->_has)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberDoubleValue];
  }

  else if ((*&self->_has & 2) != 0)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberIntValue];
  }

  else
  {
    stringValue = self->_stringValue;
    if (stringValue || (stringValue = self->_bytesValue) != 0)
    {
      v3 = stringValue;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)decodedTimestamp
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    v3 = HDDecodeDateForValue();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end