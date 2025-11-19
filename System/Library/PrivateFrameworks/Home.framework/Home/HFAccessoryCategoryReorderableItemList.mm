@interface HFAccessoryCategoryReorderableItemList
- (HFAccessoryCategoryReorderableItemList)initWithApplicationDataContainer:(id)a3 category:(id)a4;
@end

@implementation HFAccessoryCategoryReorderableItemList

- (HFAccessoryCategoryReorderableItemList)initWithApplicationDataContainer:(id)a3 category:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AccessoryCategoryReorderableItemList();
  return [(HFReorderableItemList *)&v7 initWithApplicationDataContainer:a3 category:a4];
}

@end