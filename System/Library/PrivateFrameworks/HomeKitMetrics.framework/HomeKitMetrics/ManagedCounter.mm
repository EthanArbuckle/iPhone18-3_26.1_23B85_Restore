@interface ManagedCounter
- (ManagedCounter)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedCounter

- (ManagedCounter)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedCounter *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end