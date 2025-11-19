@interface MapsSyncManagedHistoryMarkedLocation
- (MapsSyncManagedHistoryMarkedLocation)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation MapsSyncManagedHistoryMarkedLocation

- (MapsSyncManagedHistoryMarkedLocation)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return [(MapsSyncManagedHistoryItem *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end