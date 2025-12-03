@interface MapsSyncManagedCollectionTransitItem
- (MapsSyncManagedCollectionTransitItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedCollectionTransitItem

- (MapsSyncManagedCollectionTransitItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedCollectionTransitItem();
  return [(MapsSyncManagedCollectionItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end