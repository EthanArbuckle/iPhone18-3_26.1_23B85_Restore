@interface CAFUIBadgeView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC5CAFUI14CAFUIBadgeView)initWithCoder:(id)a3;
- (_TtC5CAFUI14CAFUIBadgeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CAFUIBadgeView

- (_TtC5CAFUI14CAFUIBadgeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5CAFUI14CAFUIBadgeView____lazy_storage___label) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = CAFUIBadgeView.label.getter();
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5 + 10.0;
  v9 = v7 + 4.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = CAFUIBadgeView.label.getter();
  [v6 sizeThatFits_];
  v8 = v7;
  v10 = v9;

  v11 = v8 + 10.0;
  v12 = v10 + 4.0;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CAFUIBadgeView();
  v2 = v5.receiver;
  [(CAFUIBadgeView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (_TtC5CAFUI14CAFUIBadgeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end