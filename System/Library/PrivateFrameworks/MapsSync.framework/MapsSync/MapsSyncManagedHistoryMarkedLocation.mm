@interface MapsSyncManagedHistoryMarkedLocation
- (MapsSyncManagedHistoryMarkedLocation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedHistoryMarkedLocation

- (MapsSyncManagedHistoryMarkedLocation)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end