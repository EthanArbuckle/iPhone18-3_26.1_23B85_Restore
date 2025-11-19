@interface CAFUIAlertButton
- (_TtC5CAFUI16CAFUIAlertButton)init;
- (_TtC5CAFUI16CAFUIAlertButton)initWithCoder:(id)a3;
- (_TtC5CAFUI16CAFUIAlertButton)initWithFrame:(CGRect)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation CAFUIAlertButton

- (_TtC5CAFUI16CAFUIAlertButton)init
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIAlertButton();
  v2 = [(CAFUIAlertButton *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 tintColor];
  [(CAFUIAlertButton *)v4 setTitleColor:v5 forState:0];

  v6 = [v3 _carSystemQuaternaryColor];
  [(CAFUIAlertButton *)v4 setBackgroundColor:v6];

  return v4;
}

- (_TtC5CAFUI16CAFUIAlertButton)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFUIAlertButton.didUpdateFocus(in:with:)(v6, v7);
}

- (_TtC5CAFUI16CAFUIAlertButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end