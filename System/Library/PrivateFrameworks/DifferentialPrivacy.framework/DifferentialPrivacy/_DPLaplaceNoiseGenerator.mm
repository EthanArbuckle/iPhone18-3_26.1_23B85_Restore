@interface _DPLaplaceNoiseGenerator
+ (id)zeroMeanLaplaceNoiseGenerator:(double)generator;
- (_DPLaplaceNoiseGenerator)initWithScale:(double)scale;
- (double)sample;
- (id)description;
@end

@implementation _DPLaplaceNoiseGenerator

- (_DPLaplaceNoiseGenerator)initWithScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = _DPLaplaceNoiseGenerator;
  result = [(_DPLaplaceNoiseGenerator *)&v5 init];
  if (result)
  {
    result->_b = scale;
  }

  return result;
}

+ (id)zeroMeanLaplaceNoiseGenerator:(double)generator
{
  v3 = [[self alloc] initWithScale:generator];

  return v3;
}

- (double)sample
{
  do
  {
    v3 = uniformRandomProbability() + -0.5;
    v4 = fabs(v3);
  }

  while (isEqualToOne(v4 + v4));
  v5 = log(v4 * -2.0 + 1.0);
  if (v3 <= 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  if (v3 < 0.0)
  {
    v6 = -1.0;
  }

  return 0.0 - v5 * (v6 * self->_b);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { scale=%.16g }", v5, *&self->_b];

  return v6;
}

@end