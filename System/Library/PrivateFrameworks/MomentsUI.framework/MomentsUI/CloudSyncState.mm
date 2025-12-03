@interface CloudSyncState
- (CloudSyncState)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation CloudSyncState

- (CloudSyncState)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CloudSyncState();
  return [(CloudSyncState *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end