@interface SFChromeBackgroundView
- (_TtC12MobileSafari22SFChromeBackgroundView)initWithCoder:(id)coder;
- (_TtC12MobileSafari22SFChromeBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation SFChromeBackgroundView

- (_TtC12MobileSafari22SFChromeBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC12MobileSafari22SFChromeBackgroundView_effectView;
  effectWithStyle_ = [objc_opt_self() effectWithStyle_];
  initWithEffect_ = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *(&self->super.super.super.isa + v4) = initWithEffect_;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari22SFChromeBackgroundView_contentScrollDistance) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (_TtC12MobileSafari22SFChromeBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end