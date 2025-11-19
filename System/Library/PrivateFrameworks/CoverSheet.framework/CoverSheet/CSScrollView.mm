@interface CSScrollView
- (BOOL)_setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
@end

@implementation CSScrollView

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([CSScrollView _setContentOffset:"_setContentOffset:animated:" animated:?])
  {
    v8.receiver = self;
    v8.super_class = CSScrollView;
    [(BSUIScrollView *)&v8 setContentOffset:v4 animated:x, y];
  }
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(CSScrollView *)self _setContentOffset:0 animated:?])
  {
    v6.receiver = self;
    v6.super_class = CSScrollView;
    [(BSUIScrollView *)&v6 setContentOffset:x, y];
  }
}

- (BOOL)_setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(BSUIScrollView *)self delegate];
  v9 = v8;
  v10 = !v8 || [v8 coverSheetScrollView:self shouldSetContentOffset:v4 animated:{x, y}];

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(BSUIScrollView *)self delegate];
  LOBYTE(self) = [v5 coverSheetScrollView:self gestureRecognizerShouldBegin:v4];

  return self;
}

@end