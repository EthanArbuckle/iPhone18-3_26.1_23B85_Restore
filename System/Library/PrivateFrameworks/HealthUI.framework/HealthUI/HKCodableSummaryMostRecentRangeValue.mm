@interface HKCodableSummaryMostRecentRangeValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryMostRecentRangeValue

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryMostRecentRangeValue;
  v4 = [(HKCodableSummaryMostRecentRangeValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryMostRecentRangeValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)minimumValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"minimumValue"];
  }

  maximumValue = self->_maximumValue;
  if (maximumValue)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)maximumValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"maximumValue"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [dictionary setObject:v8 forKey:@"dateData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_minimumValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_maximumValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_minimumValue)
  {
    [toCopy setMinimumValue:?];
    toCopy = v5;
  }

  if (self->_maximumValue)
  {
    [v5 setMaximumValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_dateData;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_minimumValue copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableQuantity *)self->_maximumValue copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_dateData;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  minimumValue = self->_minimumValue;
  if (minimumValue | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)minimumValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  maximumValue = self->_maximumValue;
  if (maximumValue | *(equalCopy + 2))
  {
    if (![(HKCodableQuantity *)maximumValue isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_dateData == *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  minimumValue = self->_minimumValue;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  maximumValue = self->_maximumValue;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 32))
  {
    self->_dateData = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](maximumValue, fromCopy);
}

@end