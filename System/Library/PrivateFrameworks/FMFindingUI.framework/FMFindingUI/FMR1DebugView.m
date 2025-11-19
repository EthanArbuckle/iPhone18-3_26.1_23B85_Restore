@interface FMR1DebugView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NSString)description;
- (_TtC11FMFindingUI13FMR1DebugView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)dotCountSegmentedControlActionWithSender:(id)a3;
- (void)runTestsAction;
- (void)showControlsToggleActionWithSender:(id)a3;
@end

@implementation FMR1DebugView

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI13FMR1DebugView_debugModeObservation);
  v4 = self;
  if (v3)
  {
    v5 = v3;
    sub_24A62E064();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for FMR1DebugView();
  [(FMR1DebugView *)&v6 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  sub_24A5D9E20(x, y);
  LOBYTE(self) = v9;

  return self & 1;
}

- (void)showControlsToggleActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A5D9FC0();
}

- (void)dotCountSegmentedControlActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A5D93C8(v4);
}

- (void)runTestsAction
{
  v2 = self;
  sub_24A5D95D4();
}

- (_TtC11FMFindingUI13FMR1DebugView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end