@interface HKCodableSummarySleepScoreValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDurationFillFraction:(BOOL)fraction;
- (void)setHasInterruptionsFillFraction:(BOOL)fraction;
- (void)setHasLevel:(BOOL)level;
- (void)setHasMorningIndex:(BOOL)index;
- (void)setHasTotalPoints:(BOOL)points;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummarySleepScoreValue

- (void)setHasMorningIndex:(BOOL)index
{
  if (index)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasTotalPoints:(BOOL)points
{
  if (points)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasLevel:(BOOL)level
{
  if (level)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDurationFillFraction:(BOOL)fraction
{
  if (fraction)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasInterruptionsFillFraction:(BOOL)fraction
{
  if (fraction)
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
  v8.super_class = HKCodableSummarySleepScoreValue;
  v4 = [(HKCodableSummarySleepScoreValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummarySleepScoreValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_morningIndex];
    [dictionary setObject:v7 forKey:@"morningIndex"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_totalPoints];
  [dictionary setObject:v8 forKey:@"totalPoints"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_level];
  [dictionary setObject:v9 forKey:@"level"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_durationFillFraction];
  [dictionary setObject:v10 forKey:@"durationFillFraction"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bedtimeFillFraction];
  [dictionary setObject:v11 forKey:@"bedtimeFillFraction"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interruptionsFillFraction];
    [dictionary setObject:v5 forKey:@"interruptionsFillFraction"];
  }

LABEL_8:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    PBDataWriterWriteDoubleField();
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    toCopy[5] = self->_morningIndex;
    *(toCopy + 56) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = self->_totalPoints;
  *(toCopy + 56) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  toCopy[4] = self->_level;
  *(toCopy + 56) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[2] = *&self->_durationFillFraction;
  *(toCopy + 56) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  toCopy[1] = *&self->_bedtimeFillFraction;
  *(toCopy + 56) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    toCopy[3] = *&self->_interruptionsFillFraction;
    *(toCopy + 56) |= 4u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = self->_morningIndex;
    *(result + 56) |= 0x10u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_totalPoints;
  *(result + 56) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 4) = self->_level;
  *(result + 56) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 2) = *&self->_durationFillFraction;
  *(result + 56) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 1) = *&self->_bedtimeFillFraction;
  *(result + 56) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 3) = *&self->_interruptionsFillFraction;
  *(result + 56) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_morningIndex != *(equalCopy + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 56) & 0x20) == 0 || self->_totalPoints != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 0x20) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_level != *(equalCopy + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 8) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_durationFillFraction != *(equalCopy + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_bedtimeFillFraction != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_31;
  }

  v5 = (*(equalCopy + 56) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_interruptionsFillFraction != *(equalCopy + 3))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = 2654435761 * self->_morningIndex;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_totalPoints;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v6 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = 2654435761 * self->_level;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  durationFillFraction = self->_durationFillFraction;
  if (durationFillFraction < 0.0)
  {
    durationFillFraction = -durationFillFraction;
  }

  *v2.i64 = floor(durationFillFraction + 0.5);
  v8 = (durationFillFraction - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
  v10 = 2654435761u * *v2.i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_13:
  if (*&self->_has)
  {
    bedtimeFillFraction = self->_bedtimeFillFraction;
    if (bedtimeFillFraction < 0.0)
    {
      bedtimeFillFraction = -bedtimeFillFraction;
    }

    *v2.i64 = floor(bedtimeFillFraction + 0.5);
    v13 = (bedtimeFillFraction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v11 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    interruptionsFillFraction = self->_interruptionsFillFraction;
    if (interruptionsFillFraction < 0.0)
    {
      interruptionsFillFraction = -interruptionsFillFraction;
    }

    *v2.i64 = floor(interruptionsFillFraction + 0.5);
    v17 = (interruptionsFillFraction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v3, v2).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v10 ^ v11 ^ v15;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 56);
  if ((v5 & 0x10) != 0)
  {
    self->_morningIndex = *(fromCopy + 5);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 56) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_totalPoints = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 56);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_level = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 56);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_durationFillFraction = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 56);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_bedtimeFillFraction = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 56) & 4) != 0)
  {
LABEL_7:
    self->_interruptionsFillFraction = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_8:
}

@end