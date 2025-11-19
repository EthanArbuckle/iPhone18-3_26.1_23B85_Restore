@interface PARFlushEvent
- (PARFlushEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PARFlushEvent

- (PARFlushEvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PARFlushEvent.init(entity:insertInto:)();
}

@end