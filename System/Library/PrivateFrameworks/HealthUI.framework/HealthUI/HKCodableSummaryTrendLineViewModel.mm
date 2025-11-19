@interface HKCodableSummaryTrendLineViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryTrendLineViewModel

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryTrendLineViewModel;
  v4 = [(HKCodableSummaryTrendLineViewModel *)&v8 description];
  v5 = [(HKCodableSummaryTrendLineViewModel *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_average];
    [v3 setObject:v6 forKey:@"average"];
  }

  xAxisLabel = self->_xAxisLabel;
  if (xAxisLabel)
  {
    [v3 setObject:xAxisLabel forKey:@"xAxisLabel"];
  }

  lineLabel = self->_lineLabel;
  if (lineLabel)
  {
    [v3 setObject:lineLabel forKey:@"lineLabel"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }

  if (self->_xAxisLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_lineLabel)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_dateInterval)
  {
    [v4 setDateInterval:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_average;
    *(v4 + 40) |= 1u;
  }

  if (self->_xAxisLabel)
  {
    [v5 setXAxisLabel:?];
    v4 = v5;
  }

  if (self->_lineLabel)
  {
    [v5 setLineLabel:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_average;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_xAxisLabel copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_lineLabel copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

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
  if (dateInterval | *(v4 + 2))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_average != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  xAxisLabel = self->_xAxisLabel;
  if (xAxisLabel | *(v4 + 4) && ![(NSString *)xAxisLabel isEqual:?])
  {
    goto LABEL_13;
  }

  lineLabel = self->_lineLabel;
  if (lineLabel | *(v4 + 3))
  {
    v8 = [(NSString *)lineLabel isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  if (*&self->_has)
  {
    average = self->_average;
    if (average < 0.0)
    {
      average = -average;
    }

    *v4.i64 = floor(average + 0.5);
    v8 = (average - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
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

  v10 = v6 ^ v3;
  v11 = [(NSString *)self->_xAxisLabel hash];
  return v10 ^ v11 ^ [(NSString *)self->_lineLabel hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  dateInterval = self->_dateInterval;
  v6 = *(v4 + 2);
  v7 = v4;
  if (dateInterval)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    dateInterval = [(HKCodableDateInterval *)dateInterval mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    dateInterval = [(HKCodableSummaryTrendLineViewModel *)self setDateInterval:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 40))
  {
    self->_average = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    dateInterval = [(HKCodableSummaryTrendLineViewModel *)self setXAxisLabel:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    dateInterval = [(HKCodableSummaryTrendLineViewModel *)self setLineLabel:?];
    v4 = v7;
  }

  MEMORY[0x1EEE66BB8](dateInterval, v4);
}

@end