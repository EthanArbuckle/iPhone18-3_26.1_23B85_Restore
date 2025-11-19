@interface ICASContextPath
- (ICASContextPath)initWithContextPath:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASContextPath

- (ICASContextPath)initWithContextPath:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASContextPath;
  result = [(ICASContextPath *)&v5 init];
  if (result)
  {
    result->_contextPath = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASContextPath *)self contextPath];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF178[v3 - 1];
  }
}

@end