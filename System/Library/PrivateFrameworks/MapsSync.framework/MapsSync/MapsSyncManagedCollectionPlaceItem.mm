@interface MapsSyncManagedCollectionPlaceItem
- (MapsSyncManagedCollectionPlaceItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedCollectionPlaceItem

- (MapsSyncManagedCollectionPlaceItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedCollectionPlaceItem();
  return [(MapsSyncManagedCollectionItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end