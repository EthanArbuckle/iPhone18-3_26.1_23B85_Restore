@interface HFRoomDashboardReorderableItemList
- (HFRoomDashboardReorderableItemList)initWithApplicationDataContainer:(id)a3 category:(id)a4;
@end

@implementation HFRoomDashboardReorderableItemList

- (HFRoomDashboardReorderableItemList)initWithApplicationDataContainer:(id)a3 category:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoomDashboardReorderableItemList();
  return [(HFDashboardReorderableItemList *)&v7 initWithApplicationDataContainer:a3 category:a4];
}

@end