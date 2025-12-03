@interface NSUUID(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
@end

@implementation NSUUID(MSVJSONConvertible)

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v4 = a3;
  if (_NSIsNSString())
  {
    v5 = [self initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end