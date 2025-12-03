@interface ICASTagAddApproach
- (ICASTagAddApproach)initWithTagAddApproach:(int64_t)approach;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASTagAddApproach

- (ICASTagAddApproach)initWithTagAddApproach:(int64_t)approach
{
  v5.receiver = self;
  v5.super_class = ICASTagAddApproach;
  result = [(ICASTagAddApproach *)&v5 init];
  if (result)
  {
    result->_tagAddApproach = approach;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  tagAddApproach = [(ICASTagAddApproach *)self tagAddApproach];
  if ((tagAddApproach - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF6A0[tagAddApproach - 1];
  }
}

@end