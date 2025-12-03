@interface PreviewViewController
- (_TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PreviewViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  PreviewViewController.viewDidAppear(_:)(appearCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  PreviewViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PreviewViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return PreviewViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end