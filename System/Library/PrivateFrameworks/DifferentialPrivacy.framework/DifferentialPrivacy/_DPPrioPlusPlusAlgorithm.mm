@interface _DPPrioPlusPlusAlgorithm
+ (id)initializeWithSigma:(double)sigma secretSharingSigma:(double)sharingSigma dimensionality:(unint64_t)dimensionality;
- (_DPPrioPlusPlusAlgorithm)initWithSigma:(double)sigma secretSharingSigma:(double)sharingSigma dimensionality:(unint64_t)dimensionality;
- (id)randomize:(id)randomize;
@end

@implementation _DPPrioPlusPlusAlgorithm

+ (id)initializeWithSigma:(double)sigma secretSharingSigma:(double)sharingSigma dimensionality:(unint64_t)dimensionality
{
  v5 = [[self alloc] initWithSigma:dimensionality secretSharingSigma:sigma dimensionality:sharingSigma];

  return v5;
}

- (_DPPrioPlusPlusAlgorithm)initWithSigma:(double)sigma secretSharingSigma:(double)sharingSigma dimensionality:(unint64_t)dimensionality
{
  if ([_DPPrioPlusPlusNoiseGenerator isValidSigma:?]&& [_DPPrioPlusPlusNoiseGenerator isValidSigma:sharingSigma]&& [_DPPrioPlusPlusNoiseGenerator isValidDimension:dimensionality])
  {
    v12.receiver = self;
    v12.super_class = _DPPrioPlusPlusAlgorithm;
    v9 = [(_DPPrioPlusPlusAlgorithm *)&v12 init];
    if (v9)
    {
      v9->_sigma = sigma;
      v9->_secretSharingSigma = sharingSigma;
      v9->_dimension = dimensionality;
    }

    self = v9;
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
  v17[4] = *MEMORY[0x277D85DE8];
  randomizeCopy = randomize;
  v5 = [MEMORY[0x277CBEB28] dataWithData:randomizeCopy];
  _DPClipNorm([v5 mutableBytes], objc_msgSend(v5, "length") >> 2, 1.0);
  v6 = objc_autoreleasePoolPush();
  dimension = [(_DPPrioPlusPlusAlgorithm *)self dimension];
  [(_DPPrioPlusPlusAlgorithm *)self sigma];
  v8 = [_DPPrioPlusPlusNoiseGenerator randomize:v5 dimension:dimension stddev:?];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v5];
  dimension2 = [(_DPPrioPlusPlusAlgorithm *)self dimension];
  [(_DPPrioPlusPlusAlgorithm *)self secretSharingSigma];
  v11 = [_DPPrioPlusPlusNoiseGenerator randomize:v5 dimension:dimension2 stddev:?];
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