@interface FormatProgressCircleView
- (void)layoutSubviews;
@end

@implementation FormatProgressCircleView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(FormatProgressCircleView *)&v6 layoutSubviews];
  layer = [v2 layer];
  clearColor = [objc_opt_self() clearColor];
  cGColor = [clearColor CGColor];

  [layer setBackgroundColor_];
}

@end