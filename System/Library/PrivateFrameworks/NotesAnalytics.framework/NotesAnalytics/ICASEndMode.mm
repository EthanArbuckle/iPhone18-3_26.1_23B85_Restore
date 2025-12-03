@interface ICASEndMode
- (ICASEndMode)initWithEndMode:(int64_t)mode;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASEndMode

- (ICASEndMode)initWithEndMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = ICASEndMode;
  result = [(ICASEndMode *)&v5 init];
  if (result)
  {
    result->_endMode = mode;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  endMode = [(ICASEndMode *)self endMode];
  v4 = @"unknown";
  if (endMode == 1)
  {
    v4 = @"v1";
  }

  if (endMode == 2)
  {
    return @"v2";
  }

  else
  {
    return v4;
  }
}

@end