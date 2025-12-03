@interface SystemRootLayerProxyViewController
- (_TtC15ConversationKit34SystemRootLayerProxyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SystemRootLayerProxyViewController

- (void)loadView
{
  selfCopy = self;
  SystemRootLayerProxyViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  SystemRootLayerProxyViewController.viewDidLoad()();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  SystemRootLayerProxyViewController.viewDidMove(to:shouldAppearOrDisappear:)(window, disappear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  SystemRootLayerProxyViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKit34SystemRootLayerProxyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  SystemRootLayerProxyViewController.init(nibName:bundle:)();
}

@end