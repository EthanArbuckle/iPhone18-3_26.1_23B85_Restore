@interface CallHoldingButton
- (BOOL)isEnabled;
- (_TtC16CommunicationsUI17CallHoldingButton)initWithCoder:(id)coder;
- (_TtC16CommunicationsUI17CallHoldingButton)initWithFrame:(CGRect)frame;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CallHoldingButton

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CallHoldingButton *)&v3 isEnabled];
}

- (_TtC16CommunicationsUI17CallHoldingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v9) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(CallHoldingButton *)&v12 initWithFrame:x, y, width, height];
  sub_1C2E38304();

  return height;
}

- (_TtC16CommunicationsUI17CallHoldingButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  CallHoldingButton.isEnabled.setter(enabled);
}

@end