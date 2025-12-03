@interface HKCodableQuantityDistributionData
- (BOOL)isEqual:(id)equal;
- (double)histogramCountsAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContextIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableQuantityDistributionData

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = HKCodableQuantityDistributionData;
  [(HKCodableQuantityDistributionData *)&v3 dealloc];
}

- (void)setHasStartDate:(BOOL)date
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

- (double)histogramCountsAtIndex:(unint64_t)index
{
  p_histogramCounts = &self->_histogramCounts;
  count = self->_histogramCounts.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_histogramCounts->list[index];
}

- (void)addContextIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  contextIdentifiers = self->_contextIdentifiers;
  v8 = identifiersCopy;
  if (!contextIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contextIdentifiers;
    self->_contextIdentifiers = v6;

    identifiersCopy = v8;
    contextIdentifiers = self->_contextIdentifiers;
  }

  [(NSMutableArray *)contextIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQuantityDistributionData;
  v4 = [(HKCodableQuantityDistributionData *)&v8 description];
  dictionaryRepresentation = [(HKCodableQuantityDistributionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [dictionary setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [dictionary setObject:v6 forKey:@"endDate"];
  }

  minimumBucketValue = self->_minimumBucketValue;
  if (minimumBucketValue)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)minimumBucketValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"minimumBucketValue"];
  }

  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)minimumValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"minimumValue"];
  }

  maximumValue = self->_maximumValue;
  if (maximumValue)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)maximumValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"maximumValue"];
  }

  averageValue = self->_averageValue;
  if (averageValue)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)averageValue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"averageValue"];
  }

  duration = self->_duration;
  if (duration)
  {
    dictionaryRepresentation5 = [(HKCodableQuantity *)duration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"duration"];
  }

  v17 = PBRepeatedDoubleNSArray();
  [dictionary setObject:v17 forKey:@"histogramCounts"];

  contextIdentifiers = self->_contextIdentifiers;
  if (contextIdentifiers)
  {
    [dictionary setObject:contextIdentifiers forKey:@"contextIdentifiers"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_minimumBucketValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minimumValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_maximumValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_averageValue)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_duration)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_histogramCounts.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteDoubleField();
      ++v6;
    }

    while (v6 < self->_histogramCounts.count);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_contextIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[5] = *&self->_startDate;
    *(toCopy + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[4] = *&self->_endDate;
    *(toCopy + 96) |= 1u;
  }

  v13 = toCopy;
  if (self->_minimumBucketValue)
  {
    [toCopy setMinimumBucketValue:?];
  }

  if (self->_minimumValue)
  {
    [v13 setMinimumValue:?];
  }

  if (self->_maximumValue)
  {
    [v13 setMaximumValue:?];
  }

  if (self->_averageValue)
  {
    [v13 setAverageValue:?];
  }

  if (self->_duration)
  {
    [v13 setDuration:?];
  }

  if ([(HKCodableQuantityDistributionData *)self histogramCountsCount])
  {
    [v13 clearHistogramCounts];
    histogramCountsCount = [(HKCodableQuantityDistributionData *)self histogramCountsCount];
    if (histogramCountsCount)
    {
      v7 = histogramCountsCount;
      for (i = 0; i != v7; ++i)
      {
        [(HKCodableQuantityDistributionData *)self histogramCountsAtIndex:i];
        [v13 addHistogramCounts:?];
      }
    }
  }

  if ([(HKCodableQuantityDistributionData *)self contextIdentifiersCount])
  {
    [v13 clearContextIdentifiers];
    contextIdentifiersCount = [(HKCodableQuantityDistributionData *)self contextIdentifiersCount];
    if (contextIdentifiersCount)
    {
      v10 = contextIdentifiersCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HKCodableQuantityDistributionData *)self contextIdentifiersAtIndex:j];
        [v13 addContextIdentifiers:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_startDate;
    *(v5 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 32) = self->_endDate;
    *(v5 + 96) |= 1u;
  }

  v8 = [(HKCodableQuantity *)self->_minimumBucketValue copyWithZone:zone];
  v9 = v6[10];
  v6[10] = v8;

  v10 = [(HKCodableQuantity *)self->_minimumValue copyWithZone:zone];
  v11 = v6[11];
  v6[11] = v10;

  v12 = [(HKCodableQuantity *)self->_maximumValue copyWithZone:zone];
  v13 = v6[9];
  v6[9] = v12;

  v14 = [(HKCodableQuantity *)self->_averageValue copyWithZone:zone];
  v15 = v6[6];
  v6[6] = v14;

  v16 = [(HKCodableQuantity *)self->_duration copyWithZone:zone];
  v17 = v6[8];
  v6[8] = v16;

  PBRepeatedDoubleCopy();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_contextIdentifiers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * i) copyWithZone:{zone, v25}];
        [v6 addContextIdentifiers:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_startDate != *(equalCopy + 5))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_endDate != *(equalCopy + 4))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_25;
  }

  minimumBucketValue = self->_minimumBucketValue;
  if (minimumBucketValue | *(equalCopy + 10) && ![(HKCodableQuantity *)minimumBucketValue isEqual:?])
  {
    goto LABEL_25;
  }

  minimumValue = self->_minimumValue;
  if (minimumValue | *(equalCopy + 11))
  {
    if (![(HKCodableQuantity *)minimumValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  maximumValue = self->_maximumValue;
  if (maximumValue | *(equalCopy + 9))
  {
    if (![(HKCodableQuantity *)maximumValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  averageValue = self->_averageValue;
  if (averageValue | *(equalCopy + 6))
  {
    if (![(HKCodableQuantity *)averageValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  duration = self->_duration;
  if (duration | *(equalCopy + 8))
  {
    if (![(HKCodableQuantity *)duration isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if (!PBRepeatedDoubleIsEqual())
  {
    goto LABEL_25;
  }

  contextIdentifiers = self->_contextIdentifiers;
  if (contextIdentifiers | *(equalCopy + 7))
  {
    v11 = [(NSMutableArray *)contextIdentifiers isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_26:

  return v11;
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

  v13 = v9 ^ v5 ^ [(HKCodableQuantity *)self->_minimumBucketValue hash];
  v14 = [(HKCodableQuantity *)self->_minimumValue hash];
  v15 = v13 ^ v14 ^ [(HKCodableQuantity *)self->_maximumValue hash];
  v16 = [(HKCodableQuantity *)self->_averageValue hash];
  v17 = v16 ^ [(HKCodableQuantity *)self->_duration hash];
  v18 = v15 ^ v17 ^ PBRepeatedDoubleHash();
  return v18 ^ [(NSMutableArray *)self->_contextIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 96);
  if ((v6 & 2) != 0)
  {
    self->_startDate = fromCopy[5];
    *&self->_has |= 2u;
    v6 = *(fromCopy + 96);
  }

  if (v6)
  {
    self->_endDate = fromCopy[4];
    *&self->_has |= 1u;
  }

  minimumBucketValue = self->_minimumBucketValue;
  v8 = *(v5 + 10);
  if (minimumBucketValue)
  {
    if (v8)
    {
      [(HKCodableQuantity *)minimumBucketValue mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HKCodableQuantityDistributionData *)self setMinimumBucketValue:?];
  }

  minimumValue = self->_minimumValue;
  v10 = *(v5 + 11);
  if (minimumValue)
  {
    if (v10)
    {
      [(HKCodableQuantity *)minimumValue mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HKCodableQuantityDistributionData *)self setMinimumValue:?];
  }

  maximumValue = self->_maximumValue;
  v12 = *(v5 + 9);
  if (maximumValue)
  {
    if (v12)
    {
      [(HKCodableQuantity *)maximumValue mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HKCodableQuantityDistributionData *)self setMaximumValue:?];
  }

  averageValue = self->_averageValue;
  v14 = *(v5 + 6);
  if (averageValue)
  {
    if (v14)
    {
      [(HKCodableQuantity *)averageValue mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(HKCodableQuantityDistributionData *)self setAverageValue:?];
  }

  duration = self->_duration;
  v16 = *(v5 + 8);
  if (duration)
  {
    if (v16)
    {
      [(HKCodableQuantity *)duration mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(HKCodableQuantityDistributionData *)self setDuration:?];
  }

  histogramCountsCount = [v5 histogramCountsCount];
  if (histogramCountsCount)
  {
    v18 = histogramCountsCount;
    for (i = 0; i != v18; ++i)
    {
      [v5 histogramCountsAtIndex:i];
      [(HKCodableQuantityDistributionData *)self addHistogramCounts:?];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = *(v5 + 7);
  v21 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(HKCodableQuantityDistributionData *)self addContextIdentifiers:*(*(&v25 + 1) + 8 * j), v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v22);
  }
}

@end