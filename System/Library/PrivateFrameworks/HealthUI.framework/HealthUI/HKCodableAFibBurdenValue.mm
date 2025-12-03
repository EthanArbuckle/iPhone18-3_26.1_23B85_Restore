@interface HKCodableAFibBurdenValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableAFibBurdenValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableAFibBurdenValue;
  v4 = [(HKCodableAFibBurdenValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableAFibBurdenValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)value dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"value"];
  }

  dayIndexRange = self->_dayIndexRange;
  if (dayIndexRange)
  {
    dictionaryRepresentation2 = [(HKCodableDayIndexRange *)dayIndexRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"dayIndexRange"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_valueClamped];
    [dictionary setObject:v8 forKey:@"valueClamped"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_dayIndexRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v5;
  }

  if (self->_dayIndexRange)
  {
    [v5 setDayIndexRange:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_valueClamped;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_value copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(HKCodableDayIndexRange *)self->_dayIndexRange copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_valueClamped;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  value = self->_value;
  if (value | *(equalCopy + 2))
  {
    if (![(HKCodableQuantity *)value isEqual:?])
    {
      goto LABEL_8;
    }
  }

  dayIndexRange = self->_dayIndexRange;
  if (dayIndexRange | *(equalCopy + 1))
  {
    if (![(HKCodableDayIndexRange *)dayIndexRange isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_valueClamped)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  value = self->_value;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  dayIndexRange = self->_dayIndexRange;
  v8 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 28))
  {
    self->_valueClamped = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](dayIndexRange, fromCopy);
}

@end