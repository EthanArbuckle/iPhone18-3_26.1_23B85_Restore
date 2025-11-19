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
  v3 = [v2 layer];
  v4 = [objc_opt_self() clearColor];
  v5 = [v4 CGColor];

  [v3 setBackgroundColor_];
}

@end