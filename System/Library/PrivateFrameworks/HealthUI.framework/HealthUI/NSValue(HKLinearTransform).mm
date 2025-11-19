@interface NSValue(HKLinearTransform)
+ (id)valueWithHKLinearTransform:()HKLinearTransform;
- (double)HKLinearTransformValue;
@end

@implementation NSValue(HKLinearTransform)

+ (id)valueWithHKLinearTransform:()HKLinearTransform
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{HKLinearTransform=dd}"];

  return v2;
}

- (double)HKLinearTransformValue
{
  v2[0] = 0;
  v2[1] = 0;
  [a1 getValue:v2];
  return *v2;
}

@end