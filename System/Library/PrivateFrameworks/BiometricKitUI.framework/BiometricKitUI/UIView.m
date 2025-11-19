@interface UIView
+ (void)bkui_animateWithDuration:(void *)a3 animations:;
@end

@implementation UIView

+ (void)bkui_animateWithDuration:(void *)a3 animations:
{
  v5 = a3;
  v4 = objc_opt_self();
  [(UIView *)v4 bkui_animateWithDuration:v5 animations:0 completion:a1];
}

@end