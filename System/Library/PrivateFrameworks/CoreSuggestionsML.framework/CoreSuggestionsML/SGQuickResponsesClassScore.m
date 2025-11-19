@interface SGQuickResponsesClassScore
- (SGQuickResponsesClassScore)initWithValue:(double)a3 index:(unint64_t)a4;
- (int64_t)compare:(id)a3;
@end

@implementation SGQuickResponsesClassScore

- (int64_t)compare:(id)a3
{
  [a3 value];
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

- (SGQuickResponsesClassScore)initWithValue:(double)a3 index:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SGQuickResponsesClassScore;
  result = [(SGQuickResponsesClassScore *)&v7 init];
  if (result)
  {
    result->_value = a3;
    result->_index = a4;
  }

  return result;
}

@end