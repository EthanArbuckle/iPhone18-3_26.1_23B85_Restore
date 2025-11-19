@interface _DKPRValue
- (BOOL)isEqual:(id)a3;
- (double)dateValue;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)blobValue;
- (uint64_t)integerValue;
- (uint64_t)setDateValue:(uint64_t)result;
- (uint64_t)setDoubleValue:(uint64_t)result;
- (uint64_t)setIntegerValue:(uint64_t)result;
- (uint64_t)stringValue;
- (uint64_t)type;
- (unint64_t)hash;
- (void)setBlobValue:(uint64_t)a1;
- (void)setStringValue:(uint64_t)a1;
- (void)setType:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _DKPRValue

- (uint64_t)type
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRValue;
  v4 = [(_DKPRValue *)&v8 description];
  v5 = [(_DKPRValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type)
  {
    v5 = [(_DKPRValueType *)type dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"type"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"stringValue"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_integerValue];
    [v3 setObject:v8 forKey:@"integerValue"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_doubleValue];
    [v3 setObject:v9 forKey:@"doubleValue"];
  }

  blobValue = self->_blobValue;
  if (blobValue)
  {
    [v3 setObject:blobValue forKey:@"blobValue"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateValue];
    [v3 setObject:v11 forKey:@"dateValue"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_type)
  {
    [_DKPRValue writeTo:];
  }

  v10 = v4;
  PBDataWriterWriteSubmessage();
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    integerValue = self->_integerValue;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  v7 = v10;
  if ((has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v7 = v10;
  }

  if (self->_blobValue)
  {
    PBDataWriterWriteDataField();
    v7 = v10;
  }

  if (*&self->_has)
  {
    dateValue = self->_dateValue;
    PBDataWriterWriteDoubleField();
    v7 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_DKPRValueType *)self->_type copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_integerValue;
    *(v5 + 56) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_doubleValue;
    *(v5 + 56) |= 2u;
  }

  v11 = [(NSData *)self->_blobValue copyWithZone:a3];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateValue;
    *(v5 + 56) |= 1u;
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

  type = self->_type;
  if (type | *(v4 + 6))
  {
    if (![(_DKPRValueType *)type isEqual:?])
    {
      goto LABEL_23;
    }
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 5))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(v4 + 56);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_integerValue != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_doubleValue != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  blobValue = self->_blobValue;
  if (blobValue | *(v4 + 4))
  {
    if (![(NSData *)blobValue isEqual:?])
    {
LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    has = self->_has;
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_dateValue != *(v4 + 1))
    {
      goto LABEL_23;
    }

    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_DKPRValueType *)self->_type hash];
  v4 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_integerValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v5.i64 = floor(doubleValue + 0.5);
  v9 = (doubleValue - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  v12 = [(NSData *)self->_blobValue hash];
  if (*&self->_has)
  {
    dateValue = self->_dateValue;
    if (dateValue < 0.0)
    {
      dateValue = -dateValue;
    }

    *v13.i64 = floor(dateValue + 0.5);
    v17 = (dateValue - *v13.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v15;
}

- (uint64_t)setIntegerValue:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setDoubleValue:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setDateValue:(uint64_t)result
{
  if (result)
  {
    *(result + 56) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (void)setType:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 48);
  }
}

- (void)setStringValue:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 40);
  }
}

- (void)setBlobValue:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_8(a1, a2, 32);
  }
}

- (uint64_t)stringValue
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)integerValue
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (double)doubleValue
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)blobValue
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (double)dateValue
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

@end