@interface HUQuickControlCollectionViewLayoutAttributes
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlCollectionViewLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = HUQuickControlCollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [v4 setItemSize:{-[HUQuickControlCollectionViewLayoutAttributes itemSize](self, "itemSize")}];
  [v4 setTitlePosition:{-[HUQuickControlCollectionViewLayoutAttributes titlePosition](self, "titlePosition")}];
  return v4;
}

@end