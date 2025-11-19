@interface NSDate(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
- (id)msv_jsonValue;
@end

@implementation NSDate(MSVJSONConvertible)

- (id)msv_jsonValue
{
  v2 = __MSVJSONDateFormatter();
  v3 = [v2 stringFromDate:a1];

  return v3;
}

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v3 = a3;
  if (_NSIsNSString())
  {
    v4 = v3;
    v5 = __MSVJSONDateFormatter();
    v6 = [v5 dateFromString:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end