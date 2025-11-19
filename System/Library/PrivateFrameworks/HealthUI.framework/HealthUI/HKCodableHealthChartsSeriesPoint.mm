@interface HKCodableHealthChartsSeriesPoint
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasYStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthChartsSeriesPoint

- (void)setHasYStart:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthChartsSeriesPoint;
  v4 = [(HKCodableHealthChartsSeriesPoint *)&v8 description];
  v5 = [(HKCodableHealthChartsSeriesPoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    v5 = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"dateInterval"];
  }

  scalarInterval = self->_scalarInterval;
  if (scalarInterval)
  {
    v7 = [(HKCodableClosedRange *)scalarInterval dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"scalarInterval"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_yStart];
    [v3 setObject:v9 forKey:@"yStart"];

    has = self->_has;
  }

  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_yEnd];
    [v3 setObject:v10 forKey:@"yEnd"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_scalarInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dateInterval)
  {
    [v4 setDateInterval:?];
    v4 = v6;
  }

  if (self->_scalarInterval)
  {
    [v6 setScalarInterval:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_yStart;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_yEnd;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableClosedRange *)self->_scalarInterval copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 3))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_15;
    }
  }

  scalarInterval = self->_scalarInterval;
  if (scalarInterval | *(v4 + 4))
  {
    if (![(HKCodableClosedRange *)scalarInterval isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_yStart != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_yEnd != *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  dateInterval = self->_dateInterval;
  v6 = *(v4 + 3);
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  scalarInterval = self->_scalarInterval;
  v8 = *(v4 + 4);
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

  v4 = v10;
LABEL_13:
  v9 = *(v4 + 40);
  if ((v9 & 2) != 0)
  {
    self->_yStart = *(v4 + 2);
    *&self->_has |= 2u;
    v9 = *(v4 + 40);
  }

  if (v9)
  {
    self->_yEnd = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](scalarInterval, v4);
}

@end