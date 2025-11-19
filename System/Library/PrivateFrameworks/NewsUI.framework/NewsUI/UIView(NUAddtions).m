@interface UIView(NUAddtions)
+ (void)nu_animateWithDuration:()NUAddtions delay:timingFunction:options:animations:completion:;
@end

@implementation UIView(NUAddtions)

+ (void)nu_animateWithDuration:()NUAddtions delay:timingFunction:options:animations:completion:
{
  v15 = a7;
  v13 = a8;
  if (a5)
  {
    v14 = a5;
    a5 = [[NUAnimationFactory alloc] initWithMediaTimingFunction:v14];

    a6 |= 0x60000uLL;
  }

  [MEMORY[0x277D75D18] _animateWithDuration:a6 delay:a5 options:v15 factory:v13 animations:a1 completion:a2];
}

@end