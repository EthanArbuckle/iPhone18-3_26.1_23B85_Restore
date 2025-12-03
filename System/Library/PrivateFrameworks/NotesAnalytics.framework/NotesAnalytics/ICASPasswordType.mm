@interface ICASPasswordType
- (ICASPasswordType)initWithPasswordType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASPasswordType

- (ICASPasswordType)initWithPasswordType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASPasswordType;
  result = [(ICASPasswordType *)&v5 init];
  if (result)
  {
    result->_passwordType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  passwordType = [(ICASPasswordType *)self passwordType];
  v4 = @"unknown";
  if (passwordType == 1)
  {
    v4 = @"v1";
  }

  if (passwordType == 2)
  {
    return @"v2";
  }

  else
  {
    return v4;
  }
}

@end