@interface CHUISSolariumEffectView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithCoder:(id)coder;
- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setLayerType:(unint64_t)type;
- (void)setPreferredColorScheme:(unint64_t)scheme;
- (void)setTintParameters:(id)parameters;
@end

@implementation CHUISSolariumEffectView

- (void)setTintParameters:(id)parameters
{
  parametersCopy = parameters;
  selfCopy = self;
  sub_1D929630C(parametersCopy);
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_1D9296490(radius);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D9297F94();
}

- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithFrame:(CGRect)frame
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (_TtC16ChronoUIServices23CHUISSolariumEffectView)initWithCoder:(id)coder
{
  result = sub_1D9328534();
  __break(1u);
  return result;
}

- (void)setPreferredColorScheme:(unint64_t)scheme
{
  selfCopy = self;
  sub_1D9313634(scheme);
}

- (void)setLayerType:(unint64_t)type
{
  selfCopy = self;
  sub_1D9313C5C(type);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC16ChronoUIServices23CHUISSolariumEffectView__hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

@end