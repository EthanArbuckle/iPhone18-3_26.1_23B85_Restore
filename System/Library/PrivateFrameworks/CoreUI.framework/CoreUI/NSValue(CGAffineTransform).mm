@interface NSValue(CGAffineTransform)
- (id)cgAffineTransformValue;
@end

@implementation NSValue(CGAffineTransform)

- (id)cgAffineTransformValue
{
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [self getValue:x8_0];
}

@end