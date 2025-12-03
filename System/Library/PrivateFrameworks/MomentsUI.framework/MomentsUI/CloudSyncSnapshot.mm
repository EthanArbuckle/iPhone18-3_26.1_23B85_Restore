@interface CloudSyncSnapshot
- (CloudSyncSnapshot)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation CloudSyncSnapshot

- (CloudSyncSnapshot)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CloudSyncSnapshot();
  return [(CloudSyncSnapshot *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end