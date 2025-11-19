@interface ScreenSharingSpectatorViewController
- (_TtC15ConversationKit36ScreenSharingSpectatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation ScreenSharingSpectatorViewController

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = ScreenSharingSpectatorViewController.supportedInterfaceOrientations.getter();

  return v3;
}

- (void)loadView
{
  v2 = self;
  ScreenSharingSpectatorViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  ScreenSharingSpectatorViewController.viewDidLoad()();
}

- (_TtC15ConversationKit36ScreenSharingSpectatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  ScreenSharingSpectatorViewController.init(nibName:bundle:)();
}

@end