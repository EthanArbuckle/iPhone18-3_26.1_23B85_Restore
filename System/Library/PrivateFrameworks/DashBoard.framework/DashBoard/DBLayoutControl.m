@interface DBLayoutControl
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (_TtC9DashBoard15DBLayoutControl)initWithCoder:(id)a3;
- (_TtC9DashBoard15DBLayoutControl)initWithFrame:(CGRect)a3;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)homeButtonHandler;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)selectButtonHandler;
- (void)selectButtonLongPressHandler;
@end

@implementation DBLayoutControl

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_2482347FC();
  v6 = sub_248383C80();
  v7 = a4;
  v8 = self;
  sub_2482344BC(v6, a4);
}

- (_TtC9DashBoard15DBLayoutControl)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)homeButtonHandler
{
  v2 = self;
  sub_248234C0C();
}

- (void)selectButtonLongPressHandler
{
  v2 = self;
  sub_248234DD8();
}

- (void)selectButtonHandler
{
  v2 = self;
  sub_248234FA4();
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v3 = [a3 previouslyFocusedView];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  type metadata accessor for DBLayoutControl();
  v5 = swift_dynamicCastClass() != 0;

  return v5;
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2482355A0(a3);
}

- (_TtC9DashBoard15DBLayoutControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end