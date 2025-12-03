@interface ScreenSharingSpectatorViewController
- (_TtC15ConversationKit36ScreenSharingSpectatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation ScreenSharingSpectatorViewController

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  ScreenSharingSpectatorViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  ScreenSharingSpectatorViewController.viewDidLoad()();
}

- (_TtC15ConversationKit36ScreenSharingSpectatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  ScreenSharingSpectatorViewController.init(nibName:bundle:)();
}

@end