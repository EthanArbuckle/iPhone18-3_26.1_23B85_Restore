@interface PARSessionEngagementsByTrigger
- (PARSessionEngagementsByTrigger)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PARSessionEngagementsByTrigger

- (PARSessionEngagementsByTrigger)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PARSessionEngagementsByTrigger.init(entity:insertInto:)();
}

@end