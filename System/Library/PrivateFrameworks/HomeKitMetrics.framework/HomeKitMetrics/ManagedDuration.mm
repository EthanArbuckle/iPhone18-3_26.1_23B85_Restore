@interface ManagedDuration
- (ManagedDuration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedDuration

- (ManagedDuration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedDuration *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end