@interface FedStatsUtilsGammaDistribution
+ (double)sampleLargeWithShape:(double)a3 scale:(double)a4 unitNumberGenerator:(id)a5;
+ (id)distributionWithShape:(double)a3 scale:(double)a4 cap:(id)a5;
- (FedStatsUtilsGammaDistribution)initWithShape:(double)a3 scale:(double)a4 cap:(id)a5;
- (double)mean;
- (double)sample;
- (double)sampleUncappedWithUnitNumberGenerator:(id)a3;
- (double)sampleWithUnitNumberGenerator:(id)a3;
- (double)variance;
- (double)varianceOfSecondMoment;
@end

@implementation FedStatsUtilsGammaDistribution

- (FedStatsUtilsGammaDistribution)initWithShape:(double)a3 scale:(double)a4 cap:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = FedStatsUtilsGammaDistribution;
  v10 = [(FedStatsUtilsGammaDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_shape = a3;
    v10->_scale = a4;
    objc_storeStrong(&v10->_cap, a5);
  }

  return v11;
}

+ (id)distributionWithShape:(double)a3 scale:(double)a4 cap:(id)a5
{
  v7 = a5;
  if (a3 <= 0.0)
  {
    v9 = +[FedStatsLog logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsUtilsGammaDistribution distributionWithShape:scale:cap:];
    }
  }

  else
  {
    if (a4 > 0.0)
    {
      v8 = [[FedStatsUtilsGammaDistribution alloc] initWithShape:v7 scale:a3 cap:a4];
      goto LABEL_9;
    }

    v9 = +[FedStatsLog logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsUtilsGammaDistribution distributionWithShape:scale:cap:];
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (double)sampleLargeWithShape:(double)a3 scale:(double)a4 unitNumberGenerator:(id)a5
{
  v6 = a5;
  if (sampleLargeWithShape_scale_unitNumberGenerator__onceToken != -1)
  {
    +[FedStatsUtilsGammaDistribution sampleLargeWithShape:scale:unitNumberGenerator:];
  }

  v7 = a3 + -0.333333333;
  v8 = 1.0 / sqrt((a3 + -0.333333333) * 9.0);
  do
  {
    do
    {
      [sampleLargeWithShape_scale_unitNumberGenerator__normal sampleWithUnitNumberGenerator:v6];
      v10 = v9;
      v11 = v8 * v9 + 1.0;
    }

    while (v11 <= 0.0);
    v12 = v11 * (v11 * v11);
    [v6 sample];
    v14 = v10 * v10;
    if (v13 < v10 * v10 * -0.0331 * (v10 * v10) + 1.0)
    {
      break;
    }

    v15 = log(v13);
  }

  while (v15 >= v7 * (1.0 - v12 + log(v12)) + v14 * 0.5);

  return v7 * v12 * a4;
}

uint64_t __81__FedStatsUtilsGammaDistribution_sampleLargeWithShape_scale_unitNumberGenerator___block_invoke()
{
  sampleLargeWithShape_scale_unitNumberGenerator__normal = objc_alloc_init(FedStatsUtilsNormalDistribution);

  return MEMORY[0x2821F96F8]();
}

- (double)sampleUncappedWithUnitNumberGenerator:(id)a3
{
  v4 = a3;
  [(FedStatsUtilsGammaDistribution *)self scale];
  v6 = v5;
  [(FedStatsUtilsGammaDistribution *)self shape];
  v8 = v7;
  if (v7 >= 1.0)
  {
    [FedStatsUtilsGammaDistribution sampleLargeWithShape:v4 scale:v7 unitNumberGenerator:v6];
    v12 = v13;
  }

  else
  {
    [FedStatsUtilsGammaDistribution sampleLargeWithShape:v4 scale:v7 + 1.0 unitNumberGenerator:v6];
    v10 = v9;
    [v4 sample];
    v12 = v10 * pow(v11, 1.0 / v8);
  }

  return v12;
}

- (double)sampleWithUnitNumberGenerator:(id)a3
{
  v4 = a3;
  [(FedStatsUtilsGammaDistribution *)self sampleUncappedWithUnitNumberGenerator:v4];
  v6 = v5;
  v7 = [(FedStatsUtilsGammaDistribution *)self cap];

  if (v7)
  {
    v8 = [(FedStatsUtilsGammaDistribution *)self cap];
    [v8 doubleValue];
    v10 = v9;

    if (v6 > v10)
    {
      do
      {
        [(FedStatsUtilsGammaDistribution *)self sampleUncappedWithUnitNumberGenerator:v4];
      }

      while (v11 > v10);
      v6 = v11;
    }
  }

  return v6;
}

- (double)sample
{
  v3 = objc_alloc_init(FedStatsUtilsUniformUnitIntervalDistribution);
  [(FedStatsUtilsGammaDistribution *)self sampleWithUnitNumberGenerator:v3];
  v5 = v4;

  return v5;
}

- (double)mean
{
  [(FedStatsUtilsGammaDistribution *)self shape];
  v4 = v3;
  [(FedStatsUtilsGammaDistribution *)self scale];
  return v4 * v5;
}

- (double)variance
{
  [(FedStatsUtilsGammaDistribution *)self mean];
  v4 = v3;
  [(FedStatsUtilsGammaDistribution *)self scale];
  return v4 * v5;
}

- (double)varianceOfSecondMoment
{
  [(FedStatsUtilsGammaDistribution *)self scale];
  v4 = v3;
  [(FedStatsUtilsGammaDistribution *)self scale];
  v6 = v4 * v5;
  [(FedStatsUtilsGammaDistribution *)self shape];
  v8 = v7;
  [(FedStatsUtilsGammaDistribution *)self shape];
  v10 = v8 * (v9 + 1.0);
  [(FedStatsUtilsGammaDistribution *)self shape];
  return v6 * (v6 * (v10 * (v11 * 4.0 + 6.0)));
}

@end