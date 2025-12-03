@interface HDStatisticsCollectionCalculator(HKMenstrualCycles)
+ (id)hdmc_tenthPercentileCalculator;
- (id)hdmc_heartRateStatisticsWithProfile:()HKMenstrualCycles predicate:errorOut:;
@end

@implementation HDStatisticsCollectionCalculator(HKMenstrualCycles)

+ (id)hdmc_tenthPercentileCalculator
{
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  v3 = [self calculatorForQuantityType:heartRateType intervalCollection:0 options:_HKStatisticsOptionPercentile() mergeStrategy:1];
  v4 = [objc_alloc(MEMORY[0x277D108C0]) initWithPercentile:&unk_283CC3408];
  [v3 setStatisticsConfiguration:v4];

  return v3;
}

- (id)hdmc_heartRateStatisticsWithProfile:()HKMenstrualCycles predicate:errorOut:
{
  v8 = MEMORY[0x277CCD830];
  v9 = a4;
  v10 = a3;
  heartRateType = [v8 heartRateType];
  v12 = [objc_alloc(MEMORY[0x277D108A0]) initForProfile:v10 quantityType:heartRateType predicate:v9 restrictedSourceEntities:0];

  [self setDataSource:v12];
  v17 = 0;
  [self queryForInitialStatisticsWithError:&v17];
  v13 = v17;
  if (v13)
  {
    if (a5)
    {
      v14 = v13;
      currentStatistics = 0;
      *a5 = v13;
    }

    else
    {
      _HKLogDroppedError();
      currentStatistics = 0;
    }
  }

  else
  {
    currentStatistics = [self currentStatistics];
  }

  return currentStatistics;
}

@end