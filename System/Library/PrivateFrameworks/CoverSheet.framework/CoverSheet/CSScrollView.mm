@interface CSScrollView
- (BOOL)_setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
@end

@implementation CSScrollView

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  if ([CSScrollView _setContentOffset:"_setContentOffset:animated:" animated:?])
  {
    v8.receiver = self;
    v8.super_class = CSScrollView;
    [(BSUIScrollView *)&v8 setContentOffset:animatedCopy animated:x, y];
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(CSScrollView *)self _setContentOffset:0 animated:?])
  {
    v6.receiver = self;
    v6.super_class = CSScrollView;
    [(BSUIScrollView *)&v6 setContentOffset:x, y];
  }
}

- (BOOL)_setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  y = offset.y;
  x = offset.x;
  delegate = [(BSUIScrollView *)self delegate];
  v9 = delegate;
  v10 = !delegate || [delegate coverSheetScrollView:self shouldSetContentOffset:animatedCopy animated:{x, y}];

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(BSUIScrollView *)self delegate];
  LOBYTE(self) = [delegate coverSheetScrollView:self gestureRecognizerShouldBegin:beginCopy];

  return self;
}

@end