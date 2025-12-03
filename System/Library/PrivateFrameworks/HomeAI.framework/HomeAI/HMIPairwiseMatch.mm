@interface HMIPairwiseMatch
- (HMIPairwiseMatch)initWithFirstIndex:(unint64_t)index secondIndex:(unint64_t)secondIndex score:(float)score;
@end

@implementation HMIPairwiseMatch

- (HMIPairwiseMatch)initWithFirstIndex:(unint64_t)index secondIndex:(unint64_t)secondIndex score:(float)score
{
  v9.receiver = self;
  v9.super_class = HMIPairwiseMatch;
  result = [(HMIPairwiseMatch *)&v9 init];
  if (result)
  {
    result->_firstIndex = index;
    result->_secondIndex = secondIndex;
    result->_score = score;
  }

  return result;
}

@end