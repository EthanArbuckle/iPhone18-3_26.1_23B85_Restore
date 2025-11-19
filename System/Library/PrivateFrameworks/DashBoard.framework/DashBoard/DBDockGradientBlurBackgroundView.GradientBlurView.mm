@interface DBDockGradientBlurBackgroundView.GradientBlurView
- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithCoder:(id)a3;
- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DBDockGradientBlurBackgroundView.GradientBlurView

- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithCoder:(id)a3
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
  v3 = [v2 layer];
  v4 = [v3 mask];

  if (v4)
  {
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtCC9DashBoard32DBDockGradientBlurBackgroundView16GradientBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end