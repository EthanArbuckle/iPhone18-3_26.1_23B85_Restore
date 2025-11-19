@interface ICASFilterCondition
- (ICASFilterCondition)initWithFilterCondition:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASFilterCondition

- (ICASFilterCondition)initWithFilterCondition:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASFilterCondition;
  result = [(ICASFilterCondition *)&v5 init];
  if (result)
  {
    result->_filterCondition = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASFilterCondition *)self filterCondition];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"all";
  }

  if (v3 == 2)
  {
    return @"any";
  }

  else
  {
    return v4;
  }
}

@end