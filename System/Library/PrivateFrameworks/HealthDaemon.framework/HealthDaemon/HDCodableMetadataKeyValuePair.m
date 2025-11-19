@interface HDCodableMetadataKeyValuePair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumberDoubleValue:(BOOL)a3;
- (void)setHasNumberIntValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableMetadataKeyValuePair

- (void)setHasNumberIntValue:(BOOL)a3
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

- (void)setHasNumberDoubleValue:(BOOL)a3
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
  v8.super_class = HDCodableMetadataKeyValuePair;
  v4 = [(HDCodableMetadataKeyValuePair *)&v8 description];
  v5 = [(HDCodableMetadataKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
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
    v10 = [(HDCodableQuantity *)quantityValue dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"quantityValue"];
  }

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    dateValue = self->_dateValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    numberDoubleValue = self->_numberDoubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_9:
  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  if (self->_stringValue)
  {
    [v6 setStringValue:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_dateValue;
    *(v4 + 64) |= 1u;
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

  *(v4 + 3) = self->_numberIntValue;
  *(v4 + 64) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(v4 + 2) = *&self->_numberDoubleValue;
    *(v4 + 64) |= 2u;
  }

LABEL_9:
  if (self->_quantityValue)
  {
    [v6 setQuantityValue:?];
    v4 = v6;
  }

  if (self->_dataValue)
  {
    [v6 setDataValue:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
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
  v11 = [(HDCodableQuantity *)self->_quantityValue copyWithZone:a3];
  v12 = *(v5 + 48);
  *(v5 + 48) = v11;

  v13 = [(NSData *)self->_dataValue copyWithZone:a3];
  v14 = *(v5 + 32);
  *(v5 + 32) = v13;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  key = self->_key;
  if (key | *(v4 + 5))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_25;
    }
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 7))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v7 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_dateValue != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_numberIntValue != *(v4 + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_numberDoubleValue != *(v4 + 2))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_25;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(v4 + 6) && ![(HDCodableQuantity *)quantityValue isEqual:?])
  {
    goto LABEL_25;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 5))
  {
    [(HDCodableMetadataKeyValuePair *)self setKey:?];
    v4 = v8;
  }

  if (*(v4 + 7))
  {
    [(HDCodableMetadataKeyValuePair *)self setStringValue:?];
    v4 = v8;
  }

  v5 = *(v4 + 64);
  if (v5)
  {
    self->_dateValue = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 64);
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

  else if ((*(v4 + 64) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_numberIntValue = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 64) & 2) != 0)
  {
LABEL_8:
    self->_numberDoubleValue = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_9:
  quantityValue = self->_quantityValue;
  v7 = *(v4 + 6);
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

  v4 = v8;
LABEL_18:
  if (*(v4 + 4))
  {
    [(HDCodableMetadataKeyValuePair *)self setDataValue:?];
  }

  MEMORY[0x2821F96F8]();
}

@end