@interface PreviewViewController
- (_TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PreviewViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  PreviewViewController.viewDidAppear(_:)(v3);
}

- (void)viewDidLoad
{
  v2 = self;
  PreviewViewController.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  PreviewViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return PreviewViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end