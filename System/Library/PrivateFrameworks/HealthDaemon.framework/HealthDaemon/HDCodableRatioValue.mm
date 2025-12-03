@interface HDCodableRatioValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRatioValue

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRatioValue;
  v4 = [(HDCodableRatioValue *)&v8 description];
  dictionaryRepresentation = [(HDCodableRatioValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  numerator = self->_numerator;
  if (numerator)
  {
    dictionaryRepresentation = [(HDCodableCodedQuantity *)numerator dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"numerator"];
  }

  denominator = self->_denominator;
  if (denominator)
  {
    dictionaryRepresentation2 = [(HDCodableCodedQuantity *)denominator dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"denominator"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_numerator)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_denominator)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_numerator)
  {
    [toCopy setNumerator:?];
    toCopy = v5;
  }

  if (self->_denominator)
  {
    [v5 setDenominator:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableCodedQuantity *)self->_numerator copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableCodedQuantity *)self->_denominator copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((numerator = self->_numerator, !(numerator | equalCopy[2])) || -[HDCodableCodedQuantity isEqual:](numerator, "isEqual:")))
  {
    denominator = self->_denominator;
    if (denominator | equalCopy[1])
    {
      v7 = [(HDCodableCodedQuantity *)denominator isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  numerator = self->_numerator;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (numerator)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableCodedQuantity *)numerator mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableRatioValue *)self setNumerator:?];
  }

  fromCopy = v9;
LABEL_7:
  denominator = self->_denominator;
  v8 = fromCopy[1];
  if (denominator)
  {
    if (v8)
    {
      [(HDCodableCodedQuantity *)denominator mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HDCodableRatioValue *)self setDenominator:?];
  }

  MEMORY[0x2821F96F8]();
}

@end