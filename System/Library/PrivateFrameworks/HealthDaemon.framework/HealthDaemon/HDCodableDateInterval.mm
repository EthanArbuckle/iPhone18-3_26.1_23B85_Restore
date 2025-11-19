@interface HDCodableDateInterval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableDateInterval

- (void)setHasStartDate:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableDateInterval;
  v4 = [(HDCodableDateInterval *)&v8 description];
  v5 = [(HDCodableDateInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startDate];
    [v3 setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endDate];
    [v3 setObject:v6 forKey:@"endDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_startDate;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = *&self->_endDate;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_startDate;
    *(result + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = *&self->_endDate;
    *(result + 24) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_startDate != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v2.i64 = floor(startDate + 0.5);
    v6 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v10 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_endDate = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end