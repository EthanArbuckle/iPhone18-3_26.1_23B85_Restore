@interface HKCodableChartTimePeriodSeriesDataSourceData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDateIntervalsToTotals:(id)totals;
- (void)addIntervalCounts:(id)counts;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableChartTimePeriodSeriesDataSourceData

- (void)addDateIntervalsToTotals:(id)totals
{
  totalsCopy = totals;
  dateIntervalsToTotals = self->_dateIntervalsToTotals;
  v8 = totalsCopy;
  if (!dateIntervalsToTotals)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dateIntervalsToTotals;
    self->_dateIntervalsToTotals = v6;

    totalsCopy = v8;
    dateIntervalsToTotals = self->_dateIntervalsToTotals;
  }

  [(NSMutableArray *)dateIntervalsToTotals addObject:totalsCopy];
}

- (void)addIntervalCounts:(id)counts
{
  countsCopy = counts;
  intervalCounts = self->_intervalCounts;
  v8 = countsCopy;
  if (!intervalCounts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_intervalCounts;
    self->_intervalCounts = v6;

    countsCopy = v8;
    intervalCounts = self->_intervalCounts;
  }

  [(NSMutableArray *)intervalCounts addObject:countsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableChartTimePeriodSeriesDataSourceData;
  v4 = [(HKCodableChartTimePeriodSeriesDataSourceData *)&v8 description];
  dictionaryRepresentation = [(HKCodableChartTimePeriodSeriesDataSourceData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  statisticsInterval = self->_statisticsInterval;
  if (statisticsInterval)
  {
    dictionaryRepresentation = [(HKCodableDateComponents *)statisticsInterval dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"statisticsInterval"];
  }

  if ([(NSMutableArray *)self->_dateIntervalsToTotals count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dateIntervalsToTotals, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_dateIntervalsToTotals;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"dateIntervalsToTotals"];
  }

  if ([(NSMutableArray *)self->_intervalCounts count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_intervalCounts, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_intervalCounts;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"intervalCounts"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_statisticsInterval)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_dateIntervalsToTotals;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_intervalCounts;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_statisticsInterval)
  {
    [toCopy setStatisticsInterval:?];
  }

  if ([(HKCodableChartTimePeriodSeriesDataSourceData *)self dateIntervalsToTotalsCount])
  {
    [toCopy clearDateIntervalsToTotals];
    dateIntervalsToTotalsCount = [(HKCodableChartTimePeriodSeriesDataSourceData *)self dateIntervalsToTotalsCount];
    if (dateIntervalsToTotalsCount)
    {
      v5 = dateIntervalsToTotalsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableChartTimePeriodSeriesDataSourceData *)self dateIntervalsToTotalsAtIndex:i];
        [toCopy addDateIntervalsToTotals:v7];
      }
    }
  }

  if ([(HKCodableChartTimePeriodSeriesDataSourceData *)self intervalCountsCount])
  {
    [toCopy clearIntervalCounts];
    intervalCountsCount = [(HKCodableChartTimePeriodSeriesDataSourceData *)self intervalCountsCount];
    if (intervalCountsCount)
    {
      v9 = intervalCountsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HKCodableChartTimePeriodSeriesDataSourceData *)self intervalCountsAtIndex:j];
        [toCopy addIntervalCounts:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateComponents *)self->_statisticsInterval copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_dateIntervalsToTotals;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addDateIntervalsToTotals:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_intervalCounts;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addIntervalCounts:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((statisticsInterval = self->_statisticsInterval, !(statisticsInterval | equalCopy[3])) || -[HKCodableDateComponents isEqual:](statisticsInterval, "isEqual:")) && ((dateIntervalsToTotals = self->_dateIntervalsToTotals, !(dateIntervalsToTotals | equalCopy[1])) || -[NSMutableArray isEqual:](dateIntervalsToTotals, "isEqual:")))
  {
    intervalCounts = self->_intervalCounts;
    if (intervalCounts | equalCopy[2])
    {
      v8 = [(NSMutableArray *)intervalCounts isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(HKCodableDateComponents *)self->_statisticsInterval hash];
  v4 = [(NSMutableArray *)self->_dateIntervalsToTotals hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_intervalCounts hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  statisticsInterval = self->_statisticsInterval;
  v6 = *(fromCopy + 3);
  if (statisticsInterval)
  {
    if (v6)
    {
      [(HKCodableDateComponents *)statisticsInterval mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableChartTimePeriodSeriesDataSourceData *)self setStatisticsInterval:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(fromCopy + 1);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HKCodableChartTimePeriodSeriesDataSourceData *)self addDateIntervalsToTotals:*(*(&v21 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(fromCopy + 2);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HKCodableChartTimePeriodSeriesDataSourceData *)self addIntervalCounts:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end