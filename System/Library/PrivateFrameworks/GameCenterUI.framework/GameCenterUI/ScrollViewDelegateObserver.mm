@interface ScrollViewDelegateObserver
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation ScrollViewDelegateObserver

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E2262DC();
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E226370();
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E226404();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_24E226498();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E226534();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  sub_24E2265C8(v9, a5, x, y);
}

@end