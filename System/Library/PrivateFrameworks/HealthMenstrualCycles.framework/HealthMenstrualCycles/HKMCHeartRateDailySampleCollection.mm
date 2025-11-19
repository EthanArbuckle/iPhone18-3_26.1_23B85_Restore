@interface HKMCHeartRateDailySampleCollection
+ (id)heartRateDailySampleCollectionOnSleepDayMorningIndex:(int64_t)a3 gregorianCalendar:(id)a4 sleepStart:(double)a5 sleepDuration:(double)a6 sleepHeartRateSampleCount:(int64_t)a7 sleepHeartRatePercentile:(float)a8 awakeHeartRateSampleCount:(int64_t)a9 awakeHeartRatePercentile:(float)a10;
- (HKMCHeartRateDailySampleCollection)initWithSleepDayMorningIndex:(int64_t)a3 asleepSample:(id)a4 asleepHeartRateSamples:(id)a5 awakeHeartRateSamples:(id)a6;
@end

@implementation HKMCHeartRateDailySampleCollection

- (HKMCHeartRateDailySampleCollection)initWithSleepDayMorningIndex:(int64_t)a3 asleepSample:(id)a4 asleepHeartRateSamples:(id)a5 awakeHeartRateSamples:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HKMCHeartRateDailySampleCollection;
  v14 = [(HKMCHeartRateDailySampleCollection *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_sleepDayMorningIndex = a3;
    objc_storeStrong(&v14->_asleepSample, a4);
    v16 = [v12 copy];
    asleepHeartRateSamples = v15->_asleepHeartRateSamples;
    v15->_asleepHeartRateSamples = v16;

    v18 = [v13 copy];
    awakeHeartRateSamples = v15->_awakeHeartRateSamples;
    v15->_awakeHeartRateSamples = v18;
  }

  return v15;
}

+ (id)heartRateDailySampleCollectionOnSleepDayMorningIndex:(int64_t)a3 gregorianCalendar:(id)a4 sleepStart:(double)a5 sleepDuration:(double)a6 sleepHeartRateSampleCount:(int64_t)a7 sleepHeartRatePercentile:(float)a8 awakeHeartRateSampleCount:(int64_t)a9 awakeHeartRatePercentile:(float)a10
{
  v17 = MEMORY[0x277CCA970];
  v18 = a4;
  v19 = [v17 alloc];
  v20 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:a3 calendar:v18];
  v21 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:a3 + 1 calendar:v18];

  v22 = [v19 initWithStartDate:v20 endDate:v21];
  v23 = [v22 startDate];
  v24 = 0;
  if (a7 < 1 || a8 <= 0.0)
  {
    v34 = 0;
  }

  else
  {
    v25 = MEMORY[0x277CBEAA8];
    v26 = [v22 startDate];
    v27 = [v25 dateWithTimeInterval:v26 sinceDate:a5 * 3600.0];

    v28 = a6 * 3600.0;
    if (a6 <= 0.0)
    {
      v28 = 28800.0;
    }

    v29 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v27 sinceDate:v28];
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v29 sinceDate:300.0];

    v31 = MEMORY[0x277CCD0B0];
    v32 = [MEMORY[0x277CCD0C0] _typeWithIdentifier:*MEMORY[0x277CCBAB8]];
    v24 = [v31 categorySampleWithType:v32 value:1 startDate:v27 endDate:v29];

    v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:v29];
    v34 = HKMCGenerateHeartRateSamplesMatchingTenthPercentile(v33, a7, a8);

    v23 = v30;
  }

  v35 = 0;
  if (a9 >= 1 && a10 > 0.0)
  {
    v36 = objc_alloc(MEMORY[0x277CCA970]);
    v37 = [v22 endDate];
    v38 = [v36 initWithStartDate:v23 endDate:v37];
    v35 = HKMCGenerateHeartRateSamplesMatchingTenthPercentile(v38, a9, a10);
  }

  v39 = objc_alloc(objc_opt_class());
  if (v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = MEMORY[0x277CBEBF8];
  }

  if (v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  v42 = [v39 initWithSleepDayMorningIndex:a3 asleepSample:v24 asleepHeartRateSamples:v40 awakeHeartRateSamples:v41];

  return v42;
}

@end