@interface InterstitialCarouselViewController
- (_TtC9MomentsUI34InterstitialCarouselViewController)initWithCoder:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InterstitialCarouselViewController

- (_TtC9MomentsUI34InterstitialCarouselViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  InterstitialCarouselViewController.viewDidLoad()();
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  InterstitialCarouselViewController.willTransition(to:with:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  InterstitialCarouselViewController.viewDidLayoutSubviews()();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  x = a4.x;
  v8 = a3;
  v9 = self;
  InterstitialCarouselViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v8, a5, x);
}

@end