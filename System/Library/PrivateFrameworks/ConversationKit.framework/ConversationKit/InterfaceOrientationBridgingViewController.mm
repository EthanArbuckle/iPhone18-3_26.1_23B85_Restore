@interface InterfaceOrientationBridgingViewController
- (_TtC15ConversationKit42InterfaceOrientationBridgingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation InterfaceOrientationBridgingViewController

- (void)viewDidLoad
{
  v2 = self;
  InterfaceOrientationBridgingViewController.viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  InterfaceOrientationBridgingViewController.viewDidMove(to:shouldAppearOrDisappear:)(v6, 0);
}

- (_TtC15ConversationKit42InterfaceOrientationBridgingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return InterfaceOrientationBridgingViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end