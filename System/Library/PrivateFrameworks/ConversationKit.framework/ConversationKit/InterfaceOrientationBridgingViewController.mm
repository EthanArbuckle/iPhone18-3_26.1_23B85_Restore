@interface InterfaceOrientationBridgingViewController
- (_TtC15ConversationKit42InterfaceOrientationBridgingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation InterfaceOrientationBridgingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  InterfaceOrientationBridgingViewController.viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  InterfaceOrientationBridgingViewController.viewDidMove(to:shouldAppearOrDisappear:)(selfCopy, 0);
}

- (_TtC15ConversationKit42InterfaceOrientationBridgingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return InterfaceOrientationBridgingViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end