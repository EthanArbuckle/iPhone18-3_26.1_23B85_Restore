@interface MapsSyncManagedHistorySearchItem
- (MapsSyncManagedHistorySearchItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedHistorySearchItem

- (MapsSyncManagedHistorySearchItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistorySearchItem();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end