@interface ICASTagAddApproach
- (ICASTagAddApproach)initWithTagAddApproach:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASTagAddApproach

- (ICASTagAddApproach)initWithTagAddApproach:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASTagAddApproach;
  result = [(ICASTagAddApproach *)&v5 init];
  if (result)
  {
    result->_tagAddApproach = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASTagAddApproach *)self tagAddApproach];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF6A0[v3 - 1];
  }
}

@end