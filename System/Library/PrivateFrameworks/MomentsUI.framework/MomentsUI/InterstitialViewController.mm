@interface InterstitialViewController
- (_TtC9MomentsUI26InterstitialViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)toggleViewMode;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InterstitialViewController

- (void)viewDidLoad
{
  v2 = self;
  InterstitialViewController.viewDidLoad()();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  InterstitialViewController.willTransition(to:with:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)toggleViewMode
{
  v3 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = v4 ^ 1;
  v5 = self;
  InterstitialViewController.viewMode.didset(v4);
}

- (_TtC9MomentsUI26InterstitialViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  InterstitialViewController.viewWillDisappear(_:)(a3);
}

@end