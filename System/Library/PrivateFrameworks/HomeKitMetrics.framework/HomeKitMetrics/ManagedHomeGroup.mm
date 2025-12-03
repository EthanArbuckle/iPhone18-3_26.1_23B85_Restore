@interface ManagedHomeGroup
- (ManagedHomeGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedHomeGroup

- (ManagedHomeGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedHomeGroup();
  return [(ManagedNamedGroup *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end