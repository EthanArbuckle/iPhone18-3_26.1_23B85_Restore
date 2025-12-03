@interface HKCodableSummaryVisualizationPoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasValue2:(BOOL)value2;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryVisualizationPoint

- (void)setHasValue2:(BOOL)value2
{
  if (value2)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryVisualizationPoint;
  v4 = [(HKCodableSummaryVisualizationPoint *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryVisualizationPoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    dictionaryRepresentation = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dateInterval"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
    [dictionary setObject:v7 forKey:@"value"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value2];
    [dictionary setObject:v8 forKey:@"value2"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dateInterval)
  {
    v6 = toCopy;
    [toCopy setDateInterval:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_value;
    *(toCopy + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_value2;
    *(toCopy + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_value;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_value2;
    *(v5 + 32) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 3))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_value != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_value2 != *(equalCopy + 2))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  if (*&self->_has)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v4.i64 = floor(value + 0.5);
    v8 = (value - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    value2 = self->_value2;
    if (value2 < 0.0)
    {
      value2 = -value2;
    }

    *v4.i64 = floor(value2 + 0.5);
    v12 = (value2 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dateInterval = self->_dateInterval;
  v6 = *(fromCopy + 3);
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    dateInterval = [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    dateInterval = [(HKCodableSummaryVisualizationPoint *)self setDateInterval:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if (v7)
  {
    self->_value = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 32);
  }

  if ((v7 & 2) != 0)
  {
    self->_value2 = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](dateInterval, fromCopy);
}

@end