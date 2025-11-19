@interface HKCodableSummaryPHQ9AssessmentValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRisk:(BOOL)a3;
- (void)setHasScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryPHQ9AssessmentValue

- (void)setHasScore:(BOOL)a3
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

- (void)setHasRisk:(BOOL)a3
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
  v8.super_class = HKCodableSummaryPHQ9AssessmentValue;
  v4 = [(HKCodableSummaryPHQ9AssessmentValue *)&v8 description];
  v5 = [(HKCodableSummaryPHQ9AssessmentValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v7 forKey:@"dateData"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_score];
  [v3 setObject:v8 forKey:@"score"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_risk];
    [v3 setObject:v5 forKey:@"risk"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  v4 = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_dateData;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_score;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[2] = self->_risk;
    *(v4 + 32) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_dateData;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_score;
  *(result + 32) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = self->_risk;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_dateData != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_score != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_risk != *(v4 + 2))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    dateData = self->_dateData;
    if (dateData < 0.0)
    {
      dateData = -dateData;
    }

    *v2.i64 = floor(dateData + 0.5);
    v6 = (dateData - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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

  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_score;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v9 = 0;
    return v8 ^ v4 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v9 = 2654435761 * self->_risk;
  return v8 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_dateData = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_score = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 32) & 2) != 0)
  {
LABEL_4:
    self->_risk = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end