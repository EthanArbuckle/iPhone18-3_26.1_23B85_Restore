@interface NSValue(_HKPropertyAnimationExtensions)
- (id)hk_midPointToValue:()_HKPropertyAnimationExtensions percentage:;
- (uint64_t)_hk_CGPointMidPointToValue:()_HKPropertyAnimationExtensions percentage:;
- (uint64_t)_hk_HKLinearTransformMidPointToValue:()_HKPropertyAnimationExtensions percentage:;
- (uint64_t)hk_animatable;
@end

@implementation NSValue(_HKPropertyAnimationExtensions)

- (uint64_t)hk_animatable
{
  if ([a1 _hk_isCGPoint])
  {
    return 1;
  }

  return [a1 _hk_isHKLinearTransform];
}

- (id)hk_midPointToValue:()_HKPropertyAnimationExtensions percentage:
{
  v6 = a4;
  if ([a1 _hk_isCGPoint])
  {
    v7 = [a1 _hk_CGPointMidPointToValue:v6 percentage:a2];
  }

  else if ([a1 _hk_isHKLinearTransform])
  {
    v7 = [a1 _hk_HKLinearTransformMidPointToValue:v6 percentage:a2];
  }

  else
  {
    v7 = a1;
  }

  v8 = v7;

  return v8;
}

- (uint64_t)_hk_HKLinearTransformMidPointToValue:()_HKPropertyAnimationExtensions percentage:
{
  v6 = a4;
  [a1 HKLinearTransformValue];
  v8 = v7;
  v10 = v9;
  [v6 HKLinearTransformValue];
  v12 = v11;
  v14 = v13;

  v15 = fmax(a2, 0.0);
  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v17 = v8 + v16 * (v12 - v8);
  v18 = v10 + v16 * (v14 - v10);
  v19 = MEMORY[0x1E696B098];

  return [v19 valueWithHKLinearTransform:{v17, v18}];
}

- (uint64_t)_hk_CGPointMidPointToValue:()_HKPropertyAnimationExtensions percentage:
{
  v6 = a4;
  [a1 CGPointValue];
  v8 = v7;
  v10 = v9;
  [v6 CGPointValue];
  v12 = v11;
  v14 = v13;

  v15 = fmax(a2, 0.0);
  v16 = 1.0;
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  v17 = v8 + v16 * (v12 - v8);
  v18 = v10 + v16 * (v14 - v10);
  v19 = MEMORY[0x1E696B098];

  return [v19 valueWithCGPoint:{v17, v18}];
}

@end