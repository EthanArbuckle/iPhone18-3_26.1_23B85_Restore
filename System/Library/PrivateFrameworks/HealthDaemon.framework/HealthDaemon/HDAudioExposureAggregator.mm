@interface HDAudioExposureAggregator
- (BOOL)shouldFreezeCurrentSeries:(id)series lastDatum:(id)datum seriesLength:(int64_t)length configuration:(id)configuration aggregationInterval:(double)interval;
- (void)addDatum:(id)datum toAccumulatedData:(id)data;
@end

@implementation HDAudioExposureAggregator

- (void)addDatum:(id)datum toAccumulatedData:(id)data
{
  v29[2] = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  dataCopy = data;
  lastObject = [dataCopy lastObject];
  if (lastObject)
  {
    quantityType = [(HDActiveQuantityDataAggregator *)self quantityType];
    quantity = [datumCopy quantity];
    canonicalUnit = [quantityType canonicalUnit];
    [quantity doubleValueForUnit:canonicalUnit];
    v13 = v12;

    if (v13 >= 80.0)
    {
      goto LABEL_5;
    }

    quantity2 = [lastObject quantity];
    canonicalUnit2 = [quantityType canonicalUnit];
    [quantity2 doubleValueForUnit:canonicalUnit2];
    v17 = v16;

    if (v17 >= 80.0)
    {
      goto LABEL_5;
    }

    dateInterval = [datumCopy dateInterval];
    endDate = [dateInterval endDate];
    dateInterval2 = [lastObject dateInterval];
    startDate = [dateInterval2 startDate];
    [endDate timeIntervalSinceDate:startDate];
    v23 = v22;

    if (v23 <= 30.0)
    {
      v29[0] = lastObject;
      v29[1] = datumCopy;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      v26 = HDMergedQuantitySensorData(v25, quantityType);

      v27 = dataCopy;
      if (v26)
      {
        [dataCopy removeLastObject];
        v27 = dataCopy;
        v28 = v26;
      }

      else
      {
        v28 = datumCopy;
      }

      [v27 addObject:v28];
    }

    else
    {
LABEL_5:
      [dataCopy addObject:datumCopy];
    }
  }

  else
  {
    [dataCopy addObject:datumCopy];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFreezeCurrentSeries:(id)series lastDatum:(id)datum seriesLength:(int64_t)length configuration:(id)configuration aggregationInterval:(double)interval
{
  seriesCopy = series;
  configurationCopy = configuration;
  quantityType = [(HDActiveQuantityDataAggregator *)self quantityType];
  code = [quantityType code];

  v17 = 0;
  if (code == 173)
  {
    endDate = [seriesCopy endDate];
    [endDate timeIntervalSinceNow];
    v15 = -v14;

    [configurationCopy maximumSeriesDuration];
    if (v16 < v15)
    {
      v17 = 1;
    }
  }

  return v17;
}

@end