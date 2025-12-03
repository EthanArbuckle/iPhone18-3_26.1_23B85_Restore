@interface UIView
+ (void)safari_animate:(char)safari_animate withDuration:(void *)duration animations:;
+ (void)safari_animate:(uint64_t)safari_animate withDuration:(char)duration delay:(uint64_t)delay options:(void *)options animations:(void *)animations completion:;
@end

@implementation UIView

+ (void)safari_animate:(char)safari_animate withDuration:(void *)duration animations:
{
  durationCopy = duration;
  v6 = objc_opt_self();
  [(UIView *)self safari_animate:v6 withDuration:safari_animate delay:0 options:durationCopy animations:0 completion:?];
}

+ (void)safari_animate:(uint64_t)safari_animate withDuration:(char)duration delay:(uint64_t)delay options:(void *)options animations:(void *)animations completion:
{
  optionsCopy = options;
  animationsCopy = animations;
  v13 = objc_opt_self();
  v14 = _Block_copy(animationsCopy);

  if (duration)
  {
    [v13 animateWithDuration:delay delay:optionsCopy options:v14 animations:self completion:a2];
  }

  else
  {
    if (optionsCopy)
    {
      optionsCopy[2](optionsCopy);
    }

    if (animationsCopy)
    {
      v14[2](v14, 1);
    }
  }
}

@end