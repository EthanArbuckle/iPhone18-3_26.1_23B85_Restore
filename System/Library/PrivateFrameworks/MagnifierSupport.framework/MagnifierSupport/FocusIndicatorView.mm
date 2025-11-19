@interface FocusIndicatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16MagnifierSupport18FocusIndicatorView)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport18FocusIndicatorView)initWithFrame:(CGRect)a3;
@end

@implementation FocusIndicatorView

- (_TtC16MagnifierSupport18FocusIndicatorView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle) = 0;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_257E7CFB8();
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FocusIndicatorView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC16MagnifierSupport18FocusIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end