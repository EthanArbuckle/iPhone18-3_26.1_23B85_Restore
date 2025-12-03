@interface NUPageViewControllerScrollView
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (NUPageViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate;
@end

@implementation NUPageViewControllerScrollView

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 2)
  {
    accessibilityDelegate = [(NUPageViewControllerScrollView *)self accessibilityDelegate];
    [accessibilityDelegate accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:self];
    goto LABEL_5;
  }

  if (scroll == 1)
  {
    accessibilityDelegate = [(NUPageViewControllerScrollView *)self accessibilityDelegate];
    [accessibilityDelegate accessibilityHandleRequestToGoBackForPageViewControllerScrollView:self];
LABEL_5:

    return 1;
  }

  return 0;
}

- (NUPageViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end