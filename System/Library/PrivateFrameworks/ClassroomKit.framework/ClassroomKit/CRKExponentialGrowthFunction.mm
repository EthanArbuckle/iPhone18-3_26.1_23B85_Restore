@interface CRKExponentialGrowthFunction
- (CRKExponentialGrowthFunction)initWithGrowthRate:(double)a3;
@end

@implementation CRKExponentialGrowthFunction

- (CRKExponentialGrowthFunction)initWithGrowthRate:(double)a3
{
  v5.receiver = self;
  v5.super_class = CRKExponentialGrowthFunction;
  result = [(CRKExponentialGrowthFunction *)&v5 init];
  if (result)
  {
    result->_growthRate = a3;
  }

  return result;
}

@end