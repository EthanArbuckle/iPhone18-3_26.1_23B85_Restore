@interface HDCodableActivityStatisticsQuantityInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)setHasValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableActivityStatisticsQuantityInfo

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

- (void)setHasValue:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableActivityStatisticsQuantityInfo;
  v4 = [(HDCodableActivityStatisticsQuantityInfo *)&v8 description];
  v5 = [(HDCodableActivityStatisticsQuantityInfo *)self dictionaryRepresentation];
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

  unit = self->_unit;
  if (unit)
  {
    [v3 setObject:unit forKey:@"unit"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_value];
    [v3 setObject:v8 forKey:@"value"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    endDate = self->_endDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_unit)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_startDate;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = *&self->_endDate;
    *(v4 + 40) |= 1u;
  }

  if (self->_unit)
  {
    v6 = v4;
    [v4 setUnit:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[3] = *&self->_value;
    *(v4 + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_startDate;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_endDate;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_unit copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_value;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_startDate != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  unit = self->_unit;
  if (unit | *(v4 + 4))
  {
    if (![(NSString *)unit isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
    v6 = *(v4 + 40);
  }

  v8 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_value != *(v4 + 3))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
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
    v7 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v11 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_unit hash];
  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v14.i64 = floor(value + 0.5);
    v18 = (value - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v9 ^ v5 ^ v16 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_endDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    v6 = v4;
    [(HDCodableActivityStatisticsQuantityInfo *)self setUnit:?];
    v4 = v6;
  }

  if ((*(v4 + 40) & 4) != 0)
  {
    self->_value = *(v4 + 3);
    *&self->_has |= 4u;
  }
}

@end