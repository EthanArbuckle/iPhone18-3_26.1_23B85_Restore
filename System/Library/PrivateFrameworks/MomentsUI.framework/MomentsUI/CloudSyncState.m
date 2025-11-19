@interface CloudSyncState
- (CloudSyncState)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation CloudSyncState

- (CloudSyncState)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CloudSyncState();
  return [(CloudSyncState *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end