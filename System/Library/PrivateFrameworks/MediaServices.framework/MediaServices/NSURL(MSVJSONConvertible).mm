@interface NSURL(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
@end

@implementation NSURL(MSVJSONConvertible)

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v4 = a3;
  if (_NSIsNSString())
  {
    v5 = [self initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end