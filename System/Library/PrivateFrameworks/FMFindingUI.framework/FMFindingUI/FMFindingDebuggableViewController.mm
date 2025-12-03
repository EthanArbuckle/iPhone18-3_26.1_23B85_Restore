@interface FMFindingDebuggableViewController
- (_TtC11FMFindingUI33FMFindingDebuggableViewController)initWithCoder:(id)coder;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation FMFindingDebuggableViewController

- (_TtC11FMFindingUI33FMFindingDebuggableViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewController) = 0;
  v3 = OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  result = sub_24A62F444();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMFindingDebuggableViewController();
  v2 = v3.receiver;
  [(FMFindingViewController *)&v3 viewDidLoad];
  sub_24A62D238();
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  if (ended == 1)
  {
    [*(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI33FMFindingDebuggableViewController_debugViewContainer) setHidden_];
  }
}

@end