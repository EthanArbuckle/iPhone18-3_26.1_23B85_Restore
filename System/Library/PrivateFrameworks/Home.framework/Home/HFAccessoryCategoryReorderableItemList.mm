@interface HFAccessoryCategoryReorderableItemList
- (HFAccessoryCategoryReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category;
@end

@implementation HFAccessoryCategoryReorderableItemList

- (HFAccessoryCategoryReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  return [(HFReorderableItemList *)&v7 initWithApplicationDataContainer:container category:category];
}

@end