@interface ManagedDistribution
- (ManagedDistribution)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedDistribution

- (ManagedDistribution)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedDistribution *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end