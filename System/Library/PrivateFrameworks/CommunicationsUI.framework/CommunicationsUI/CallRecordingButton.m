@interface CallRecordingButton
- (BOOL)isEnabled;
- (_TtC16CommunicationsUI19CallRecordingButton)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI19CallRecordingButton)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CallRecordingButton

- (_TtC16CommunicationsUI19CallRecordingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v9) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton____lazy_storage___icon) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(CallRecordingButton *)&v12 initWithFrame:x, y, width, height];
  sub_1C2E34C18();

  return v10;
}

- (_TtC16CommunicationsUI19CallRecordingButton)initWithCoder:(id)a3
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

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  CallRecordingButton.isEnabled.setter(a3);
}

@end