@interface ICASFilterCondition
- (ICASFilterCondition)initWithFilterCondition:(int64_t)condition;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASFilterCondition

- (ICASFilterCondition)initWithFilterCondition:(int64_t)condition
{
  v5.receiver = self;
  v5.super_class = ICASFilterCondition;
  result = [(ICASFilterCondition *)&v5 init];
  if (result)
  {
    result->_filterCondition = condition;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  filterCondition = [(ICASFilterCondition *)self filterCondition];
  v4 = @"unknown";
  if (filterCondition == 1)
  {
    v4 = @"all";
  }

  if (filterCondition == 2)
  {
    return @"any";
  }

  else
  {
    return v4;
  }
}

@end