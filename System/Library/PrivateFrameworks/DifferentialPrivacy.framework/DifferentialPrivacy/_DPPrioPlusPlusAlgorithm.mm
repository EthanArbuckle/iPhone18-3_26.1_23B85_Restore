@interface _DPPrioPlusPlusAlgorithm
+ (id)initializeWithSigma:(double)a3 secretSharingSigma:(double)a4 dimensionality:(unint64_t)a5;
- (_DPPrioPlusPlusAlgorithm)initWithSigma:(double)a3 secretSharingSigma:(double)a4 dimensionality:(unint64_t)a5;
- (id)randomize:(id)a3;
@end

@implementation _DPPrioPlusPlusAlgorithm

+ (id)initializeWithSigma:(double)a3 secretSharingSigma:(double)a4 dimensionality:(unint64_t)a5
{
  v5 = [[a1 alloc] initWithSigma:a5 secretSharingSigma:a3 dimensionality:a4];

  return v5;
}

- (_DPPrioPlusPlusAlgorithm)initWithSigma:(double)a3 secretSharingSigma:(double)a4 dimensionality:(unint64_t)a5
{
  if ([_DPPrioPlusPlusNoiseGenerator isValidSigma:?]&& [_DPPrioPlusPlusNoiseGenerator isValidSigma:a4]&& [_DPPrioPlusPlusNoiseGenerator isValidDimension:a5])
  {
    v12.receiver = self;
    v12.super_class = _DPPrioPlusPlusAlgorithm;
    v9 = [(_DPPrioPlusPlusAlgorithm *)&v12 init];
    if (v9)
    {
      v9->_sigma = a3;
      v9->_secretSharingSigma = a4;
      v9->_dimension = a5;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)randomize:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB28] dataWithData:v4];
  _DPClipNorm([v5 mutableBytes], objc_msgSend(v5, "length") >> 2, 1.0);
  v6 = objc_autoreleasePoolPush();
  v7 = [(_DPPrioPlusPlusAlgorithm *)self dimension];
  [(_DPPrioPlusPlusAlgorithm *)self sigma];
  v8 = [_DPPrioPlusPlusNoiseGenerator randomize:v5 dimension:v7 stddev:?];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v5];
  v10 = [(_DPPrioPlusPlusAlgorithm *)self dimension];
  [(_DPPrioPlusPlusAlgorithm *)self secretSharingSigma];
  v11 = [_DPPrioPlusPlusNoiseGenerator randomize:v5 dimension:v10 stddev:?];
  v16[0] = @"NoisedData";
  v16[1] = @"share1";
  v17[0] = v9;
  v17[1] = v5;
  v17[2] = v11;
  v16[2] = @"share2";
  v16[3] = @"dimensionality";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[_DPPrioPlusPlusAlgorithm dimension](self, "dimension")}];
  v17[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end