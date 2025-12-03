@interface BlurryMaskView
+ (Class)layerClass;
- (_TtC16CommunicationsUI14BlurryMaskView)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI14BlurryMaskView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BlurryMaskView

+ (Class)layerClass
{
  sub_1C2C6E1B4(0, &qword_1EC0601F8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC16CommunicationsUI14BlurryMaskView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_subscription) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI14BlurryMaskView_isBottomVisible) = 1;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BlurryMaskView();
  v2 = v5.receiver;
  [(BlurryMaskView *)&v5 layoutSubviews];
  layer = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  [v2 bounds];
  [v4 setFrame_];
}

- (_TtC16CommunicationsUI14BlurryMaskView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end