@interface CAFUISwitchView
- (_TtC5CAFUI15CAFUISwitchView)initWithCoder:(id)coder;
- (_TtC5CAFUI15CAFUISwitchView)initWithFrame:(CGRect)frame;
- (void)switchChangedWithSender:(id)sender;
@end

@implementation CAFUISwitchView

- (_TtC5CAFUI15CAFUISwitchView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)switchChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  isOn = [senderCopy isOn];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5CAFUI15CAFUISwitchView_handler);

  v6(isOn);
}

- (_TtC5CAFUI15CAFUISwitchView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end