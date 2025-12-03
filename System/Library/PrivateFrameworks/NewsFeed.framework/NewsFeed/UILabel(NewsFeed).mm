@interface UILabel(NewsFeed)
- (uint64_t)ne_verticallyCenterCapInRect:()NewsFeed;
@end

@implementation UILabel(NewsFeed)

- (uint64_t)ne_verticallyCenterCapInRect:()NewsFeed
{
  [self _capOffsetFromBoundsTop];
  [self _firstLineBaseline];
  [self frame];

  return [self setFrame:?];
}

@end