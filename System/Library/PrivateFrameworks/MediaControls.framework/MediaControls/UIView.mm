@interface UIView
@end

@implementation UIView

uint64_t __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3 = *(a1 + 32);

  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1966083 updateReason:v3 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

uint64_t __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3 = *(a1 + 32);

  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1966084 updateReason:v3 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

uint64_t __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3 = *(a1 + 32);

  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1966084 updateReason:v3 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

uint64_t __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end