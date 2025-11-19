@interface SFChromeBackgroundView
- (_TtC12MobileSafari22SFChromeBackgroundView)initWithCoder:(id)a3;
- (_TtC12MobileSafari22SFChromeBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation SFChromeBackgroundView

- (_TtC12MobileSafari22SFChromeBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12MobileSafari22SFChromeBackgroundView_effectView;
  v5 = [objc_opt_self() effectWithStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(&self->super.super.super.isa + v4) = v6;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari22SFChromeBackgroundView_contentScrollDistance) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (_TtC12MobileSafari22SFChromeBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end