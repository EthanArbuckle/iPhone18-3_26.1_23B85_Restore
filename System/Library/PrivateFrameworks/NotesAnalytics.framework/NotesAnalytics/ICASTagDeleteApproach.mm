@interface ICASTagDeleteApproach
- (ICASTagDeleteApproach)initWithTagDeleteApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASTagDeleteApproach

- (ICASTagDeleteApproach)initWithTagDeleteApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASTagDeleteApproach;
  result = [(ICASTagDeleteApproach *)&v5 init];
  if (result)
  {
    result->_tagDeleteApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  tagDeleteApproach = [(ICASTagDeleteApproach *)self tagDeleteApproach];
  if ((tagDeleteApproach - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF768[tagDeleteApproach - 1];
  }
}

@end