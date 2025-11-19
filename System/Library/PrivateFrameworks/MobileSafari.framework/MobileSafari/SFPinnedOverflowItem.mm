@interface SFPinnedOverflowItem
- (SFPinnedOverflowItem)init;
@end

@implementation SFPinnedOverflowItem

- (SFPinnedOverflowItem)init
{
  v6.receiver = self;
  v6.super_class = SFPinnedOverflowItem;
  v2 = [(SFPinnedOverflowItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SFUnifiedBarItem *)v2 setPinned:1];
    [(SFUnifiedBarItem *)v3 setViewReuseIdentifier:@"SFPinnedOverflowItem"];
    v4 = v3;
  }

  return v3;
}

@end