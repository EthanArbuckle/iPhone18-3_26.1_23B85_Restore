@interface ICASMode
- (ICASMode)initWithMode:(int64_t)mode;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASMode

- (ICASMode)initWithMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = ICASMode;
  result = [(ICASMode *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  mode = [(ICASMode *)self mode];
  if ((mode - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFF80[mode - 1];
  }
}

@end