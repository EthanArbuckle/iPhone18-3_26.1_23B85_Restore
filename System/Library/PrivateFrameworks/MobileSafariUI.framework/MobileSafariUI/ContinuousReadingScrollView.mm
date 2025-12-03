@interface ContinuousReadingScrollView
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
@end

@implementation ContinuousReadingScrollView

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(ContinuousReadingScrollView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollViewShouldScrollToTop:self];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

@end