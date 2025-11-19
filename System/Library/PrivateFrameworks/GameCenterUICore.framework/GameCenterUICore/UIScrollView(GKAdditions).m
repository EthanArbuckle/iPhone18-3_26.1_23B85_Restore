@interface UIScrollView(GKAdditions)
- (double)_gkPercentScrolled;
@end

@implementation UIScrollView(GKAdditions)

- (double)_gkPercentScrolled
{
  [a1 contentSize];
  [a1 frame];
  CGRectGetHeight(v7);
  [a1 contentOffset];
  [a1 contentSize];
  v3 = v2;
  [a1 frame];
  v4 = v3 - CGRectGetWidth(v8);
  [a1 contentOffset];
  return v5 / v4;
}

@end