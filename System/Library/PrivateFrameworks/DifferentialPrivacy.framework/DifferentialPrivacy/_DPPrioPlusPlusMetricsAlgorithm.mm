@interface _DPPrioPlusPlusMetricsAlgorithm
+ (id)initializeWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality;
- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality;
- (id)randomize:(id)randomize;
@end

@implementation _DPPrioPlusPlusMetricsAlgorithm

+ (id)initializeWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality
{
  v4 = [[self alloc] initWithSecretSharingSigma:dimensionality dimensionality:sigma];

  return v4;
}

- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)sigma dimensionality:(unint64_t)dimensionality
{
  if ([_DPPrioPlusPlusNoiseGenerator isValidSigma:?]&& [_DPPrioPlusPlusNoiseGenerator isValidDimension:dimensionality])
  {
    v10.receiver = self;
    v10.super_class = _DPPrioPlusPlusMetricsAlgorithm;
    v7 = [(_DPPrioPlusPlusMetricsAlgorithm *)&v10 init];
    if (v7)
    {
      v7->_secretSharingSigma = sigma;
      v7->_dimension = dimensionality;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)randomize:(id)randomize
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB28] dataWithData:randomize];
  dimension = [(_DPPrioPlusPlusMetricsAlgorithm *)self dimension];
  [(_DPPrioPlusPlusMetricsAlgorithm *)self secretSharingSigma];
  v6 = [_DPPrioPlusPlusNoiseGenerator randomize:v4 dimension:dimension stddev:?];
  v11[0] = @"share1";
  v11[1] = @"share2";
  v12[0] = v4;
  v12[1] = v6;
  v11[2] = @"dimensionality";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[_DPPrioPlusPlusMetricsAlgorithm dimension](self, "dimension")}];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end