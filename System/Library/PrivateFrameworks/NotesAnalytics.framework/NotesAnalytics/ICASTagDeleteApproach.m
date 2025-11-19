@interface ICASTagDeleteApproach
- (ICASTagDeleteApproach)initWithTagDeleteApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASTagDeleteApproach

- (ICASTagDeleteApproach)initWithTagDeleteApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASTagDeleteApproach;
  result = [(ICASTagDeleteApproach *)&v5 init];
  if (result)
  {
    result->_tagDeleteApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASTagDeleteApproach *)self tagDeleteApproach];
  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF768[v3 - 1];
  }
}

@end