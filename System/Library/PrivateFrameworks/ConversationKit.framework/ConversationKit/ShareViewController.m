@interface ShareViewController
- (_TtC15ConversationKit19ShareViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ShareViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ShareViewController.viewDidAppear(_:)(a3);
}

- (_TtC15ConversationKit19ShareViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return ShareViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end