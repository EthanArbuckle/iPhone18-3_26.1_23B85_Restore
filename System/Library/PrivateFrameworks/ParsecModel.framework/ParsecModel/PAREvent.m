@interface PAREvent
- (PAREvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PAREvent

- (PAREvent)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PAREvent.init(entity:insertInto:)();
}

@end