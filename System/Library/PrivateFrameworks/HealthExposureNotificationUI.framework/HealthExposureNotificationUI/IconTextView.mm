@interface IconTextView
- (CGSize)intrinsicContentSize;
- (UIColor)tintColor;
- (_TtC28HealthExposureNotificationUI12IconTextView)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUI12IconTextView)initWithFrame:(CGRect)frame;
- (void)didTapText:(id)text;
- (void)setTintColor:(id)color;
@end

@implementation IconTextView

- (_TtC28HealthExposureNotificationUI12IconTextView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_textStack;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  result = sub_251703584();
  __break(1u);
  return result;
}

- (void)didTapText:(id)text
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_2516B0724();
    swift_unknownObjectRelease();
  }
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_textStack) frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  tintColor = [(IconTextView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  ObjectType = swift_getObjectType();
  v11.receiver = self;
  v11.super_class = ObjectType;
  colorCopy = color;
  selfCopy = self;
  [(IconTextView *)&v11 setTintColor:colorCopy];
  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI12IconTextView_iconView);
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  tintColor = [(IconTextView *)&v10 tintColor];
  [v8 setTintColor_];
}

- (_TtC28HealthExposureNotificationUI12IconTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end