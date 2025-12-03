@interface PARSessionEngagementsByTrigger
- (PARSessionEngagementsByTrigger)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARSessionEngagementsByTrigger

- (PARSessionEngagementsByTrigger)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARSessionEngagementsByTrigger.init(entity:insertInto:)();
}

@end