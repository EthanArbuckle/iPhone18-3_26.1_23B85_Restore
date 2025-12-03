@interface PARFlushEvent
- (PARFlushEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARFlushEvent

- (PARFlushEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARFlushEvent.init(entity:insertInto:)();
}

@end