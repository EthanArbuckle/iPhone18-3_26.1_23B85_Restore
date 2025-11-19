@interface MapsSyncManagedHistoryRideShareItem
- (MapsSyncManagedHistoryRideShareItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation MapsSyncManagedHistoryRideShareItem

- (MapsSyncManagedHistoryRideShareItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end