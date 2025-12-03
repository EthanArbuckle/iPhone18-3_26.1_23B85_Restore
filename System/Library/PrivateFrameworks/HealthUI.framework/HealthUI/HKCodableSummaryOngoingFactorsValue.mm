@interface HKCodableSummaryOngoingFactorsValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)categoryValueRawValuesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasLatestEndDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryOngoingFactorsValue

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = HKCodableSummaryOngoingFactorsValue;
  [(HKCodableSummaryOngoingFactorsValue *)&v3 dealloc];
}

- (int64_t)categoryValueRawValuesAtIndex:(unint64_t)index
{
  p_categoryValueRawValues = &self->_categoryValueRawValues;
  count = self->_categoryValueRawValues.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_categoryValueRawValues->list[index];
}

- (void)setHasLatestEndDate:(BOOL)date
{
  if (date)
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
  dictionaryRepresentation = [(HKCodableSummaryOngoingFactorsValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedInt64NSArray();
  [dictionary setObject:v4 forKey:@"categoryValueRawValues"];

  has = self->_has;
  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_earliestStartDate];
    [dictionary setObject:v6 forKey:@"earliestStartDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latestEndDate];
    [dictionary setObject:v7 forKey:@"latestEndDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_categoryValueRawValues.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt64Field();
      toCopy = v7;
      ++v5;
    }

    while (v5 < self->_categoryValueRawValues.count);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HKCodableSummaryOngoingFactorsValue *)self categoryValueRawValuesCount])
  {
    [toCopy clearCategoryValueRawValues];
    categoryValueRawValuesCount = [(HKCodableSummaryOngoingFactorsValue *)self categoryValueRawValuesCount];
    if (categoryValueRawValuesCount)
    {
      v5 = categoryValueRawValuesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addCategoryValueRawValues:{-[HKCodableSummaryOngoingFactorsValue categoryValueRawValuesAtIndex:](self, "categoryValueRawValuesAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = *&self->_earliestStartDate;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = *&self->_latestEndDate;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt64IsEqual())
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_earliestStartDate != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_latestEndDate != *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  categoryValueRawValuesCount = [fromCopy categoryValueRawValuesCount];
  if (categoryValueRawValuesCount)
  {
    v5 = categoryValueRawValuesCount;
    for (i = 0; i != v5; ++i)
    {
      -[HKCodableSummaryOngoingFactorsValue addCategoryValueRawValues:](self, "addCategoryValueRawValues:", [fromCopy categoryValueRawValuesAtIndex:i]);
    }
  }

  v7 = *(fromCopy + 48);
  if (v7)
  {
    self->_earliestStartDate = fromCopy[4];
    *&self->_has |= 1u;
    v7 = *(fromCopy + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_latestEndDate = fromCopy[5];
    *&self->_has |= 2u;
  }
}

@end