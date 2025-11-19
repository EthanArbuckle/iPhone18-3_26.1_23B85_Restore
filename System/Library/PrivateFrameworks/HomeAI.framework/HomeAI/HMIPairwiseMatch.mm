@interface HMIPairwiseMatch
- (HMIPairwiseMatch)initWithFirstIndex:(unint64_t)a3 secondIndex:(unint64_t)a4 score:(float)a5;
@end

@implementation HMIPairwiseMatch

- (HMIPairwiseMatch)initWithFirstIndex:(unint64_t)a3 secondIndex:(unint64_t)a4 score:(float)a5
{
  v9.receiver = self;
  v9.super_class = HMIPairwiseMatch;
  result = [(HMIPairwiseMatch *)&v9 init];
  if (result)
  {
    result->_firstIndex = a3;
    result->_secondIndex = a4;
    result->_score = a5;
  }

  return result;
}

@end