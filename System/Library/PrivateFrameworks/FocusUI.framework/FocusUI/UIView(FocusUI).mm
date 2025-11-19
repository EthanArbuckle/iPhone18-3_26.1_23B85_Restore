@interface UIView(FocusUI)
+ (uint64_t)fcui_animateWithAnimationType:()FocusUI actions:completion:;
@end

@implementation UIView(FocusUI)

+ (uint64_t)fcui_animateWithAnimationType:()FocusUI actions:completion:
{
  if (a3 == 1)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 38.0;
  }

  return [a1 _animateUsingSpringWithDuration:2 delay:dbl_24BB4EF20[a3 == 1] options:0.0 mass:2.0 stiffness:300.0 damping:v3 initialVelocity:0.0 animations:? completion:?];
}

@end