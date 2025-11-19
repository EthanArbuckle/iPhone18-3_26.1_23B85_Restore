@interface CompoundScrollObserver
- (_TtC12GameStoreKit22CompoundScrollObserver)init;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation CompoundScrollObserver

- (_TtC12GameStoreKit22CompoundScrollObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  CompoundScrollObserver.scrollViewDidScroll(_:)(v4);
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  CompoundScrollObserver.scrollViewWillBeginDecelerating(_:)(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  CompoundScrollObserver.scrollViewDidEndDecelerating(_:)(v4);
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CompoundScrollObserver.scrollViewDidEndDragging(_:willDecelerate:)(v6, a4);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  CompoundScrollObserver.scrollViewWillBeginDragging(_:)(v4);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = self;
  CompoundScrollObserver.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v9, a5, x, y);
}

@end