@interface CHUISSolariumEffectView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithCoder:(id)a3;
- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setLayerType:(unint64_t)a3;
- (void)setPreferredColorScheme:(unint64_t)a3;
- (void)setTintParameters:(id)a3;
@end

@implementation CHUISSolariumEffectView

- (void)setTintParameters:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D929630C(v4);
}

- (void)setCornerRadius:(double)a3
{
  v4 = self;
  sub_1D9296490(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D9297F94();
}

- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithFrame:(CGRect)a3
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithCoder:(id)a3
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (void)setPreferredColorScheme:(unint64_t)a3
{
  v4 = self;
  sub_1D9313634(a3);
}

- (void)setLayerType:(unint64_t)a3
{
  v4 = self;
  sub_1D9313C5C(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

@end