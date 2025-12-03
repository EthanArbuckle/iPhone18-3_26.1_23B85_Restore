@interface PARUsageEvent
- (PARUsageEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARUsageEvent

- (PARUsageEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARUsageEvent.init(entity:insertInto:)();
}

@end