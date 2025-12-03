@interface MapsSyncManagedMixinMapItem
- (MapsSyncManagedMixinMapItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation MapsSyncManagedMixinMapItem

- (MapsSyncManagedMixinMapItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncManagedMixinMapItem();
  return [(MapsSyncManagedMixinMapItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end