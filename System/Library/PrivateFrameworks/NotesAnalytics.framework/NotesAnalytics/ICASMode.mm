@interface ICASMode
- (ICASMode)initWithMode:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASMode

- (ICASMode)initWithMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASMode;
  result = [(ICASMode *)&v5 init];
  if (result)
  {
    result->_mode = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASMode *)self mode];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFF80[v3 - 1];
  }
}

@end