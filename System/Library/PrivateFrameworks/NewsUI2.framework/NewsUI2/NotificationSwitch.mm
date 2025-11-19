@interface NotificationSwitch
- (BOOL)accessibilityActivate;
- (_TtC7NewsUI218NotificationSwitch)initWithCoder:(id)a3;
- (_TtC7NewsUI218NotificationSwitch)initWithFrame:(CGRect)a3;
@end

@implementation NotificationSwitch

- (_TtC7NewsUI218NotificationSwitch)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_onValueChanged;
  sub_218803FE0();
  v8 = objc_allocWithZone(v7);
  v9 = a3;
  *(&self->super.super.super.super.super.isa + v6) = [v8 init];
  v10 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_toggleState;
  v11 = *MEMORY[0x277D6D338];
  v12 = sub_219BE5C64();
  (*(*(v12 - 8) + 104))(self + v10, v11, v12);
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(NotificationSwitch *)&v15 initWithCoder:v9];

  if (v13)
  {
  }

  return v13;
}

- (_TtC7NewsUI218NotificationSwitch)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_onValueChanged;
  sub_218803FE0();
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC7NewsUI218NotificationSwitch_toggleState;
  v12 = *MEMORY[0x277D6D338];
  v13 = sub_219BE5C64();
  (*(*(v13 - 8) + 104))(self + v11, v12, v13);
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(NotificationSwitch *)&v15 initWithFrame:x, y, width, height];
}

- (BOOL)accessibilityActivate
{
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(NotificationSwitch *)v7 isOn];
  v9 = MEMORY[0x277D6D340];
  if (!v8)
  {
    v9 = MEMORY[0x277D6D338];
  }

  (*(v4 + 104))(v6, *v9, v3);
  sub_219608044(v6, 1);
  v10 = (*(v4 + 8))(v6, v3);
  MEMORY[0x21CEC15C0](v10);

  return 1;
}

@end