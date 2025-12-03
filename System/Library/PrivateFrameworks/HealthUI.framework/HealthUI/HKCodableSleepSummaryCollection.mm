@interface HKCodableSleepSummaryCollection
+ (id)_codableSleepPeriodFromPeriod:(id)period;
+ (id)_codableSleepPeriodSegmentFromSegment:(id)segment;
+ (id)_sleepEntryFromDaySummary:(id)summary;
+ (id)sleepSummaryCollectionFromDaySummaries:(id)summaries;
- (BOOL)isEqual:(id)equal;
- (id)_daySummaryFromCodableSummary:(id)summary sourceTimeZone:(id)zone;
- (id)_segmentFromCodableSegment:(id)segment sourceTimeZone:(id)zone;
- (id)_sleepPeriodFromCodablePeriod:(id)period sourceTimeZone:(id)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)daySummariesWithSourceTimeZone:(id)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSleepSummaryEntry:(id)entry;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSleepSummaryCollection

- (void)addSleepSummaryEntry:(id)entry
{
  entryCopy = entry;
  sleepSummaryEntrys = self->_sleepSummaryEntrys;
  v8 = entryCopy;
  if (!sleepSummaryEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sleepSummaryEntrys;
    self->_sleepSummaryEntrys = v6;

    entryCopy = v8;
    sleepSummaryEntrys = self->_sleepSummaryEntrys;
  }

  [(NSMutableArray *)sleepSummaryEntrys addObject:entryCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSleepSummaryCollection;
  v4 = [(HKCodableSleepSummaryCollection *)&v8 description];
  dictionaryRepresentation = [(HKCodableSleepSummaryCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"sleepSummaryEntry"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HKCodableSleepSummaryCollection *)self sleepSummaryEntrysCount])
  {
    [toCopy clearSleepSummaryEntrys];
    sleepSummaryEntrysCount = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntrysCount];
    if (sleepSummaryEntrysCount)
    {
      v5 = sleepSummaryEntrysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntryAtIndex:i];
        [toCopy addSleepSummaryEntry:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sleepSummaryEntrys = self->_sleepSummaryEntrys;
    if (sleepSummaryEntrys | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
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

+ (id)sleepSummaryCollectionFromDaySummaries:(id)summaries
{
  v18 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v5 = objc_alloc_init(HKCodableSleepSummaryCollection);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = summariesCopy;
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

        v11 = [self _sleepEntryFromDaySummary:{*(*(&v13 + 1) + 8 * i), v13}];
        [(HKCodableSleepSummaryCollection *)v5 addSleepSummaryEntry:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_sleepEntryFromDaySummary:(id)summary
{
  v20 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  v5 = objc_alloc_init(HKCodableSleepSummaryEntry);
  dateInterval = [summaryCopy dateInterval];
  hk_codableDateInterval = [dateInterval hk_codableDateInterval];
  [(HKCodableSleepSummaryEntry *)v5 setDateInterval:hk_codableDateInterval];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  periods = [summaryCopy periods];
  v9 = [periods countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(periods);
        }

        v13 = [self _codableSleepPeriodFromPeriod:*(*(&v15 + 1) + 8 * i)];
        [(HKCodableSleepSummaryEntry *)v5 addPeriod:v13];
      }

      v10 = [periods countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)_codableSleepPeriodFromPeriod:(id)period
{
  v20 = *MEMORY[0x1E69E9840];
  periodCopy = period;
  v5 = objc_alloc_init(HKCodableSleepPeriod);
  dateInterval = [periodCopy dateInterval];
  hk_codableDateInterval = [dateInterval hk_codableDateInterval];
  [(HKCodableSleepPeriod *)v5 setDateInterval:hk_codableDateInterval];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  segments = [periodCopy segments];
  v9 = [segments countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(segments);
        }

        v13 = [self _codableSleepPeriodSegmentFromSegment:*(*(&v15 + 1) + 8 * i)];
        [(HKCodableSleepPeriod *)v5 addSegment:v13];
      }

      v10 = [segments countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

+ (id)_codableSleepPeriodSegmentFromSegment:(id)segment
{
  v19 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  v4 = objc_alloc_init(HKCodableSleepPeriodSegment);
  dateInterval = [segmentCopy dateInterval];
  hk_codableDateInterval = [dateInterval hk_codableDateInterval];
  [(HKCodableSleepPeriodSegment *)v4 setDateInterval:hk_codableDateInterval];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sampleIntervals = [segmentCopy sampleIntervals];
  v8 = [sampleIntervals countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sampleIntervals);
        }

        hk_codableDateInterval2 = [*(*(&v14 + 1) + 8 * i) hk_codableDateInterval];
        [(HKCodableSleepPeriodSegment *)v4 addSampleInterval:hk_codableDateInterval2];
      }

      v9 = [sampleIntervals countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  -[HKCodableSleepPeriodSegment setCategory:](v4, "setCategory:", [segmentCopy category]);

  return v4;
}

- (id)daySummariesWithSourceTimeZone:(id)zone
{
  v18 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sleepSummaryEntrys = [(HKCodableSleepSummaryCollection *)self sleepSummaryEntrys];
  v7 = [sleepSummaryEntrys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(sleepSummaryEntrys);
        }

        v11 = [(HKCodableSleepSummaryCollection *)self _daySummaryFromCodableSummary:*(*(&v13 + 1) + 8 * i) sourceTimeZone:zoneCopy];
        [v5 addObject:v11];
      }

      v8 = [sleepSummaryEntrys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_daySummaryFromCodableSummary:(id)summary sourceTimeZone:(id)zone
{
  v31 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  zoneCopy = zone;
  hasDateInterval = [summaryCopy hasDateInterval];
  v9 = MEMORY[0x1E696AB80];
  if (hasDateInterval)
  {
    dateInterval = [summaryCopy dateInterval];
    v11 = [v9 hk_dateIntervalWithCodableDateInterval:dateInterval sourceTimeZone:zoneCopy];
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
  periods = [summaryCopy periods];
  v14 = [periods countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(periods);
        }

        v18 = [(HKCodableSleepSummaryCollection *)self _sleepPeriodFromCodablePeriod:*(*(&v26 + 1) + 8 * i) sourceTimeZone:zoneCopy];
        [v12 addObject:v18];
      }

      v15 = [periods countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  [hk_gregorianCalendar setTimeZone:zoneCopy];
  startDate = [v11 startDate];
  v21 = [startDate hk_morningIndexWithCalendar:hk_gregorianCalendar];

  v22 = MEMORY[0x1E696C458];
  v23 = objc_alloc_init(MEMORY[0x1E696AB80]);
  v24 = [v22 daySummaryWithMorningIndex:v21 dateInterval:v11 calendar:hk_gregorianCalendar periods:v12 schedules:MEMORY[0x1E695E0F0] sleepDurationGoal:0 minimumRecommendedSleepDurationGoal:0 creationInterval:v23];

  return v24;
}

- (id)_sleepPeriodFromCodablePeriod:(id)period sourceTimeZone:(id)zone
{
  v26 = *MEMORY[0x1E69E9840];
  periodCopy = period;
  zoneCopy = zone;
  hasDateInterval = [periodCopy hasDateInterval];
  v9 = MEMORY[0x1E696AB80];
  if (hasDateInterval)
  {
    dateInterval = [periodCopy dateInterval];
    v11 = [v9 hk_dateIntervalWithCodableDateInterval:dateInterval sourceTimeZone:zoneCopy];
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
  segments = [periodCopy segments];
  v14 = [segments countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(segments);
        }

        v18 = [(HKCodableSleepSummaryCollection *)self _segmentFromCodableSegment:*(*(&v21 + 1) + 8 * i) sourceTimeZone:zoneCopy];
        [v12 addObject:v18];
      }

      v15 = [segments countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = [MEMORY[0x1E696C480] sleepPeriodWithDateInterval:v11 segments:v12];

  return v19;
}

- (id)_segmentFromCodableSegment:(id)segment sourceTimeZone:(id)zone
{
  v26 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  zoneCopy = zone;
  hasDateInterval = [segmentCopy hasDateInterval];
  v8 = MEMORY[0x1E696AB80];
  if (hasDateInterval)
  {
    dateInterval = [segmentCopy dateInterval];
    v10 = [v8 hk_dateIntervalWithCodableDateInterval:dateInterval sourceTimeZone:zoneCopy];
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
  sampleIntervals = [segmentCopy sampleIntervals];
  v13 = [sampleIntervals countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(sampleIntervals);
        }

        v17 = [MEMORY[0x1E696AB80] hk_dateIntervalWithCodableDateInterval:*(*(&v21 + 1) + 8 * i) sourceTimeZone:zoneCopy];
        [v11 addObject:v17];
      }

      v14 = [sampleIntervals countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  if ([segmentCopy hasCategory])
  {
    category = [segmentCopy category];
  }

  else
  {
    category = 0;
  }

  v19 = [MEMORY[0x1E696C488] sleepPeriodSegmentWithDateInterval:v10 sampleIntervals:v11 category:category];

  return v19;
}

@end