@interface HDStatisticsCollectionCalculator(HKMenstrualCycles)
+ (id)hdmc_tenthPercentileCalculator;
- (id)hdmc_heartRateStatisticsWithProfile:()HKMenstrualCycles predicate:errorOut:;
@end

@implementation HDStatisticsCollectionCalculator(HKMenstrualCycles)

+ (id)hdmc_tenthPercentileCalculator
{
  v2 = [MEMORY[0x277CCD830] heartRateType];
  v3 = [a1 calculatorForQuantityType:v2 intervalCollection:0 options:_HKStatisticsOptionPercentile() mergeStrategy:1];
  v4 = [objc_alloc(MEMORY[0x277D108C0]) initWithPercentile:&unk_283CC3408];
  [v3 setStatisticsConfiguration:v4];

  return v3;
}

- (id)hdmc_heartRateStatisticsWithProfile:()HKMenstrualCycles predicate:errorOut:
{
  v8 = MEMORY[0x277CCD830];
  v9 = a4;
  v10 = a3;
  v11 = [v8 heartRateType];
  v12 = [objc_alloc(MEMORY[0x277D108A0]) initForProfile:v10 quantityType:v11 predicate:v9 restrictedSourceEntities:0];

  [a1 setDataSource:v12];
  v17 = 0;
  [a1 queryForInitialStatisticsWithError:&v17];
  v13 = v17;
  if (v13)
  {
    if (a5)
    {
      v14 = v13;
      v15 = 0;
      *a5 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }
  }

  else
  {
    v15 = [a1 currentStatistics];
  }

  return v15;
}

@end