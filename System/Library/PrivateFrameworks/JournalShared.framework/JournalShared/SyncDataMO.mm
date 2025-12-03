@interface SyncDataMO
- (SyncDataMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation SyncDataMO

- (SyncDataMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SyncDataMO();
  return [(SyncDataMO *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end