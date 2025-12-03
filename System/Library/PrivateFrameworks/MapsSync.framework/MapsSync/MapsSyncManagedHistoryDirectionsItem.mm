@interface MapsSyncManagedHistoryDirectionsItem
- (MapsSyncManagedHistoryDirectionsItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedHistoryDirectionsItem

- (MapsSyncManagedHistoryDirectionsItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryDirectionsItem();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end