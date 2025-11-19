@interface PKProtobufRecurringPaymentSummaryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIntervalCount:(BOOL)a3;
- (void)setHasIntervalUnit:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRecurringPaymentSummaryItem

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

- (void)setHasIntervalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIntervalCount:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRecurringPaymentSummaryItem;
  v4 = [(PKProtobufRecurringPaymentSummaryItem *)&v8 description];
  v5 = [(PKProtobufRecurringPaymentSummaryItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [v3 setObject:v7 forKey:@"startDate"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_intervalUnit];
  [v3 setObject:v8 forKey:@"intervalUnit"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_intervalCount];
  [v3 setObject:v9 forKey:@"intervalCount"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [v3 setObject:v5 forKey:@"endDate"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_startDate;
    *(v4 + 32) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 7) = self->_intervalUnit;
  *(v4 + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v4 + 6) = self->_intervalCount;
  *(v4 + 32) |= 4u;
  if (*&self->_has)
  {
LABEL_5:
    v4[1] = *&self->_endDate;
    *(v4 + 32) |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_startDate;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_intervalUnit;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 6) = self->_intervalCount;
  *(result + 32) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 1) = *&self->_endDate;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_startDate != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) == 0 || self->_intervalUnit != *(v4 + 7))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_intervalCount != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_endDate != *(v4 + 1))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

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

  if ((*&self->_has & 8) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_12;
    }

LABEL_18:
    v13 = 0;
    return v8 ^ v4 ^ v9 ^ v13;
  }

  v8 = 2654435761 * self->_intervalUnit;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v9 = 2654435761 * self->_intervalCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
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
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v8 ^ v4 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_startDate = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_intervalUnit = *(v4 + 7);
  *&self->_has |= 8u;
  v5 = *(v4 + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_intervalCount = *(v4 + 6);
  *&self->_has |= 4u;
  if (*(v4 + 32))
  {
LABEL_5:
    self->_endDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
}

@end