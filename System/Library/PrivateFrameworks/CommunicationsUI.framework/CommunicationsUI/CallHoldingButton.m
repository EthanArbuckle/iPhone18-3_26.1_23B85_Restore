@interface CallHoldingButton
- (BOOL)isEnabled;
- (_TtC16CommunicationsUI17CallHoldingButton)initWithCoder:(id)a3;
- (_TtC16CommunicationsUI17CallHoldingButton)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation CallHoldingButton

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CallHoldingButton *)&v3 isEnabled];
}

- (_TtC16CommunicationsUI17CallHoldingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v9) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(CallHoldingButton *)&v12 initWithFrame:x, y, width, height];
  sub_1C2E38304();

  return v10;
}

- (_TtC16CommunicationsUI17CallHoldingButton)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_opt_self() whiteColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon) = 0;
  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  CallHoldingButton.isEnabled.setter(a3);
}

@end