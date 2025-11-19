@interface NSValue(CMTime)
- (uint64_t)time;
@end

@implementation NSValue(CMTime)

- (uint64_t)time
{
  *x8_0 = 0;
  x8_0[1] = 0;
  x8_0[2] = 0;
  return [a1 getValue:x8_0];
}

@end