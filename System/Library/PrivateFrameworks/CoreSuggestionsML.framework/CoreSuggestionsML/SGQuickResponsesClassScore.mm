@interface SGQuickResponsesClassScore
- (SGQuickResponsesClassScore)initWithValue:(double)value index:(unint64_t)index;
- (int64_t)compare:(id)compare;
@end

@implementation SGQuickResponsesClassScore

- (int64_t)compare:(id)compare
{
  [compare value];
  value = self->_value;
  v6 = -1;
  if (value >= v4)
  {
    v6 = 1;
  }

  if (value == v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (SGQuickResponsesClassScore)initWithValue:(double)value index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = SGQuickResponsesClassScore;
  result = [(SGQuickResponsesClassScore *)&v7 init];
  if (result)
  {
    result->_value = value;
    result->_index = index;
  }

  return result;
}

@end