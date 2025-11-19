@interface _HDRollingBaseline
- (_HDRollingBaseline)initWithConfiguration:(id)a3;
- (double)currentBaseline;
- (double)mostRecentSampleStartTime;
- (double)mostRecentSupplementarySampleStartTime;
- (int64_t)additionalSampleCountRequiredToBaseline;
- (void)_assertValidNextStartTime:(double)a3;
- (void)addNextSampleValue:(double)a3 startTime:(double)a4;
- (void)addSupplementarySampleValue:(double)a3 startTime:(double)a4;
- (void)pruneForNextSampleStartTime:(double)a3;
@end

@implementation _HDRollingBaseline

- (_HDRollingBaseline)initWithConfiguration:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _HDRollingBaseline;
  v6 = [(_HDRollingBaseline *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    samples = v7->_samples;
    v7->_samples = v8;

    v10 = [MEMORY[0x277CBEB18] array];
    supplementarySamples = v7->_supplementarySamples;
    v7->_supplementarySamples = v10;

    v7->_samplesSum = 0.0;
    v7->_supplementarySamplesSum = 0.0;
  }

  return v7;
}

- (int64_t)additionalSampleCountRequiredToBaseline
{
  v3 = [(HKRollingBaselineConfiguration *)self->_configuration minimumSampleCount];
  v4 = [(_HDRollingBaseline *)self _sampleCount];
  return (v3 - v4) & ~((v3 - v4) >> 63);
}

- (double)currentBaseline
{
  if (![(_HDRollingBaseline *)self hasSufficientDataToBaseline])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
  }

  [(_HDRollingBaseline *)self _sum];
  return v4 / [(_HDRollingBaseline *)self _sampleCount];
}

- (double)mostRecentSampleStartTime
{
  v3 = [(NSMutableArray *)self->_samples lastObject];

  if (v3)
  {
    v4 = [(NSMutableArray *)self->_samples lastObject];
    [v4 _hd_trivialQuantitySampleValue];
    v6 = v5;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v7;
  }

  return v6;
}

- (double)mostRecentSupplementarySampleStartTime
{
  v3 = [(NSMutableArray *)self->_supplementarySamples lastObject];

  if (v3)
  {
    v4 = [(NSMutableArray *)self->_supplementarySamples lastObject];
    [v4 _hd_trivialQuantitySampleValue];
    v6 = v5;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v7;
  }

  return v6;
}

- (void)pruneForNextSampleStartTime:(double)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  supplementarySamples = self->_supplementarySamples;
  self->_supplementarySamples = v5;

  self->_supplementarySamplesSum = 0.0;
  if ([(NSMutableArray *)self->_samples count])
  {
    [(HKRollingBaselineConfiguration *)self->_configuration maximumWindowDuration];
    v8 = v7;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_samples;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = a3 - v8;
      v14 = *v22;
      v15 = 0.0;
      while (2)
      {
        v16 = 0;
        v17 = v12;
        v12 += v11;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v21 + 1) + 8 * v16) _hd_trivialQuantitySampleValue];
          if (v19 >= v13)
          {
            v12 = v17;
            goto LABEL_12;
          }

          v15 = v15 + v18;
          ++v17;
          ++v16;
        }

        while (v11 != v16);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_12:

      if (v12)
      {
        [(NSMutableArray *)self->_samples removeObjectsInRange:0, v12];
        self->_samplesSum = self->_samplesSum - v15;
      }
    }

    else
    {
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addNextSampleValue:(double)a3 startTime:(double)a4
{
  [(_HDRollingBaseline *)self _assertValidNextStartTime:a4];
  v7 = [(NSMutableArray *)self->_samples count];
  if (v7 == [(HKRollingBaselineConfiguration *)self->_configuration maximumSampleCount])
  {
    v8 = [(NSMutableArray *)self->_samples firstObject];
    [v8 _hd_trivialQuantitySampleValue];
    v10 = v9;

    [(NSMutableArray *)self->_samples removeObjectAtIndex:0];
    self->_samplesSum = self->_samplesSum - v10;
  }

  v11 = [MEMORY[0x277CCAE60] _hd_valueWithTrivialQuantitySample:{a3, a4}];
  [(NSMutableArray *)self->_samples addObject:v11];
  self->_samplesSum = self->_samplesSum + a3;
}

- (void)_assertValidNextStartTime:(double)a3
{
  if ([(NSMutableArray *)self->_samples count])
  {
    v6 = [(NSMutableArray *)self->_samples lastObject];
    [v6 _hd_trivialQuantitySampleValue];
    v8 = v7;

    if (v8 > a3)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"HDRollingBaselineRelativeQuantityCalculator.m" lineNumber:275 description:@"Values must be added in ascending order by date for baseline calculations"];
    }
  }
}

- (void)addSupplementarySampleValue:(double)a3 startTime:(double)a4
{
  if ([(_HDRollingBaseline *)self hasSufficientDataToBaseline])
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
  }

  v9 = [MEMORY[0x277CCAE60] _hd_valueWithTrivialQuantitySample:{a3, a4}];
  [(NSMutableArray *)self->_supplementarySamples addObject:v9];
  self->_supplementarySamplesSum = self->_supplementarySamplesSum + a3;
}

@end