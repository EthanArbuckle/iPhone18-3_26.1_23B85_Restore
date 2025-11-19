@interface PARUsageEvent
- (PARUsageEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PARUsageEvent

- (PARUsageEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PARUsageEvent.init(entity:insertInto:)();
}

@end