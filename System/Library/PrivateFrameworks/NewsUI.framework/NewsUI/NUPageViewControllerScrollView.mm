@interface NUPageViewControllerScrollView
- (BOOL)accessibilityScroll:(int64_t)a3;
- (NUPageViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate;
@end

@implementation NUPageViewControllerScrollView

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [(NUPageViewControllerScrollView *)self accessibilityDelegate];
    [v4 accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:self];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = [(NUPageViewControllerScrollView *)self accessibilityDelegate];
    [v4 accessibilityHandleRequestToGoBackForPageViewControllerScrollView:self];
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