@interface ContinuousReadingScrollView
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
@end

@implementation ContinuousReadingScrollView

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  v6 = a4;
  v5 = [(ContinuousReadingScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 scrollViewShouldScrollToTop:self];
  }

  if (v6)
  {
    v6[2](v6, 1);
  }
}

@end