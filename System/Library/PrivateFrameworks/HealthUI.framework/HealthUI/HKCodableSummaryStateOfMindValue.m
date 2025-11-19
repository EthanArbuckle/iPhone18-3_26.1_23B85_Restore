@interface HKCodableSummaryStateOfMindValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)domainsAtIndex:(unint64_t)a3;
- (int64_t)labelsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasReflectiveInterval:(BOOL)a3;
- (void)setHasValence:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryStateOfMindValue

- (void)dealloc
{
  PBRepeatedInt64Clear();
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HKCodableSummaryStateOfMindValue;
  [(HKCodableSummaryStateOfMindValue *)&v3 dealloc];
}

- (void)setHasReflectiveInterval:(BOOL)a3
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

- (void)setHasValence:(BOOL)a3
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

- (int64_t)labelsAtIndex:(unint64_t)a3
{
  p_labels = &self->_labels;
  count = self->_labels.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_labels->list[a3];
}

- (int64_t)domainsAtIndex:(unint64_t)a3
{
  p_domains = &self->_domains;
  count = self->_domains.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_domains->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryStateOfMindValue;
  v4 = [(HKCodableSummaryStateOfMindValue *)&v8 description];
  v5 = [(HKCodableSummaryStateOfMindValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [v3 setObject:v9 forKey:@"dateData"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_reflectiveInterval];
  [v3 setObject:v10 forKey:@"reflectiveInterval"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_valence];
    [v3 setObject:v5 forKey:@"valence"];
  }

LABEL_5:
  v6 = PBRepeatedInt64NSArray();
  [v3 setObject:v6 forKey:@"labels"];

  v7 = PBRepeatedInt64NSArray();
  [v3 setObject:v7 forKey:@"domains"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
  if (self->_labels.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt64Field();
      v4 = v9;
      ++v6;
    }

    while (v6 < self->_labels.count);
  }

  p_domains = &self->_domains;
  if (p_domains->count)
  {
    v8 = 0;
    do
    {
      PBDataWriterWriteInt64Field();
      v4 = v9;
      ++v8;
    }

    while (v8 < p_domains->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v4[8] = self->_reflectiveInterval;
    *(v4 + 80) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4[7] = *&self->_dateData;
  *(v4 + 80) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    v4[9] = *&self->_valence;
    *(v4 + 80) |= 4u;
  }

LABEL_5:
  v12 = v4;
  if ([(HKCodableSummaryStateOfMindValue *)self labelsCount])
  {
    [v12 clearLabels];
    v6 = [(HKCodableSummaryStateOfMindValue *)self labelsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [v12 addLabels:{-[HKCodableSummaryStateOfMindValue labelsAtIndex:](self, "labelsAtIndex:", i)}];
      }
    }
  }

  if ([(HKCodableSummaryStateOfMindValue *)self domainsCount])
  {
    [v12 clearDomains];
    v9 = [(HKCodableSummaryStateOfMindValue *)self domainsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v12 addDomains:{-[HKCodableSummaryStateOfMindValue domainsAtIndex:](self, "domainsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v4 + 64) = self->_reflectiveInterval;
    *(v4 + 80) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v4 + 56) = self->_dateData;
  *(v4 + 80) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v4 + 72) = self->_valence;
    *(v4 + 80) |= 4u;
  }

LABEL_5:
  PBRepeatedInt64Copy();
  PBRepeatedInt64Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_dateData != *(v4 + 7))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_reflectiveInterval != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_valence != *(v4 + 9))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 80) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (!PBRepeatedInt64IsEqual())
  {
LABEL_19:
    IsEqual = 0;
    goto LABEL_20;
  }

  IsEqual = PBRepeatedInt64IsEqual();
LABEL_20:

  return IsEqual;
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

  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_reflectiveInterval;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  valence = self->_valence;
  if (valence < 0.0)
  {
    valence = -valence;
  }

  *v2.i64 = floor(valence + 0.5);
  v10 = (valence - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_17:
  v13 = v8 ^ v4 ^ v12 ^ PBRepeatedInt64Hash();
  return v13 ^ PBRepeatedInt64Hash();
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 80);
  if (v5)
  {
    self->_dateData = *(v4 + 7);
    *&self->_has |= 1u;
    v5 = *(v4 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 80) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_reflectiveInterval = *(v4 + 8);
  *&self->_has |= 2u;
  if ((*(v4 + 80) & 4) != 0)
  {
LABEL_4:
    self->_valence = *(v4 + 9);
    *&self->_has |= 4u;
  }

LABEL_5:
  v12 = v4;
  v6 = [v4 labelsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[HKCodableSummaryStateOfMindValue addLabels:](self, "addLabels:", [v12 labelsAtIndex:i]);
    }
  }

  v9 = [v12 domainsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[HKCodableSummaryStateOfMindValue addDomains:](self, "addDomains:", [v12 domainsAtIndex:j]);
    }
  }
}

@end