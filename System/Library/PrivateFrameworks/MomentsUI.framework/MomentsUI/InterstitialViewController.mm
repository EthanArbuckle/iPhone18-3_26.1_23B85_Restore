@interface InterstitialViewController
- (_TtC9MomentsUI26InterstitialViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)toggleViewMode;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation InterstitialViewController

- (void)viewDidLoad
{
  selfCopy = self;
  InterstitialViewController.viewDidLoad()();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  InterstitialViewController.willTransition(to:with:)(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)toggleViewMode
{
  v3 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_viewMode;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = v4 ^ 1;
  selfCopy = self;
  InterstitialViewController.viewMode.didset(v4);
}

- (_TtC9MomentsUI26InterstitialViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  InterstitialViewController.viewWillDisappear(_:)(disappear);
}

@end