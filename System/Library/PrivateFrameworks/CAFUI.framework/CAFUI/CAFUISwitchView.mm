@interface CAFUISwitchView
- (_TtC5CAFUI15CAFUISwitchView)initWithCoder:(id)a3;
- (_TtC5CAFUI15CAFUISwitchView)initWithFrame:(CGRect)a3;
- (void)switchChangedWithSender:(id)a3;
@end

@implementation CAFUISwitchView

- (_TtC5CAFUI15CAFUISwitchView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)switchChangedWithSender:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [v4 isOn];
  v6 = *(&v7->super.super.super.isa + OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_handler);

  v6(v5);
}

- (_TtC5CAFUI15CAFUISwitchView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end