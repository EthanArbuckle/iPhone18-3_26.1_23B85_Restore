@interface MUImageScrollView
- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)offset;
- (void)centerContentIgnoringInsets;
@end

@implementation MUImageScrollView

- (void)_centerContentIfNecessaryAdjustingContentOffset:(BOOL)offset
{
  offsetCopy = offset;
  [(MUImageScrollView *)self contentSize];
  v6 = v5;
  [(MUImageScrollView *)self bounds];
  v8 = v7;
  delegate = [(MUImageScrollView *)self delegate];
  centersIgnoringContentInsets = [delegate centersIgnoringContentInsets];
  v11.receiver = self;
  v11.super_class = MUImageScrollView;
  [(MUImageScrollView *)&v11 _centerContentIfNecessaryAdjustingContentOffset:offsetCopy];
  if (centersIgnoringContentInsets && v6 <= v8 && ([(MUImageScrollView *)self isZooming]& 1) == 0)
  {
    [(MUImageScrollView *)self centerContentIgnoringInsets];
  }
}

- (void)centerContentIgnoringInsets
{
  delegate = [(MUImageScrollView *)self delegate];
  [(MUImageScrollView *)self bounds];
  v3 = [delegate viewForZoomingInScrollView:self];
  [v3 frame];
  UIRectCenteredYInRect();
  [v3 setFrame:?];
}

@end