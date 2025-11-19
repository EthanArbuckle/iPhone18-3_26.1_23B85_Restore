@interface NSValue(BCUIImageUtilities)
+ (id)valueWithBCUIIconImageInfo:()BCUIImageUtilities;
- (double)BCUIIconImageInfoValue;
@end

@implementation NSValue(BCUIImageUtilities)

+ (id)valueWithBCUIIconImageInfo:()BCUIImageUtilities
{
  *v5 = a1;
  *&v5[1] = a2;
  *&v5[2] = a3;
  v3 = [MEMORY[0x1E696B098] valueWithBytes:v5 objCType:"{BCUIIconImageInfo={CGSize=dd}d}"];

  return v3;
}

- (double)BCUIIconImageInfoValue
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2 size:24];
  return *v2;
}

@end