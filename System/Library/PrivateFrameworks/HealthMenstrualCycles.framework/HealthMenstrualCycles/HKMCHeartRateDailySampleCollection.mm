@interface HKMCHeartRateDailySampleCollection
+ (id)heartRateDailySampleCollectionOnSleepDayMorningIndex:(int64_t)index gregorianCalendar:(id)calendar sleepStart:(double)start sleepDuration:(double)duration sleepHeartRateSampleCount:(int64_t)count sleepHeartRatePercentile:(float)percentile awakeHeartRateSampleCount:(int64_t)sampleCount awakeHeartRatePercentile:(float)self0;
- (HKMCHeartRateDailySampleCollection)initWithSleepDayMorningIndex:(int64_t)index asleepSample:(id)sample asleepHeartRateSamples:(id)samples awakeHeartRateSamples:(id)rateSamples;
@end

@implementation HKMCHeartRateDailySampleCollection

- (HKMCHeartRateDailySampleCollection)initWithSleepDayMorningIndex:(int64_t)index asleepSample:(id)sample asleepHeartRateSamples:(id)samples awakeHeartRateSamples:(id)rateSamples
{
  sampleCopy = sample;
  samplesCopy = samples;
  rateSamplesCopy = rateSamples;
  v21.receiver = self;
  v21.super_class = HKMCHeartRateDailySampleCollection;
  v14 = [(HKMCHeartRateDailySampleCollection *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_sleepDayMorningIndex = index;
    objc_storeStrong(&v14->_asleepSample, sample);
    v16 = [samplesCopy copy];
    asleepHeartRateSamples = v15->_asleepHeartRateSamples;
    v15->_asleepHeartRateSamples = v16;

    v18 = [rateSamplesCopy copy];
    awakeHeartRateSamples = v15->_awakeHeartRateSamples;
    v15->_awakeHeartRateSamples = v18;
  }

  return v15;
}

+ (id)heartRateDailySampleCollectionOnSleepDayMorningIndex:(int64_t)index gregorianCalendar:(id)calendar sleepStart:(double)start sleepDuration:(double)duration sleepHeartRateSampleCount:(int64_t)count sleepHeartRatePercentile:(float)percentile awakeHeartRateSampleCount:(int64_t)sampleCount awakeHeartRatePercentile:(float)self0
{
  v17 = MEMORY[0x277CCA970];
  calendarCopy = calendar;
  v19 = [v17 alloc];
  v20 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:index calendar:calendarCopy];
  v21 = [MEMORY[0x277CBEAA8] hk_sleepDayStartForMorningIndex:index + 1 calendar:calendarCopy];

  v22 = [v19 initWithStartDate:v20 endDate:v21];
  startDate = [v22 startDate];
  v24 = 0;
  if (count < 1 || percentile <= 0.0)
  {
    v34 = 0;
  }

  else
  {
    v25 = MEMORY[0x277CBEAA8];
    startDate2 = [v22 startDate];
    v27 = [v25 dateWithTimeInterval:startDate2 sinceDate:start * 3600.0];

    v28 = duration * 3600.0;
    if (duration <= 0.0)
    {
      v28 = 28800.0;
    }

    v29 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v27 sinceDate:v28];
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v29 sinceDate:300.0];

    v31 = MEMORY[0x277CCD0B0];
    v32 = [MEMORY[0x277CCD0C0] _typeWithIdentifier:*MEMORY[0x277CCBAB8]];
    v24 = [v31 categorySampleWithType:v32 value:1 startDate:v27 endDate:v29];

    v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:v29];
    v34 = HKMCGenerateHeartRateSamplesMatchingTenthPercentile(v33, count, percentile);

    startDate = v30;
  }

  v35 = 0;
  if (sampleCount >= 1 && ratePercentile > 0.0)
  {
    v36 = objc_alloc(MEMORY[0x277CCA970]);
    endDate = [v22 endDate];
    v38 = [v36 initWithStartDate:startDate endDate:endDate];
    v35 = HKMCGenerateHeartRateSamplesMatchingTenthPercentile(v38, sampleCount, ratePercentile);
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

  v42 = [v39 initWithSleepDayMorningIndex:index asleepSample:v24 asleepHeartRateSamples:v40 awakeHeartRateSamples:v41];

  return v42;
}

@end