@interface CAFUIAlertButton
- (_TtC5CAFUI16CAFUIAlertButton)init;
- (_TtC5CAFUI16CAFUIAlertButton)initWithCoder:(id)coder;
- (_TtC5CAFUI16CAFUIAlertButton)initWithFrame:(CGRect)frame;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation CAFUIAlertButton

- (_TtC5CAFUI16CAFUIAlertButton)init
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CAFUIAlertButton();
  v2 = [(CAFUIAlertButton *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  v3 = objc_opt_self();
  v4 = v2;
  tintColor = [v3 tintColor];
  [(CAFUIAlertButton *)v4 setTitleColor:tintColor forState:0];

  _carSystemQuaternaryColor = [v3 _carSystemQuaternaryColor];
  [(CAFUIAlertButton *)v4 setBackgroundColor:_carSystemQuaternaryColor];

  return v4;
}

- (_TtC5CAFUI16CAFUIAlertButton)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  CAFUIAlertButton.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (_TtC5CAFUI16CAFUIAlertButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end