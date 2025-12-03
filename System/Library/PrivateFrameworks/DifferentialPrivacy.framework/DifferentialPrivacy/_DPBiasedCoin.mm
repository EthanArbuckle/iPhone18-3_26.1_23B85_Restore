@interface _DPBiasedCoin
+ (_DPBiasedCoin)coinWithBias:(double)bias;
+ (double)sanitizedProbability:(double)probability;
- (_DPBiasedCoin)initWithBias:(double)bias;
- (id)description;
- (unsigned)generateByte;
@end

@implementation _DPBiasedCoin

- (_DPBiasedCoin)initWithBias:(double)bias
{
  v6.receiver = self;
  v6.super_class = _DPBiasedCoin;
  result = [(_DPBiasedCoin *)&v6 init];
  if (result)
  {
    biasCopy = 1.0;
    if (bias <= 1.0)
    {
      biasCopy = bias;
    }

    if (bias < 0.0)
    {
      biasCopy = 0.0;
    }

    result->_bias = biasCopy;
  }

  return result;
}

+ (_DPBiasedCoin)coinWithBias:(double)bias
{
  v3 = [[self alloc] initWithBias:bias];

  return v3;
}

- (unsigned)generateByte
{
  if (self->_bias < 2.22044605e-16)
  {
    return 0;
  }

  v2 = 0;
  v4 = 8;
  do
  {
    bias = self->_bias;
    v2 = (uniformRandomProbability() >= 1.0 - bias) | (2 * v2);
    --v4;
  }

  while (v4);
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { bias=%.16g }", v5, *&self->_bias];

  return v6;
}

+ (double)sanitizedProbability:(double)probability
{
  probabilityCopy = 1.0;
  if (probability <= 1.0)
  {
    probabilityCopy = probability;
  }

  v4 = probability < 0.0;
  result = 0.0;
  if (!v4)
  {
    return probabilityCopy;
  }

  return result;
}

@end