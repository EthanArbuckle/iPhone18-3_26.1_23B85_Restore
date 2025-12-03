@interface HUQuickControlCollectionViewLayoutAttributes
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlCollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setItemSize:{-[HUQuickControlCollectionViewLayoutAttributes itemSize](self, "itemSize")}];
  [v4 setTitlePosition:{-[HUQuickControlCollectionViewLayoutAttributes titlePosition](self, "titlePosition")}];
  return v4;
}

@end