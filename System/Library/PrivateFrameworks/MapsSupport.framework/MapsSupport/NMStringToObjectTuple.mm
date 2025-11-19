@interface NMStringToObjectTuple
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBoolValue:(BOOL)a3;
- (void)setHasIntValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NMStringToObjectTuple

- (void)setHasBoolValue:(BOOL)a3
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

- (void)setHasIntValue:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = NMStringToObjectTuple;
  v3 = [(NMStringToObjectTuple *)&v7 description];
  v4 = [(NMStringToObjectTuple *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
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

  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v4 setObject:dataValue forKey:@"dataValue"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_BOOLValue];
    [v4 setObject:v11 forKey:@"BOOLValue"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v12 = [NSNumber numberWithUnsignedLongLong:self->_intValue];
  [v4 setObject:v12 forKey:@"intValue"];

  if (*&self->_has)
  {
LABEL_10:
    v9 = [NSNumber numberWithDouble:self->_doubleValue];
    [v4 setObject:v9 forKey:@"doubleValue"];
  }

LABEL_11:

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

  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  intValue = self->_intValue;
  PBDataWriterWriteUint64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_10:
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_11:
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

  if (self->_dataValue)
  {
    [v6 setDataValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 48) = self->_BOOLValue;
    *(v4 + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v4 + 2) = self->_intValue;
  *(v4 + 52) |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    *(v4 + 1) = *&self->_doubleValue;
    *(v4 + 52) |= 1u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSData *)self->_dataValue copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5[2] = self->_intValue;
    *(v5 + 52) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 48) = self->_BOOLValue;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    v5[1] = *&self->_doubleValue;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  key = self->_key;
  if (key | *(v4 + 4))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_24;
    }
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 5))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_24;
    }
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 3))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_24;
  }

  v8 = *(v4 + 48);
  if (self->_BOOLValue)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_intValue != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  v9 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_doubleValue != *(v4 + 1))
    {
      goto LABEL_24;
    }

    v9 = 1;
  }

LABEL_25:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_stringValue hash];
  v5 = [(NSData *)self->_dataValue hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13;
  }

  v8 = 2654435761 * self->_BOOLValue;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = 2654435761u * self->_intValue;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v6.i64 = floor(doubleValue + 0.5);
  v11 = (doubleValue - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(NMStringToObjectTuple *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(NMStringToObjectTuple *)self setStringValue:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(NMStringToObjectTuple *)self setDataValue:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    self->_BOOLValue = *(v4 + 48);
    *&self->_has |= 4u;
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_9:
      if ((v5 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_intValue = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 52))
  {
LABEL_10:
    self->_doubleValue = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_11:
}

@end