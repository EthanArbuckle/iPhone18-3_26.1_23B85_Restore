@interface MUImageScrollView
- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)a3;
- (void)centerContentIgnoringInsets;
@end

@implementation MUImageScrollView

- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)a3
{
  v3 = a3;
  [(MUImageScrollView *)self contentSize];
  v6 = v5;
  [(MUImageScrollView *)self bounds];
  v8 = v7;
  v9 = [(MUImageScrollView *)self delegate];
  v10 = [v9 centersIgnoringContentInsets];
  v11.receiver = self;
  v11.super_class = MUImageScrollView;
  [(MUImageScrollView *)&v11 _centerContentIfNecessaryAdjustingContentOffset:v3];
  if (v10 && v6 <= v8 && ([(MUImageScrollView *)self isZooming]& 1) == 0)
  {
    [(MUImageScrollView *)self centerContentIgnoringInsets];
  }
}

- (void)centerContentIgnoringInsets
{
  v4 = [(MUImageScrollView *)self delegate];
  [(MUImageScrollView *)self bounds];
  v3 = [v4 viewForZoomingInScrollView:self];
  [v3 frame];
  UIRectCenteredYInRect();
  [v3 setFrame:?];
}

@end