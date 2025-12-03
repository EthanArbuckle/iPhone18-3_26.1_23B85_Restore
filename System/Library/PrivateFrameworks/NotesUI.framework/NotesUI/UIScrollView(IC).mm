@interface UIScrollView(IC)
- (double)ic_visibleRectConsideringInsets:()IC;
- (uint64_t)ic_scrollRectToVisible:()IC animated:consideringInsets:;
- (uint64_t)ic_shouldOptimizeForScrolling;
@end

@implementation UIScrollView(IC)

- (uint64_t)ic_shouldOptimizeForScrolling
{
  if ([self isDragging] & 1) != 0 || (objc_msgSend(self, "isDecelerating"))
  {
    return 1;
  }

  return [self _isAnimatingScrollTest];
}

- (uint64_t)ic_scrollRectToVisible:()IC animated:consideringInsets:
{
  if (a8)
  {
    [self bounds];
    [self verticalScrollIndicatorInsets];
    [self adjustedContentInset];
    UIEdgeInsetsMax();
    [self ic_visibleRectConsideringInsets:1];
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    result = CGRectContainsRect(v16, v17);
    if ((result & 1) == 0)
    {
      [self contentOffset];

      return [self setContentOffset:a7 animated:?];
    }
  }

  else
  {

    return [self scrollRectToVisible:? animated:?];
  }

  return result;
}

- (double)ic_visibleRectConsideringInsets:()IC
{
  [self contentOffset];
  v6 = v5;
  [self bounds];
  if (a3)
  {
    [self verticalScrollIndicatorInsets];
    [self adjustedContentInset];
    UIEdgeInsetsMax();
    return v6 + v7;
  }

  return v6;
}

@end