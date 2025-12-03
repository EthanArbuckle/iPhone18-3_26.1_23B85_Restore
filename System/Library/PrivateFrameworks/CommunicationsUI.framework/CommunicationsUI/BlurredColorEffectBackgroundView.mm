@interface BlurredColorEffectBackgroundView
- (_TtC16CommunicationsUI32BlurredColorEffectBackgroundView)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI32BlurredColorEffectBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation BlurredColorEffectBackgroundView

- (_TtC16CommunicationsUI32BlurredColorEffectBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___hasBackgroundImage) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_blurEffect) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (_TtC16CommunicationsUI32BlurredColorEffectBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end