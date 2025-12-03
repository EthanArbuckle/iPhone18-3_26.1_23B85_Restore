@interface RankingModelOutput
- (RankingModelOutput)initWithTarget:(double)target;
- (id)featureValueForName:(id)name;
@end

@implementation RankingModelOutput

- (RankingModelOutput)initWithTarget:(double)target
{
  v5.receiver = self;
  v5.super_class = RankingModelOutput;
  result = [(RankingModelOutput *)&v5 init];
  if (result)
  {
    result->_target = target;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"target"])
  {
    [(RankingModelOutput *)self target];
    v4 = [MLFeatureValue featureValueWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end