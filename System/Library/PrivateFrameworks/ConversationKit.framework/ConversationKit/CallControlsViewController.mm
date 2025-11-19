@interface CallControlsViewController
- (_TtC15ConversationKit26CallControlsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CallControlsViewController

- (void)loadView
{
  v2 = self;
  CallControlsViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  CallControlsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CallControlsViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  CallControlsViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  CallControlsViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  CallControlsViewController.viewDidLayoutSubviews()();
}

- (_TtC15ConversationKit26CallControlsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  CallControlsViewController.init(nibName:bundle:)();
}

@end