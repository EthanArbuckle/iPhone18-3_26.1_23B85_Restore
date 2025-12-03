@interface FedStatsUtilsNegativeBinomialDistribution
+ (id)distributionWithSuccessCount:(double)count successProbability:(double)probability;
- (FedStatsUtilsNegativeBinomialDistribution)initWithSuccessCount:(double)count successProbability:(double)probability;
- (double)mean;
- (double)variance;
- (double)varianceOfSecondMoment;
- (unint64_t)sample;
- (unint64_t)sampleWithUnitNumberGenerator:(id)generator;
@end

@implementation FedStatsUtilsNegativeBinomialDistribution

- (FedStatsUtilsNegativeBinomialDistribution)initWithSuccessCount:(double)count successProbability:(double)probability
{
  v11.receiver = self;
  v11.super_class = FedStatsUtilsNegativeBinomialDistribution;
  v6 = [(FedStatsUtilsNegativeBinomialDistribution *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_successCount = count;
    v6->_successProbability = probability;
    probability = [FedStatsUtilsGammaDistribution distributionWithShape:0 scale:count cap:(1.0 - probability) / probability];
    gamma = v7->_gamma;
    v7->_gamma = probability;
  }

  return v7;
}

+ (id)distributionWithSuccessCount:(double)count successProbability:(double)probability
{
  if (count <= 0.0)
  {
    v5 = +[FedStatsLog logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsUtilsNegativeBinomialDistribution distributionWithSuccessCount:successProbability:];
    }

    goto LABEL_10;
  }

  if (probability <= 0.0 || probability >= 1.0)
  {
    v5 = +[FedStatsLog logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[FedStatsUtilsNegativeBinomialDistribution distributionWithSuccessCount:successProbability:];
    }

LABEL_10:

    v6 = 0;
    goto LABEL_12;
  }

  v6 = [[FedStatsUtilsNegativeBinomialDistribution alloc] initWithSuccessCount:count successProbability:probability];
LABEL_12:

  return v6;
}

- (unint64_t)sampleWithUnitNumberGenerator:(id)generator
{
  generatorCopy = generator;
  gamma = [(FedStatsUtilsNegativeBinomialDistribution *)self gamma];
  [gamma sampleWithUnitNumberGenerator:generatorCopy];
  v7 = v6;

  v8 = [[FedStatsUtilsPoissonDistribution alloc] initWithMean:v7];
  v9 = [(FedStatsUtilsPoissonDistribution *)v8 sampleWithUnitNumberGenerator:generatorCopy];

  return v9;
}

- (unint64_t)sample
{
  v3 = objc_alloc_init(FedStatsUtilsUniformUnitIntervalDistribution);
  v4 = [(FedStatsUtilsNegativeBinomialDistribution *)self sampleWithUnitNumberGenerator:v3];

  return v4;
}

- (double)mean
{
  [(FedStatsUtilsNegativeBinomialDistribution *)self successCount];
  v4 = v3;
  [(FedStatsUtilsNegativeBinomialDistribution *)self successProbability];
  v6 = v4 * (1.0 - v5);
  [(FedStatsUtilsNegativeBinomialDistribution *)self successProbability];
  return v6 / v7;
}

- (double)variance
{
  [(FedStatsUtilsNegativeBinomialDistribution *)self mean];
  v4 = v3;
  [(FedStatsUtilsNegativeBinomialDistribution *)self successProbability];
  return v4 / v5;
}

- (double)varianceOfSecondMoment
{
  [(FedStatsUtilsNegativeBinomialDistribution *)self successProbability];
  v4 = 1.0 / v3 + -1.0;
  [(FedStatsUtilsNegativeBinomialDistribution *)self successCount];
  return v5 * v4 + v4 * v4 * (v4 * ((v5 + 3.0) * (v5 * 4.0 * (v5 + 1.0))) + (v5 * 4.0 + 6.0) * (v5 * (v5 + 1.0)) * (v4 * v4) + v5 * (v5 * 6.0 + 7.0));
}

@end