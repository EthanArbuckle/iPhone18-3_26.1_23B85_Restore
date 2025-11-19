@interface HKCodableSummaryMostRecentRangeValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryMostRecentRangeValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryMostRecentRangeValue;
  v4 = [(HKCodableSummaryMostRecentRangeValue *)&v8 description];
  v5 = [(HKCodableSummaryMostRecentRangeValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    v5 = [(HKCodableQuantity *)minimumValue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"minimumValue"];
  }

  maximumValue = self->_maximumValue;
  if (maximumValue)
  {
    v7 = [(HKCodableQuantity *)maximumValue dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"maximumValue"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v8 forKey:@"dateData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_minimumValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_maximumValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_minimumValue)
  {
    [v4 setMinimumValue:?];
    v4 = v5;
  }

  if (self->_maximumValue)
  {
    [v5 setMaximumValue:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_dateData;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_minimumValue copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableQuantity *)self->_maximumValue copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateData;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  minimumValue = self->_minimumValue;
  if (minimumValue | *(v4 + 3))
  {
    if (![(HKCodableQuantity *)minimumValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  maximumValue = self->_maximumValue;
  if (maximumValue | *(v4 + 2))
  {
    if (![(HKCodableQuantity *)maximumValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_dateData == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_minimumValue hash];
  v4 = [(HKCodableQuantity *)self->_maximumValue hash];
  if (*&self->_has)
  {
    dateData = self->_dateData;
    if (dateData < 0.0)
    {
      dateData = -dateData;
    }

    *v5.i64 = floor(dateData + 0.5);
    v9 = (dateData - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
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

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  minimumValue = self->_minimumValue;
  v6 = *(v4 + 3);
  v9 = v4;
  if (minimumValue)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableQuantity *)minimumValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableSummaryMostRecentRangeValue *)self setMinimumValue:?];
  }

  v4 = v9;
LABEL_7:
  maximumValue = self->_maximumValue;
  v8 = *(v4 + 2);
  if (maximumValue)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    maximumValue = [(HKCodableQuantity *)maximumValue mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    maximumValue = [(HKCodableSummaryMostRecentRangeValue *)self setMaximumValue:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 32))
  {
    self->_dateData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](maximumValue, v4);
}

@end