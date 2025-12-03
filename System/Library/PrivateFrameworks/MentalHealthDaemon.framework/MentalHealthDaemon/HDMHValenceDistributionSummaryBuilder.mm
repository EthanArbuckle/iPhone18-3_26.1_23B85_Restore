@interface HDMHValenceDistributionSummaryBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HDMHValenceDistributionSummaryBuilder)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar;
- (double)_valenceMergeInterval;
- (id)_calculateAverageDailyValenceDistribution;
- (id)valenceDistributionSummary;
- (void)_mergeAdjacentValenceDistributions:(id)distributions;
- (void)_mergeStatesOfMind:(id)mind intoValenceDistributions:(id)distributions;
- (void)addDaySummary:(id)summary;
@end

@implementation HDMHValenceDistributionSummaryBuilder

- (HDMHValenceDistributionSummaryBuilder)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar
{
  var1 = range.var1;
  var0 = range.var0;
  calendarCopy = calendar;
  v17.receiver = self;
  v17.super_class = HDMHValenceDistributionSummaryBuilder;
  v9 = [(HDMHValenceDistributionSummaryBuilder *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_dayIndexRange.start = var0;
    v9->_dayIndexRange.duration = var1;
    objc_storeStrong(&v9->_gregorianCalendar, calendar);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dailyValenceValues = v10->_dailyValenceValues;
    v10->_dailyValenceValues = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    momentaryValenceDistributions = v10->_momentaryValenceDistributions;
    v10->_momentaryValenceDistributions = v13;

    [(HDMHValenceDistributionSummaryBuilder *)v10 _valenceMergeInterval];
    v10->_valenceMergeInterval = v15;
  }

  return v10;
}

- (void)addDaySummary:(id)summary
{
  summaryCopy = summary;
  momentaryStatesOfMind = [summaryCopy momentaryStatesOfMind];
  [(HDMHValenceDistributionSummaryBuilder *)self _mergeStatesOfMind:momentaryStatesOfMind intoValenceDistributions:self->_momentaryValenceDistributions];

  dailyStateOfMind = [summaryCopy dailyStateOfMind];

  if (dailyStateOfMind)
  {
    dailyValenceValues = [(HDMHValenceDistributionSummaryBuilder *)self dailyValenceValues];
    v7 = MEMORY[0x277CCABB0];
    dailyStateOfMind2 = [summaryCopy dailyStateOfMind];
    [dailyStateOfMind2 valence];
    v9 = [v7 numberWithDouble:?];
    [dailyValenceValues addObject:v9];
  }
}

- (id)valenceDistributionSummary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_momentaryValenceDistributions];
  if ([(NSMutableArray *)self->_dailyValenceValues count])
  {
    _calculateAverageDailyValenceDistribution = [(HDMHValenceDistributionSummaryBuilder *)self _calculateAverageDailyValenceDistribution];
    [v3 addObject:_calculateAverageDailyValenceDistribution];
  }

  v5 = [objc_alloc(MEMORY[0x277D280C8]) initWithDayIndexRange:self->_dayIndexRange.start valenceDistributions:{self->_dayIndexRange.duration, v3}];

  return v5;
}

- (id)_calculateAverageDailyValenceDistribution
{
  v3 = [(NSMutableArray *)self->_dailyValenceValues valueForKeyPath:@"@avg.doubleValue"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [objc_alloc(MEMORY[0x277D280C0]) initWithMinimumValence:-[NSMutableArray count](self->_dailyValenceValues maximumValence:"count") sampleCount:2 reflectiveInterval:{v5, v5}];

  return v6;
}

- (void)_mergeStatesOfMind:(id)mind intoValenceDistributions:(id)distributions
{
  distributionsCopy = distributions;
  v7 = [mind hk_map:&__block_literal_global];
  [distributionsCopy addObjectsFromArray:v7];
  [(HDMHValenceDistributionSummaryBuilder *)self _mergeAdjacentValenceDistributions:distributionsCopy];
}

id __85__HDMHValenceDistributionSummaryBuilder__mergeStatesOfMind_intoValenceDistributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D280C0];
  v3 = a2;
  v4 = [v2 alloc];
  [v3 valence];
  v6 = v5;
  [v3 valence];
  v8 = v7;
  v9 = [v3 reflectiveInterval];

  v10 = [v4 initWithMinimumValence:1 maximumValence:v9 sampleCount:v6 reflectiveInterval:v8];

  return v10;
}

- (void)_mergeAdjacentValenceDistributions:(id)distributions
{
  distributionsCopy = distributions;
  [distributionsCopy sortUsingComparator:&__block_literal_global_307];
  if ([distributionsCopy count] >= 2)
  {
    v4 = 0;
    v5 = 1;
    v6 = 1;
    do
    {
      v7 = [distributionsCopy objectAtIndexedSubscript:v5];
      [v7 minimumValence];
      v9 = v8;

      v10 = [distributionsCopy objectAtIndexedSubscript:v4];
      [v10 minimumValence];
      v12 = v11 - self->_valenceMergeInterval;

      v13 = [distributionsCopy objectAtIndexedSubscript:v4];
      [v13 maximumValence];
      v15 = v14 + self->_valenceMergeInterval;

      if ([(HDMHValenceDistributionSummaryBuilder *)self _value:v9 isBetweenMinValue:v12 maxValue:v15])
      {
        v16 = [distributionsCopy objectAtIndexedSubscript:v4];
        v17 = [distributionsCopy objectAtIndexedSubscript:v5];
        [v16 addValenceDistribution:v17];

        [distributionsCopy removeObjectAtIndex:v5];
      }

      else
      {
        ++v4;
        ++v6;
      }

      v5 = v6;
    }

    while ([distributionsCopy count] > v6);
  }
}

uint64_t __76__HDMHValenceDistributionSummaryBuilder__mergeAdjacentValenceDistributions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 minimumValence];
  v6 = v5;
  [v4 minimumValence];
  v8 = v7;

  v9.n128_u64[0] = v6;
  v10.n128_u64[0] = v8;

  return MEMORY[0x282120870](v9, v10);
}

- (double)_valenceMergeInterval
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HDMHMentalHealthValenceMergeInterval"];

  v4 = 0.001;
  if (v3)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

    if (isAppleInternalInstall)
    {
      [v3 doubleValue];
      v4 = v7;
    }
  }

  return v4;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  duration = self->_dayIndexRange.duration;
  start = self->_dayIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end