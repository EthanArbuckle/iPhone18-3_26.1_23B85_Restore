@interface MapsSyncManagedHistoryEvDirectionsItem
- (MapsSyncManagedHistoryEvDirectionsItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedHistoryEvDirectionsItem

- (MapsSyncManagedHistoryEvDirectionsItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  return [(MapsSyncManagedHistoryDirectionsItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end