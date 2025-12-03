@interface InCallBannerHostViewController
- (BOOL)menuPresented;
- (_TtC15ConversationKit30InCallBannerHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation InCallBannerHostViewController

- (void)loadView
{
  selfCopy = self;
  InCallBannerHostViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  InCallBannerHostViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  InCallBannerHostViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (BOOL)menuPresented
{
  selfCopy = self;
  v3 = InCallBannerHostViewController.menuPresented.getter();

  return v3 & 1;
}

- (_TtC15ConversationKit30InCallBannerHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  InCallBannerHostViewController.init(nibName:bundle:)();
}

@end