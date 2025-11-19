@interface NSDate(_HKPropertyAnimationExtensions)
- (uint64_t)hk_midPointToValue:()_HKPropertyAnimationExtensions percentage:;
@end

@implementation NSDate(_HKPropertyAnimationExtensions)

- (uint64_t)hk_midPointToValue:()_HKPropertyAnimationExtensions percentage:
{
  v6 = a4;
  [a1 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = MEMORY[0x1E695DF00];
  v12 = fmax(a2, 0.0);
  if (v12 > 1.0)
  {
    v12 = 1.0;
  }

  v13 = v8 + v12 * (v10 - v8);

  return [v11 dateWithTimeIntervalSinceReferenceDate:v13];
}

@end