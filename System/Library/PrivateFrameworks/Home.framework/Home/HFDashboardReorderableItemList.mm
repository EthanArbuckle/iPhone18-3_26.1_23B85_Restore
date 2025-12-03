@interface HFDashboardReorderableItemList
- (HFDashboardReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category;
@end

@implementation HFDashboardReorderableItemList

- (HFDashboardReorderableItemList)initWithApplicationDataContainer:(id)container category:(id)category
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DashboardReorderableItemList();
  return [(HFReorderableItemList *)&v7 initWithApplicationDataContainer:container category:category];
}

@end