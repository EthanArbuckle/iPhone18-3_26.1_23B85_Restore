@interface HDAudioExposureAggregator
- (BOOL)shouldFreezeCurrentSeries:(id)a3 lastDatum:(id)a4 seriesLength:(int64_t)a5 configuration:(id)a6 aggregationInterval:(double)a7;
- (void)addDatum:(id)a3 toAccumulatedData:(id)a4;
@end

@implementation HDAudioExposureAggregator

- (void)addDatum:(id)a3 toAccumulatedData:(id)a4
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 lastObject];
  if (v8)
  {
    v9 = [(HDActiveQuantityDataAggregator *)self quantityType];
    v10 = [v6 quantity];
    v11 = [v9 canonicalUnit];
    [v10 doubleValueForUnit:v11];
    v13 = v12;

    if (v13 >= 80.0)
    {
      goto LABEL_5;
    }

    v14 = [v8 quantity];
    v15 = [v9 canonicalUnit];
    [v14 doubleValueForUnit:v15];
    v17 = v16;

    if (v17 >= 80.0)
    {
      goto LABEL_5;
    }

    v18 = [v6 dateInterval];
    v19 = [v18 endDate];
    v20 = [v8 dateInterval];
    v21 = [v20 startDate];
    [v19 timeIntervalSinceDate:v21];
    v23 = v22;

    if (v23 <= 30.0)
    {
      v29[0] = v8;
      v29[1] = v6;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v26 = HDMergedQuantitySensorData(v25, v9);

      v27 = v7;
      if (v26)
      {
        [v7 removeLastObject];
        v27 = v7;
        v28 = v26;
      }

      else
      {
        v28 = v6;
      }

      [v27 addObject:v28];
    }

    else
    {
LABEL_5:
      [v7 addObject:v6];
    }
  }

  else
  {
    [v7 addObject:v6];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFreezeCurrentSeries:(id)a3 lastDatum:(id)a4 seriesLength:(int64_t)a5 configuration:(id)a6 aggregationInterval:(double)a7
{
  v9 = a3;
  v10 = a6;
  v11 = [(HDActiveQuantityDataAggregator *)self quantityType];
  v12 = [v11 code];

  v17 = 0;
  if (v12 == 173)
  {
    v13 = [v9 endDate];
    [v13 timeIntervalSinceNow];
    v15 = -v14;

    [v10 maximumSeriesDuration];
    if (v16 < v15)
    {
      v17 = 1;
    }
  }

  return v17;
}

@end