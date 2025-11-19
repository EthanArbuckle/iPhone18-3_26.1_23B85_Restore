@interface HDMHValenceDistributionSummaryBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HDMHValenceDistributionSummaryBuilder)initWithDayIndexRange:(id)a3 gregorianCalendar:(id)a4;
- (double)_valenceMergeInterval;
- (id)_calculateAverageDailyValenceDistribution;
- (id)valenceDistributionSummary;
- (void)_mergeAdjacentValenceDistributions:(id)a3;
- (void)_mergeStatesOfMind:(id)a3 intoValenceDistributions:(id)a4;
- (void)addDaySummary:(id)a3;
@end

@implementation HDMHValenceDistributionSummaryBuilder

- (HDMHValenceDistributionSummaryBuilder)initWithDayIndexRange:(id)a3 gregorianCalendar:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HDMHValenceDistributionSummaryBuilder;
  v9 = [(HDMHValenceDistributionSummaryBuilder *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_dayIndexRange.start = var0;
    v9->_dayIndexRange.duration = var1;
    objc_storeStrong(&v9->_gregorianCalendar, a4);
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

- (void)addDaySummary:(id)a3
{
  v10 = a3;
  v4 = [v10 momentaryStatesOfMind];
  [(HDMHValenceDistributionSummaryBuilder *)self _mergeStatesOfMind:v4 intoValenceDistributions:self->_momentaryValenceDistributions];

  v5 = [v10 dailyStateOfMind];

  if (v5)
  {
    v6 = [(HDMHValenceDistributionSummaryBuilder *)self dailyValenceValues];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v10 dailyStateOfMind];
    [v8 valence];
    v9 = [v7 numberWithDouble:?];
    [v6 addObject:v9];
  }
}

- (id)valenceDistributionSummary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_momentaryValenceDistributions];
  if ([(NSMutableArray *)self->_dailyValenceValues count])
  {
    v4 = [(HDMHValenceDistributionSummaryBuilder *)self _calculateAverageDailyValenceDistribution];
    [v3 addObject:v4];
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

- (void)_mergeStatesOfMind:(id)a3 intoValenceDistributions:(id)a4
{
  v6 = a4;
  v7 = [a3 hk_map:&__block_literal_global];
  [v6 addObjectsFromArray:v7];
  [(HDMHValenceDistributionSummaryBuilder *)self _mergeAdjacentValenceDistributions:v6];
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

- (void)_mergeAdjacentValenceDistributions:(id)a3
{
  v18 = a3;
  [v18 sortUsingComparator:&__block_literal_global_307];
  if ([v18 count] >= 2)
  {
    v4 = 0;
    v5 = 1;
    v6 = 1;
    do
    {
      v7 = [v18 objectAtIndexedSubscript:v5];
      [v7 minimumValence];
      v9 = v8;

      v10 = [v18 objectAtIndexedSubscript:v4];
      [v10 minimumValence];
      v12 = v11 - self->_valenceMergeInterval;

      v13 = [v18 objectAtIndexedSubscript:v4];
      [v13 maximumValence];
      v15 = v14 + self->_valenceMergeInterval;

      if ([(HDMHValenceDistributionSummaryBuilder *)self _value:v9 isBetweenMinValue:v12 maxValue:v15])
      {
        v16 = [v18 objectAtIndexedSubscript:v4];
        v17 = [v18 objectAtIndexedSubscript:v5];
        [v16 addValenceDistribution:v17];

        [v18 removeObjectAtIndex:v5];
      }

      else
      {
        ++v4;
        ++v6;
      }

      v5 = v6;
    }

    while ([v18 count] > v6);
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"HDMHMentalHealthValenceMergeInterval"];

  v4 = 0.001;
  if (v3)
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 isAppleInternalInstall];

    if (v6)
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