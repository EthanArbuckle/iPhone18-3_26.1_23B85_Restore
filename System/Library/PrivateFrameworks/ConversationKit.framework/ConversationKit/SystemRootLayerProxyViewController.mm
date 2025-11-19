@interface SystemRootLayerProxyViewController
- (_TtC15ConversationKit34SystemRootLayerProxyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SystemRootLayerProxyViewController

- (void)loadView
{
  v2 = self;
  SystemRootLayerProxyViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  SystemRootLayerProxyViewController.viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  SystemRootLayerProxyViewController.viewDidMove(to:shouldAppearOrDisappear:)(a3, a4);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  SystemRootLayerProxyViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit34SystemRootLayerProxyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  SystemRootLayerProxyViewController.init(nibName:bundle:)();
}

@end