@interface NSData(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
@end

@implementation NSData(MSVJSONConvertible)

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v4 = a3;
  if (_NSIsNSString())
  {
    v5 = [self initWithBase64EncodedString:v4 options:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end