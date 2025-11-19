@interface ICASConversionMethod
- (ICASConversionMethod)initWithConversionMethod:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASConversionMethod

- (ICASConversionMethod)initWithConversionMethod:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASConversionMethod;
  result = [(ICASConversionMethod *)&v5 init];
  if (result)
  {
    result->_conversionMethod = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASConversionMethod *)self conversionMethod];
  v4 = @"unknown";
  if (v3 == 1)
  {
    v4 = @"manual";
  }

  if (v3 == 2)
  {
    return @"automatic";
  }

  else
  {
    return v4;
  }
}

@end