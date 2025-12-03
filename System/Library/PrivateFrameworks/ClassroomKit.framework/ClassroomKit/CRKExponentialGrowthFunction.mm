@interface CRKExponentialGrowthFunction
- (CRKExponentialGrowthFunction)initWithGrowthRate:(double)rate;
@end

@implementation CRKExponentialGrowthFunction

- (CRKExponentialGrowthFunction)initWithGrowthRate:(double)rate
{
  v5.receiver = self;
  v5.super_class = CRKExponentialGrowthFunction;
  result = [(CRKExponentialGrowthFunction *)&v5 init];
  if (result)
  {
    result->_growthRate = rate;
  }

  return result;
}

@end