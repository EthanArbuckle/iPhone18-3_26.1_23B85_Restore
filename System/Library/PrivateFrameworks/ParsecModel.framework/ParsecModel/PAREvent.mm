@interface PAREvent
- (PAREvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PAREvent

- (PAREvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PAREvent.init(entity:insertInto:)();
}

@end