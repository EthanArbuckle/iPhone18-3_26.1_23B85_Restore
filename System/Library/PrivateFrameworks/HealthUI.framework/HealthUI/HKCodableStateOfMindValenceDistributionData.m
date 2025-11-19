@interface HKCodableStateOfMindValenceDistributionData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)reflectiveIntervalAsString:(int)a3;
- (int)StringAsReflectiveInterval:(id)a3;
- (int)reflectiveInterval;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumValence:(BOOL)a3;
- (void)setHasReflectiveInterval:(BOOL)a3;
- (void)setHasSampleCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableStateOfMindValenceDistributionData

- (void)setHasMinimumValence:(BOOL)a3
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

- (void)setHasSampleCount:(BOOL)a3
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

- (int)reflectiveInterval
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_reflectiveInterval;
  }

  else
  {
    return 1;
  }
}

- (void)setHasReflectiveInterval:(BOOL)a3
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

- (id)reflectiveIntervalAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"momentary";
  }

  else if (a3 == 2)
  {
    v4 = @"daily";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsReflectiveInterval:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"momentary"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"daily"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableStateOfMindValenceDistributionData;
  v4 = [(HKCodableStateOfMindValenceDistributionData *)&v8 description];
  v5 = [(HKCodableStateOfMindValenceDistributionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumValence];
    [v3 setObject:v5 forKey:@"minimumValence"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sampleCount];
      [v3 setObject:v7 forKey:@"sampleCount"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_15;
      }

LABEL_9:
      reflectiveInterval = self->_reflectiveInterval;
      if (reflectiveInterval == 1)
      {
        v9 = @"momentary";
      }

      else if (reflectiveInterval == 2)
      {
        v9 = @"daily";
      }

      else
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_reflectiveInterval];
      }

      [v3 setObject:v9 forKey:@"reflectiveInterval"];

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumValence];
  [v3 setObject:v6 forKey:@"maximumValence"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_15:

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
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_minimumValence;
    *(v4 + 36) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[1] = *&self->_maximumValence;
  *(v4 + 36) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v4[3] = self->_sampleCount;
  *(v4 + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v4 + 8) = self->_reflectiveInterval;
    *(v4 + 36) |= 8u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_minimumValence;
    *(result + 36) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = *&self->_maximumValence;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = self->_sampleCount;
  *(result + 36) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 8) = self->_reflectiveInterval;
  *(result + 36) |= 8u;
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
    if ((*(v4 + 36) & 2) == 0 || self->_minimumValence != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_maximumValence != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_sampleCount != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_reflectiveInterval != *(v4 + 8))
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
    minimumValence = self->_minimumValence;
    if (minimumValence < 0.0)
    {
      minimumValence = -minimumValence;
    }

    *v2.i64 = floor(minimumValence + 0.5);
    v6 = (minimumValence - *v2.i64) * 1.84467441e19;
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
    maximumValence = self->_maximumValence;
    if (maximumValence < 0.0)
    {
      maximumValence = -maximumValence;
    }

    *v2.i64 = floor(maximumValence + 0.5);
    v10 = (maximumValence - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_sampleCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v13 = 0;
    return v8 ^ v4 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v13 = 2654435761 * self->_reflectiveInterval;
  return v8 ^ v4 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_minimumValence = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_maximumValence = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_sampleCount = *(v4 + 3);
  *&self->_has |= 4u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_5:
    self->_reflectiveInterval = *(v4 + 8);
    *&self->_has |= 8u;
  }

LABEL_6:
}

@end