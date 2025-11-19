@interface RankingModelOutput
- (RankingModelOutput)initWithTarget:(double)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation RankingModelOutput

- (RankingModelOutput)initWithTarget:(double)a3
{
  v5.receiver = self;
  v5.super_class = RankingModelOutput;
  result = [(RankingModelOutput *)&v5 init];
  if (result)
  {
    result->_target = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"target"])
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