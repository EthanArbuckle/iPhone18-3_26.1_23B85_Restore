@interface HKCodableSummaryOngoingFactorsValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)categoryValueRawValuesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLatestEndDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryOngoingFactorsValue

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HKCodableSummaryOngoingFactorsValue;
  [(HKCodableSummaryOngoingFactorsValue *)&v3 dealloc];
}

- (int64_t)categoryValueRawValuesAtIndex:(unint64_t)a3
{
  p_categoryValueRawValues = &self->_categoryValueRawValues;
  count = self->_categoryValueRawValues.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_categoryValueRawValues->list[a3];
}

- (void)setHasLatestEndDate:(BOOL)a3
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
  v8.super_class = HKCodableSummaryOngoingFactorsValue;
  v4 = [(HKCodableSummaryOngoingFactorsValue *)&v8 description];
  v5 = [(HKCodableSummaryOngoingFactorsValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedInt64NSArray();
  [v3 setObject:v4 forKey:@"categoryValueRawValues"];

  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_earliestStartDate];
    [v3 setObject:v6 forKey:@"earliestStartDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latestEndDate];
    [v3 setObject:v7 forKey:@"latestEndDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_categoryValueRawValues.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt64Field();
      v4 = v7;
      ++v5;
    }

    while (v5 < self->_categoryValueRawValues.count);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(HKCodableSummaryOngoingFactorsValue *)self categoryValueRawValuesCount])
  {
    [v8 clearCategoryValueRawValues];
    v4 = [(HKCodableSummaryOngoingFactorsValue *)self categoryValueRawValuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addCategoryValueRawValues:{-[HKCodableSummaryOngoingFactorsValue categoryValueRawValuesAtIndex:](self, "categoryValueRawValuesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v8 + 4) = *&self->_earliestStartDate;
    *(v8 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v8 + 5) = *&self->_latestEndDate;
    *(v8 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt64Copy();
  has = self->_has;
  if (has)
  {
    *(v4 + 32) = self->_earliestStartDate;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 40) = self->_latestEndDate;
    *(v4 + 48) |= 2u;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt64IsEqual())
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_earliestStartDate != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_latestEndDate != *(v4 + 5))
    {
      goto LABEL_12;
    }

    v5 = 1;
  }

LABEL_13:

  return v5;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt64Hash();
  if (*&self->_has)
  {
    earliestStartDate = self->_earliestStartDate;
    if (earliestStartDate < 0.0)
    {
      earliestStartDate = -earliestStartDate;
    }

    *v4.i64 = floor(earliestStartDate + 0.5);
    v8 = (earliestStartDate - *v4.i64) * 1.84467441e19;
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
    latestEndDate = self->_latestEndDate;
    if (latestEndDate < 0.0)
    {
      latestEndDate = -latestEndDate;
    }

    *v4.i64 = floor(latestEndDate + 0.5);
    v12 = (latestEndDate - *v4.i64) * 1.84467441e19;
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
  v8 = a3;
  v4 = [v8 categoryValueRawValuesCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      -[HKCodableSummaryOngoingFactorsValue addCategoryValueRawValues:](self, "addCategoryValueRawValues:", [v8 categoryValueRawValuesAtIndex:i]);
    }
  }

  v7 = *(v8 + 48);
  if (v7)
  {
    self->_earliestStartDate = v8[4];
    *&self->_has |= 1u;
    v7 = *(v8 + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_latestEndDate = v8[5];
    *&self->_has |= 2u;
  }
}

@end