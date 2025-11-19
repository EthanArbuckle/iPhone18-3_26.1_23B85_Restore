@interface _DPBiasedCoin
+ (_DPBiasedCoin)coinWithBias:(double)a3;
+ (double)sanitizedProbability:(double)a3;
- (_DPBiasedCoin)initWithBias:(double)a3;
- (id)description;
- (unsigned)generateByte;
@end

@implementation _DPBiasedCoin

- (_DPBiasedCoin)initWithBias:(double)a3
{
  v6.receiver = self;
  v6.super_class = _DPBiasedCoin;
  result = [(_DPBiasedCoin *)&v6 init];
  if (result)
  {
    v5 = 1.0;
    if (a3 <= 1.0)
    {
      v5 = a3;
    }

    if (a3 < 0.0)
    {
      v5 = 0.0;
    }

    result->_bias = v5;
  }

  return result;
}

+ (_DPBiasedCoin)coinWithBias:(double)a3
{
  v3 = [[a1 alloc] initWithBias:a3];

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

+ (double)sanitizedProbability:(double)a3
{
  v3 = 1.0;
  if (a3 <= 1.0)
  {
    v3 = a3;
  }

  v4 = a3 < 0.0;
  result = 0.0;
  if (!v4)
  {
    return v3;
  }

  return result;
}

@end