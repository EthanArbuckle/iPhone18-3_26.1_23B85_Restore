@interface HKCodableHealthChartsSeriesPoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasYStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation HKCodableHealthChartsSeriesPoint

- (void)setHasYStart:(BOOL)start
{
  if (start)
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
  v8.super_class = HKCodableHealthChartsSeriesPoint;
  v4 = [(HKCodableHealthChartsSeriesPoint *)&v8 description];
  dictionaryRepresentation = [(HKCodableHealthChartsSeriesPoint *)self dictionaryRepresentation];
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

  scalarInterval = self->_scalarInterval;
  if (scalarInterval)
  {
    dictionaryRepresentation2 = [(HKCodableClosedRange *)scalarInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"scalarInterval"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_yStart];
    [dictionary setObject:v9 forKey:@"yStart"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_yEnd];
    [dictionary setObject:v10 forKey:@"yEnd"];
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

  if (self->_scalarInterval)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dateInterval)
  {
    [toCopy setDateInterval:?];
    toCopy = v6;
  }

  if (self->_scalarInterval)
  {
    [v6 setScalarInterval:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_yStart;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_yEnd;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableClosedRange *)self->_scalarInterval copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_yStart;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_yEnd;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 3))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_15;
    }
  }

  scalarInterval = self->_scalarInterval;
  if (scalarInterval | *(equalCopy + 4))
  {
    if (![(HKCodableClosedRange *)scalarInterval isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_yStart != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_yEnd != *(equalCopy + 1))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  v4 = [(HKCodableClosedRange *)self->_scalarInterval hash];
  if ((*&self->_has & 2) != 0)
  {
    yStart = self->_yStart;
    if (yStart < 0.0)
    {
      yStart = -yStart;
    }

    *v5.i64 = floor(yStart + 0.5);
    v9 = (yStart - *v5.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    yEnd = self->_yEnd;
    if (yEnd < 0.0)
    {
      yEnd = -yEnd;
    }

    *v5.i64 = floor(yEnd + 0.5);
    v13 = (yEnd - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dateInterval = self->_dateInterval;
  v6 = *(fromCopy + 3);
  v10 = fromCopy;
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableHealthChartsSeriesPoint *)self setDateInterval:?];
  }

  fromCopy = v10;
LABEL_7:
  scalarInterval = self->_scalarInterval;
  v8 = *(fromCopy + 4);
  if (scalarInterval)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    scalarInterval = [(HKCodableClosedRange *)scalarInterval mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    scalarInterval = [(HKCodableHealthChartsSeriesPoint *)self setScalarInterval:?];
  }

  fromCopy = v10;
LABEL_13:
  v9 = *(fromCopy + 40);
  if ((v9 & 2) != 0)
  {
    self->_yStart = *(fromCopy + 2);
    *&self->_has |= 2u;
    v9 = *(fromCopy + 40);
  }

  if (v9)
  {
    self->_yEnd = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](scalarInterval, fromCopy);
}

@end