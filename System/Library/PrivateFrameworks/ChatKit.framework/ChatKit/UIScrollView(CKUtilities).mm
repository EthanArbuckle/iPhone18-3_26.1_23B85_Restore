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
  [a1 contentOffset];
  v3 = v2;
  [a1 adjustedContentInset];
  return v3;
}

- (double)__ck_bottomOffset
{
  [a1 contentOffset];
  v3 = v2;
  [a1 __ck_contentSize];
  [a1 contentInset];
  [a1 bounds];
  [a1 __ck_scrollToTopContentOffset];
  return v3;
}

- (double)__ck_bottomOffsetWithComputedInsets:()CKUtilities
{
  [a1 contentOffset];
  v3 = v2;
  [a1 __ck_contentSize];
  [a1 bounds];
  [a1 __ck_scrollToTopContentOffset];
  return v3;
}

- (BOOL)__ck_isScrolledToBottom
{
  [a1 contentOffset];
  v3 = v2;
  [a1 __ck_bottomOffset];
  return v3 >= v4 + -1.0;
}

- (uint64_t)__ck_scrollToBottom:()CKUtilities
{
  [a1 __ck_bottomOffset];

  return [a1 setContentOffset:a3 animated:?];
}

- (BOOL)__ck_isScrolledToTop
{
  [a1 contentOffset];
  v3 = v2;
  [a1 __ck_scrollToTopContentOffset];
  return v3 <= v4 + 1.0;
}

- (uint64_t)__ck_scrollToTop:()CKUtilities
{
  [a1 __ck_scrollToTopContentOffset];

  return [a1 setContentOffset:a3 animated:?];
}

- (BOOL)__ck_isVerticallyRubberBanding
{
  [a1 contentInset];
  v3 = v2;
  v5 = v4;
  [a1 contentSize];
  v7 = v6;
  [a1 bounds];
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