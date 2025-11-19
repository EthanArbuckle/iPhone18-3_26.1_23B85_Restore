@interface HKCodableAFibBurdenValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableAFibBurdenValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableAFibBurdenValue;
  v4 = [(HKCodableAFibBurdenValue *)&v8 description];
  v5 = [(HKCodableAFibBurdenValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    v5 = [(HKCodableQuantity *)value dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"value"];
  }

  dayIndexRange = self->_dayIndexRange;
  if (dayIndexRange)
  {
    v7 = [(HKCodableDayIndexRange *)dayIndexRange dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"dayIndexRange"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_valueClamped];
    [v3 setObject:v8 forKey:@"valueClamped"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_dayIndexRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_value)
  {
    [v4 setValue:?];
    v4 = v5;
  }

  if (self->_dayIndexRange)
  {
    [v5 setDayIndexRange:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_valueClamped;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_value copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(HKCodableDayIndexRange *)self->_dayIndexRange copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_valueClamped;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  value = self->_value;
  if (value | *(v4 + 2))
  {
    if (![(HKCodableQuantity *)value isEqual:?])
    {
      goto LABEL_8;
    }
  }

  dayIndexRange = self->_dayIndexRange;
  if (dayIndexRange | *(v4 + 1))
  {
    if (![(HKCodableDayIndexRange *)dayIndexRange isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_valueClamped)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_value hash];
  v4 = [(HKCodableDayIndexRange *)self->_dayIndexRange hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_valueClamped;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  value = self->_value;
  v6 = *(v4 + 2);
  v9 = v4;
  if (value)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableAFibBurdenValue *)self setValue:?];
  }

  v4 = v9;
LABEL_7:
  dayIndexRange = self->_dayIndexRange;
  v8 = *(v4 + 1);
  if (dayIndexRange)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    dayIndexRange = [(HKCodableDayIndexRange *)dayIndexRange mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    dayIndexRange = [(HKCodableAFibBurdenValue *)self setDayIndexRange:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 28))
  {
    self->_valueClamped = *(v4 + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](dayIndexRange, v4);
}

@end