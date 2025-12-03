@interface DBLayoutControl
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (_TtC9DashBoard15DBLayoutControl)initWithCoder:(id)coder;
- (_TtC9DashBoard15DBLayoutControl)initWithFrame:(CGRect)frame;
- (void)_wheelChangedWithEvent:(id)event;
- (void)homeButtonHandler;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)selectButtonHandler;
- (void)selectButtonLongPressHandler;
@end

@implementation DBLayoutControl

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_2482347FC();
  v6 = sub_248383C80();
  eventCopy = event;
  selfCopy = self;
  sub_2482344BC(v6, event);
}

- (_TtC9DashBoard15DBLayoutControl)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9DashBoard15DBLayoutControl_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)homeButtonHandler
{
  selfCopy = self;
  sub_248234C0C();
}

- (void)selectButtonLongPressHandler
{
  selfCopy = self;
  sub_248234DD8();
}

- (void)selectButtonHandler
{
  selfCopy = self;
  sub_248234FA4();
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  previouslyFocusedView = [context previouslyFocusedView];
  if (!previouslyFocusedView)
  {
    return 0;
  }

  v4 = previouslyFocusedView;
  type metadata accessor for DBLayoutControl();
  v5 = swift_dynamicCastClass() != 0;

  return v5;
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_2482355A0(event);
}

- (_TtC9DashBoard15DBLayoutControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end