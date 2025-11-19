@interface FloatingTitleView
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation FloatingTitleView

- (void)layoutSubviews
{
  v2 = self;
  sub_1E5AABA94();
}

- (void)scrollViewWillBeginDragging:(id)a3
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

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v10 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:{x, y}];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1E5AACFE4(v6, a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E5AAD3A0(v4, &selRef_scrollViewDidEndDecelerating_);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E5AAD3A0(v4, &selRef_scrollViewDidEndScrollingAnimation_);
}

- (void)scrollViewDidScroll:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong respondsToSelector_];
    v7 = a3;
    v8 = self;
    if (v6)
    {
      [v5 scrollViewDidScroll_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = a3;
    v10 = self;
  }

  sub_1E5AAC1A4(a3);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v5 = Strong;
  if ([Strong respondsToSelector_])
  {
    v6 = [v5 scrollViewShouldScrollToTop_];
  }

  else
  {
    v6 = 1;
  }

  swift_unknownObjectRelease();
  return v6;
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E5AAD3A0(v4, &selRef_scrollViewDidScrollToTop_);
}

@end