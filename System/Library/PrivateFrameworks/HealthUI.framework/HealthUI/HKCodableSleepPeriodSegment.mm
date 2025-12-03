@interface HKCodableSleepPeriodSegment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSampleInterval:(id)interval;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSleepPeriodSegment

- (void)addSampleInterval:(id)interval
{
  intervalCopy = interval;
  sampleIntervals = self->_sampleIntervals;
  v8 = intervalCopy;
  if (!sampleIntervals)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sampleIntervals;
    self->_sampleIntervals = v6;

    intervalCopy = v8;
    sampleIntervals = self->_sampleIntervals;
  }

  [(NSMutableArray *)sampleIntervals addObject:intervalCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepPeriodSegment;
  v4 = [(HKCodableSleepPeriodSegment *)&v8 description];
  dictionaryRepresentation = [(HKCodableSleepPeriodSegment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dateInterval = self->_dateInterval;
  if (dateInterval)
  {
    dictionaryRepresentation = [(HKCodableDateInterval *)dateInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dateInterval"];
  }

  if ([(NSMutableArray *)self->_sampleIntervals count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sampleIntervals, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_sampleIntervals;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"sampleInterval"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_category];
    [dictionary setObject:v13 forKey:@"category"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_dateInterval)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sampleIntervals;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dateInterval)
  {
    [toCopy setDateInterval:?];
  }

  if ([(HKCodableSleepPeriodSegment *)self sampleIntervalsCount])
  {
    [toCopy clearSampleIntervals];
    sampleIntervalsCount = [(HKCodableSleepPeriodSegment *)self sampleIntervalsCount];
    if (sampleIntervalsCount)
    {
      v5 = sampleIntervalsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableSleepPeriodSegment *)self sampleIntervalAtIndex:i];
        [toCopy addSampleInterval:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_category;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateInterval *)self->_dateInterval copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_sampleIntervals;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addSampleInterval:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_category;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  dateInterval = self->_dateInterval;
  if (dateInterval | *(equalCopy + 2))
  {
    if (![(HKCodableDateInterval *)dateInterval isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sampleIntervals = self->_sampleIntervals;
  if (sampleIntervals | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)sampleIntervals isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_category == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateInterval *)self->_dateInterval hash];
  v4 = [(NSMutableArray *)self->_sampleIntervals hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_category;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dateInterval = self->_dateInterval;
  v6 = *(fromCopy + 2);
  if (dateInterval)
  {
    if (v6)
    {
      [(HKCodableDateInterval *)dateInterval mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableSleepPeriodSegment *)self setDateInterval:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [(HKCodableSleepPeriodSegment *)self addSampleInterval:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 32))
  {
    self->_category = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end