@interface FMR1DebugView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSString)description;
- (_TtC11FMFindingUI13FMR1DebugView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)dotCountSegmentedControlActionWithSender:(id)sender;
- (void)runTestsAction;
- (void)showControlsToggleActionWithSender:(id)sender;
@end

@implementation FMR1DebugView

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation);
  selfCopy = self;
  if (v3)
  {
    v5 = v3;
    sub_24A62E064();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FMR1DebugView();
  [(FMR1DebugView *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  selfCopy = self;
  sub_24A5D9E20(x, y);
  LOBYTE(self) = v9;

  return self & 1;
}

- (void)showControlsToggleActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_24A5D9FC0();
}

- (void)dotCountSegmentedControlActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_24A5D93C8(senderCopy);
}

- (void)runTestsAction
{
  selfCopy = self;
  sub_24A5D95D4();
}

- (_TtC11FMFindingUI13FMR1DebugView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end