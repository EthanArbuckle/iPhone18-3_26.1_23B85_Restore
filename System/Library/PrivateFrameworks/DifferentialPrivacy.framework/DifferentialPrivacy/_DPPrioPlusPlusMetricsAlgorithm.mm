@interface _DPPrioPlusPlusMetricsAlgorithm
+ (id)initializeWithSecretSharingSigma:(double)a3 dimensionality:(unint64_t)a4;
- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)a3 dimensionality:(unint64_t)a4;
- (id)randomize:(id)a3;
@end

@implementation _DPPrioPlusPlusMetricsAlgorithm

+ (id)initializeWithSecretSharingSigma:(double)a3 dimensionality:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithSecretSharingSigma:a4 dimensionality:a3];

  return v4;
}

- (_DPPrioPlusPlusMetricsAlgorithm)initWithSecretSharingSigma:(double)a3 dimensionality:(unint64_t)a4
{
  if ([_DPPrioPlusPlusNoiseGenerator isValidSigma:?]&& [_DPPrioPlusPlusNoiseGenerator isValidDimension:a4])
  {
    v10.receiver = self;
    v10.super_class = _DPPrioPlusPlusMetricsAlgorithm;
    v7 = [(_DPPrioPlusPlusMetricsAlgorithm *)&v10 init];
    if (v7)
    {
      v7->_secretSharingSigma = a3;
      v7->_dimension = a4;
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)randomize:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB28] dataWithData:a3];
  v5 = [(_DPPrioPlusPlusMetricsAlgorithm *)self dimension];
  [(_DPPrioPlusPlusMetricsAlgorithm *)self secretSharingSigma];
  v6 = [_DPPrioPlusPlusNoiseGenerator randomize:v4 dimension:v5 stddev:?];
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