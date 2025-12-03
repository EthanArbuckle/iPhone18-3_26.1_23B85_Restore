@interface ICASContextPath
- (ICASContextPath)initWithContextPath:(int64_t)path;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASContextPath

- (ICASContextPath)initWithContextPath:(int64_t)path
{
  v5.receiver = self;
  v5.super_class = ICASContextPath;
  result = [(ICASContextPath *)&v5 init];
  if (result)
  {
    result->_contextPath = path;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  contextPath = [(ICASContextPath *)self contextPath];
  if ((contextPath - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF178[contextPath - 1];
  }
}

@end