@interface HDCodableRatioValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRatioValue

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRatioValue;
  v4 = [(HDCodableRatioValue *)&v8 description];
  v5 = [(HDCodableRatioValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  numerator = self->_numerator;
  if (numerator)
  {
    v5 = [(HDCodableCodedQuantity *)numerator dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"numerator"];
  }

  denominator = self->_denominator;
  if (denominator)
  {
    v7 = [(HDCodableCodedQuantity *)denominator dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"denominator"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_numerator)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_denominator)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_numerator)
  {
    [v4 setNumerator:?];
    v4 = v5;
  }

  if (self->_denominator)
  {
    [v5 setDenominator:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableCodedQuantity *)self->_numerator copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HDCodableCodedQuantity *)self->_denominator copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((numerator = self->_numerator, !(numerator | v4[2])) || -[HDCodableCodedQuantity isEqual:](numerator, "isEqual:")))
  {
    denominator = self->_denominator;
    if (denominator | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  numerator = self->_numerator;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  denominator = self->_denominator;
  v8 = v4[1];
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