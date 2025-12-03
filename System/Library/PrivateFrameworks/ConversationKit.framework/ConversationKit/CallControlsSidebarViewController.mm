@interface CallControlsSidebarViewController
- (BOOL)isCaptioningEnabled;
- (_TtC15ConversationKit33CallControlsSidebarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)wantsDismissal;
@end

@implementation CallControlsSidebarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CallControlsSidebarViewController.viewDidLoad()();
}

- (_TtC15ConversationKit33CallControlsSidebarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  CallControlsSidebarViewController.init(nibName:bundle:)();
}

- (BOOL)isCaptioningEnabled
{
  selfCopy = self;
  v3 = CallControlsSidebarViewController.isCaptioningEnabled.getter();

  return v3 & 1;
}

- (void)wantsDismissal
{
  selfCopy = self;
  CallControlsSidebarViewController.wantsDismissal()();
}

@end