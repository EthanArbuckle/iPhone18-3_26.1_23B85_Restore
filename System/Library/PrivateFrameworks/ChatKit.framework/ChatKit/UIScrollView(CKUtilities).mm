@interface UIScrollView(CKUtilities)
- (BOOL)__ck_isScrolledToBottom;
- (BOOL)__ck_isScrolledToTop;
- (BOOL)__ck_isVerticallyRubberBanding;
- (double)__ck_bottomOffset;
- (double)__ck_bottomOffsetWithComputedInsets:()CKUtilities;
- (double)__ck_scrollToTopContentOffset;
- (uint64_t)__ck_scrollToBottom:()CKUtilities;
- (uint64_t)__ck_scrollToTop:()CKUtilities;
@end

@implementation UIScrollView(CKUtilities)

- (double)__ck_scrollToTopContentOffset
{
  [self contentOffset];
  v3 = v2;
  [self adjustedContentInset];
  return v3;
}

- (double)__ck_bottomOffset
{
  [self contentOffset];
  v3 = v2;
  [self __ck_contentSize];
  [self contentInset];
  [self bounds];
  [self __ck_scrollToTopContentOffset];
  return v3;
}

- (double)__ck_bottomOffsetWithComputedInsets:()CKUtilities
{
  [self contentOffset];
  v3 = v2;
  [self __ck_contentSize];
  [self bounds];
  [self __ck_scrollToTopContentOffset];
  return v3;
}

- (BOOL)__ck_isScrolledToBottom
{
  [self contentOffset];
  v3 = v2;
  [self __ck_bottomOffset];
  return v3 >= v4 + -1.0;
}

- (uint64_t)__ck_scrollToBottom:()CKUtilities
{
  [self __ck_bottomOffset];

  return [self setContentOffset:a3 animated:?];
}

- (BOOL)__ck_isScrolledToTop
{
  [self contentOffset];
  v3 = v2;
  [self __ck_scrollToTopContentOffset];
  return v3 <= v4 + 1.0;
}

- (uint64_t)__ck_scrollToTop:()CKUtilities
{
  [self __ck_scrollToTopContentOffset];

  return [self setContentOffset:a3 animated:?];
}

- (BOOL)__ck_isVerticallyRubberBanding
{
  [self contentInset];
  v3 = v2;
  v5 = v4;
  [self contentSize];
  v7 = v6;
  [self bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  if (ceil(v3 + CGRectGetMinY(v13)) < 0.0)
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  return floor(CGRectGetMaxY(v14) - fmax(v5 + v7, height - v3)) > 0.0;
}

@end