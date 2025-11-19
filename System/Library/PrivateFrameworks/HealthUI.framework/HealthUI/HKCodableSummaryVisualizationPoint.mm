@interface HKCodableSummaryVisualizationPoint
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValue2:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryVisualizationPoint

- (void)setHasValue2:(BOOL)a3
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
  v8.super_class = HKCodableSummaryVisualizationPoint;
  v4 = [(HKCodableSummaryVisualizationPoint *)&v8 description];
  v5 = [(HKCodableSummaryVisualizationPoint *)self dictionaryRepresentation];
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

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value];
    [v3 setObject:v7 forKey:@"value"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_value2];
    [v3 setObject:v8 forKey:@"value2"];
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

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_dateInterval)
  {
    v6 = v4;
    [v4 setDateInterval:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_value;
    *(v4 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_value2;
    *(v4 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(v4 + 3))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_value != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_value2 != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  dateInterval = self->_dateInterval;
  v6 = *(v4 + 3);
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    dateInterval = [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    dateInterval = [(HKCodableSummaryVisualizationPoint *)self setDateInterval:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 32);
  if (v7)
  {
    self->_value = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 32);
  }

  if ((v7 & 2) != 0)
  {
    self->_value2 = *(v4 + 2);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](dateInterval, v4);
}

@end