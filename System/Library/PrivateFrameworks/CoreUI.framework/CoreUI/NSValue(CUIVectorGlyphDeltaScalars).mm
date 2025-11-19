@interface NSValue(CUIVectorGlyphDeltaScalars)
+ (id)valueWithDeltaScalars:()CUIVectorGlyphDeltaScalars;
- (double)deltaScalarsValue;
@end

@implementation NSValue(CUIVectorGlyphDeltaScalars)

- (double)deltaScalarsValue
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return *v2;
}

+ (id)valueWithDeltaScalars:()CUIVectorGlyphDeltaScalars
{
  *v4 = a2;
  *&v4[1] = a3;
  return [a1 valueWithBytes:v4 objCType:"{?=dd}"];
}

@end