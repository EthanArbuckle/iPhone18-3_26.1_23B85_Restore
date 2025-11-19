@interface HDRollingBaselineRelativeQuantityCalculator
- (BOOL)hasSufficientDataToBaselineSampleWithSourceID:(id)a3;
- (HDRollingBaselineRelativeQuantityCalculator)initWithConfiguration:(id)a3;
- (double)baselineRelativeValueForSampleValue:(double)a3 sourceID:(id)a4;
- (double)mostRecentSampleStartTimeForSourceID:(id)a3;
- (double)mostRecentSupplementarySampleStartTimeForSourceID:(id)a3;
- (int64_t)additionalSampleCountRequiredToBaselineSampleWithSourceID:(id)a3;
- (void)addNextSampleValue:(double)a3 startTime:(double)a4 sourceID:(id)a5;
- (void)addSupplementarySampleValue:(double)a3 startTime:(double)a4 sourceID:(id)a5;
- (void)pruneForNextSampleStartTime:(double)a3 sourceID:(id)a4;
@end

@implementation HDRollingBaselineRelativeQuantityCalculator

- (HDRollingBaselineRelativeQuantityCalculator)initWithConfiguration:(id)a3
{
  v6 = a3;
  if (([v6 options] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDRollingBaselineRelativeQuantityCalculator.m" lineNumber:47 description:@"Only per-source baselining is supported at this time"];
  }

  v13.receiver = self;
  v13.super_class = HDRollingBaselineRelativeQuantityCalculator;
  v7 = [(HDRollingBaselineRelativeQuantityCalculator *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
    v9 = [MEMORY[0x277CBEB38] dictionary];
    baselineBySourceID = v8->_baselineBySourceID;
    v8->_baselineBySourceID = v9;
  }

  return v8;
}

- (double)mostRecentSampleStartTimeForSourceID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    [v3 mostRecentSampleStartTime];
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    [v7 timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (double)mostRecentSupplementarySampleStartTimeForSourceID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    [v3 mostRecentSupplementarySampleStartTime];
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] distantPast];
    [v7 timeIntervalSinceReferenceDate];
    v6 = v8;
  }

  return v6;
}

- (BOOL)hasSufficientDataToBaselineSampleWithSourceID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hasSufficientDataToBaseline];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)additionalSampleCountRequiredToBaselineSampleWithSourceID:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 additionalSampleCountRequiredToBaseline];
  }

  else
  {
    v6 = [(HKRollingBaselineConfiguration *)self->_configuration minimumSampleCount];
  }

  v7 = v6;

  return v7;
}

- (void)pruneForNextSampleStartTime:(double)a3 sourceID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a4];
  if (v5)
  {
    v6 = v5;
    [v5 pruneForNextSampleStartTime:a3];
    v5 = v6;
  }
}

- (void)addNextSampleValue:(double)a3 startTime:(double)a4 sourceID:(id)a5
{
  v10 = a5;
  v8 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:?];
  if (v8)
  {
    v9 = v8;
    [(_HDRollingBaseline *)v8 pruneForNextSampleStartTime:a4];
  }

  else
  {
    v9 = [[_HDRollingBaseline alloc] initWithConfiguration:self->_configuration];
    [(NSMutableDictionary *)self->_baselineBySourceID setObject:v9 forKeyedSubscript:v10];
  }

  [(_HDRollingBaseline *)v9 addNextSampleValue:a3 startTime:a4];
}

- (void)addSupplementarySampleValue:(double)a3 startTime:(double)a4 sourceID:(id)a5
{
  v9 = a5;
  v8 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:?];
  if (!v8)
  {
    v8 = [[_HDRollingBaseline alloc] initWithConfiguration:self->_configuration];
    [(NSMutableDictionary *)self->_baselineBySourceID setObject:v8 forKeyedSubscript:v9];
  }

  [(_HDRollingBaseline *)v8 addSupplementarySampleValue:a3 startTime:a4];
}

- (double)baselineRelativeValueForSampleValue:(double)a3 sourceID:(id)a4
{
  v5 = [(NSMutableDictionary *)self->_baselineBySourceID objectForKeyedSubscript:a4];
  v6 = v5;
  if (v5 && [v5 hasSufficientDataToBaseline])
  {
    [v6 currentBaseline];
    v8 = a3 - v7;
  }

  else
  {
    v8 = -1.79769313e308;
  }

  return v8;
}

@end