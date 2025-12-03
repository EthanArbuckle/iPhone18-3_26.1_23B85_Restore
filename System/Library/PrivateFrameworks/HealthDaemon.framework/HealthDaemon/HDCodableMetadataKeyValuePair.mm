@interface HDCodableMetadataKeyValuePair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumberDoubleValue:(BOOL)value;
- (void)setHasNumberIntValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HDCodableMetadataKeyValuePair

- (void)setHasNumberIntValue:(BOOL)value
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

- (void)setHasNumberDoubleValue:(BOOL)value
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
  v8.super_class = HDCodableMetadataKeyValuePair;
  v4 = [(HDCodableMetadataKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(HDCodableMetadataKeyValuePair *)self dictionaryRepresentation];
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

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dateValue];
    [v4 setObject:v13 forKey:@"dateValue"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_numberIntValue];
  [v4 setObject:v14 forKey:@"numberIntValue"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_numberDoubleValue];
    [v4 setObject:v8 forKey:@"numberDoubleValue"];
  }

LABEL_9:
  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    dictionaryRepresentation = [(HDCodableQuantity *)quantityValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"quantityValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
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

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    dateValue = self->_dateValue;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  numberIntValue = self->_numberIntValue;
  PBDataWriterWriteInt64Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    numberDoubleValue = self->_numberDoubleValue;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_9:
  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_dataValue)
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

  if (self->_stringValue)
  {
    [v6 setStringValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_dateValue;
    *(toCopy + 64) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 3) = self->_numberIntValue;
  *(toCopy + 64) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(toCopy + 2) = *&self->_numberDoubleValue;
    *(toCopy + 64) |= 2u;
  }

LABEL_9:
  if (self->_quantityValue)
  {
    [v6 setQuantityValue:?];
    toCopy = v6;
  }

  if (self->_dataValue)
  {
    [v6 setDataValue:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_stringValue copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_numberIntValue;
    *(v5 + 64) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_dateValue;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_numberDoubleValue;
    *(v5 + 64) |= 2u;
  }

LABEL_5:
  v11 = [(HDCodableQuantity *)self->_quantityValue copyWithZone:zone];
  v12 = *(v5 + 48);
  *(v5 + 48) = v11;

  v13 = [(NSData *)self->_dataValue copyWithZone:zone];
  v14 = *(v5 + 32);
  *(v5 + 32) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  key = self->_key;
  if (key | *(equalCopy + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_25;
    }
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 7))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v7 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_dateValue != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_numberIntValue != *(equalCopy + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_numberDoubleValue != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_25;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(equalCopy + 6) && ![(HDCodableQuantity *)quantityValue isEqual:?])
  {
    goto LABEL_25;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 4))
  {
    v10 = [(NSData *)dataValue isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_26:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_stringValue hash];
  if (*&self->_has)
  {
    dateValue = self->_dateValue;
    if (dateValue < 0.0)
    {
      dateValue = -dateValue;
    }

    *v5.i64 = floor(dateValue + 0.5);
    v9 = (dateValue - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_numberIntValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  numberDoubleValue = self->_numberDoubleValue;
  if (numberDoubleValue < 0.0)
  {
    numberDoubleValue = -numberDoubleValue;
  }

  *v5.i64 = floor(numberDoubleValue + 0.5);
  v13 = (numberDoubleValue - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

LABEL_17:
  v16 = v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ [(HDCodableQuantity *)self->_quantityValue hash];
  return v16 ^ [(NSData *)self->_dataValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(HDCodableMetadataKeyValuePair *)self setKey:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 7))
  {
    [(HDCodableMetadataKeyValuePair *)self setStringValue:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_dateValue = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 64) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_numberIntValue = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 64) & 2) != 0)
  {
LABEL_8:
    self->_numberDoubleValue = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_9:
  quantityValue = self->_quantityValue;
  v7 = *(fromCopy + 6);
  if (quantityValue)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(HDCodableQuantity *)quantityValue mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    [(HDCodableMetadataKeyValuePair *)self setQuantityValue:?];
  }

  fromCopy = v8;
LABEL_18:
  if (*(fromCopy + 4))
  {
    [(HDCodableMetadataKeyValuePair *)self setDataValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end