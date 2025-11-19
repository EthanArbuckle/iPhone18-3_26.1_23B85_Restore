@interface UIScrollView(IC)
- (double)ic_visibleRectConsideringInsets:()IC;
- (uint64_t)ic_scrollRectToVisible:()IC animated:consideringInsets:;
- (uint64_t)ic_shouldOptimizeForScrolling;
@end

@implementation UIScrollView(IC)

- (uint64_t)ic_shouldOptimizeForScrolling
{
  if ([a1 isDragging] & 1) != 0 || (objc_msgSend(a1, "isDecelerating"))
  {
    return 1;
  }

  return [a1 _isAnimatingScrollTest];
}

- (uint64_t)ic_scrollRectToVisible:()IC animated:consideringInsets:
{
  if (a8)
  {
    [a1 bounds];
    [a1 verticalScrollIndicatorInsets];
    [a1 adjustedContentInset];
    UIEdgeInsetsMax();
    [a1 ic_visibleRectConsideringInsets:1];
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    result = CGRectContainsRect(v16, v17);
    if ((result & 1) == 0)
    {
      [a1 contentOffset];

      return [a1 setContentOffset:a7 animated:?];
    }
  }

  else
  {

    return [a1 scrollRectToVisible:? animated:?];
  }

  return result;
}

- (double)ic_visibleRectConsideringInsets:()IC
{
  [a1 contentOffset];
  v6 = v5;
  [a1 bounds];
  if (a3)
  {
    [a1 verticalScrollIndicatorInsets];
    [a1 adjustedContentInset];
    UIEdgeInsetsMax();
    return v6 + v7;
  }

  return v6;
}

@end