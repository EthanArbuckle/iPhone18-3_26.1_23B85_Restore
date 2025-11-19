@interface LabelWithAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ControlCenterUIKit22LabelWithAccessoryView)initWithCoder:(id)a3;
- (_TtC18ControlCenterUIKit22LabelWithAccessoryView)initWithFrame:(CGRect)a3;
- (double)gaussianBlurRadius;
- (void)layoutSubviews;
- (void)setGaussianBlurRadius:(double)a3;
@end

@implementation LabelWithAccessoryView

- (_TtC18ControlCenterUIKit22LabelWithAccessoryView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryImage) = 0;
  result = sub_1D16CC694();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D16B2B1C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel);
  v6 = self;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  [*(&v6->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel) sizeThatFits_];
  v12 = v11;
  v14 = v13;

  if (v14 > v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  v16 = v8 + v12;
  result.height = v15;
  result.width = v16;
  return result;
}

- (_TtC18ControlCenterUIKit22LabelWithAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)gaussianBlurRadius
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel);
  v3 = self;
  [v2 gaussianBlurRadius];
  v5 = v4;
  v6 = *(&v3->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel);
  [v6 gaussianBlurRadius];
  v8 = v7;

  if (v5 > v8)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

- (void)setGaussianBlurRadius:(double)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_textLabel);
  v6 = self;
  [v4 setGaussianBlurRadius_];
  v5 = *(&v6->super.super.super.isa + OBJC_IVAR____TtC18ControlCenterUIKit22LabelWithAccessoryView_accessoryLabel);
  [v5 setGaussianBlurRadius_];
}

@end