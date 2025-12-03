@interface UIScrollView(GKAdditions)
- (double)_gkPercentScrolled;
@end

@implementation UIScrollView(GKAdditions)

- (double)_gkPercentScrolled
{
  [self contentSize];
  [self frame];
  CGRectGetHeight(v7);
  [self contentOffset];
  [self contentSize];
  v3 = v2;
  [self frame];
  v4 = v3 - CGRectGetWidth(v8);
  [self contentOffset];
  return v5 / v4;
}

@end