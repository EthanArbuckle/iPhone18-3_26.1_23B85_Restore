@interface CallRecordingButton
- (BOOL)isEnabled;
- (_TtC16CommunicationsUI19CallRecordingButton)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI19CallRecordingButton)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CallRecordingButton

- (_TtC16CommunicationsUI19CallRecordingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v9) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton____lazy_storage___icon) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(CallRecordingButton *)&v12 initWithFrame:x, y, width, height];
  sub_1C2E34C18();

  return height;
}

- (_TtC16CommunicationsUI19CallRecordingButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton____lazy_storage___icon) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CallRecordingButton *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  CallRecordingButton.isEnabled.setter(enabled);
}

@end