@interface CallControlsSidebarViewController
- (BOOL)isCaptioningEnabled;
- (_TtC15ConversationKit33CallControlsSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)wantsDismissal;
@end

@implementation CallControlsSidebarViewController

- (void)viewDidLoad
{
  v2 = self;
  CallControlsSidebarViewController.viewDidLoad()();
}

- (_TtC15ConversationKit33CallControlsSidebarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  CallControlsSidebarViewController.init(nibName:bundle:)();
}

- (BOOL)isCaptioningEnabled
{
  v2 = self;
  v3 = CallControlsSidebarViewController.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)wantsDismissal
{
  v2 = self;
  CallControlsSidebarViewController.wantsDismissal()();
}

@end