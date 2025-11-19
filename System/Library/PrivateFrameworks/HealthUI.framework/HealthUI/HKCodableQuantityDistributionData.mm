@interface HKCodableQuantityDistributionData
- (BOOL)isEqual:(id)a3;
- (double)histogramCountsAtIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContextIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableQuantityDistributionData

- (void)dealloc
{
  PBRepeatedDoubleClear();
  v3.receiver = self;
  v3.super_class = HKCodableQuantityDistributionData;
  [(HKCodableQuantityDistributionData *)&v3 dealloc];
}

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

- (double)histogramCountsAtIndex:(unint64_t)a3
{
  p_histogramCounts = &self->_histogramCounts;
  count = self->_histogramCounts.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_histogramCounts->list[a3];
}

- (void)addContextIdentifiers:(id)a3
{
  v4 = a3;
  contextIdentifiers = self->_contextIdentifiers;
  v8 = v4;
  if (!contextIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contextIdentifiers;
    self->_contextIdentifiers = v6;

    v4 = v8;
    contextIdentifiers = self->_contextIdentifiers;
  }

  [(NSMutableArray *)contextIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableQuantityDistributionData;
  v4 = [(HKCodableQuantityDistributionData *)&v8 description];
  v5 = [(HKCodableQuantityDistributionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [v3 setObject:v5 forKey:@"startDate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
    [v3 setObject:v6 forKey:@"endDate"];
  }

  minimumBucketValue = self->_minimumBucketValue;
  if (minimumBucketValue)
  {
    v8 = [(HKCodableQuantity *)minimumBucketValue dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"minimumBucketValue"];
  }

  minimumValue = self->_minimumValue;
  if (minimumValue)
  {
    v10 = [(HKCodableQuantity *)minimumValue dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"minimumValue"];
  }

  maximumValue = self->_maximumValue;
  if (maximumValue)
  {
    v12 = [(HKCodableQuantity *)maximumValue dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"maximumValue"];
  }

  averageValue = self->_averageValue;
  if (averageValue)
  {
    v14 = [(HKCodableQuantity *)averageValue dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"averageValue"];
  }

  duration = self->_duration;
  if (duration)
  {
    v16 = [(HKCodableQuantity *)duration dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"duration"];
  }

  v17 = PBRepeatedDoubleNSArray();
  [v3 setObject:v17 forKey:@"histogramCounts"];

  contextIdentifiers = self->_contextIdentifiers;
  if (contextIdentifiers)
  {
    [v3 setObject:contextIdentifiers forKey:@"contextIdentifiers"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = *&self->_startDate;
    *(v4 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[4] = *&self->_endDate;
    *(v4 + 96) |= 1u;
  }

  v13 = v4;
  if (self->_minimumBucketValue)
  {
    [v4 setMinimumBucketValue:?];
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
    v6 = [(HKCodableQuantityDistributionData *)self histogramCountsCount];
    if (v6)
    {
      v7 = v6;
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
    v9 = [(HKCodableQuantityDistributionData *)self contextIdentifiersCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HKCodableQuantityDistributionData *)self contextIdentifiersAtIndex:j];
        [v13 addContextIdentifiers:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(HKCodableQuantity *)self->_minimumBucketValue copyWithZone:a3];
  v9 = v6[10];
  v6[10] = v8;

  v10 = [(HKCodableQuantity *)self->_minimumValue copyWithZone:a3];
  v11 = v6[11];
  v6[11] = v10;

  v12 = [(HKCodableQuantity *)self->_maximumValue copyWithZone:a3];
  v13 = v6[9];
  v6[9] = v12;

  v14 = [(HKCodableQuantity *)self->_averageValue copyWithZone:a3];
  v15 = v6[6];
  v6[6] = v14;

  v16 = [(HKCodableQuantity *)self->_duration copyWithZone:a3];
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

        v23 = [*(*(&v25 + 1) + 8 * i) copyWithZone:{a3, v25}];
        [v6 addContextIdentifiers:v23];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_startDate != *(v4 + 5))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_endDate != *(v4 + 4))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_25;
  }

  minimumBucketValue = self->_minimumBucketValue;
  if (minimumBucketValue | *(v4 + 10) && ![(HKCodableQuantity *)minimumBucketValue isEqual:?])
  {
    goto LABEL_25;
  }

  minimumValue = self->_minimumValue;
  if (minimumValue | *(v4 + 11))
  {
    if (![(HKCodableQuantity *)minimumValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  maximumValue = self->_maximumValue;
  if (maximumValue | *(v4 + 9))
  {
    if (![(HKCodableQuantity *)maximumValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  averageValue = self->_averageValue;
  if (averageValue | *(v4 + 6))
  {
    if (![(HKCodableQuantity *)averageValue isEqual:?])
    {
      goto LABEL_25;
    }
  }

  duration = self->_duration;
  if (duration | *(v4 + 8))
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
  if (contextIdentifiers | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 96);
  if ((v6 & 2) != 0)
  {
    self->_startDate = v4[5];
    *&self->_has |= 2u;
    v6 = *(v4 + 96);
  }

  if (v6)
  {
    self->_endDate = v4[4];
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

  v17 = [v5 histogramCountsCount];
  if (v17)
  {
    v18 = v17;
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