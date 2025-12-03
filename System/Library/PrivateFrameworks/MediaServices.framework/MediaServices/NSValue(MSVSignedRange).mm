@interface NSValue(MSVSignedRange)
+ (id)valueWithMSVSignedRange:()MSVSignedRange;
- (uint64_t)signedRangeValue;
@end

@implementation NSValue(MSVSignedRange)

- (uint64_t)signedRangeValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return v2[0];
}

+ (id)valueWithMSVSignedRange:()MSVSignedRange
{
  v6[0] = a3;
  v6[1] = a4;
  v4 = [self valueWithBytes:v6 objCType:"{_MSVSignedRange=qq}"];

  return v4;
}

@end