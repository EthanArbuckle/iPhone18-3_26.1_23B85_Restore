@interface ICASPasswordType
- (ICASPasswordType)initWithPasswordType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASPasswordType

- (ICASPasswordType)initWithPasswordType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASPasswordType;
  result = [(ICASPasswordType *)&v5 init];
  if (result)
  {
    result->_passwordType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASPasswordType *)self passwordType];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"v1";
  }

  if (v3 == 2)
  {
    return @"v2";
  }

  else
  {
    return v4;
  }
}

@end