@interface HKCodableSleepSummaryCollection
+ (id)_codableSleepPeriodFromPeriod:(id)a3;
+ (id)_codableSleepPeriodSegmentFromSegment:(id)a3;
+ (id)_sleepEntryFromDaySummary:(id)a3;
+ (id)sleepSummaryCollectionFromDaySummaries:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_daySummaryFromCodableSummary:(id)a3 sourceTimeZone:(id)a4;
- (id)_segmentFromCodableSegment:(id)a3 sourceTimeZone:(id)a4;
- (id)_sleepPeriodFromCodablePeriod:(id)a3 sourceTimeZone:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)daySummariesWithSourceTimeZone:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSleepSummaryEntry:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSleepSummaryCollection

- (void)addSleepSummaryEntry:(id)a3
{
  v4 = a3;
  sleepSummaryEntrys = self->_sleepSummaryEntrys;
  v8 = v4;
  if (!sleepSummaryEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sleepSummaryEntrys;
    self->_sleepSummaryEntrys = v6;

    v4 = v8;
    sleepSummaryEntrys = self->_sleepSummaryEntrys;
  }

  [(NSMutableArray *)sleepSummaryEntrys addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepSummaryCollection;
  v4 = [(HKCodableSleepSummaryCollection *)&v8 description];
  v5 = [(HKCodableSleepSummaryCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_sleepSummaryEntrys count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sleepSummaryEntrys, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_sleepSummaryEntrys;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"sleepSummaryEntry"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_sleepSummaryEntrys;
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
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(HKCodableSleepSummaryCollection *)self sleepSummaryEntrysCount])
  {
    [v8 clearSleepSummaryEntrys];
    v4 = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntrysCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntryAtIndex:i];
        [v8 addSleepSummaryEntry:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_sleepSummaryEntrys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [v5 addSleepSummaryEntry:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    sleepSummaryEntrys = self->_sleepSummaryEntrys;
    if (sleepSummaryEntrys | v4[1])
    {
      v6 = [(NSMutableArray *)sleepSummaryEntrys isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(HKCodableSleepSummaryCollection *)self addSleepSummaryEntry:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)sleepSummaryCollectionFromDaySummaries:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(HKCodableSleepSummaryCollection);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _sleepEntryFromDaySummary:{*(*(&v13 + 1) + 8 * i), v13}];
        [(HKCodableSleepSummaryCollection *)v5 addSleepSummaryEntry:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_sleepEntryFromDaySummary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(HKCodableSleepSummaryEntry);
  v6 = [v4 dateInterval];
  v7 = [v6 hk_codableDateInterval];
  [(HKCodableSleepSummaryEntry *)v5 setDateInterval:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 periods];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [a1 _codableSleepPeriodFromPeriod:*(*(&v15 + 1) + 8 * i)];
        [(HKCodableSleepSummaryEntry *)v5 addPeriod:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)_codableSleepPeriodFromPeriod:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(HKCodableSleepPeriod);
  v6 = [v4 dateInterval];
  v7 = [v6 hk_codableDateInterval];
  [(HKCodableSleepPeriod *)v5 setDateInterval:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 segments];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [a1 _codableSleepPeriodSegmentFromSegment:*(*(&v15 + 1) + 8 * i)];
        [(HKCodableSleepPeriod *)v5 addSegment:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)_codableSleepPeriodSegmentFromSegment:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(HKCodableSleepPeriodSegment);
  v5 = [v3 dateInterval];
  v6 = [v5 hk_codableDateInterval];
  [(HKCodableSleepPeriodSegment *)v4 setDateInterval:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v3 sampleIntervals];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) hk_codableDateInterval];
        [(HKCodableSleepPeriodSegment *)v4 addSampleInterval:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  -[HKCodableSleepPeriodSegment setCategory:](v4, "setCategory:", [v3 category]);

  return v4;
}

- (id)daySummariesWithSourceTimeZone:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntrys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(HKCodableSleepSummaryCollection *)self _daySummaryFromCodableSummary:*(*(&v13 + 1) + 8 * i) sourceTimeZone:v4];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_daySummaryFromCodableSummary:(id)a3 sourceTimeZone:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasDateInterval];
  v9 = MEMORY[0x1E696AB80];
  if (v8)
  {
    v10 = [v6 dateInterval];
    v11 = [v9 hk_dateIntervalWithCodableDateInterval:v10 sourceTimeZone:v7];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AB80]);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v6 periods];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(HKCodableSleepSummaryCollection *)self _sleepPeriodFromCodablePeriod:*(*(&v26 + 1) + 8 * i) sourceTimeZone:v7];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [v19 setTimeZone:v7];
  v20 = [v11 startDate];
  v21 = [v20 hk_morningIndexWithCalendar:v19];

  v22 = MEMORY[0x1E696C458];
  v23 = objc_alloc_init(MEMORY[0x1E696AB80]);
  v24 = [v22 daySummaryWithMorningIndex:v21 dateInterval:v11 calendar:v19 periods:v12 schedules:MEMORY[0x1E695E0F0] sleepDurationGoal:0 minimumRecommendedSleepDurationGoal:0 creationInterval:v23];

  return v24;
}

- (id)_sleepPeriodFromCodablePeriod:(id)a3 sourceTimeZone:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasDateInterval];
  v9 = MEMORY[0x1E696AB80];
  if (v8)
  {
    v10 = [v6 dateInterval];
    v11 = [v9 hk_dateIntervalWithCodableDateInterval:v10 sourceTimeZone:v7];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AB80]);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v6 segments];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [(HKCodableSleepSummaryCollection *)self _segmentFromCodableSegment:*(*(&v21 + 1) + 8 * i) sourceTimeZone:v7];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E696C480] sleepPeriodWithDateInterval:v11 segments:v12];

  return v19;
}

- (id)_segmentFromCodableSegment:(id)a3 sourceTimeZone:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hasDateInterval];
  v8 = MEMORY[0x1E696AB80];
  if (v7)
  {
    v9 = [v5 dateInterval];
    v10 = [v8 hk_dateIntervalWithCodableDateInterval:v9 sourceTimeZone:v6];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AB80]);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v5 sampleIntervals];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x1E696AB80] hk_dateIntervalWithCodableDateInterval:*(*(&v21 + 1) + 8 * i) sourceTimeZone:v6];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if ([v5 hasCategory])
  {
    v18 = [v5 category];
  }

  else
  {
    v18 = 0;
  }

  v19 = [MEMORY[0x1E696C488] sleepPeriodSegmentWithDateInterval:v10 sampleIntervals:v11 category:v18];

  return v19;
}

@end