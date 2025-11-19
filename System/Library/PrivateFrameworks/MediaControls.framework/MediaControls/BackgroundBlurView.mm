@interface BackgroundBlurView
+ (Class)layerClass;
- (_TtC13MediaControls18BackgroundBlurView)initWithCoder:(id)a3;
@end

@implementation BackgroundBlurView

+ (Class)layerClass
{
  sub_1A2115288(0, &qword_1ED94EA88);

  return swift_getObjCClassFromMetadata();
}

- (_TtC13MediaControls18BackgroundBlurView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_enabledBlurRadius) = 0x4014000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_disabledBlurRadius) = 0;
  v5 = OBJC_IVAR____TtC13MediaControls18BackgroundBlurView_blurFilter;
  v6 = *MEMORY[0x1E6979928];
  v7 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v8 = a3;
  *(&self->super.super.super.isa + v5) = [v7 initWithType_];
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

@end