@interface HDRollingBaselineRelativeQuantityCalculator
- (BOOL)hasSufficientDataToBaselineSampleWithSourceID:(id)d;
- (HDRollingBaselineRelativeQuantityCalculator)initWithConfiguration:(id)configuration;
- (double)baselineRelativeValueForSampleValue:(double)value sourceID:(id)d;
- (double)mostRecentSampleStartTimeForSourceID:(id)d;
- (double)mostRecentSupplementarySampleStartTimeForSourceID:(id)d;
- (int64_t)additionalSampleCountRequiredToBaselineSampleWithSourceID:(id)d;
- (void)addNextSampleValue:(double)value startTime:(double)time sourceID:(id)d;
- (void)addSupplementarySampleValue:(double)value startTime:(double)time sourceID:(id)d;
- (void)pruneForNextSampleStartTime:(double)time sourceID:(id)d;
@end

@implementation HDRollingBaselineRelativeQuantityCalculator

- (HDRollingBaselineRelativeQuantityCalculator)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy options] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDRollingBaselineRelativeQuantityCalculator.m" lineNumber:47 description:@"Only per-source baselining is supported at this time"];
  }

  v13.receiver = self;
  v13.super_class = HDRollingBaselineRelativeQuantityCalculator;
  v7 = [(HDRollingBaselineRelativeQuantityCalculator *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    baselineBySourceID = v8->_baselineBySourceID;
    v8->_baselineBySourceID = dictionary;
  }

  return v8;
}

- (double)mostRecentSampleStartTimeForSourceID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  v4 = v3;
  if (v3)
  {
    [v3 mostRecentSampleStartTime];
    v6 = v5;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (double)mostRecentSupplementarySampleStartTimeForSourceID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  v4 = v3;
  if (v3)
  {
    [v3 mostRecentSupplementarySampleStartTime];
    v6 = v5;
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (BOOL)hasSufficientDataToBaselineSampleWithSourceID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  v4 = v3;
  if (v3)
  {
    hasSufficientDataToBaseline = [v3 hasSufficientDataToBaseline];
  }

  else
  {
    hasSufficientDataToBaseline = 0;
  }

  return hasSufficientDataToBaseline;
}

- (int64_t)additionalSampleCountRequiredToBaselineSampleWithSourceID:(id)d
{
  v4 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  v5 = v4;
  if (v4)
  {
    additionalSampleCountRequiredToBaseline = [v4 additionalSampleCountRequiredToBaseline];
  }

  else
  {
    additionalSampleCountRequiredToBaseline = [(HKRollingBaselineConfiguration *)self->_configuration minimumSampleCount];
  }

  v7 = additionalSampleCountRequiredToBaseline;

  return v7;
}

- (void)pruneForNextSampleStartTime:(double)time sourceID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  if (v5)
  {
    v6 = v5;
    [v5 pruneForNextSampleStartTime:time];
    v5 = v6;
  }
}

- (void)addNextSampleValue:(double)value startTime:(double)time sourceID:(id)d
{
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:?];
  if (v8)
  {
    v9 = v8;
    [(_HDRollingBaseline *)v8 pruneForNextSampleStartTime:time];
  }

  else
  {
    v9 = [[_HDRollingBaseline alloc] initWithConfiguration:self->_configuration];
    [(NSMutableDictionary *)self->_baselineBySourceID setObject:v9 forKeyedSubscript:dCopy];
  }

  [(_HDRollingBaseline *)v9 addNextSampleValue:value startTime:time];
}

- (void)addSupplementarySampleValue:(double)value startTime:(double)time sourceID:(id)d
{
  dCopy = d;
  v8 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:?];
  if (!v8)
  {
    v8 = [[_HDRollingBaseline alloc] initWithConfiguration:self->_configuration];
    [(NSMutableDictionary *)self->_baselineBySourceID setObject:v8 forKeyedSubscript:dCopy];
  }

  [(_HDRollingBaseline *)v8 addSupplementarySampleValue:value startTime:time];
}

- (double)baselineRelativeValueForSampleValue:(double)value sourceID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:d];
  v6 = v5;
  if (v5 && [v5 hasSufficientDataToBaseline])
  {
    [v6 currentBaseline];
    v8 = value - v7;
  }

  else
  {
    v8 = -1.79769313e308;
  }

  return v8;
}

@end