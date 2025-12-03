@interface InterstitialCarouselViewController
- (_TtC9MomentsUI34InterstitialCarouselViewController)initWithCoder:(id)coder;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation InterstitialCarouselViewController

- (_TtC9MomentsUI34InterstitialCarouselViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  InterstitialCarouselViewController.viewDidLoad()();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  InterstitialCarouselViewController.willTransition(to:with:)(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  InterstitialCarouselViewController.viewDidLayoutSubviews()();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  x = velocity.x;
  draggingCopy = dragging;
  selfCopy = self;
  InterstitialCarouselViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(draggingCopy, offset, x);
}

@end