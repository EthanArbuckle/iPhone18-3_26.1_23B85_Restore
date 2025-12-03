@interface DBDockGradientBlurBackgroundView.GradientBlurView
- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithCoder:(id)coder;
- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DBDockGradientBlurBackgroundView.GradientBlurView

- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(DBDockGradientBlurBackgroundView.GradientBlurView *)&v5 layoutSubviews];
  layer = [v2 layer];
  mask = [layer mask];

  if (mask)
  {
    [v2 bounds];
    [mask setFrame_];
  }
}

- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end