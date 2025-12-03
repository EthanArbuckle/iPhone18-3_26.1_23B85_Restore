@interface NSValue(_HDTrivialQuantitySample)
+ (id)_hd_valueWithTrivialQuantitySample:()_HDTrivialQuantitySample;
- (double)_hd_trivialQuantitySampleValue;
@end

@implementation NSValue(_HDTrivialQuantitySample)

- (double)_hd_trivialQuantitySampleValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2];
  return *v2;
}

+ (id)_hd_valueWithTrivialQuantitySample:()_HDTrivialQuantitySample
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = [self valueWithBytes:v5 objCType:"{?=dd}"];

  return v3;
}

@end