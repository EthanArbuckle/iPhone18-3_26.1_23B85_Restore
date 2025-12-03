@interface FedStatsUtilsPoissonDistribution
- (FedStatsUtilsPoissonDistribution)initWithMean:(double)mean;
- (FedStatsUtilsPoissonDistribution)initWithMean:(double)mean cap:(unint64_t)cap;
- (double)varianceOfSecondMoment;
- (unint64_t)sample;
- (unint64_t)sampleLargeWithUnitNumberGenerator:(id)generator;
- (unint64_t)sampleSmallWithUnitNumberGenerator:(id)generator;
- (unint64_t)sampleWithUnitNumberGenerator:(id)generator;
@end

@implementation FedStatsUtilsPoissonDistribution

- (FedStatsUtilsPoissonDistribution)initWithMean:(double)mean
{
  v8.receiver = self;
  v8.super_class = FedStatsUtilsPoissonDistribution;
  v4 = [(FedStatsUtilsPoissonDistribution *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_mean = mean;
    cap = v4->_cap;
    v4->_cap = &unk_285E12C80;
  }

  return v5;
}

- (FedStatsUtilsPoissonDistribution)initWithMean:(double)mean cap:(unint64_t)cap
{
  v11.receiver = self;
  v11.super_class = FedStatsUtilsPoissonDistribution;
  v6 = [(FedStatsUtilsPoissonDistribution *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_mean = mean;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:cap];
    cap = v7->_cap;
    v7->_cap = v8;
  }

  return v7;
}

- (unint64_t)sampleSmallWithUnitNumberGenerator:(id)generator
{
  generatorCopy = generator;
  [(FedStatsUtilsPoissonDistribution *)self mean];
  v6 = exp(-v5);
  v7 = 1.0;
  v8 = -1;
  do
  {
    [generatorCopy sample];
    v7 = v7 * v9;
    ++v8;
  }

  while (v7 > v6);

  return v8;
}

- (unint64_t)sampleLargeWithUnitNumberGenerator:(id)generator
{
  generatorCopy = generator;
  [(FedStatsUtilsPoissonDistribution *)self mean];
  v6 = v5;
  v7 = 0;
  v8 = 1.0;
  do
  {
    v9 = v7;
    [generatorCopy sample];
    v8 = v8 * v10;
    while (v8 < 1.0 && v6 > 0.0)
    {
      if (v6 <= 100.0)
      {
        v8 = v8 * exp(v6);
        v6 = 0.0;
        break;
      }

      v8 = v8 * 2.68811714e43;
      v6 = v6 + -100.0;
    }

    v7 = v9 + 1;
  }

  while (v8 > 1.0);

  return v9;
}

- (unint64_t)sampleWithUnitNumberGenerator:(id)generator
{
  generatorCopy = generator;
  [(FedStatsUtilsPoissonDistribution *)self mean];
  if (v5 <= 125.0)
  {
    v6 = [(FedStatsUtilsPoissonDistribution *)self sampleSmallWithUnitNumberGenerator:generatorCopy];
  }

  else
  {
    v6 = [(FedStatsUtilsPoissonDistribution *)self sampleLargeWithUnitNumberGenerator:generatorCopy];
  }

  v7 = v6;

  v8 = [(FedStatsUtilsPoissonDistribution *)self cap];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (v7 >= unsignedIntegerValue)
  {
    return unsignedIntegerValue;
  }

  else
  {
    return v7;
  }
}

- (unint64_t)sample
{
  v3 = objc_alloc_init(FedStatsUtilsUniformUnitIntervalDistribution);
  v4 = [(FedStatsUtilsPoissonDistribution *)self sampleWithUnitNumberGenerator:v3];

  return v4;
}

- (double)varianceOfSecondMoment
{
  [(FedStatsUtilsPoissonDistribution *)self mean];
  v4 = v3;
  [(FedStatsUtilsPoissonDistribution *)self mean];
  v6 = v4 * v5;
  [(FedStatsUtilsPoissonDistribution *)self mean];
  return v7 * (v6 * 4.0 + 1.0) + v6 * 6.0;
}

@end