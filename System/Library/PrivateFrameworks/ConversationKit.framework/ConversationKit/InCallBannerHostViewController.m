@interface InCallBannerHostViewController
- (BOOL)menuPresented;
- (_TtC15ConversationKit30InCallBannerHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InCallBannerHostViewController

- (void)loadView
{
  v2 = self;
  InCallBannerHostViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  InCallBannerHostViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  InCallBannerHostViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)menuPresented
{
  v2 = self;
  v3 = InCallBannerHostViewController.menuPresented.getter();

  return v3 & 1;
}

- (_TtC15ConversationKit30InCallBannerHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  InCallBannerHostViewController.init(nibName:bundle:)();
}

@end