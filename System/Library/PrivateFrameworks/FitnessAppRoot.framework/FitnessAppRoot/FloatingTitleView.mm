@interface FloatingTitleView
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation FloatingTitleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E5AABA94();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v5 scrollViewWillBeginDragging_];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v10 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:{x, y}];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_1E5AACFE4(draggingCopy, decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_1E5AAD3A0(deceleratingCopy, &selRef_scrollViewDidEndDecelerating_);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_1E5AAD3A0(animationCopy, &selRef_scrollViewDidEndScrollingAnimation_);
}

- (void)scrollViewDidScroll:(id)scroll
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    respondsToSelector_ = [Strong respondsToSelector_];
    scrollCopy = scroll;
    selfCopy = self;
    if (respondsToSelector_)
    {
      [v5 scrollViewDidScroll_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    scrollCopy2 = scroll;
    selfCopy2 = self;
  }

  sub_1E5AAC1A4(scroll);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v5 = Strong;
  if ([Strong respondsToSelector_])
  {
    scrollViewShouldScrollToTop_ = [v5 scrollViewShouldScrollToTop_];
  }

  else
  {
    scrollViewShouldScrollToTop_ = 1;
  }

  swift_unknownObjectRelease();
  return scrollViewShouldScrollToTop_;
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  selfCopy = self;
  sub_1E5AAD3A0(topCopy, &selRef_scrollViewDidScrollToTop_);
}

@end