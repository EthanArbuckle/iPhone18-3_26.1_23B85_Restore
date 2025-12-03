@interface ManagedAccessoryGroup
- (ManagedAccessoryGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedAccessoryGroup

- (ManagedAccessoryGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedAccessoryGroup();
  return [(ManagedHomeGroup *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end