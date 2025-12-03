@interface MapsSyncManagedHistoryRideShareItem
- (MapsSyncManagedHistoryRideShareItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedHistoryRideShareItem

- (MapsSyncManagedHistoryRideShareItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryRideShareItem();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end