@interface ICASConversionMethod
- (ICASConversionMethod)initWithConversionMethod:(int64_t)method;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASConversionMethod

- (ICASConversionMethod)initWithConversionMethod:(int64_t)method
{
  v5.receiver = self;
  v5.super_class = ICASConversionMethod;
  result = [(ICASConversionMethod *)&v5 init];
  if (result)
  {
    result->_conversionMethod = method;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  conversionMethod = [(ICASConversionMethod *)self conversionMethod];
  v4 = @"unknown";
  if (conversionMethod == 1)
  {
    v4 = @"manual";
  }

  if (conversionMethod == 2)
  {
    return @"automatic";
  }

  else
  {
    return v4;
  }
}

@end