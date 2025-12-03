@interface UIView
+ (void)bkui_animateWithDuration:(void *)duration animations:;
@end

@implementation UIView

+ (void)bkui_animateWithDuration:(void *)duration animations:
{
  durationCopy = duration;
  v4 = objc_opt_self();
  [(UIView *)v4 bkui_animateWithDuration:durationCopy animations:0 completion:self];
}

@end